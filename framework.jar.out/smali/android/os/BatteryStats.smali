.class public abstract Landroid/os/BatteryStats;
.super Ljava/lang/Object;
.source "BatteryStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BatteryStats$2;,
        Landroid/os/BatteryStats$HistoryPrinter;,
        Landroid/os/BatteryStats$TimerEntry;,
        Landroid/os/BatteryStats$BitDescription;,
        Landroid/os/BatteryStats$HistoryEventTracker;,
        Landroid/os/BatteryStats$HistoryItem;,
        Landroid/os/BatteryStats$HistoryStepDetails;,
        Landroid/os/BatteryStats$HistoryTag;,
        Landroid/os/BatteryStats$DailyItem;,
        Landroid/os/BatteryStats$PackageChange;,
        Landroid/os/BatteryStats$LevelStepTracker;,
        Landroid/os/BatteryStats$Uid;,
        Landroid/os/BatteryStats$Timer;,
        Landroid/os/BatteryStats$LongCounter;,
        Landroid/os/BatteryStats$Counter;
    }
.end annotation


# static fields
.field private static final APK_DATA:Ljava/lang/String; = "apk"

.field private static final AUDIO_DATA:Ljava/lang/String; = "aud"

.field public static final AUDIO_TURNED_ON:I = 0xf

.field private static final BATTERY_DATA:Ljava/lang/String; = "bt"

.field private static final BATTERY_DISCHARGE_DATA:Ljava/lang/String; = "dc"

.field private static final BATTERY_LEVEL_DATA:Ljava/lang/String; = "lv"

.field private static final BATTERY_STATS_CHECKIN_VERSION:I = 0x9

.field private static final BYTES_PER_GB:J = 0x40000000L

.field private static final BYTES_PER_KB:J = 0x400L

.field private static final BYTES_PER_MB:J = 0x100000L

.field private static final CAMERA_DATA:Ljava/lang/String; = "cam"

.field public static final CAMERA_TURNED_ON:I = 0x11

.field private static final CHARGE_STEP_DATA:Ljava/lang/String; = "csd"

.field private static final CHARGE_TIME_REMAIN_DATA:Ljava/lang/String; = "ctr"

.field static final CHECKIN_VERSION:Ljava/lang/String; = "15"

.field public static final CONTROLLER_IDLE_TIME:I = 0x0

.field public static final CONTROLLER_POWER_DRAIN:I = 0x3

.field public static final CONTROLLER_RX_TIME:I = 0x1

.field public static final CONTROLLER_TX_TIME:I = 0x2

.field private static final CPU_DATA:Ljava/lang/String; = "cpu"

.field public static final DATA_CONNECTION_1xRTT:I = 0x7

.field public static final DATA_CONNECTION_CDMA:I = 0x4

.field private static final DATA_CONNECTION_COUNT_DATA:Ljava/lang/String; = "dcc"

.field public static final DATA_CONNECTION_EDGE:I = 0x2

.field public static final DATA_CONNECTION_EHRPD:I = 0xe

.field public static final DATA_CONNECTION_EVDO_0:I = 0x5

.field public static final DATA_CONNECTION_EVDO_A:I = 0x6

.field public static final DATA_CONNECTION_EVDO_B:I = 0xc

.field public static final DATA_CONNECTION_GPRS:I = 0x1

.field public static final DATA_CONNECTION_HSDPA:I = 0x8

.field public static final DATA_CONNECTION_HSPA:I = 0xa

.field public static final DATA_CONNECTION_HSPAP:I = 0xf

.field public static final DATA_CONNECTION_HSUPA:I = 0x9

.field public static final DATA_CONNECTION_IDEN:I = 0xb

.field public static final DATA_CONNECTION_LTE:I = 0xd

.field static final DATA_CONNECTION_NAMES:[Ljava/lang/String;

.field public static final DATA_CONNECTION_NONE:I = 0x0

.field public static final DATA_CONNECTION_OTHER:I = 0x10

.field private static final DATA_CONNECTION_TIME_DATA:Ljava/lang/String; = "dct"

.field public static final DATA_CONNECTION_UMTS:I = 0x3

.field private static final DISCHARGE_STEP_DATA:Ljava/lang/String; = "dsd"

.field private static final DISCHARGE_TIME_REMAIN_DATA:Ljava/lang/String; = "dtr"

.field public static final DUMP_CHARGED_ONLY:I = 0x2

.field public static final DUMP_DAILY_ONLY:I = 0x4

.field public static final DUMP_DEVICE_WIFI_ONLY:I = 0x40

.field public static final DUMP_HISTORY_ONLY:I = 0x8

.field public static final DUMP_INCLUDE_HISTORY:I = 0x10

.field public static final DUMP_VERBOSE:I = 0x20

.field private static final FLASHLIGHT_DATA:Ljava/lang/String; = "fla"

.field public static final FLASHLIGHT_TURNED_ON:I = 0x10

.field public static final FOREGROUND_ACTIVITY:I = 0xa

.field private static final FOREGROUND_DATA:Ljava/lang/String; = "fg"

.field public static final FULL_WIFI_LOCK:I = 0x5

.field private static final GLOBAL_BLUETOOTH_DATA:Ljava/lang/String; = "gble"

.field private static final GLOBAL_NETWORK_DATA:Ljava/lang/String; = "gn"

.field private static final GLOBAL_WIFI_DATA:Ljava/lang/String; = "gwfl"

.field private static final HISTORY_DATA:Ljava/lang/String; = "h"

.field public static final HISTORY_EVENT_CHECKIN_NAMES:[Ljava/lang/String;

.field public static final HISTORY_EVENT_NAMES:[Ljava/lang/String;

.field public static final HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

.field public static final HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

.field private static final HISTORY_STRING_POOL:Ljava/lang/String; = "hsp"

.field public static final JOB:I = 0xe

.field private static final JOB_DATA:Ljava/lang/String; = "jb"

.field private static final KERNEL_WAKELOCK_DATA:Ljava/lang/String; = "kwl"

.field private static final LOCAL_LOGV:Z = false

.field private static final MISC_DATA:Ljava/lang/String; = "m"

.field private static final NETWORK_DATA:Ljava/lang/String; = "nt"

.field public static final NETWORK_MOBILE_RX_DATA:I = 0x0

.field public static final NETWORK_MOBILE_TX_DATA:I = 0x1

.field public static final NETWORK_WIFI_RX_DATA:I = 0x2

.field public static final NETWORK_WIFI_TX_DATA:I = 0x3

.field public static final NUM_CONTROLLER_ACTIVITY_TYPES:I = 0x4

.field public static final NUM_DATA_CONNECTION_TYPES:I = 0x11

.field public static final NUM_NETWORK_ACTIVITY_TYPES:I = 0x4

.field public static final NUM_SCREEN_BRIGHTNESS_BINS:I = 0x5

.field public static final NUM_WIFI_SIGNAL_STRENGTH_BINS:I = 0x5

.field public static final NUM_WIFI_STATES:I = 0x8

.field public static final NUM_WIFI_SUPPL_STATES:I = 0xd

.field private static final POWER_USE_ITEM_DATA:Ljava/lang/String; = "pwi"

.field private static final POWER_USE_SUMMARY_DATA:Ljava/lang/String; = "pws"

.field private static final PROCESS_DATA:Ljava/lang/String; = "pr"

.field public static final PROCESS_STATE:I = 0xc

.field public static final SCREEN_BRIGHTNESS_BRIGHT:I = 0x4

.field public static final SCREEN_BRIGHTNESS_DARK:I = 0x0

.field private static final SCREEN_BRIGHTNESS_DATA:Ljava/lang/String; = "br"

.field public static final SCREEN_BRIGHTNESS_DIM:I = 0x1

.field public static final SCREEN_BRIGHTNESS_LIGHT:I = 0x3

.field public static final SCREEN_BRIGHTNESS_MEDIUM:I = 0x2

.field static final SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

.field static final SCREEN_BRIGHTNESS_SHORT_NAMES:[Ljava/lang/String;

.field public static final SENSOR:I = 0x3

.field private static final SENSOR_DATA:Ljava/lang/String; = "sr"

.field public static final SERVICE_NAME:Ljava/lang/String; = "batterystats"

.field private static final SIGNAL_SCANNING_TIME_DATA:Ljava/lang/String; = "sst"

.field private static final SIGNAL_STRENGTH_COUNT_DATA:Ljava/lang/String; = "sgc"

.field private static final SIGNAL_STRENGTH_TIME_DATA:Ljava/lang/String; = "sgt"

.field private static final STATE_TIME_DATA:Ljava/lang/String; = "st"

.field public static final STATS_CURRENT:I = 0x1

.field public static final STATS_SINCE_CHARGED:I = 0x0

.field public static final STATS_SINCE_UNPLUGGED:I = 0x2

.field private static final STAT_NAMES:[Ljava/lang/String;

.field public static final STEP_LEVEL_INITIAL_MODE_MASK:J = 0xff000000000000L

.field public static final STEP_LEVEL_INITIAL_MODE_SHIFT:I = 0x30

.field public static final STEP_LEVEL_LEVEL_MASK:J = 0xff0000000000L

.field public static final STEP_LEVEL_LEVEL_SHIFT:I = 0x28

.field public static final STEP_LEVEL_MODES_OF_INTEREST:[I

.field public static final STEP_LEVEL_MODE_DEVICE_IDLE:I = 0x8

.field public static final STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

.field public static final STEP_LEVEL_MODE_POWER_SAVE:I = 0x4

.field public static final STEP_LEVEL_MODE_SCREEN_STATE:I = 0x3

.field public static final STEP_LEVEL_MODE_VALUES:[I

.field public static final STEP_LEVEL_MODIFIED_MODE_MASK:J = -0x100000000000000L

.field public static final STEP_LEVEL_MODIFIED_MODE_SHIFT:I = 0x38

.field public static final STEP_LEVEL_TIME_MASK:J = 0xffffffffffL

.field public static final SYNC:I = 0xd

.field private static final SYNC_DATA:Ljava/lang/String; = "sy"

.field private static final UID_DATA:Ljava/lang/String; = "uid"

.field private static final USER_ACTIVITY_DATA:Ljava/lang/String; = "ua"

.field private static final VERSION_DATA:Ljava/lang/String; = "vers"

.field private static final VIBRATOR_DATA:Ljava/lang/String; = "vib"

.field public static final VIBRATOR_ON:I = 0x9

.field private static final VIDEO_DATA:Ljava/lang/String; = "vid"

.field public static final VIDEO_TURNED_ON:I = 0x8

.field private static final WAKELOCK_DATA:Ljava/lang/String; = "wl"

.field private static final WAKEUP_REASON_DATA:Ljava/lang/String; = "wr"

.field public static final WAKE_TYPE_DRAW:I = 0x12

.field public static final WAKE_TYPE_FULL:I = 0x1

.field public static final WAKE_TYPE_PARTIAL:I = 0x0

.field public static final WAKE_TYPE_WINDOW:I = 0x2

.field public static final WIFI_BATCHED_SCAN:I = 0xb

.field private static final WIFI_DATA:Ljava/lang/String; = "wfl"

.field public static final WIFI_MULTICAST_ENABLED:I = 0x7

.field public static final WIFI_RUNNING:I = 0x4

.field public static final WIFI_SCAN:I = 0x6

.field private static final WIFI_SIGNAL_STRENGTH_COUNT_DATA:Ljava/lang/String; = "wsgc"

.field private static final WIFI_SIGNAL_STRENGTH_TIME_DATA:Ljava/lang/String; = "wsgt"

.field private static final WIFI_STATE_COUNT_DATA:Ljava/lang/String; = "wsc"

.field static final WIFI_STATE_NAMES:[Ljava/lang/String;

.field public static final WIFI_STATE_OFF:I = 0x0

.field public static final WIFI_STATE_OFF_SCANNING:I = 0x1

.field public static final WIFI_STATE_ON_CONNECTED_P2P:I = 0x5

.field public static final WIFI_STATE_ON_CONNECTED_STA:I = 0x4

.field public static final WIFI_STATE_ON_CONNECTED_STA_P2P:I = 0x6

.field public static final WIFI_STATE_ON_DISCONNECTED:I = 0x3

.field public static final WIFI_STATE_ON_NO_NETWORKS:I = 0x2

.field public static final WIFI_STATE_SOFT_AP:I = 0x7

.field private static final WIFI_STATE_TIME_DATA:Ljava/lang/String; = "wst"

.field public static final WIFI_SUPPL_STATE_ASSOCIATED:I = 0x7

.field public static final WIFI_SUPPL_STATE_ASSOCIATING:I = 0x6

.field public static final WIFI_SUPPL_STATE_AUTHENTICATING:I = 0x5

.field public static final WIFI_SUPPL_STATE_COMPLETED:I = 0xa

.field private static final WIFI_SUPPL_STATE_COUNT_DATA:Ljava/lang/String; = "wssc"

.field public static final WIFI_SUPPL_STATE_DISCONNECTED:I = 0x1

.field public static final WIFI_SUPPL_STATE_DORMANT:I = 0xb

.field public static final WIFI_SUPPL_STATE_FOUR_WAY_HANDSHAKE:I = 0x8

.field public static final WIFI_SUPPL_STATE_GROUP_HANDSHAKE:I = 0x9

.field public static final WIFI_SUPPL_STATE_INACTIVE:I = 0x3

.field public static final WIFI_SUPPL_STATE_INTERFACE_DISABLED:I = 0x2

.field public static final WIFI_SUPPL_STATE_INVALID:I = 0x0

.field static final WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

.field public static final WIFI_SUPPL_STATE_SCANNING:I = 0x4

.field static final WIFI_SUPPL_STATE_SHORT_NAMES:[Ljava/lang/String;

.field private static final WIFI_SUPPL_STATE_TIME_DATA:Ljava/lang/String; = "wsst"

.field public static final WIFI_SUPPL_STATE_UNINITIALIZED:I = 0xc


# instance fields
.field private final mFormatBuilder:Ljava/lang/StringBuilder;

.field private final mFormatter:Ljava/util/Formatter;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x3

    const/4 v10, 0x0

    .line 167
    new-array v0, v11, [Ljava/lang/String;

    const-string/jumbo v1, "l"

    aput-object v1, v0, v10

    const-string v1, "c"

    aput-object v1, v0, v12

    const-string/jumbo v1, "u"

    aput-object v1, v0, v13

    sput-object v0, Landroid/os/BatteryStats;->STAT_NAMES:[Ljava/lang/String;

    .line 1588
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "dark"

    aput-object v1, v0, v10

    const-string v1, "dim"

    aput-object v1, v0, v12

    const-string/jumbo v1, "medium"

    aput-object v1, v0, v13

    const-string/jumbo v1, "light"

    aput-object v1, v0, v11

    const-string v1, "bright"

    aput-object v1, v0, v14

    sput-object v0, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    .line 1592
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v10

    const-string v1, "1"

    aput-object v1, v0, v12

    const-string v1, "2"

    aput-object v1, v0, v13

    const-string v1, "3"

    aput-object v1, v0, v11

    const-string v1, "4"

    aput-object v1, v0, v14

    sput-object v0, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_SHORT_NAMES:[Ljava/lang/String;

    .line 1759
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "none"

    aput-object v1, v0, v10

    const-string v1, "gprs"

    aput-object v1, v0, v12

    const-string v1, "edge"

    aput-object v1, v0, v13

    const-string/jumbo v1, "umts"

    aput-object v1, v0, v11

    const-string v1, "cdma"

    aput-object v1, v0, v14

    const/4 v1, 0x5

    const-string v2, "evdo_0"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "evdo_A"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "1xrtt"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "hsdpa"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "hsupa"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "hspa"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "iden"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "evdo_b"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "lte"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "ehrpd"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "hspap"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "other"

    aput-object v2, v0, v1

    sput-object v0, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    .line 1800
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "invalid"

    aput-object v1, v0, v10

    const-string v1, "disconn"

    aput-object v1, v0, v12

    const-string v1, "disabled"

    aput-object v1, v0, v13

    const-string/jumbo v1, "inactive"

    aput-object v1, v0, v11

    const-string/jumbo v1, "scanning"

    aput-object v1, v0, v14

    const/4 v1, 0x5

    const-string v2, "authenticating"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "associating"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "associated"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "4-way-handshake"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "group-handshake"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "completed"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "dormant"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "uninit"

    aput-object v2, v0, v1

    sput-object v0, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

    .line 1806
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "inv"

    aput-object v1, v0, v10

    const-string v1, "dsc"

    aput-object v1, v0, v12

    const-string v1, "dis"

    aput-object v1, v0, v13

    const-string/jumbo v1, "inact"

    aput-object v1, v0, v11

    const-string/jumbo v1, "scan"

    aput-object v1, v0, v14

    const/4 v1, 0x5

    const-string v2, "auth"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ascing"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "asced"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "4-way"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "group"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "compl"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "dorm"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "uninit"

    aput-object v2, v0, v1

    sput-object v0, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_SHORT_NAMES:[Ljava/lang/String;

    .line 1812
    const/16 v0, 0x11

    new-array v7, v0, [Landroid/os/BatteryStats$BitDescription;

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const/high16 v1, -0x80000000

    const-string/jumbo v2, "running"

    const-string/jumbo v3, "r"

    invoke-direct {v0, v1, v2, v3}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v10

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const/high16 v1, 0x40000000    # 2.0f

    const-string/jumbo v2, "wake_lock"

    const-string/jumbo v3, "w"

    invoke-direct {v0, v1, v2, v3}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v12

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const/high16 v1, 0x800000

    const-string/jumbo v2, "sensor"

    const-string/jumbo v3, "s"

    invoke-direct {v0, v1, v2, v3}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v13

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const/high16 v1, 0x20000000

    const-string v2, "gps"

    const-string v3, "g"

    invoke-direct {v0, v1, v2, v3}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v11

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const/high16 v1, 0x10000000

    const-string/jumbo v2, "wifi_full_lock"

    const-string v3, "Wl"

    invoke-direct {v0, v1, v2, v3}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v14

    const/4 v0, 0x5

    new-instance v1, Landroid/os/BatteryStats$BitDescription;

    const/high16 v2, 0x8000000

    const-string/jumbo v3, "wifi_scan"

    const-string v4, "Ws"

    invoke-direct {v1, v2, v3, v4}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v7, v0

    const/4 v0, 0x6

    new-instance v1, Landroid/os/BatteryStats$BitDescription;

    const/high16 v2, 0x10000

    const-string/jumbo v3, "wifi_multicast"

    const-string v4, "Wm"

    invoke-direct {v1, v2, v3, v4}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v7, v0

    const/4 v0, 0x7

    new-instance v1, Landroid/os/BatteryStats$BitDescription;

    const/high16 v2, 0x4000000

    const-string/jumbo v3, "wifi_radio"

    const-string v4, "Wr"

    invoke-direct {v1, v2, v3, v4}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v7, v0

    const/16 v0, 0x8

    new-instance v1, Landroid/os/BatteryStats$BitDescription;

    const/high16 v2, 0x2000000

    const-string/jumbo v3, "mobile_radio"

    const-string v4, "Pr"

    invoke-direct {v1, v2, v3, v4}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v7, v0

    const/16 v0, 0x9

    new-instance v1, Landroid/os/BatteryStats$BitDescription;

    const/high16 v2, 0x200000

    const-string/jumbo v3, "phone_scanning"

    const-string v4, "Psc"

    invoke-direct {v1, v2, v3, v4}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v7, v0

    const/16 v0, 0xa

    new-instance v1, Landroid/os/BatteryStats$BitDescription;

    const/high16 v2, 0x400000

    const-string v3, "audio"

    const-string v4, "a"

    invoke-direct {v1, v2, v3, v4}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v7, v0

    const/16 v0, 0xb

    new-instance v1, Landroid/os/BatteryStats$BitDescription;

    const/high16 v2, 0x100000

    const-string/jumbo v3, "screen"

    const-string v4, "S"

    invoke-direct {v1, v2, v3, v4}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v7, v0

    const/16 v0, 0xc

    new-instance v1, Landroid/os/BatteryStats$BitDescription;

    const/high16 v2, 0x80000

    const-string/jumbo v3, "plugged"

    const-string v4, "BP"

    invoke-direct {v1, v2, v3, v4}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v7, v0

    const/16 v8, 0xd

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const/16 v1, 0x3e00

    const/16 v2, 0x9

    const-string v3, "data_conn"

    const-string v4, "Pcn"

    sget-object v5, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    sget-object v6, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0xe

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const/16 v1, 0x1c0

    const/4 v2, 0x6

    const-string/jumbo v3, "phone_state"

    const-string v4, "Pst"

    new-array v5, v14, [Ljava/lang/String;

    const-string/jumbo v6, "in"

    aput-object v6, v5, v10

    const-string/jumbo v6, "out"

    aput-object v6, v5, v12

    const-string v6, "emergency"

    aput-object v6, v5, v13

    const-string/jumbo v6, "off"

    aput-object v6, v5, v11

    new-array v6, v14, [Ljava/lang/String;

    const-string/jumbo v9, "in"

    aput-object v9, v6, v10

    const-string/jumbo v9, "out"

    aput-object v9, v6, v12

    const-string v9, "em"

    aput-object v9, v6, v13

    const-string/jumbo v9, "off"

    aput-object v9, v6, v11

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0xf

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const/16 v1, 0x38

    const-string/jumbo v3, "phone_signal_strength"

    const-string v4, "Pss"

    sget-object v5, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    const/4 v2, 0x5

    new-array v6, v2, [Ljava/lang/String;

    const-string v2, "0"

    aput-object v2, v6, v10

    const-string v2, "1"

    aput-object v2, v6, v12

    const-string v2, "2"

    aput-object v2, v6, v13

    const-string v2, "3"

    aput-object v2, v6, v11

    const-string v2, "4"

    aput-object v2, v6, v14

    move v2, v11

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x10

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const/4 v1, 0x7

    const-string v3, "brightness"

    const-string v4, "Sb"

    sget-object v5, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    sget-object v6, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_SHORT_NAMES:[Ljava/lang/String;

    move v2, v10

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v0, v7, v8

    sput-object v7, Landroid/os/BatteryStats;->HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    .line 1843
    const/16 v0, 0xc

    new-array v7, v0, [Landroid/os/BatteryStats$BitDescription;

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const/high16 v1, -0x80000000

    const-string/jumbo v2, "power_save"

    const-string/jumbo v3, "ps"

    invoke-direct {v0, v1, v2, v3}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v10

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const/high16 v1, 0x40000000    # 2.0f

    const-string/jumbo v2, "video"

    const-string/jumbo v3, "v"

    invoke-direct {v0, v1, v2, v3}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v12

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const/high16 v1, 0x20000000

    const-string/jumbo v2, "wifi_running"

    const-string v3, "Ww"

    invoke-direct {v0, v1, v2, v3}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v13

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const/high16 v1, 0x10000000

    const-string/jumbo v2, "wifi"

    const-string v3, "W"

    invoke-direct {v0, v1, v2, v3}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v11

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const/high16 v1, 0x8000000

    const-string v2, "flashlight"

    const-string v3, "fl"

    invoke-direct {v0, v1, v2, v3}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v14

    const/4 v0, 0x5

    new-instance v1, Landroid/os/BatteryStats$BitDescription;

    const/high16 v2, 0x4000000

    const-string v3, "device_idle"

    const-string v4, "di"

    invoke-direct {v1, v2, v3, v4}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v7, v0

    const/4 v0, 0x6

    new-instance v1, Landroid/os/BatteryStats$BitDescription;

    const/high16 v2, 0x2000000

    const-string v3, "charging"

    const-string v4, "ch"

    invoke-direct {v1, v2, v3, v4}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v7, v0

    const/4 v0, 0x7

    new-instance v1, Landroid/os/BatteryStats$BitDescription;

    const/high16 v2, 0x1000000

    const-string/jumbo v3, "phone_in_call"

    const-string v4, "Pcl"

    invoke-direct {v1, v2, v3, v4}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v7, v0

    const/16 v0, 0x8

    new-instance v1, Landroid/os/BatteryStats$BitDescription;

    const/high16 v2, 0x800000

    const-string v3, "bluetooth"

    const-string v4, "b"

    invoke-direct {v1, v2, v3, v4}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v7, v0

    const/16 v8, 0x9

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const/16 v1, 0x70

    const-string/jumbo v3, "wifi_signal_strength"

    const-string v4, "Wss"

    const/4 v2, 0x5

    new-array v5, v2, [Ljava/lang/String;

    const-string v2, "0"

    aput-object v2, v5, v10

    const-string v2, "1"

    aput-object v2, v5, v12

    const-string v2, "2"

    aput-object v2, v5, v13

    const-string v2, "3"

    aput-object v2, v5, v11

    const-string v2, "4"

    aput-object v2, v5, v14

    const/4 v2, 0x5

    new-array v6, v2, [Ljava/lang/String;

    const-string v2, "0"

    aput-object v2, v6, v10

    const-string v2, "1"

    aput-object v2, v6, v12

    const-string v2, "2"

    aput-object v2, v6, v13

    const-string v2, "3"

    aput-object v2, v6, v11

    const-string v2, "4"

    aput-object v2, v6, v14

    move v2, v14

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0xa

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const/16 v1, 0xf

    const-string/jumbo v3, "wifi_suppl"

    const-string v4, "Wsp"

    sget-object v5, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

    sget-object v6, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_SHORT_NAMES:[Ljava/lang/String;

    move v2, v10

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v0, 0xb

    new-instance v1, Landroid/os/BatteryStats$BitDescription;

    const/high16 v2, 0x400000

    const-string v3, "camera"

    const-string v4, "ca"

    invoke-direct {v1, v2, v3, v4}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v7, v0

    sput-object v7, Landroid/os/BatteryStats;->HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    .line 1864
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "null"

    aput-object v1, v0, v10

    const-string/jumbo v1, "proc"

    aput-object v1, v0, v12

    const-string v1, "fg"

    aput-object v1, v0, v13

    const-string/jumbo v1, "top"

    aput-object v1, v0, v11

    const-string/jumbo v1, "sync"

    aput-object v1, v0, v14

    const/4 v1, 0x5

    const-string/jumbo v2, "wake_lock_in"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "job"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "user"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "userfg"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "conn"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "active"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "pkginst"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "pkgunin"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "alarm"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "stats"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "inactive"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "active"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "tmpwhitelist"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "screenwake"

    aput-object v2, v0, v1

    sput-object v0, Landroid/os/BatteryStats;->HISTORY_EVENT_NAMES:[Ljava/lang/String;

    .line 1870
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Enl"

    aput-object v1, v0, v10

    const-string v1, "Epr"

    aput-object v1, v0, v12

    const-string v1, "Efg"

    aput-object v1, v0, v13

    const-string v1, "Etp"

    aput-object v1, v0, v11

    const-string v1, "Esy"

    aput-object v1, v0, v14

    const/4 v1, 0x5

    const-string v2, "Ewl"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Ejb"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Eur"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Euf"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Ecn"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Eac"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Epi"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Epu"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Eal"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Est"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Eai"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Eaa"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Etw"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Esw"

    aput-object v2, v0, v1

    sput-object v0, Landroid/os/BatteryStats;->HISTORY_EVENT_CHECKIN_NAMES:[Ljava/lang/String;

    .line 1901
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "off"

    aput-object v1, v0, v10

    const-string/jumbo v1, "scanning"

    aput-object v1, v0, v12

    const-string/jumbo v1, "no_net"

    aput-object v1, v0, v13

    const-string v1, "disconn"

    aput-object v1, v0, v11

    const-string/jumbo v1, "sta"

    aput-object v1, v0, v14

    const/4 v1, 0x5

    const-string/jumbo v2, "p2p"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "sta_p2p"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "soft_ap"

    aput-object v2, v0, v1

    sput-object v0, Landroid/os/BatteryStats;->WIFI_STATE_NAMES:[Ljava/lang/String;

    .line 2208
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    .line 2220
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_VALUES:[I

    .line 2232
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "screen off"

    aput-object v1, v0, v10

    const-string/jumbo v1, "screen off power save"

    aput-object v1, v0, v12

    const-string/jumbo v1, "screen off device idle"

    aput-object v1, v0, v13

    const-string/jumbo v1, "screen on"

    aput-object v1, v0, v11

    const-string/jumbo v1, "screen on power save"

    aput-object v1, v0, v14

    const/4 v1, 0x5

    const-string/jumbo v2, "screen doze"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "screen doze power save"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "screen doze-suspend"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "screen doze-suspend power save"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "screen doze-suspend device idle"

    aput-object v2, v0, v1

    sput-object v0, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    return-void

    .line 2208
    :array_0
    .array-data 4
        0x7
        0xf
        0xb
        0x7
        0x7
        0x7
        0x7
        0x7
        0xf
        0xb
    .end array-data

    .line 2220
    :array_1
    .array-data 4
        0x0
        0x4
        0x8
        0x1
        0x5
        0x2
        0x6
        0x3
        0x7
        0xb
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 233
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    iput-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    .line 4252
    return-void
.end method

.method private static computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J
    .locals 9
    .param p0, "timer"    # Landroid/os/BatteryStats$Timer;
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 2353
    if-eqz p0, :cond_0

    .line 2355
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    .line 2356
    .local v0, "totalTimeMicros":J
    const-wide/16 v4, 0x1f4

    add-long/2addr v4, v0

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    .line 2359
    .end local v0    # "totalTimeMicros":J
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method private dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V
    .locals 14
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "steps"    # Landroid/os/BatteryStats$LevelStepTracker;
    .param p5, "tmpSb"    # Ljava/lang/StringBuilder;
    .param p6, "tmpOutInt"    # [I

    .prologue
    .line 4803
    if-nez p4, :cond_1

    .line 4829
    :cond_0
    return-void

    .line 4806
    :cond_1
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v3, p4

    move-object/from16 v8, p6

    invoke-virtual/range {v3 .. v8}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimeEstimate(JJ[I)J

    move-result-wide v12

    .line 4807
    .local v12, "timeRemaining":J
    const-wide/16 v4, 0x0

    cmp-long v3, v12, v4

    if-ltz v3, :cond_2

    .line 4808
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " total time: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4809
    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4810
    move-object/from16 v0, p5

    invoke-static {v0, v12, v13}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4811
    move-object/from16 v0, p5

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4812
    const-string v3, " (from "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v3, 0x0

    aget v3, p6, v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 4813
    const-string v3, " steps)"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4815
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 4816
    sget-object v3, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    aget v3, v3, v2

    int-to-long v4, v3

    sget-object v3, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_VALUES:[I

    aget v3, v3, v2

    int-to-long v6, v3

    move-object/from16 v3, p4

    move-object/from16 v8, p6

    invoke-virtual/range {v3 .. v8}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimeEstimate(JJ[I)J

    move-result-wide v10

    .line 4818
    .local v10, "estimatedTime":J
    const-wide/16 v4, 0x0

    cmp-long v3, v10, v4

    if-lez v3, :cond_3

    .line 4819
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4820
    sget-object v3, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4821
    const-string v3, " time: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4822
    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4823
    move-object/from16 v0, p5

    invoke-static {v0, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4824
    move-object/from16 v0, p5

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4825
    const-string v3, " (from "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v3, 0x0

    aget v3, p6, v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 4826
    const-string v3, " steps)"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4815
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private dumpDailyPackageChanges(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/BatteryStats$PackageChange;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4833
    .local p3, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$PackageChange;>;"
    if-nez p3, :cond_1

    .line 4846
    :cond_0
    return-void

    .line 4836
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Package changes:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4837
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 4838
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$PackageChange;

    .line 4839
    .local v1, "pc":Landroid/os/BatteryStats$PackageChange;
    iget-boolean v2, v1, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    if-eqz v2, :cond_2

    .line 4840
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Update "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4841
    const-string v2, " vers="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Landroid/os/BatteryStats$PackageChange;->mVersionCode:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 4837
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4843
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Uninstall "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z
    .locals 20
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "header"    # Ljava/lang/String;
    .param p3, "steps"    # Landroid/os/BatteryStats$LevelStepTracker;
    .param p4, "checkin"    # Z

    .prologue
    .line 4631
    if-nez p3, :cond_0

    .line 4632
    const/4 v11, 0x0

    .line 4707
    :goto_0
    return v11

    .line 4634
    :cond_0
    move-object/from16 v0, p3

    iget v2, v0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 4635
    .local v2, "count":I
    if-gtz v2, :cond_1

    .line 4636
    const/4 v11, 0x0

    goto :goto_0

    .line 4638
    :cond_1
    if-nez p4, :cond_2

    .line 4639
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4641
    :cond_2
    const/4 v11, 0x5

    new-array v10, v11, [Ljava/lang/String;

    .line 4642
    .local v10, "lineArgs":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v2, :cond_11

    .line 4643
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getDurationAt(I)J

    move-result-wide v4

    .line 4644
    .local v4, "duration":J
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getLevelAt(I)I

    move-result v7

    .line 4645
    .local v7, "level":I
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getInitModeAt(I)I

    move-result v11

    int-to-long v8, v11

    .line 4646
    .local v8, "initMode":J
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getModModeAt(I)I

    move-result v11

    int-to-long v12, v11

    .line 4647
    .local v12, "modMode":J
    if-eqz p4, :cond_8

    .line 4648
    const/4 v11, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v10, v11

    .line 4649
    const/4 v11, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v10, v11

    .line 4650
    const-wide/16 v14, 0x3

    and-long/2addr v14, v12

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-nez v11, :cond_3

    .line 4651
    const-wide/16 v14, 0x3

    and-long/2addr v14, v8

    long-to-int v11, v14

    add-int/lit8 v11, v11, 0x1

    packed-switch v11, :pswitch_data_0

    .line 4656
    const/4 v11, 0x2

    const-string v14, "?"

    aput-object v14, v10, v11

    .line 4661
    :goto_2
    const-wide/16 v14, 0x4

    and-long/2addr v14, v12

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-nez v11, :cond_5

    .line 4662
    const/4 v14, 0x3

    const-wide/16 v16, 0x4

    and-long v16, v16, v8

    const-wide/16 v18, 0x0

    cmp-long v11, v16, v18

    if-eqz v11, :cond_4

    const-string/jumbo v11, "p+"

    :goto_3
    aput-object v11, v10, v14

    .line 4666
    :goto_4
    const-wide/16 v14, 0x8

    and-long/2addr v14, v12

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-nez v11, :cond_7

    .line 4667
    const/4 v14, 0x4

    const-wide/16 v16, 0x8

    and-long v16, v16, v8

    const-wide/16 v18, 0x0

    cmp-long v11, v16, v18

    if-eqz v11, :cond_6

    const-string/jumbo v11, "i+"

    :goto_5
    aput-object v11, v10, v14

    .line 4671
    :goto_6
    const/4 v14, 0x0

    const-string/jumbo v15, "i"

    move-object v11, v10

    check-cast v11, [Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v14, v15, v1, v11}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4642
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 4652
    :pswitch_0
    const/4 v11, 0x2

    const-string/jumbo v14, "s-"

    aput-object v14, v10, v11

    goto :goto_2

    .line 4653
    :pswitch_1
    const/4 v11, 0x2

    const-string/jumbo v14, "s+"

    aput-object v14, v10, v11

    goto :goto_2

    .line 4654
    :pswitch_2
    const/4 v11, 0x2

    const-string/jumbo v14, "sd"

    aput-object v14, v10, v11

    goto :goto_2

    .line 4655
    :pswitch_3
    const/4 v11, 0x2

    const-string/jumbo v14, "sds"

    aput-object v14, v10, v11

    goto :goto_2

    .line 4659
    :cond_3
    const/4 v11, 0x2

    const-string v14, ""

    aput-object v14, v10, v11

    goto :goto_2

    .line 4662
    :cond_4
    const-string/jumbo v11, "p-"

    goto :goto_3

    .line 4664
    :cond_5
    const/4 v11, 0x3

    const-string v14, ""

    aput-object v14, v10, v11

    goto :goto_4

    .line 4667
    :cond_6
    const-string/jumbo v11, "i-"

    goto :goto_5

    .line 4669
    :cond_7
    const/4 v11, 0x4

    const-string v14, ""

    aput-object v14, v10, v11

    goto :goto_6

    .line 4673
    :cond_8
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4674
    const-string v11, "#"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v11, ": "

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4675
    move-object/from16 v0, p0

    invoke-static {v4, v5, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4676
    const-string v11, " to "

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 4677
    const/4 v3, 0x0

    .line 4678
    .local v3, "haveModes":Z
    const-wide/16 v14, 0x3

    and-long/2addr v14, v12

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-nez v11, :cond_9

    .line 4679
    const-string v11, " ("

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4680
    const-wide/16 v14, 0x3

    and-long/2addr v14, v8

    long-to-int v11, v14

    add-int/lit8 v11, v11, 0x1

    packed-switch v11, :pswitch_data_1

    .line 4685
    const-string/jumbo v11, "screen-?"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4687
    :goto_8
    const/4 v3, 0x1

    .line 4689
    :cond_9
    const-wide/16 v14, 0x4

    and-long/2addr v14, v12

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-nez v11, :cond_a

    .line 4690
    if-eqz v3, :cond_d

    const-string v11, ", "

    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4691
    const-wide/16 v14, 0x4

    and-long/2addr v14, v8

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-eqz v11, :cond_e

    const-string/jumbo v11, "power-save-on"

    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4693
    const/4 v3, 0x1

    .line 4695
    :cond_a
    const-wide/16 v14, 0x8

    and-long/2addr v14, v12

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-nez v11, :cond_b

    .line 4696
    if-eqz v3, :cond_f

    const-string v11, ", "

    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4697
    const-wide/16 v14, 0x8

    and-long/2addr v14, v8

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-eqz v11, :cond_10

    const-string v11, "device-idle-on"

    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4699
    const/4 v3, 0x1

    .line 4701
    :cond_b
    if-eqz v3, :cond_c

    .line 4702
    const-string v11, ")"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4704
    :cond_c
    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_7

    .line 4681
    :pswitch_4
    const-string/jumbo v11, "screen-off"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_8

    .line 4682
    :pswitch_5
    const-string/jumbo v11, "screen-on"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_8

    .line 4683
    :pswitch_6
    const-string/jumbo v11, "screen-doze"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_8

    .line 4684
    :pswitch_7
    const-string/jumbo v11, "screen-doze-suspend"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_8

    .line 4690
    :cond_d
    const-string v11, " ("

    goto :goto_9

    .line 4691
    :cond_e
    const-string/jumbo v11, "power-save-off"

    goto :goto_a

    .line 4696
    :cond_f
    const-string v11, " ("

    goto :goto_b

    .line 4697
    :cond_10
    const-string v11, "device-idle-off"

    goto :goto_c

    .line 4707
    .end local v3    # "haveModes":Z
    .end local v4    # "duration":J
    .end local v7    # "level":I
    .end local v8    # "initMode":J
    .end local v12    # "modMode":J
    :cond_11
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 4651
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 4680
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private dumpHistoryLocked(Ljava/io/PrintWriter;IJZ)V
    .locals 25
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "flags"    # I
    .param p3, "histStart"    # J
    .param p5, "checkin"    # Z

    .prologue
    .line 4718
    new-instance v3, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v3}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    .line 4719
    .local v3, "hprinter":Landroid/os/BatteryStats$HistoryPrinter;
    new-instance v5, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v5}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 4720
    .local v5, "rec":Landroid/os/BatteryStats$HistoryItem;
    const-wide/16 v16, -0x1

    .line 4721
    .local v16, "lastTime":J
    const-wide/16 v6, -0x1

    .line 4722
    .local v6, "baseTime":J
    const/16 v19, 0x0

    .line 4723
    .local v19, "printed":Z
    const/16 v20, 0x0

    .line 4724
    .local v20, "tracker":Landroid/os/BatteryStats$HistoryEventTracker;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 4725
    iget-wide v0, v5, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v16, v0

    .line 4726
    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-gez v4, :cond_1

    .line 4727
    move-wide/from16 v6, v16

    .line 4729
    :cond_1
    iget-wide v8, v5, Landroid/os/BatteryStats$HistoryItem;->time:J

    cmp-long v4, v8, p3

    if-ltz v4, :cond_0

    .line 4730
    const-wide/16 v8, 0x0

    cmp-long v4, p3, v8

    if-ltz v4, :cond_e

    if-nez v19, :cond_e

    .line 4731
    iget-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v8, 0x5

    if-eq v4, v8, :cond_2

    iget-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v8, 0x7

    if-eq v4, v8, :cond_2

    iget-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v8, 0x4

    if-eq v4, v8, :cond_2

    iget-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/16 v8, 0x8

    if-ne v4, v8, :cond_7

    .line 4735
    :cond_2
    const/16 v19, 0x1

    .line 4736
    and-int/lit8 v4, p2, 0x20

    if-eqz v4, :cond_6

    const/4 v9, 0x1

    :goto_1
    move-object/from16 v4, p1

    move/from16 v8, p5

    invoke-virtual/range {v3 .. v9}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    .line 4738
    const/4 v4, 0x0

    iput-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 4747
    :cond_3
    :goto_2
    if-eqz v20, :cond_e

    .line 4748
    iget-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-eqz v4, :cond_4

    .line 4749
    and-int/lit8 v4, p2, 0x20

    if-eqz v4, :cond_9

    const/4 v9, 0x1

    :goto_3
    move-object/from16 v4, p1

    move/from16 v8, p5

    invoke-virtual/range {v3 .. v9}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    .line 4751
    const/4 v4, 0x0

    iput-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 4753
    :cond_4
    iget v15, v5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 4754
    .local v15, "oldEventCode":I
    iget-object v0, v5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v18, v0

    .line 4755
    .local v18, "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    new-instance v4, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v4}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v4, v5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 4756
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_4
    const/16 v4, 0x13

    if-ge v12, v4, :cond_d

    .line 4757
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/os/BatteryStats$HistoryEventTracker;->getStateForEvent(I)Ljava/util/HashMap;

    move-result-object v2

    .line 4759
    .local v2, "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    if-nez v2, :cond_a

    .line 4756
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 4736
    .end local v2    # "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v12    # "i":I
    .end local v15    # "oldEventCode":I
    .end local v18    # "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    :cond_6
    const/4 v9, 0x0

    goto :goto_1

    .line 4739
    :cond_7
    iget-wide v8, v5, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    const-wide/16 v22, 0x0

    cmp-long v4, v8, v22

    if-eqz v4, :cond_3

    .line 4740
    const/16 v19, 0x1

    .line 4741
    iget-byte v10, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 4742
    .local v10, "cmd":B
    const/4 v4, 0x5

    iput-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 4743
    and-int/lit8 v4, p2, 0x20

    if-eqz v4, :cond_8

    const/4 v9, 0x1

    :goto_5
    move-object/from16 v4, p1

    move/from16 v8, p5

    invoke-virtual/range {v3 .. v9}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    .line 4745
    iput-byte v10, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    goto :goto_2

    .line 4743
    :cond_8
    const/4 v9, 0x0

    goto :goto_5

    .line 4749
    .end local v10    # "cmd":B
    :cond_9
    const/4 v9, 0x0

    goto :goto_3

    .line 4763
    .restart local v2    # "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .restart local v12    # "i":I
    .restart local v15    # "oldEventCode":I
    .restart local v18    # "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    :cond_a
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 4764
    .local v11, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/util/SparseIntArray;

    .line 4765
    .local v21, "uids":Landroid/util/SparseIntArray;
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_6
    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v14, v4, :cond_b

    .line 4766
    iput v12, v5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 4767
    iget-object v8, v5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v8, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 4768
    iget-object v4, v5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    iput v8, v4, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 4769
    iget-object v4, v5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    iput v8, v4, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 4770
    and-int/lit8 v4, p2, 0x20

    if-eqz v4, :cond_c

    const/4 v9, 0x1

    :goto_7
    move-object/from16 v4, p1

    move/from16 v8, p5

    invoke-virtual/range {v3 .. v9}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    .line 4772
    const/4 v4, 0x0

    iput-object v4, v5, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 4773
    const/4 v4, 0x0

    iput-object v4, v5, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 4765
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 4770
    :cond_c
    const/4 v9, 0x0

    goto :goto_7

    .line 4777
    .end local v2    # "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v11    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "j":I
    .end local v21    # "uids":Landroid/util/SparseIntArray;
    :cond_d
    iput v15, v5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 4778
    move-object/from16 v0, v18

    iput-object v0, v5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 4779
    const/16 v20, 0x0

    .line 4782
    .end local v12    # "i":I
    .end local v15    # "oldEventCode":I
    .end local v18    # "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    :cond_e
    and-int/lit8 v4, p2, 0x20

    if-eqz v4, :cond_f

    const/4 v9, 0x1

    :goto_8
    move-object/from16 v4, p1

    move/from16 v8, p5

    invoke-virtual/range {v3 .. v9}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    goto/16 :goto_0

    :cond_f
    const/4 v9, 0x0

    goto :goto_8

    .line 4795
    :cond_10
    const-wide/16 v8, 0x0

    cmp-long v4, p3, v8

    if-ltz v4, :cond_11

    .line 4796
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->commitCurrentHistoryBatchLocked()V

    .line 4797
    if-eqz p5, :cond_12

    const-string v4, "NEXT: "

    :goto_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v8, 0x1

    add-long v8, v8, v16

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Ljava/io/PrintWriter;->println(J)V

    .line 4799
    :cond_11
    return-void

    .line 4797
    :cond_12
    const-string v4, "  NEXT: "

    goto :goto_9
.end method

.method private static final varargs dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "uid"    # I
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .prologue
    const/16 v5, 0x2c

    .line 2466
    const/16 v4, 0x9

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2467
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 2468
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 2469
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 2470
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2471
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 2472
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2474
    move-object v1, p4

    .local v1, "arr$":[Ljava/lang/Object;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 2475
    .local v0, "arg":Ljava/lang/Object;
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 2476
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2474
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2478
    .end local v0    # "arg":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 2479
    return-void
.end method

.method private static dumpTimeEstimate(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "label1"    # Ljava/lang/String;
    .param p2, "label2"    # Ljava/lang/String;
    .param p3, "label3"    # Ljava/lang/String;
    .param p4, "estimatedTime"    # J

    .prologue
    .line 4616
    const-wide/16 v2, 0x0

    cmp-long v1, p4, v2

    if-gez v1, :cond_0

    .line 4617
    const/4 v1, 0x0

    .line 4626
    :goto_0
    return v1

    .line 4619
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4620
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4621
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4622
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4623
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {v0, p4, p5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4624
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4625
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 4626
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static final dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V
    .locals 11
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "uid"    # I
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "timer"    # Landroid/os/BatteryStats$Timer;
    .param p5, "rawRealtime"    # J
    .param p7, "which"    # I

    .prologue
    .line 2494
    if-eqz p4, :cond_0

    .line 2496
    invoke-virtual/range {p4 .. p7}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v6

    const-wide/16 v8, 0x1f4

    add-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long v4, v6, v8

    .line 2498
    .local v4, "totalTime":J
    move/from16 v0, p7

    invoke-virtual {p4, v0}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v2

    .line 2499
    .local v2, "count":I
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 2500
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v3, v6

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {p0, p1, p2, p3, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2503
    .end local v2    # "count":I
    .end local v4    # "totalTime":J
    :cond_0
    return-void
.end method

.method public static final formatTimeMs(Ljava/lang/StringBuilder;J)V
    .locals 5
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "time"    # J

    .prologue
    const-wide/16 v2, 0x3e8

    .line 2312
    div-long v0, p1, v2

    .line 2313
    .local v0, "sec":J
    invoke-static {p0, v0, v1}, Landroid/os/BatteryStats;->formatTimeRaw(Ljava/lang/StringBuilder;J)V

    .line 2314
    mul-long/2addr v2, v0

    sub-long v2, p1, v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2315
    const-string/jumbo v2, "ms "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2316
    return-void
.end method

.method public static final formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V
    .locals 5
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "time"    # J

    .prologue
    const-wide/16 v2, 0x3e8

    .line 2319
    div-long v0, p1, v2

    .line 2320
    .local v0, "sec":J
    invoke-static {p0, v0, v1}, Landroid/os/BatteryStats;->formatTimeRaw(Ljava/lang/StringBuilder;J)V

    .line 2321
    mul-long/2addr v2, v0

    sub-long v2, p1, v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2322
    const-string/jumbo v2, "ms"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2323
    return-void
.end method

.method private static final formatTimeRaw(Ljava/lang/StringBuilder;J)V
    .locals 13
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "seconds"    # J

    .prologue
    .line 2284
    const-wide/32 v8, 0x15180

    div-long v0, p1, v8

    .line 2285
    .local v0, "days":J
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-eqz v8, :cond_0

    .line 2286
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2287
    const-string v8, "d "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2289
    :cond_0
    const-wide/16 v8, 0x3c

    mul-long/2addr v8, v0

    const-wide/16 v10, 0x3c

    mul-long/2addr v8, v10

    const-wide/16 v10, 0x18

    mul-long v6, v8, v10

    .line 2291
    .local v6, "used":J
    sub-long v8, p1, v6

    const-wide/16 v10, 0xe10

    div-long v2, v8, v10

    .line 2292
    .local v2, "hours":J
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-nez v8, :cond_1

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-eqz v8, :cond_2

    .line 2293
    :cond_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2294
    const-string v8, "h "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2296
    :cond_2
    const-wide/16 v8, 0x3c

    mul-long/2addr v8, v2

    const-wide/16 v10, 0x3c

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    .line 2298
    sub-long v8, p1, v6

    const-wide/16 v10, 0x3c

    div-long v4, v8, v10

    .line 2299
    .local v4, "mins":J
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-nez v8, :cond_3

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-eqz v8, :cond_4

    .line 2300
    :cond_3
    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2301
    const-string/jumbo v8, "m "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2303
    :cond_4
    const-wide/16 v8, 0x3c

    mul-long/2addr v8, v4

    add-long/2addr v6, v8

    .line 2305
    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-nez v8, :cond_5

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-eqz v8, :cond_6

    .line 2306
    :cond_5
    sub-long v8, p1, v6

    invoke-virtual {p0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2307
    const-string/jumbo v8, "s "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2309
    :cond_6
    return-void
.end method

.method static printBitDescriptions(Ljava/io/PrintWriter;IILandroid/os/BatteryStats$HistoryTag;[Landroid/os/BatteryStats$BitDescription;Z)V
    .locals 7
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "oldval"    # I
    .param p2, "newval"    # I
    .param p3, "wakelockTag"    # Landroid/os/BatteryStats$HistoryTag;
    .param p4, "descriptions"    # [Landroid/os/BatteryStats$BitDescription;
    .param p5, "longNames"    # Z

    .prologue
    .line 4202
    xor-int v2, p1, p2

    .line 4203
    .local v2, "diff":I
    if-nez v2, :cond_1

    .line 4247
    :cond_0
    :goto_0
    return-void

    .line 4204
    :cond_1
    const/4 v1, 0x0

    .line 4205
    .local v1, "didWake":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v5, p4

    if-ge v3, v5, :cond_b

    .line 4206
    aget-object v0, p4, v3

    .line 4207
    .local v0, "bd":Landroid/os/BatteryStats$BitDescription;
    iget v5, v0, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v5, v2

    if-eqz v5, :cond_2

    .line 4208
    if-eqz p5, :cond_3

    const-string v5, " "

    :goto_2
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4209
    iget v5, v0, Landroid/os/BatteryStats$BitDescription;->shift:I

    if-gez v5, :cond_7

    .line 4210
    iget v5, v0, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v5, p2

    if-eqz v5, :cond_4

    const-string v5, "+"

    :goto_3
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4211
    if-eqz p5, :cond_5

    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    :goto_4
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4212
    iget v5, v0, Landroid/os/BatteryStats$BitDescription;->mask:I

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v5, v6, :cond_2

    if-eqz p3, :cond_2

    .line 4213
    const/4 v1, 0x1

    .line 4214
    const-string v5, "="

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4215
    if-eqz p5, :cond_6

    .line 4216
    iget v5, p3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-static {p0, v5}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 4217
    const-string v5, ":\""

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4218
    iget-object v5, p3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4219
    const-string v5, "\""

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4205
    :cond_2
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4208
    :cond_3
    const-string v5, ","

    goto :goto_2

    .line 4210
    :cond_4
    const-string v5, "-"

    goto :goto_3

    .line 4211
    :cond_5
    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->shortName:Ljava/lang/String;

    goto :goto_4

    .line 4221
    :cond_6
    iget v5, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_5

    .line 4225
    :cond_7
    if-eqz p5, :cond_8

    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    :goto_6
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4226
    const-string v5, "="

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4227
    iget v5, v0, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v5, p2

    iget v6, v0, Landroid/os/BatteryStats$BitDescription;->shift:I

    shr-int v4, v5, v6

    .line 4228
    .local v4, "val":I
    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    if-eqz v5, :cond_a

    if-ltz v4, :cond_a

    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_a

    .line 4229
    if-eqz p5, :cond_9

    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    aget-object v5, v5, v4

    :goto_7
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_5

    .line 4225
    .end local v4    # "val":I
    :cond_8
    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->shortName:Ljava/lang/String;

    goto :goto_6

    .line 4229
    .restart local v4    # "val":I
    :cond_9
    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->shortValues:[Ljava/lang/String;

    aget-object v5, v5, v4

    goto :goto_7

    .line 4231
    :cond_a
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_5

    .line 4236
    .end local v0    # "bd":Landroid/os/BatteryStats$BitDescription;
    .end local v4    # "val":I
    :cond_b
    if-nez v1, :cond_0

    if-eqz p3, :cond_0

    .line 4237
    if-eqz p5, :cond_c

    const-string v5, " wake_lock="

    :goto_8
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4238
    if-eqz p5, :cond_d

    .line 4239
    iget v5, p3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-static {p0, v5}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 4240
    const-string v5, ":\""

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4241
    iget-object v5, p3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4242
    const-string v5, "\""

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4237
    :cond_c
    const-string v5, ",w="

    goto :goto_8

    .line 4244
    :cond_d
    iget v5, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(I)V

    goto/16 :goto_0
.end method

.method private printSizeValue(Ljava/io/PrintWriter;J)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "size"    # J

    .prologue
    const/high16 v4, 0x46200000    # 10240.0f

    const/high16 v3, 0x44800000    # 1024.0f

    .line 4588
    long-to-float v0, p2

    .line 4589
    .local v0, "result":F
    const-string v1, ""

    .line 4590
    .local v1, "suffix":Ljava/lang/String;
    cmpl-float v2, v0, v4

    if-ltz v2, :cond_0

    .line 4591
    const-string v1, "KB"

    .line 4592
    div-float/2addr v0, v3

    .line 4594
    :cond_0
    cmpl-float v2, v0, v4

    if-ltz v2, :cond_1

    .line 4595
    const-string v1, "MB"

    .line 4596
    div-float/2addr v0, v3

    .line 4598
    :cond_1
    cmpl-float v2, v0, v4

    if-ltz v2, :cond_2

    .line 4599
    const-string v1, "GB"

    .line 4600
    div-float/2addr v0, v3

    .line 4602
    :cond_2
    cmpl-float v2, v0, v4

    if-ltz v2, :cond_3

    .line 4603
    const-string v1, "TB"

    .line 4604
    div-float/2addr v0, v3

    .line 4606
    :cond_3
    cmpl-float v2, v0, v4

    if-ltz v2, :cond_4

    .line 4607
    const-string v1, "PB"

    .line 4608
    div-float/2addr v0, v3

    .line 4610
    :cond_4
    float-to-int v2, v0

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 4611
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4612
    return-void
.end method

.method private static final printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "timer"    # Landroid/os/BatteryStats$Timer;
    .param p3, "rawRealtime"    # J
    .param p5, "which"    # I
    .param p6, "prefix"    # Ljava/lang/String;
    .param p7, "type"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2407
    if-eqz p2, :cond_0

    .line 2409
    invoke-virtual/range {p2 .. p5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v6

    const-wide/16 v8, 0x1f4

    add-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long v4, v6, v8

    .line 2411
    .local v4, "totalTime":J
    move/from16 v0, p5

    invoke-virtual {p2, v0}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v2

    .line 2412
    .local v2, "count":I
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 2413
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2414
    move-object/from16 v0, p6

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2415
    const-string v3, "    "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2416
    move-object/from16 v0, p7

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2417
    const-string v3, ": "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2418
    invoke-static {p1, v4, v5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 2419
    const-string/jumbo v3, "realtime ("

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2420
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2421
    const-string v3, " times)"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2422
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2423
    const/4 v3, 0x1

    .line 2426
    .end local v2    # "count":I
    .end local v4    # "totalTime":J
    :cond_0
    return v3
.end method

.method private static final printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "timer"    # Landroid/os/BatteryStats$Timer;
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "which"    # I
    .param p6, "linePrefix"    # Ljava/lang/String;

    .prologue
    .line 2375
    if-eqz p1, :cond_1

    .line 2376
    invoke-static {p1, p2, p3, p5}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v2

    .line 2378
    .local v2, "totalTimeMillis":J
    invoke-virtual {p1, p5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v0

    .line 2379
    .local v0, "count":I
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 2380
    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2381
    invoke-static {p0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 2382
    if-eqz p4, :cond_0

    .line 2383
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2384
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2386
    :cond_0
    const/16 v1, 0x28

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2387
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2388
    const-string v1, " times)"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2389
    const-string p6, ", "

    .line 2392
    .end local v0    # "count":I
    .end local v2    # "totalTimeMillis":J
    .end local p6    # "linePrefix":Ljava/lang/String;
    :cond_1
    return-object p6
.end method

.method private static final printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "timer"    # Landroid/os/BatteryStats$Timer;
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "which"    # I
    .param p6, "linePrefix"    # Ljava/lang/String;

    .prologue
    .line 2442
    const-wide/16 v2, 0x0

    .line 2443
    .local v2, "totalTimeMicros":J
    const/4 v0, 0x0

    .line 2444
    .local v0, "count":I
    if-eqz p1, :cond_0

    .line 2445
    invoke-virtual {p1, p2, p3, p5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v2

    .line 2446
    invoke-virtual {p1, p5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v0

    .line 2448
    :cond_0
    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2449
    const-wide/16 v4, 0x1f4

    add-long/2addr v4, v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2450
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2451
    if-eqz p4, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2452
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2453
    const-string v1, ","

    return-object v1

    .line 2451
    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method private printmAh(Ljava/io/PrintWriter;D)V
    .locals 2
    .param p1, "printer"    # Ljava/io/PrintWriter;
    .param p2, "power"    # D

    .prologue
    .line 2999
    invoke-static {p2, p3}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3000
    return-void
.end method

.method private printmAh(Ljava/lang/StringBuilder;D)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "power"    # D

    .prologue
    .line 3003
    invoke-static {p2, p3}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3004
    return-void
.end method


# virtual methods
.method public abstract commitCurrentHistoryBatchLocked()V
.end method

.method public abstract computeBatteryRealtime(JI)J
.end method

.method public abstract computeBatteryScreenOffRealtime(JI)J
.end method

.method public abstract computeBatteryScreenOffUptime(JI)J
.end method

.method public abstract computeBatteryTimeRemaining(J)J
.end method

.method public abstract computeBatteryUptime(JI)J
.end method

.method public abstract computeChargeTimeRemaining(J)J
.end method

.method public abstract computeRealtime(JI)J
.end method

.method public abstract computeUptime(JI)J
.end method

.method public final dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "which"    # I
    .param p4, "reqUid"    # I

    .prologue
    .line 2509
    invoke-static {p1}, Lcom/android/internal/os/BatteryStatsHelper;->checkWifiOnly(Landroid/content/Context;)Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/os/BatteryStats;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZ)V

    .line 2510
    return-void
.end method

.method public final dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZ)V
    .locals 190
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "which"    # I
    .param p4, "reqUid"    # I
    .param p5, "wifiOnly"    # Z

    .prologue
    .line 2519
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const-wide/16 v14, 0x3e8

    mul-long v102, v8, v14

    .line 2520
    .local v102, "rawUptime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-wide/16 v14, 0x3e8

    mul-long v6, v8, v14

    .line 2521
    .local v6, "rawRealtime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v102

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v24

    .line 2522
    .local v24, "batteryUptime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v102

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v156

    .line 2523
    .local v156, "whichBatteryUptime":J
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v150

    .line 2524
    .local v150, "whichBatteryRealtime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v102

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    move-result-wide v154

    .line 2525
    .local v154, "whichBatteryScreenOffUptime":J
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    move-result-wide v152

    .line 2527
    .local v152, "whichBatteryScreenOffRealtime":J
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats;->computeRealtime(JI)J

    move-result-wide v122

    .line 2528
    .local v122, "totalRealtime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v102

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeUptime(JI)J

    move-result-wide v130

    .line 2529
    .local v130, "totalUptime":J
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v104

    .line 2530
    .local v104, "screenOnTime":J
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats;->getInteractiveTime(JI)J

    move-result-wide v54

    .line 2531
    .local v54, "interactiveTime":J
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats;->getPowerSaveModeEnabledTime(JI)J

    move-result-wide v98

    .line 2532
    .local v98, "powerSaveModeEnabledTime":J
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats;->getDeviceIdleModeEnabledTime(JI)J

    move-result-wide v36

    .line 2533
    .local v36, "deviceIdleModeEnabledTime":J
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats;->getDeviceIdlingTime(JI)J

    move-result-wide v38

    .line 2534
    .local v38, "deviceIdlingTime":J
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getNumConnectivityChange(I)I

    move-result v34

    .line 2535
    .local v34, "connChanges":I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v94

    .line 2537
    .local v94, "phoneOnTime":J
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2539
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v133

    .line 2540
    .local v133, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v133 .. v133}, Landroid/util/SparseArray;->size()I

    move-result v20

    .line 2542
    .local v20, "NU":I
    sget-object v5, Landroid/os/BatteryStats;->STAT_NAMES:[Ljava/lang/String;

    aget-object v13, v5, p3

    .line 2545
    .local v13, "category":Ljava/lang/String;
    const/4 v8, 0x0

    const-string v9, "bt"

    const/16 v5, 0x8

    new-array v11, v5, [Ljava/lang/Object;

    const/4 v14, 0x0

    if-nez p3, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_0
    aput-object v5, v11, v14

    const/4 v5, 0x1

    const-wide/16 v14, 0x3e8

    div-long v14, v150, v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v11, v5

    const/4 v5, 0x2

    const-wide/16 v14, 0x3e8

    div-long v14, v156, v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v11, v5

    const/4 v5, 0x3

    const-wide/16 v14, 0x3e8

    div-long v14, v122, v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v11, v5

    const/4 v5, 0x4

    const-wide/16 v14, 0x3e8

    div-long v14, v130, v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v11, v5

    const/4 v5, 0x5

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartClockTime()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v11, v5

    const/4 v5, 0x6

    const-wide/16 v14, 0x3e8

    div-long v14, v152, v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v11, v5

    const/4 v5, 0x7

    const-wide/16 v14, 0x3e8

    div-long v14, v154, v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v11, v5

    move-object/from16 v0, p2

    invoke-static {v0, v8, v13, v9, v11}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2553
    const-wide/16 v44, 0x0

    .line 2554
    .local v44, "fullWakeLockTimeTotal":J
    const-wide/16 v92, 0x0

    .line 2556
    .local v92, "partialWakeLockTimeTotal":J
    const/16 v61, 0x0

    .local v61, "iu":I
    :goto_1
    move/from16 v0, v61

    move/from16 v1, v20

    if-ge v0, v1, :cond_4

    .line 2557
    move-object/from16 v0, v133

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v132

    check-cast v132, Landroid/os/BatteryStats$Uid;

    .line 2559
    .local v132, "u":Landroid/os/BatteryStats$Uid;
    invoke-virtual/range {v132 .. v132}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v147

    .line 2561
    .local v147, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-virtual/range {v147 .. v147}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v62, v5, -0x1

    .local v62, "iw":I
    :goto_2
    if-ltz v62, :cond_3

    .line 2562
    move-object/from16 v0, v147

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v181

    check-cast v181, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 2564
    .local v181, "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    const/4 v5, 0x1

    move-object/from16 v0, v181

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v41

    .line 2565
    .local v41, "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v41, :cond_0

    .line 2566
    move-object/from16 v0, v41

    move/from16 v1, p3

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v8

    add-long v44, v44, v8

    .line 2570
    :cond_0
    const/4 v5, 0x0

    move-object/from16 v0, v181

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v91

    .line 2571
    .local v91, "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v91, :cond_1

    .line 2572
    move-object/from16 v0, v91

    move/from16 v1, p3

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v8

    add-long v92, v92, v8

    .line 2561
    :cond_1
    add-int/lit8 v62, v62, -0x1

    goto :goto_2

    .line 2545
    .end local v41    # "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    .end local v44    # "fullWakeLockTimeTotal":J
    .end local v61    # "iu":I
    .end local v62    # "iw":I
    .end local v91    # "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    .end local v92    # "partialWakeLockTimeTotal":J
    .end local v132    # "u":Landroid/os/BatteryStats$Uid;
    .end local v147    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v181    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    :cond_2
    const-string v5, "N/A"

    goto/16 :goto_0

    .line 2556
    .restart local v44    # "fullWakeLockTimeTotal":J
    .restart local v61    # "iu":I
    .restart local v62    # "iw":I
    .restart local v92    # "partialWakeLockTimeTotal":J
    .restart local v132    # "u":Landroid/os/BatteryStats$Uid;
    .restart local v147    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_3
    add-int/lit8 v61, v61, 0x1

    goto :goto_1

    .line 2579
    .end local v62    # "iw":I
    .end local v132    # "u":Landroid/os/BatteryStats$Uid;
    .end local v147    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_4
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v80

    .line 2580
    .local v80, "mobileRxTotalBytes":J
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v84

    .line 2581
    .local v84, "mobileTxTotalBytes":J
    const/4 v5, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v176

    .line 2582
    .local v176, "wifiRxTotalBytes":J
    const/4 v5, 0x3

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v186

    .line 2583
    .local v186, "wifiTxTotalBytes":J
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v82

    .line 2584
    .local v82, "mobileRxTotalPackets":J
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v86

    .line 2585
    .local v86, "mobileTxTotalPackets":J
    const/4 v5, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v178

    .line 2586
    .local v178, "wifiRxTotalPackets":J
    const/4 v5, 0x3

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v188

    .line 2587
    .local v188, "wifiTxTotalPackets":J
    const/4 v5, 0x0

    const-string v8, "gn"

    const/16 v9, 0x8

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static/range {v80 .. v81}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v9, v11

    const/4 v11, 0x1

    invoke-static/range {v84 .. v85}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v9, v11

    const/4 v11, 0x2

    invoke-static/range {v176 .. v177}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v9, v11

    const/4 v11, 0x3

    invoke-static/range {v186 .. v187}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v9, v11

    const/4 v11, 0x4

    invoke-static/range {v82 .. v83}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v9, v11

    const/4 v11, 0x5

    invoke-static/range {v86 .. v87}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v9, v11

    const/4 v11, 0x6

    invoke-static/range {v178 .. v179}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v9, v11

    const/4 v11, 0x7

    invoke-static/range {v188 .. v189}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v9, v11

    move-object/from16 v0, p2

    invoke-static {v0, v5, v13, v8, v9}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2592
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    move-result-wide v164

    .line 2593
    .local v164, "wifiOnTime":J
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v172

    .line 2594
    .local v172, "wifiRunningTime":J
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats;->getWifiControllerActivity(II)J

    move-result-wide v162

    .line 2595
    .local v162, "wifiIdleTimeMs":J
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats;->getWifiControllerActivity(II)J

    move-result-wide v174

    .line 2596
    .local v174, "wifiRxTimeMs":J
    const/4 v5, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats;->getWifiControllerActivity(II)J

    move-result-wide v184

    .line 2597
    .local v184, "wifiTxTimeMs":J
    const/4 v5, 0x3

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats;->getWifiControllerActivity(II)J

    move-result-wide v170

    .line 2598
    .local v170, "wifiPowerMaMs":J
    const/4 v5, 0x0

    const-string v8, "gwfl"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-wide/16 v14, 0x3e8

    div-long v14, v164, v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v9, v11

    const/4 v11, 0x1

    const-wide/16 v14, 0x3e8

    div-long v14, v172, v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v9, v11

    const/4 v11, 0x2

    invoke-static/range {v162 .. v163}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v9, v11

    const/4 v11, 0x3

    invoke-static/range {v174 .. v175}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v9, v11

    const/4 v11, 0x4

    invoke-static/range {v184 .. v185}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v9, v11

    const/4 v11, 0x5

    const-wide/32 v14, 0x36ee80

    div-long v14, v170, v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v9, v11

    move-object/from16 v0, p2

    invoke-static {v0, v5, v13, v8, v9}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2603
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats;->getBluetoothControllerActivity(II)J

    move-result-wide v26

    .line 2604
    .local v26, "btIdleTimeMs":J
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats;->getBluetoothControllerActivity(II)J

    move-result-wide v30

    .line 2605
    .local v30, "btRxTimeMs":J
    const/4 v5, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats;->getBluetoothControllerActivity(II)J

    move-result-wide v32

    .line 2606
    .local v32, "btTxTimeMs":J
    const/4 v5, 0x3

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats;->getBluetoothControllerActivity(II)J

    move-result-wide v28

    .line 2607
    .local v28, "btPowerMaMs":J
    const/4 v5, 0x0

    const-string v8, "gble"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v9, v11

    const/4 v11, 0x1

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v9, v11

    const/4 v11, 0x2

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v9, v11

    const/4 v11, 0x3

    const-wide/32 v14, 0x36ee80

    div-long v14, v28, v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v9, v11

    move-object/from16 v0, p2

    invoke-static {v0, v5, v13, v8, v9}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2611
    const/4 v5, 0x0

    const-string/jumbo v8, "m"

    const/16 v9, 0xf

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-wide/16 v14, 0x3e8

    div-long v14, v104, v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v9, v11

    const/4 v11, 0x1

    const-wide/16 v14, 0x3e8

    div-long v14, v94, v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v9, v11

    const/4 v11, 0x2

    const-wide/16 v14, 0x3e8

    div-long v14, v44, v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v9, v11

    const/4 v11, 0x3

    const-wide/16 v14, 0x3e8

    div-long v14, v92, v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v9, v11

    const/4 v11, 0x4

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v9, v11

    const/4 v11, 0x5

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveAdjustedTime(I)J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v9, v11

    const/4 v11, 0x6

    const-wide/16 v14, 0x3e8

    div-long v14, v54, v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v9, v11

    const/4 v11, 0x7

    const-wide/16 v14, 0x3e8

    div-long v14, v98, v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v9, v11

    const/16 v11, 0x8

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v9, v11

    const/16 v11, 0x9

    const-wide/16 v14, 0x3e8

    div-long v14, v36, v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v9, v11

    const/16 v11, 0xa

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getDeviceIdleModeEnabledCount(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v9, v11

    const/16 v11, 0xb

    const-wide/16 v14, 0x3e8

    div-long v14, v38, v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v9, v11

    const/16 v11, 0xc

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getDeviceIdlingCount(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v9, v11

    const/16 v11, 0xd

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveCount(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v9, v11

    const/16 v11, 0xe

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveUnknownTime(I)J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v9, v11

    move-object/from16 v0, p2

    invoke-static {v0, v5, v13, v8, v9}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2623
    const/4 v5, 0x5

    new-array v0, v5, [Ljava/lang/Object;

    move-object/from16 v22, v0

    .line 2624
    .local v22, "args":[Ljava/lang/Object;
    const/16 v50, 0x0

    .local v50, "i":I
    :goto_3
    const/4 v5, 0x5

    move/from16 v0, v50

    if-ge v0, v5, :cond_5

    .line 2625
    move-object/from16 v0, p0

    move/from16 v1, v50

    move/from16 v2, p3

    invoke-virtual {v0, v1, v6, v7, v2}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    move-result-wide v8

    const-wide/16 v14, 0x3e8

    div-long/2addr v8, v14

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v22, v50

    .line 2624
    add-int/lit8 v50, v50, 0x1

    goto :goto_3

    .line 2627
    :cond_5
    const/4 v5, 0x0

    const-string v8, "br"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-static {v0, v5, v13, v8, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2630
    const/4 v5, 0x5

    new-array v0, v5, [Ljava/lang/Object;

    move-object/from16 v22, v0

    .line 2631
    const/16 v50, 0x0

    :goto_4
    const/4 v5, 0x5

    move/from16 v0, v50

    if-ge v0, v5, :cond_6

    .line 2632
    move-object/from16 v0, p0

    move/from16 v1, v50

    move/from16 v2, p3

    invoke-virtual {v0, v1, v6, v7, v2}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v8

    const-wide/16 v14, 0x3e8

    div-long/2addr v8, v14

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v22, v50

    .line 2631
    add-int/lit8 v50, v50, 0x1

    goto :goto_4

    .line 2634
    :cond_6
    const/4 v5, 0x0

    const-string/jumbo v8, "sgt"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-static {v0, v5, v13, v8, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2635
    const/4 v5, 0x0

    const-string/jumbo v8, "sst"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats;->getPhoneSignalScanningTime(JI)J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v9, v11

    move-object/from16 v0, p2

    invoke-static {v0, v5, v13, v8, v9}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2637
    const/16 v50, 0x0

    :goto_5
    const/4 v5, 0x5

    move/from16 v0, v50

    if-ge v0, v5, :cond_7

    .line 2638
    move-object/from16 v0, p0

    move/from16 v1, v50

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getPhoneSignalStrengthCount(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v22, v50

    .line 2637
    add-int/lit8 v50, v50, 0x1

    goto :goto_5

    .line 2640
    :cond_7
    const/4 v5, 0x0

    const-string/jumbo v8, "sgc"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-static {v0, v5, v13, v8, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2643
    const/16 v5, 0x11

    new-array v0, v5, [Ljava/lang/Object;

    move-object/from16 v22, v0

    .line 2644
    const/16 v50, 0x0

    :goto_6
    const/16 v5, 0x11

    move/from16 v0, v50

    if-ge v0, v5, :cond_8

    .line 2645
    move-object/from16 v0, p0

    move/from16 v1, v50

    move/from16 v2, p3

    invoke-virtual {v0, v1, v6, v7, v2}, Landroid/os/BatteryStats;->getPhoneDataConnectionTime(IJI)J

    move-result-wide v8

    const-wide/16 v14, 0x3e8

    div-long/2addr v8, v14

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v22, v50

    .line 2644
    add-int/lit8 v50, v50, 0x1

    goto :goto_6

    .line 2647
    :cond_8
    const/4 v5, 0x0

    const-string v8, "dct"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-static {v0, v5, v13, v8, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2648
    const/16 v50, 0x0

    :goto_7
    const/16 v5, 0x11

    move/from16 v0, v50

    if-ge v0, v5, :cond_9

    .line 2649
    move-object/from16 v0, p0

    move/from16 v1, v50

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getPhoneDataConnectionCount(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v22, v50

    .line 2648
    add-int/lit8 v50, v50, 0x1

    goto :goto_7

    .line 2651
    :cond_9
    const/4 v5, 0x0

    const-string v8, "dcc"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-static {v0, v5, v13, v8, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2654
    const/16 v5, 0x8

    new-array v0, v5, [Ljava/lang/Object;

    move-object/from16 v22, v0

    .line 2655
    const/16 v50, 0x0

    :goto_8
    const/16 v5, 0x8

    move/from16 v0, v50

    if-ge v0, v5, :cond_a

    .line 2656
    move-object/from16 v0, p0

    move/from16 v1, v50

    move/from16 v2, p3

    invoke-virtual {v0, v1, v6, v7, v2}, Landroid/os/BatteryStats;->getWifiStateTime(IJI)J

    move-result-wide v8

    const-wide/16 v14, 0x3e8

    div-long/2addr v8, v14

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v22, v50

    .line 2655
    add-int/lit8 v50, v50, 0x1

    goto :goto_8

    .line 2658
    :cond_a
    const/4 v5, 0x0

    const-string/jumbo v8, "wst"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-static {v0, v5, v13, v8, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2659
    const/16 v50, 0x0

    :goto_9
    const/16 v5, 0x8

    move/from16 v0, v50

    if-ge v0, v5, :cond_b

    .line 2660
    move-object/from16 v0, p0

    move/from16 v1, v50

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getWifiStateCount(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v22, v50

    .line 2659
    add-int/lit8 v50, v50, 0x1

    goto :goto_9

    .line 2662
    :cond_b
    const/4 v5, 0x0

    const-string/jumbo v8, "wsc"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-static {v0, v5, v13, v8, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2665
    const/16 v5, 0xd

    new-array v0, v5, [Ljava/lang/Object;

    move-object/from16 v22, v0

    .line 2666
    const/16 v50, 0x0

    :goto_a
    const/16 v5, 0xd

    move/from16 v0, v50

    if-ge v0, v5, :cond_c

    .line 2667
    move-object/from16 v0, p0

    move/from16 v1, v50

    move/from16 v2, p3

    invoke-virtual {v0, v1, v6, v7, v2}, Landroid/os/BatteryStats;->getWifiSupplStateTime(IJI)J

    move-result-wide v8

    const-wide/16 v14, 0x3e8

    div-long/2addr v8, v14

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v22, v50

    .line 2666
    add-int/lit8 v50, v50, 0x1

    goto :goto_a

    .line 2669
    :cond_c
    const/4 v5, 0x0

    const-string/jumbo v8, "wsst"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-static {v0, v5, v13, v8, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2670
    const/16 v50, 0x0

    :goto_b
    const/16 v5, 0xd

    move/from16 v0, v50

    if-ge v0, v5, :cond_d

    .line 2671
    move-object/from16 v0, p0

    move/from16 v1, v50

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getWifiSupplStateCount(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v22, v50

    .line 2670
    add-int/lit8 v50, v50, 0x1

    goto :goto_b

    .line 2673
    :cond_d
    const/4 v5, 0x0

    const-string/jumbo v8, "wssc"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-static {v0, v5, v13, v8, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2676
    const/4 v5, 0x5

    new-array v0, v5, [Ljava/lang/Object;

    move-object/from16 v22, v0

    .line 2677
    const/16 v50, 0x0

    :goto_c
    const/4 v5, 0x5

    move/from16 v0, v50

    if-ge v0, v5, :cond_e

    .line 2678
    move-object/from16 v0, p0

    move/from16 v1, v50

    move/from16 v2, p3

    invoke-virtual {v0, v1, v6, v7, v2}, Landroid/os/BatteryStats;->getWifiSignalStrengthTime(IJI)J

    move-result-wide v8

    const-wide/16 v14, 0x3e8

    div-long/2addr v8, v14

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v22, v50

    .line 2677
    add-int/lit8 v50, v50, 0x1

    goto :goto_c

    .line 2680
    :cond_e
    const/4 v5, 0x0

    const-string/jumbo v8, "wsgt"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-static {v0, v5, v13, v8, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2681
    const/16 v50, 0x0

    :goto_d
    const/4 v5, 0x5

    move/from16 v0, v50

    if-ge v0, v5, :cond_f

    .line 2682
    move-object/from16 v0, p0

    move/from16 v1, v50

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getWifiSignalStrengthCount(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v22, v50

    .line 2681
    add-int/lit8 v50, v50, 0x1

    goto :goto_d

    .line 2684
    :cond_f
    const/4 v5, 0x0

    const-string/jumbo v8, "wsgc"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-static {v0, v5, v13, v8, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2686
    const/4 v5, 0x2

    move/from16 v0, p3

    if-ne v0, v5, :cond_10

    .line 2687
    const/4 v5, 0x0

    const-string/jumbo v8, "lv"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v9, v11

    const/4 v11, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v9, v11

    move-object/from16 v0, p2

    invoke-static {v0, v5, v13, v8, v9}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2691
    :cond_10
    const/4 v5, 0x2

    move/from16 v0, p3

    if-ne v0, v5, :cond_11

    .line 2692
    const/4 v5, 0x0

    const-string v8, "dc"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v9, v11

    const/4 v11, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v9, v11

    const/4 v11, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOn()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v9, v11

    const/4 v11, 0x3

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOff()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v9, v11

    move-object/from16 v0, p2

    invoke-static {v0, v5, v13, v8, v9}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2703
    :goto_e
    if-gez p4, :cond_13

    .line 2704
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v65

    .line 2705
    .local v65, "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v65 .. v65}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_12

    .line 2706
    invoke-interface/range {v65 .. v65}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v51

    .local v51, "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/util/Map$Entry;

    .line 2707
    .local v40, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2708
    invoke-interface/range {v40 .. v40}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Timer;

    const/4 v8, 0x0

    const-string v10, ""

    move/from16 v9, p3

    invoke-static/range {v4 .. v10}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 2709
    const/4 v5, 0x0

    const-string/jumbo v8, "kwl"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-interface/range {v40 .. v40}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    aput-object v14, v9, v11

    const/4 v11, 0x1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v9, v11

    move-object/from16 v0, p2

    invoke-static {v0, v5, v13, v8, v9}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_f

    .line 2697
    .end local v40    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v51    # "i$":Ljava/util/Iterator;
    .end local v65    # "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_11
    const/4 v5, 0x0

    const-string v8, "dc"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v9, v11

    const/4 v11, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v9, v11

    const/4 v11, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceCharge()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v9, v11

    const/4 v11, 0x3

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceCharge()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v9, v11

    move-object/from16 v0, p2

    invoke-static {v0, v5, v13, v8, v9}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_e

    .line 2713
    .restart local v65    # "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v148

    .line 2714
    .local v148, "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v148 .. v148}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_13

    .line 2715
    invoke-interface/range {v148 .. v148}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v51

    .restart local v51    # "i$":Ljava/util/Iterator;
    :goto_10
    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/util/Map$Entry;

    .line 2718
    .restart local v40    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v40 .. v40}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Timer;

    move/from16 v0, p3

    invoke-virtual {v5, v6, v7, v0}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v128

    .line 2719
    .local v128, "totalTimeMicros":J
    invoke-interface/range {v40 .. v40}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Timer;

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v35

    .line 2720
    .local v35, "count":I
    const/4 v8, 0x0

    const-string/jumbo v9, "wr"

    const/4 v5, 0x3

    new-array v11, v5, [Ljava/lang/Object;

    const/4 v14, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\""

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface/range {v40 .. v40}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v15, "\""

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v11, v14

    const/4 v5, 0x1

    const-wide/16 v14, 0x1f4

    add-long v14, v14, v128

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v11, v5

    const/4 v5, 0x2

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v11, v5

    move-object/from16 v0, p2

    invoke-static {v0, v8, v13, v9, v11}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_10

    .line 2726
    .end local v35    # "count":I
    .end local v40    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v51    # "i$":Ljava/util/Iterator;
    .end local v65    # "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v128    # "totalTimeMicros":J
    .end local v148    # "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_13
    new-instance v49, Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v5, 0x0

    move-object/from16 v0, v49

    move-object/from16 v1, p1

    move/from16 v2, p5

    invoke-direct {v0, v1, v5, v2}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;ZZ)V

    .line 2727
    .local v49, "helper":Lcom/android/internal/os/BatteryStatsHelper;
    move-object/from16 v0, v49

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    .line 2728
    const/4 v5, -0x1

    move-object/from16 v0, v49

    move/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    .line 2729
    invoke-virtual/range {v49 .. v49}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v110

    .line 2730
    .local v110, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    if-eqz v110, :cond_14

    invoke-interface/range {v110 .. v110}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_14

    .line 2731
    const/4 v5, 0x0

    const-string/jumbo v8, "pws"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual/range {v49 .. v49}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v9, v11

    const/4 v11, 0x1

    invoke-virtual/range {v49 .. v49}, Lcom/android/internal/os/BatteryStatsHelper;->getComputedPower()D

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v9, v11

    const/4 v11, 0x2

    invoke-virtual/range {v49 .. v49}, Lcom/android/internal/os/BatteryStatsHelper;->getMinDrainedPower()D

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v9, v11

    const/4 v11, 0x3

    invoke-virtual/range {v49 .. v49}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxDrainedPower()D

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v9, v11

    move-object/from16 v0, p2

    invoke-static {v0, v5, v13, v8, v9}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2736
    const/16 v50, 0x0

    :goto_11
    invoke-interface/range {v110 .. v110}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v0, v50

    if-ge v0, v5, :cond_14

    .line 2737
    move-object/from16 v0, v110

    move/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/internal/os/BatterySipper;

    .line 2738
    .local v23, "bs":Lcom/android/internal/os/BatterySipper;
    const/4 v12, 0x0

    .line 2740
    .local v12, "uid":I
    sget-object v5, Landroid/os/BatteryStats$2;->$SwitchMap$com$android$internal$os$BatterySipper$DrainType:[I

    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v8}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v8

    aget v5, v5, v8

    packed-switch v5, :pswitch_data_0

    .line 2780
    const-string v66, "???"

    .line 2782
    .local v66, "label":Ljava/lang/String;
    :goto_12
    const-string/jumbo v5, "pwi"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v66, v8, v9

    const/4 v9, 0x1

    move-object/from16 v0, v23

    iget-wide v14, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    invoke-static {v14, v15}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v9

    move-object/from16 v0, p2

    invoke-static {v0, v12, v13, v5, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2736
    add-int/lit8 v50, v50, 0x1

    goto :goto_11

    .line 2742
    .end local v66    # "label":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v66, "idle"

    .line 2743
    .restart local v66    # "label":Ljava/lang/String;
    goto :goto_12

    .line 2745
    .end local v66    # "label":Ljava/lang/String;
    :pswitch_1
    const-string v66, "cell"

    .line 2746
    .restart local v66    # "label":Ljava/lang/String;
    goto :goto_12

    .line 2748
    .end local v66    # "label":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v66, "phone"

    .line 2749
    .restart local v66    # "label":Ljava/lang/String;
    goto :goto_12

    .line 2751
    .end local v66    # "label":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v66, "wifi"

    .line 2752
    .restart local v66    # "label":Ljava/lang/String;
    goto :goto_12

    .line 2754
    .end local v66    # "label":Ljava/lang/String;
    :pswitch_4
    const-string v66, "blue"

    .line 2755
    .restart local v66    # "label":Ljava/lang/String;
    goto :goto_12

    .line 2757
    .end local v66    # "label":Ljava/lang/String;
    :pswitch_5
    const-string/jumbo v66, "scrn"

    .line 2758
    .restart local v66    # "label":Ljava/lang/String;
    goto :goto_12

    .line 2760
    .end local v66    # "label":Ljava/lang/String;
    :pswitch_6
    const-string v66, "flashlight"

    .line 2761
    .restart local v66    # "label":Ljava/lang/String;
    goto :goto_12

    .line 2763
    .end local v66    # "label":Ljava/lang/String;
    :pswitch_7
    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v12

    .line 2764
    const-string/jumbo v66, "uid"

    .line 2765
    .restart local v66    # "label":Ljava/lang/String;
    goto :goto_12

    .line 2767
    .end local v66    # "label":Ljava/lang/String;
    :pswitch_8
    move-object/from16 v0, v23

    iget v5, v0, Lcom/android/internal/os/BatterySipper;->userId:I

    const/4 v8, 0x0

    invoke-static {v5, v8}, Landroid/os/UserHandle;->getUid(II)I

    move-result v12

    .line 2768
    const-string/jumbo v66, "user"

    .line 2769
    .restart local v66    # "label":Ljava/lang/String;
    goto :goto_12

    .line 2771
    .end local v66    # "label":Ljava/lang/String;
    :pswitch_9
    const-string/jumbo v66, "unacc"

    .line 2772
    .restart local v66    # "label":Ljava/lang/String;
    goto :goto_12

    .line 2774
    .end local v66    # "label":Ljava/lang/String;
    :pswitch_a
    const-string/jumbo v66, "over"

    .line 2775
    .restart local v66    # "label":Ljava/lang/String;
    goto :goto_12

    .line 2777
    .end local v66    # "label":Ljava/lang/String;
    :pswitch_b
    const-string v66, "camera"

    .line 2778
    .restart local v66    # "label":Ljava/lang/String;
    goto :goto_12

    .line 2787
    .end local v12    # "uid":I
    .end local v23    # "bs":Lcom/android/internal/os/BatterySipper;
    .end local v66    # "label":Ljava/lang/String;
    :cond_14
    const/16 v61, 0x0

    :goto_13
    move/from16 v0, v61

    move/from16 v1, v20

    if-ge v0, v1, :cond_32

    .line 2788
    move-object/from16 v0, v133

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 2789
    .restart local v12    # "uid":I
    if-ltz p4, :cond_16

    move/from16 v0, p4

    if-eq v12, v0, :cond_16

    .line 2787
    :cond_15
    add-int/lit8 v61, v61, 0x1

    goto :goto_13

    .line 2792
    :cond_16
    move-object/from16 v0, v133

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v132

    check-cast v132, Landroid/os/BatteryStats$Uid;

    .line 2795
    .restart local v132    # "u":Landroid/os/BatteryStats$Uid;
    const/4 v5, 0x0

    move-object/from16 v0, v132

    move/from16 v1, p3

    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v72

    .line 2796
    .local v72, "mobileBytesRx":J
    const/4 v5, 0x1

    move-object/from16 v0, v132

    move/from16 v1, p3

    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v74

    .line 2797
    .local v74, "mobileBytesTx":J
    const/4 v5, 0x2

    move-object/from16 v0, v132

    move/from16 v1, p3

    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v158

    .line 2798
    .local v158, "wifiBytesRx":J
    const/4 v5, 0x3

    move-object/from16 v0, v132

    move/from16 v1, p3

    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v160

    .line 2799
    .local v160, "wifiBytesTx":J
    const/4 v5, 0x0

    move-object/from16 v0, v132

    move/from16 v1, p3

    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v76

    .line 2800
    .local v76, "mobilePacketsRx":J
    const/4 v5, 0x1

    move-object/from16 v0, v132

    move/from16 v1, p3

    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v78

    .line 2801
    .local v78, "mobilePacketsTx":J
    move-object/from16 v0, v132

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v70

    .line 2802
    .local v70, "mobileActiveTime":J
    move-object/from16 v0, v132

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v68

    .line 2803
    .local v68, "mobileActiveCount":I
    const/4 v5, 0x2

    move-object/from16 v0, v132

    move/from16 v1, p3

    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v166

    .line 2804
    .local v166, "wifiPacketsRx":J
    const/4 v5, 0x3

    move-object/from16 v0, v132

    move/from16 v1, p3

    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v168

    .line 2805
    .local v168, "wifiPacketsTx":J
    const-wide/16 v8, 0x0

    cmp-long v5, v72, v8

    if-gtz v5, :cond_17

    const-wide/16 v8, 0x0

    cmp-long v5, v74, v8

    if-gtz v5, :cond_17

    const-wide/16 v8, 0x0

    cmp-long v5, v158, v8

    if-gtz v5, :cond_17

    const-wide/16 v8, 0x0

    cmp-long v5, v160, v8

    if-gtz v5, :cond_17

    const-wide/16 v8, 0x0

    cmp-long v5, v76, v8

    if-gtz v5, :cond_17

    const-wide/16 v8, 0x0

    cmp-long v5, v78, v8

    if-gtz v5, :cond_17

    const-wide/16 v8, 0x0

    cmp-long v5, v166, v8

    if-gtz v5, :cond_17

    const-wide/16 v8, 0x0

    cmp-long v5, v168, v8

    if-gtz v5, :cond_17

    const-wide/16 v8, 0x0

    cmp-long v5, v70, v8

    if-gtz v5, :cond_17

    if-lez v68, :cond_18

    .line 2808
    :cond_17
    const-string/jumbo v5, "nt"

    const/16 v8, 0xa

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {v72 .. v73}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v8, v9

    const/4 v9, 0x1

    invoke-static/range {v74 .. v75}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v8, v9

    const/4 v9, 0x2

    invoke-static/range {v158 .. v159}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v8, v9

    const/4 v9, 0x3

    invoke-static/range {v160 .. v161}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v8, v9

    const/4 v9, 0x4

    invoke-static/range {v76 .. v77}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v8, v9

    const/4 v9, 0x5

    invoke-static/range {v78 .. v79}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v8, v9

    const/4 v9, 0x6

    invoke-static/range {v166 .. v167}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v8, v9

    const/4 v9, 0x7

    invoke-static/range {v168 .. v169}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v8, v9

    const/16 v9, 0x8

    invoke-static/range {v70 .. v71}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v8, v9

    const/16 v9, 0x9

    invoke-static/range {v68 .. v68}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v9

    move-object/from16 v0, p2

    invoke-static {v0, v12, v13, v5, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2815
    :cond_18
    move-object/from16 v0, v132

    move/from16 v1, p3

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v46

    .line 2816
    .local v46, "fullWifiLockOnTime":J
    move-object/from16 v0, v132

    move/from16 v1, p3

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v182

    .line 2817
    .local v182, "wifiScanTime":J
    move-object/from16 v0, v132

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getWifiScanCount(I)I

    move-result v180

    .line 2818
    .local v180, "wifiScanCount":I
    move-object/from16 v0, v132

    move/from16 v1, p3

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v136

    .line 2819
    .local v136, "uidWifiRunningTime":J
    const/4 v5, 0x0

    move-object/from16 v0, v132

    move/from16 v1, p3

    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity(II)J

    move-result-wide v134

    .line 2820
    .local v134, "uidWifiIdleTimeMs":J
    const/4 v5, 0x1

    move-object/from16 v0, v132

    move/from16 v1, p3

    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity(II)J

    move-result-wide v138

    .line 2821
    .local v138, "uidWifiRxTimeMs":J
    const/4 v5, 0x2

    move-object/from16 v0, v132

    move/from16 v1, p3

    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity(II)J

    move-result-wide v140

    .line 2822
    .local v140, "uidWifiTxTimeMs":J
    const-wide/16 v8, 0x0

    cmp-long v5, v46, v8

    if-nez v5, :cond_19

    const-wide/16 v8, 0x0

    cmp-long v5, v182, v8

    if-nez v5, :cond_19

    if-nez v180, :cond_19

    const-wide/16 v8, 0x0

    cmp-long v5, v136, v8

    if-nez v5, :cond_19

    const-wide/16 v8, 0x0

    cmp-long v5, v134, v8

    if-nez v5, :cond_19

    const-wide/16 v8, 0x0

    cmp-long v5, v138, v8

    if-nez v5, :cond_19

    const-wide/16 v8, 0x0

    cmp-long v5, v140, v8

    if-eqz v5, :cond_1a

    .line 2825
    :cond_19
    const-string/jumbo v5, "wfl"

    const/4 v8, 0x7

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v8, v9

    const/4 v9, 0x1

    invoke-static/range {v182 .. v183}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v8, v9

    const/4 v9, 0x2

    invoke-static/range {v136 .. v137}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v8, v9

    const/4 v9, 0x3

    invoke-static/range {v180 .. v180}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v9

    const/4 v9, 0x4

    invoke-static/range {v134 .. v135}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v8, v9

    const/4 v9, 0x5

    invoke-static/range {v138 .. v139}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v8, v9

    const/4 v9, 0x6

    invoke-static/range {v140 .. v141}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v8, v9

    move-object/from16 v0, p2

    invoke-static {v0, v12, v13, v5, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2830
    :cond_1a
    invoke-virtual/range {v132 .. v132}, Landroid/os/BatteryStats$Uid;->hasUserActivity()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 2831
    const/4 v5, 0x3

    new-array v0, v5, [Ljava/lang/Object;

    move-object/from16 v22, v0

    .line 2832
    const/16 v48, 0x0

    .line 2833
    .local v48, "hasData":Z
    const/16 v50, 0x0

    :goto_14
    const/4 v5, 0x3

    move/from16 v0, v50

    if-ge v0, v5, :cond_1c

    .line 2834
    move-object/from16 v0, v132

    move/from16 v1, v50

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v146

    .line 2835
    .local v146, "val":I
    invoke-static/range {v146 .. v146}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v22, v50

    .line 2836
    if-eqz v146, :cond_1b

    const/16 v48, 0x1

    .line 2833
    :cond_1b
    add-int/lit8 v50, v50, 0x1

    goto :goto_14

    .line 2838
    .end local v146    # "val":I
    :cond_1c
    if-eqz v48, :cond_1d

    .line 2839
    const-string/jumbo v5, "ua"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-static {v0, v12, v13, v5, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2843
    .end local v48    # "hasData":Z
    :cond_1d
    invoke-virtual/range {v132 .. v132}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v147

    .line 2844
    .restart local v147    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-virtual/range {v147 .. v147}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v62, v5, -0x1

    .restart local v62    # "iw":I
    :goto_15
    if-ltz v62, :cond_20

    .line 2845
    move-object/from16 v0, v147

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v181

    check-cast v181, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 2846
    .restart local v181    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    const-string v10, ""

    .line 2847
    .local v10, "linePrefix":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2848
    const/4 v5, 0x1

    move-object/from16 v0, v181

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v5

    const-string v8, "f"

    move/from16 v9, p3

    invoke-static/range {v4 .. v10}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2850
    const/4 v5, 0x0

    move-object/from16 v0, v181

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v5

    const-string/jumbo v8, "p"

    move/from16 v9, p3

    invoke-static/range {v4 .. v10}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2852
    const/4 v5, 0x2

    move-object/from16 v0, v181

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v5

    const-string/jumbo v8, "w"

    move/from16 v9, p3

    invoke-static/range {v4 .. v10}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2856
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_1f

    .line 2857
    move-object/from16 v0, v147

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v69

    check-cast v69, Ljava/lang/String;

    .line 2858
    .local v69, "name":Ljava/lang/String;
    const/16 v5, 0x2c

    move-object/from16 v0, v69

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_1e

    .line 2859
    const/16 v5, 0x2c

    const/16 v8, 0x5f

    move-object/from16 v0, v69

    invoke-virtual {v0, v5, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v69

    .line 2861
    :cond_1e
    const-string/jumbo v5, "wl"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v69, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v9

    move-object/from16 v0, p2

    invoke-static {v0, v12, v13, v5, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2844
    .end local v69    # "name":Ljava/lang/String;
    :cond_1f
    add-int/lit8 v62, v62, -0x1

    goto :goto_15

    .line 2865
    .end local v10    # "linePrefix":Ljava/lang/String;
    .end local v181    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    :cond_20
    invoke-virtual/range {v132 .. v132}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    move-result-object v116

    .line 2866
    .local v116, "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual/range {v116 .. v116}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v60, v5, -0x1

    .local v60, "isy":I
    :goto_16
    if-ltz v60, :cond_22

    .line 2867
    move-object/from16 v0, v116

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v117

    check-cast v117, Landroid/os/BatteryStats$Timer;

    .line 2869
    .local v117, "timer":Landroid/os/BatteryStats$Timer;
    move-object/from16 v0, v117

    move/from16 v1, p3

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v8

    const-wide/16 v14, 0x1f4

    add-long/2addr v8, v14

    const-wide/16 v14, 0x3e8

    div-long v126, v8, v14

    .line 2870
    .local v126, "totalTime":J
    move-object/from16 v0, v117

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v35

    .line 2871
    .restart local v35    # "count":I
    const-wide/16 v8, 0x0

    cmp-long v5, v126, v8

    if-eqz v5, :cond_21

    .line 2872
    const-string/jumbo v5, "sy"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, v116

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v8, v9

    const/4 v9, 0x1

    invoke-static/range {v126 .. v127}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v8, v9

    const/4 v9, 0x2

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v9

    move-object/from16 v0, p2

    invoke-static {v0, v12, v13, v5, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2866
    :cond_21
    add-int/lit8 v60, v60, -0x1

    goto :goto_16

    .line 2876
    .end local v35    # "count":I
    .end local v117    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v126    # "totalTime":J
    :cond_22
    invoke-virtual/range {v132 .. v132}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    move-result-object v64

    .line 2877
    .local v64, "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual/range {v64 .. v64}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v52, v5, -0x1

    .local v52, "ij":I
    :goto_17
    if-ltz v52, :cond_24

    .line 2878
    move-object/from16 v0, v64

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v117

    check-cast v117, Landroid/os/BatteryStats$Timer;

    .line 2880
    .restart local v117    # "timer":Landroid/os/BatteryStats$Timer;
    move-object/from16 v0, v117

    move/from16 v1, p3

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v8

    const-wide/16 v14, 0x1f4

    add-long/2addr v8, v14

    const-wide/16 v14, 0x3e8

    div-long v126, v8, v14

    .line 2881
    .restart local v126    # "totalTime":J
    move-object/from16 v0, v117

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v35

    .line 2882
    .restart local v35    # "count":I
    const-wide/16 v8, 0x0

    cmp-long v5, v126, v8

    if-eqz v5, :cond_23

    .line 2883
    const-string/jumbo v5, "jb"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, v64

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v8, v9

    const/4 v9, 0x1

    invoke-static/range {v126 .. v127}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v8, v9

    const/4 v9, 0x2

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v9

    move-object/from16 v0, p2

    invoke-static {v0, v12, v13, v5, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2877
    :cond_23
    add-int/lit8 v52, v52, -0x1

    goto :goto_17

    .line 2887
    .end local v35    # "count":I
    .end local v117    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v126    # "totalTime":J
    :cond_24
    const-string v14, "fla"

    invoke-virtual/range {v132 .. v132}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v15

    move-object/from16 v11, p2

    move-wide/from16 v16, v6

    move/from16 v18, p3

    invoke-static/range {v11 .. v18}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    .line 2889
    const-string v14, "cam"

    invoke-virtual/range {v132 .. v132}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v15

    move-object/from16 v11, p2

    move-wide/from16 v16, v6

    move/from16 v18, p3

    invoke-static/range {v11 .. v18}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    .line 2891
    const-string/jumbo v14, "vid"

    invoke-virtual/range {v132 .. v132}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v15

    move-object/from16 v11, p2

    move-wide/from16 v16, v6

    move/from16 v18, p3

    invoke-static/range {v11 .. v18}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    .line 2893
    const-string v14, "aud"

    invoke-virtual/range {v132 .. v132}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v15

    move-object/from16 v11, p2

    move-wide/from16 v16, v6

    move/from16 v18, p3

    invoke-static/range {v11 .. v18}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    .line 2896
    invoke-virtual/range {v132 .. v132}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v108

    .line 2897
    .local v108, "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-virtual/range {v108 .. v108}, Landroid/util/SparseArray;->size()I

    move-result v19

    .line 2898
    .local v19, "NSE":I
    const/16 v58, 0x0

    .local v58, "ise":I
    :goto_18
    move/from16 v0, v58

    move/from16 v1, v19

    if-ge v0, v1, :cond_26

    .line 2899
    move-object/from16 v0, v108

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v106

    check-cast v106, Landroid/os/BatteryStats$Uid$Sensor;

    .line 2900
    .local v106, "se":Landroid/os/BatteryStats$Uid$Sensor;
    move-object/from16 v0, v108

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v107

    .line 2901
    .local v107, "sensorNumber":I
    invoke-virtual/range {v106 .. v106}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v117

    .line 2902
    .restart local v117    # "timer":Landroid/os/BatteryStats$Timer;
    if-eqz v117, :cond_25

    .line 2904
    move-object/from16 v0, v117

    move/from16 v1, p3

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v8

    const-wide/16 v14, 0x1f4

    add-long/2addr v8, v14

    const-wide/16 v14, 0x3e8

    div-long v126, v8, v14

    .line 2906
    .restart local v126    # "totalTime":J
    move-object/from16 v0, v117

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v35

    .line 2907
    .restart local v35    # "count":I
    const-wide/16 v8, 0x0

    cmp-long v5, v126, v8

    if-eqz v5, :cond_25

    .line 2908
    const-string/jumbo v5, "sr"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {v107 .. v107}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v9

    const/4 v9, 0x1

    invoke-static/range {v126 .. v127}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v8, v9

    const/4 v9, 0x2

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v9

    move-object/from16 v0, p2

    invoke-static {v0, v12, v13, v5, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2898
    .end local v35    # "count":I
    .end local v126    # "totalTime":J
    :cond_25
    add-int/lit8 v58, v58, 0x1

    goto :goto_18

    .line 2913
    .end local v106    # "se":Landroid/os/BatteryStats$Uid$Sensor;
    .end local v107    # "sensorNumber":I
    .end local v117    # "timer":Landroid/os/BatteryStats$Timer;
    :cond_26
    const-string/jumbo v14, "vib"

    invoke-virtual/range {v132 .. v132}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v15

    move-object/from16 v11, p2

    move-wide/from16 v16, v6

    move/from16 v18, p3

    invoke-static/range {v11 .. v18}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    .line 2916
    const-string v14, "fg"

    invoke-virtual/range {v132 .. v132}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v15

    move-object/from16 v11, p2

    move-wide/from16 v16, v6

    move/from16 v18, p3

    invoke-static/range {v11 .. v18}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    .line 2919
    const/4 v5, 0x3

    new-array v0, v5, [Ljava/lang/Object;

    move-object/from16 v115, v0

    .line 2920
    .local v115, "stateTimes":[Ljava/lang/Object;
    const-wide/16 v124, 0x0

    .line 2921
    .local v124, "totalStateTime":J
    const/16 v57, 0x0

    .local v57, "ips":I
    :goto_19
    const/4 v5, 0x3

    move/from16 v0, v57

    if-ge v0, v5, :cond_27

    .line 2922
    move-object/from16 v0, v132

    move/from16 v1, v57

    move/from16 v2, p3

    invoke-virtual {v0, v1, v6, v7, v2}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v8

    add-long v124, v124, v8

    .line 2923
    const-wide/16 v8, 0x1f4

    add-long v8, v8, v124

    const-wide/16 v14, 0x3e8

    div-long/2addr v8, v14

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v115, v57

    .line 2921
    add-int/lit8 v57, v57, 0x1

    goto :goto_19

    .line 2925
    :cond_27
    const-wide/16 v8, 0x0

    cmp-long v5, v124, v8

    if-lez v5, :cond_28

    .line 2926
    const-string/jumbo v5, "st"

    move-object/from16 v0, p2

    move-object/from16 v1, v115

    invoke-static {v0, v12, v13, v5, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2929
    :cond_28
    move-object/from16 v0, v132

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v142

    .line 2930
    .local v142, "userCpuTimeUs":J
    move-object/from16 v0, v132

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v118

    .line 2931
    .local v118, "systemCpuTimeUs":J
    move-object/from16 v0, v132

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getCpuPowerMaUs(I)J

    move-result-wide v96

    .line 2932
    .local v96, "powerCpuMaUs":J
    const-wide/16 v8, 0x0

    cmp-long v5, v142, v8

    if-gtz v5, :cond_29

    const-wide/16 v8, 0x0

    cmp-long v5, v118, v8

    if-gtz v5, :cond_29

    const-wide/16 v8, 0x0

    cmp-long v5, v96, v8

    if-lez v5, :cond_2a

    .line 2933
    :cond_29
    const-string v5, "cpu"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-wide/16 v14, 0x3e8

    div-long v14, v142, v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v8, v9

    const/4 v9, 0x1

    const-wide/16 v14, 0x3e8

    div-long v14, v118, v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v8, v9

    const/4 v9, 0x2

    const-wide/16 v14, 0x3e8

    div-long v14, v96, v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v8, v9

    move-object/from16 v0, p2

    invoke-static {v0, v12, v13, v5, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2937
    :cond_2a
    invoke-virtual/range {v132 .. v132}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v100

    .line 2939
    .local v100, "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-virtual/range {v100 .. v100}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v56, v5, -0x1

    .local v56, "ipr":I
    :goto_1a
    if-ltz v56, :cond_2d

    .line 2940
    move-object/from16 v0, v100

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v101

    check-cast v101, Landroid/os/BatteryStats$Uid$Proc;

    .line 2942
    .local v101, "ps":Landroid/os/BatteryStats$Uid$Proc;
    move-object/from16 v0, v101

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v144

    .line 2943
    .local v144, "userMillis":J
    move-object/from16 v0, v101

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v120

    .line 2944
    .local v120, "systemMillis":J
    move-object/from16 v0, v101

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v42

    .line 2945
    .local v42, "foregroundMillis":J
    move-object/from16 v0, v101

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    move-result v114

    .line 2946
    .local v114, "starts":I
    move-object/from16 v0, v101

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    move-result v89

    .line 2947
    .local v89, "numCrashes":I
    move-object/from16 v0, v101

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    move-result v88

    .line 2949
    .local v88, "numAnrs":I
    const-wide/16 v8, 0x0

    cmp-long v5, v144, v8

    if-nez v5, :cond_2b

    const-wide/16 v8, 0x0

    cmp-long v5, v120, v8

    if-nez v5, :cond_2b

    const-wide/16 v8, 0x0

    cmp-long v5, v42, v8

    if-nez v5, :cond_2b

    if-nez v114, :cond_2b

    if-nez v88, :cond_2b

    if-eqz v89, :cond_2c

    .line 2951
    :cond_2b
    const-string/jumbo v5, "pr"

    const/4 v8, 0x7

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, v100

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v8, v9

    const/4 v9, 0x1

    invoke-static/range {v144 .. v145}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v8, v9

    const/4 v9, 0x2

    invoke-static/range {v120 .. v121}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v8, v9

    const/4 v9, 0x3

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v8, v9

    const/4 v9, 0x4

    invoke-static/range {v114 .. v114}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v9

    const/4 v9, 0x5

    invoke-static/range {v88 .. v88}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v9

    const/4 v9, 0x6

    invoke-static/range {v89 .. v89}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v9

    move-object/from16 v0, p2

    invoke-static {v0, v12, v13, v5, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2939
    :cond_2c
    add-int/lit8 v56, v56, -0x1

    goto/16 :goto_1a

    .line 2956
    .end local v42    # "foregroundMillis":J
    .end local v88    # "numAnrs":I
    .end local v89    # "numCrashes":I
    .end local v101    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .end local v114    # "starts":I
    .end local v120    # "systemMillis":J
    .end local v144    # "userMillis":J
    :cond_2d
    invoke-virtual/range {v132 .. v132}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v90

    .line 2958
    .local v90, "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    invoke-virtual/range {v90 .. v90}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v53, v5, -0x1

    .local v53, "ipkg":I
    :goto_1b
    if-ltz v53, :cond_15

    .line 2959
    move-object/from16 v0, v90

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v101

    check-cast v101, Landroid/os/BatteryStats$Uid$Pkg;

    .line 2960
    .local v101, "ps":Landroid/os/BatteryStats$Uid$Pkg;
    const/16 v149, 0x0

    .line 2961
    .local v149, "wakeups":I
    invoke-virtual/range {v101 .. v101}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v21

    .line 2962
    .local v21, "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    invoke-virtual/range {v21 .. v21}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v63, v5, -0x1

    .local v63, "iwa":I
    :goto_1c
    if-ltz v63, :cond_2e

    .line 2963
    move-object/from16 v0, v21

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Counter;

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v5

    add-int v149, v149, v5

    .line 2962
    add-int/lit8 v63, v63, -0x1

    goto :goto_1c

    .line 2965
    :cond_2e
    invoke-virtual/range {v101 .. v101}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    move-result-object v109

    .line 2966
    .local v109, "serviceStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    invoke-virtual/range {v109 .. v109}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v59, v5, -0x1

    .local v59, "isvc":I
    :goto_1d
    if-ltz v59, :cond_31

    .line 2967
    move-object/from16 v0, v109

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v111

    check-cast v111, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    .line 2968
    .local v111, "ss":Landroid/os/BatteryStats$Uid$Pkg$Serv;
    move-object/from16 v0, v111

    move-wide/from16 v1, v24

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStartTime(JI)J

    move-result-wide v112

    .line 2969
    .local v112, "startTime":J
    move-object/from16 v0, v111

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    move-result v114

    .line 2970
    .restart local v114    # "starts":I
    move-object/from16 v0, v111

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    move-result v67

    .line 2971
    .local v67, "launches":I
    const-wide/16 v8, 0x0

    cmp-long v5, v112, v8

    if-nez v5, :cond_2f

    if-nez v114, :cond_2f

    if-eqz v67, :cond_30

    .line 2972
    :cond_2f
    const-string v5, "apk"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {v149 .. v149}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v9

    const/4 v9, 0x1

    move-object/from16 v0, v90

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v8, v9

    const/4 v9, 0x2

    move-object/from16 v0, v109

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v8, v9

    const/4 v9, 0x3

    const-wide/16 v14, 0x3e8

    div-long v14, v112, v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v8, v9

    const/4 v9, 0x4

    invoke-static/range {v114 .. v114}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v9

    const/4 v9, 0x5

    invoke-static/range {v67 .. v67}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v9

    move-object/from16 v0, p2

    invoke-static {v0, v12, v13, v5, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2966
    :cond_30
    add-int/lit8 v59, v59, -0x1

    goto :goto_1d

    .line 2958
    .end local v67    # "launches":I
    .end local v111    # "ss":Landroid/os/BatteryStats$Uid$Pkg$Serv;
    .end local v112    # "startTime":J
    .end local v114    # "starts":I
    :cond_31
    add-int/lit8 v53, v53, -0x1

    goto/16 :goto_1b

    .line 2983
    .end local v12    # "uid":I
    .end local v19    # "NSE":I
    .end local v21    # "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    .end local v46    # "fullWifiLockOnTime":J
    .end local v52    # "ij":I
    .end local v53    # "ipkg":I
    .end local v56    # "ipr":I
    .end local v57    # "ips":I
    .end local v58    # "ise":I
    .end local v59    # "isvc":I
    .end local v60    # "isy":I
    .end local v62    # "iw":I
    .end local v63    # "iwa":I
    .end local v64    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v68    # "mobileActiveCount":I
    .end local v70    # "mobileActiveTime":J
    .end local v72    # "mobileBytesRx":J
    .end local v74    # "mobileBytesTx":J
    .end local v76    # "mobilePacketsRx":J
    .end local v78    # "mobilePacketsTx":J
    .end local v90    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v96    # "powerCpuMaUs":J
    .end local v100    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v101    # "ps":Landroid/os/BatteryStats$Uid$Pkg;
    .end local v108    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v109    # "serviceStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    .end local v115    # "stateTimes":[Ljava/lang/Object;
    .end local v116    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v118    # "systemCpuTimeUs":J
    .end local v124    # "totalStateTime":J
    .end local v132    # "u":Landroid/os/BatteryStats$Uid;
    .end local v134    # "uidWifiIdleTimeMs":J
    .end local v136    # "uidWifiRunningTime":J
    .end local v138    # "uidWifiRxTimeMs":J
    .end local v140    # "uidWifiTxTimeMs":J
    .end local v142    # "userCpuTimeUs":J
    .end local v147    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v149    # "wakeups":I
    .end local v158    # "wifiBytesRx":J
    .end local v160    # "wifiBytesTx":J
    .end local v166    # "wifiPacketsRx":J
    .end local v168    # "wifiPacketsTx":J
    .end local v180    # "wifiScanCount":I
    .end local v182    # "wifiScanTime":J
    :cond_32
    return-void

    .line 2740
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;IJ)V
    .locals 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p4, "flags"    # I
    .param p5, "histStart"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;IJ)V"
        }
    .end annotation

    .prologue
    .line 5046
    .local p3, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->prepareForDumpLocked()V

    .line 5048
    const/4 v2, 0x0

    const-string/jumbo v3, "i"

    const-string/jumbo v4, "vers"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "15"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getParcelVersion()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartPlatformVersion()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getEndPlatformVersion()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3, v4, v5}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5052
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryBaseTime()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long v16, v2, v4

    .line 5054
    .local v16, "now":J
    and-int/lit8 v2, p4, 0xe

    if-eqz v2, :cond_1

    const/4 v11, 0x1

    .line 5057
    .local v11, "filtering":Z
    :goto_0
    and-int/lit8 v2, p4, 0x10

    if-nez v2, :cond_0

    and-int/lit8 v2, p4, 0x8

    if-eqz v2, :cond_3

    .line 5058
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5060
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryStringPoolSize()I

    move-result v2

    if-ge v12, v2, :cond_2

    .line 5061
    const/16 v2, 0x9

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const/16 v2, 0x2c

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 5062
    const-string/jumbo v2, "hsp"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v2, 0x2c

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 5063
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 5064
    const-string v2, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5065
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/os/BatteryStats;->getHistoryTagPoolUid(I)I

    move-result v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 5066
    const-string v2, ",\""

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5067
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/os/BatteryStats;->getHistoryTagPoolString(I)Ljava/lang/String;

    move-result-object v18

    .line 5068
    .local v18, "str":Ljava/lang/String;
    const-string v2, "\\"

    const-string v3, "\\\\"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    .line 5069
    const-string v2, "\""

    const-string v3, "\\\""

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    .line 5070
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5071
    const-string v2, "\""

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5072
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5060
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 5054
    .end local v11    # "filtering":Z
    .end local v12    # "i":I
    .end local v18    # "str":Ljava/lang/String;
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 5074
    .restart local v11    # "filtering":Z
    .restart local v12    # "i":I
    :cond_2
    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move/from16 v5, p4

    move-wide/from16 v6, p5

    invoke-direct/range {v3 .. v8}, Landroid/os/BatteryStats;->dumpHistoryLocked(Ljava/io/PrintWriter;IJZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5076
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    .line 5081
    .end local v12    # "i":I
    :cond_3
    if-eqz v11, :cond_5

    and-int/lit8 v2, p4, 0x6

    if-nez v2, :cond_5

    .line 5131
    :cond_4
    :goto_2
    return-void

    .line 5076
    .restart local v12    # "i":I
    :catchall_0
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    throw v2

    .line 5085
    .end local v12    # "i":I
    :cond_5
    if-eqz p3, :cond_9

    .line 5086
    new-instance v23, Landroid/util/SparseArray;

    invoke-direct/range {v23 .. v23}, Landroid/util/SparseArray;-><init>()V

    .line 5087
    .local v23, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_3
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v12, v2, :cond_7

    .line 5088
    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ApplicationInfo;

    .line 5089
    .local v10, "ai":Landroid/content/pm/ApplicationInfo;
    iget v2, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 5090
    .local v15, "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v15, :cond_6

    .line 5091
    new-instance v15, Ljava/util/ArrayList;

    .end local v15    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 5092
    .restart local v15    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget v2, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5094
    :cond_6
    iget-object v2, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5087
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 5096
    .end local v10    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v15    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v22

    .line 5097
    .local v22, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 5098
    .local v9, "NU":I
    const/4 v2, 0x2

    new-array v14, v2, [Ljava/lang/String;

    .line 5099
    .local v14, "lineArgs":[Ljava/lang/String;
    const/4 v12, 0x0

    :goto_4
    if-ge v12, v9, :cond_9

    .line 5100
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v19

    .line 5101
    .local v19, "uid":I
    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 5102
    .restart local v15    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v15, :cond_8

    .line 5103
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_5
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v13, v2, :cond_8

    .line 5104
    const/4 v2, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v2

    .line 5105
    const/4 v3, 0x1

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v14, v3

    .line 5106
    const/4 v3, 0x0

    const-string/jumbo v4, "i"

    const-string/jumbo v5, "uid"

    move-object v2, v14

    check-cast v2, [Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-static {v0, v3, v4, v5, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5103
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 5099
    .end local v13    # "j":I
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 5112
    .end local v9    # "NU":I
    .end local v12    # "i":I
    .end local v14    # "lineArgs":[Ljava/lang/String;
    .end local v15    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19    # "uid":I
    .end local v22    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v23    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :cond_9
    if-eqz v11, :cond_a

    and-int/lit8 v2, p4, 0x2

    if-eqz v2, :cond_4

    .line 5113
    :cond_a
    const-string v2, ""

    const-string v3, "dsd"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3, v4, v5}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    .line 5114
    const/4 v2, 0x1

    new-array v14, v2, [Ljava/lang/String;

    .line 5115
    .restart local v14    # "lineArgs":[Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v20

    .line 5116
    .local v20, "timeRemaining":J
    const-wide/16 v2, 0x0

    cmp-long v2, v20, v2

    if-ltz v2, :cond_b

    .line 5117
    const/4 v2, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v2

    .line 5118
    const/4 v3, 0x0

    const-string/jumbo v4, "i"

    const-string v5, "dtr"

    move-object v2, v14

    check-cast v2, [Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-static {v0, v3, v4, v5, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5121
    :cond_b
    const-string v2, ""

    const-string v3, "csd"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3, v4, v5}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    .line 5122
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v20

    .line 5123
    const-wide/16 v2, 0x0

    cmp-long v2, v20, v2

    if-ltz v2, :cond_c

    .line 5124
    const/4 v2, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v2

    .line 5125
    const/4 v2, 0x0

    const-string/jumbo v3, "i"

    const-string v4, "ctr"

    check-cast v14, [Ljava/lang/Object;

    .end local v14    # "lineArgs":[Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-static {v0, v2, v3, v4, v14}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5128
    :cond_c
    const/4 v5, 0x0

    const/4 v6, -0x1

    and-int/lit8 v2, p4, 0x40

    if-eqz v2, :cond_d

    const/4 v7, 0x1

    :goto_6
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, Landroid/os/BatteryStats;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZ)V

    goto/16 :goto_2

    :cond_d
    const/4 v7, 0x0

    goto :goto_6
.end method

.method public dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIJ)V
    .locals 53
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "flags"    # I
    .param p4, "reqUid"    # I
    .param p5, "histStart"    # J

    .prologue
    .line 4855
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->prepareForDumpLocked()V

    .line 4857
    and-int/lit8 v6, p3, 0xe

    if-eqz v6, :cond_3

    const/16 v34, 0x1

    .line 4860
    .local v34, "filtering":Z
    :goto_0
    and-int/lit8 v6, p3, 0x8

    if-nez v6, :cond_0

    if-nez v34, :cond_6

    .line 4861
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryTotalSize()I

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v36, v0

    .line 4862
    .local v36, "historyTotalSize":J
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryUsedSize()I

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v38, v0

    .line 4863
    .local v38, "historyUsedSize":J
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4865
    :try_start_0
    const-string v6, "Battery History ("

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4866
    const-wide/16 v12, 0x64

    mul-long v12, v12, v38

    div-long v12, v12, v36

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    .line 4867
    const-string v6, "% used, "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4868
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, v38

    invoke-direct {v0, v1, v2, v3}, Landroid/os/BatteryStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 4869
    const-string v6, " used of "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4870
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, v36

    invoke-direct {v0, v1, v2, v3}, Landroid/os/BatteryStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 4871
    const-string v6, ", "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4872
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryStringPoolSize()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 4873
    const-string v6, " strings using "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4874
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryStringPoolBytes()I

    move-result v6

    int-to-long v12, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v12, v13}, Landroid/os/BatteryStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 4875
    const-string v6, "):"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4876
    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v5 .. v10}, Landroid/os/BatteryStats;->dumpHistoryLocked(Ljava/io/PrintWriter;IJZ)V

    .line 4877
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4879
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    .line 4883
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingOldHistoryLocked()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 4885
    :try_start_1
    new-instance v7, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v7}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 4886
    .local v7, "rec":Landroid/os/BatteryStats$HistoryItem;
    const-string v6, "Old battery History:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4887
    new-instance v5, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v5}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    .line 4888
    .local v5, "hprinter":Landroid/os/BatteryStats$HistoryPrinter;
    const-wide/16 v8, -0x1

    .line 4889
    .local v8, "baseTime":J
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/os/BatteryStats;->getNextOldHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 4890
    const-wide/16 v12, 0x0

    cmp-long v6, v8, v12

    if-gez v6, :cond_2

    .line 4891
    iget-wide v8, v7, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 4893
    :cond_2
    const/4 v10, 0x0

    and-int/lit8 v6, p3, 0x20

    if-eqz v6, :cond_4

    const/4 v11, 0x1

    :goto_2
    move-object/from16 v6, p2

    invoke-virtual/range {v5 .. v11}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 4897
    .end local v5    # "hprinter":Landroid/os/BatteryStats$HistoryPrinter;
    .end local v7    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .end local v8    # "baseTime":J
    :catchall_0
    move-exception v6

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingOldHistoryLocked()V

    throw v6

    .line 4857
    .end local v34    # "filtering":Z
    .end local v36    # "historyTotalSize":J
    .end local v38    # "historyUsedSize":J
    :cond_3
    const/16 v34, 0x0

    goto/16 :goto_0

    .line 4879
    .restart local v34    # "filtering":Z
    .restart local v36    # "historyTotalSize":J
    .restart local v38    # "historyUsedSize":J
    :catchall_1
    move-exception v6

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    throw v6

    .line 4893
    .restart local v5    # "hprinter":Landroid/os/BatteryStats$HistoryPrinter;
    .restart local v7    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .restart local v8    # "baseTime":J
    :cond_4
    const/4 v11, 0x0

    goto :goto_2

    .line 4895
    :cond_5
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4897
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingOldHistoryLocked()V

    .line 4902
    .end local v5    # "hprinter":Landroid/os/BatteryStats$HistoryPrinter;
    .end local v7    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .end local v8    # "baseTime":J
    .end local v36    # "historyTotalSize":J
    .end local v38    # "historyUsedSize":J
    :cond_6
    if-eqz v34, :cond_8

    and-int/lit8 v6, p3, 0x6

    if-nez v6, :cond_8

    .line 5041
    :cond_7
    :goto_3
    return-void

    .line 4906
    :cond_8
    if-nez v34, :cond_d

    .line 4907
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v51

    .line 4908
    .local v51, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v51 .. v51}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 4909
    .local v4, "NU":I
    const/16 v32, 0x0

    .line 4910
    .local v32, "didPid":Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v42

    .line 4911
    .local v42, "nowRealtime":J
    const/16 v35, 0x0

    .local v35, "i":I
    :goto_4
    move/from16 v0, v35

    if-ge v0, v4, :cond_c

    .line 4912
    move-object/from16 v0, v51

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Landroid/os/BatteryStats$Uid;

    .line 4913
    .local v50, "uid":Landroid/os/BatteryStats$Uid;
    invoke-virtual/range {v50 .. v50}, Landroid/os/BatteryStats$Uid;->getPidStats()Landroid/util/SparseArray;

    move-result-object v44

    .line 4914
    .local v44, "pids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Pid;>;"
    if-eqz v44, :cond_b

    .line 4915
    const/16 v40, 0x0

    .local v40, "j":I
    :goto_5
    invoke-virtual/range {v44 .. v44}, Landroid/util/SparseArray;->size()I

    move-result v6

    move/from16 v0, v40

    if-ge v0, v6, :cond_b

    .line 4916
    move-object/from16 v0, v44

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/os/BatteryStats$Uid$Pid;

    .line 4917
    .local v41, "pid":Landroid/os/BatteryStats$Uid$Pid;
    if-nez v32, :cond_9

    .line 4918
    const-string v6, "Per-PID Stats:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4919
    const/16 v32, 0x1

    .line 4921
    :cond_9
    move-object/from16 v0, v41

    iget-wide v14, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeSumMs:J

    move-object/from16 v0, v41

    iget v6, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    if-lez v6, :cond_a

    move-object/from16 v0, v41

    iget-wide v12, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    sub-long v12, v42, v12

    :goto_6
    add-long v46, v14, v12

    .line 4923
    .local v46, "time":J
    const-string v6, "  PID "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v44

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 4924
    const-string v6, " wake time: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4925
    move-wide/from16 v0, v46

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4926
    const-string v6, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4915
    add-int/lit8 v40, v40, 0x1

    goto :goto_5

    .line 4921
    .end local v46    # "time":J
    :cond_a
    const-wide/16 v12, 0x0

    goto :goto_6

    .line 4911
    .end local v40    # "j":I
    .end local v41    # "pid":Landroid/os/BatteryStats$Uid$Pid;
    :cond_b
    add-int/lit8 v35, v35, 0x1

    goto :goto_4

    .line 4930
    .end local v44    # "pids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Pid;>;"
    .end local v50    # "uid":Landroid/os/BatteryStats$Uid;
    :cond_c
    if-eqz v32, :cond_d

    .line 4931
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4935
    .end local v4    # "NU":I
    .end local v32    # "didPid":Z
    .end local v35    # "i":I
    .end local v42    # "nowRealtime":J
    .end local v51    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    :cond_d
    if-eqz v34, :cond_e

    and-int/lit8 v6, p3, 0x2

    if-eqz v6, :cond_13

    .line 4936
    :cond_e
    const-string v6, "  "

    const-string v10, "Discharge step durations:"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v6, v10, v12, v13}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 4938
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v48

    .line 4939
    .local v48, "timeRemaining":J
    const-wide/16 v12, 0x0

    cmp-long v6, v48, v12

    if-ltz v6, :cond_f

    .line 4940
    const-string v6, "  Estimated discharge time remaining: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4941
    const-wide/16 v12, 0x3e8

    div-long v12, v48, v12

    move-object/from16 v0, p2

    invoke-static {v12, v13, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4942
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4944
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v11

    .line 4945
    .local v11, "steps":Landroid/os/BatteryStats$LevelStepTracker;
    const/16 v35, 0x0

    .restart local v35    # "i":I
    :goto_7
    sget-object v6, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    array-length v6, v6

    move/from16 v0, v35

    if-ge v0, v6, :cond_10

    .line 4946
    const-string v6, "  Estimated "

    sget-object v10, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    aget-object v10, v10, v35

    const-string v19, " time: "

    sget-object v12, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    aget v12, v12, v35

    int-to-long v12, v12

    sget-object v14, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_VALUES:[I

    aget v14, v14, v35

    int-to-long v14, v14

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimeEstimate(JJ[I)J

    move-result-wide v16

    move-object/from16 v12, p2

    move-object v13, v6

    move-object v14, v10

    move-object/from16 v15, v19

    invoke-static/range {v12 .. v17}, Landroid/os/BatteryStats;->dumpTimeEstimate(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    .line 4945
    add-int/lit8 v35, v35, 0x1

    goto :goto_7

    .line 4950
    :cond_10
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4952
    .end local v11    # "steps":Landroid/os/BatteryStats$LevelStepTracker;
    .end local v35    # "i":I
    .end local v48    # "timeRemaining":J
    :cond_11
    const-string v6, "  "

    const-string v10, "Charge step durations:"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v6, v10, v12, v13}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 4954
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v48

    .line 4955
    .restart local v48    # "timeRemaining":J
    const-wide/16 v12, 0x0

    cmp-long v6, v48, v12

    if-ltz v6, :cond_12

    .line 4956
    const-string v6, "  Estimated charge time remaining: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4957
    const-wide/16 v12, 0x3e8

    div-long v12, v48, v12

    move-object/from16 v0, p2

    invoke-static {v12, v13, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4958
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4960
    :cond_12
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4963
    .end local v48    # "timeRemaining":J
    :cond_13
    if-eqz v34, :cond_14

    and-int/lit8 v6, p3, 0x6

    if-eqz v6, :cond_21

    .line 4964
    :cond_14
    const-string v6, "Daily stats:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4965
    const-string v6, "  Current start time: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4966
    const-string/jumbo v6, "yyyy-MM-dd-HH-mm-ss"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCurrentDailyStartTime()J

    move-result-wide v12

    invoke-static {v6, v12, v13}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4968
    const-string v6, "  Next min deadline: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4969
    const-string/jumbo v6, "yyyy-MM-dd-HH-mm-ss"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getNextMinDailyDeadline()J

    move-result-wide v12

    invoke-static {v6, v12, v13}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4971
    const-string v6, "  Next max deadline: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4972
    const-string/jumbo v6, "yyyy-MM-dd-HH-mm-ss"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getNextMaxDailyDeadline()J

    move-result-wide v12

    invoke-static {v6, v12, v13}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4974
    new-instance v17, Ljava/lang/StringBuilder;

    const/16 v6, 0x40

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4975
    .local v17, "sb":Ljava/lang/StringBuilder;
    const/4 v6, 0x1

    new-array v0, v6, [I

    move-object/from16 v18, v0

    .line 4976
    .local v18, "outInt":[I
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDailyDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v16

    .line 4977
    .local v16, "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDailyChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v23

    .line 4978
    .local v23, "csteps":Landroid/os/BatteryStats$LevelStepTracker;
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDailyPackageChanges()Ljava/util/ArrayList;

    move-result-object v45

    .line 4979
    .local v45, "pkgc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$PackageChange;>;"
    move-object/from16 v0, v16

    iget v6, v0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    if-gtz v6, :cond_15

    move-object/from16 v0, v23

    iget v6, v0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    if-gtz v6, :cond_15

    if-eqz v45, :cond_19

    .line 4980
    :cond_15
    and-int/lit8 v6, p3, 0x4

    if-nez v6, :cond_16

    if-nez v34, :cond_1e

    .line 4981
    :cond_16
    const-string v6, "    "

    const-string v10, "  Current daily discharge step durations:"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v0, v6, v10, v1, v12}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 4983
    const-string v14, "      "

    const-string v15, "Discharge"

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    invoke-direct/range {v12 .. v18}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    .line 4986
    :cond_17
    const-string v6, "    "

    const-string v10, "  Current daily charge step durations:"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-static {v0, v6, v10, v1, v12}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 4988
    const-string v21, "      "

    const-string v22, "Charge"

    move-object/from16 v19, p0

    move-object/from16 v20, p2

    move-object/from16 v24, v17

    move-object/from16 v25, v18

    invoke-direct/range {v19 .. v25}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    .line 4991
    :cond_18
    const-string v6, "    "

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v6, v2}, Landroid/os/BatteryStats;->dumpDailyPackageChanges(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 5001
    :cond_19
    :goto_8
    const/16 v31, 0x0

    .line 5002
    .local v31, "curIndex":I
    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getDailyItemLocked(I)Landroid/os/BatteryStats$DailyItem;

    move-result-object v33

    .local v33, "dit":Landroid/os/BatteryStats$DailyItem;
    if-eqz v33, :cond_20

    .line 5003
    add-int/lit8 v31, v31, 0x1

    .line 5004
    and-int/lit8 v6, p3, 0x4

    if-eqz v6, :cond_1a

    .line 5005
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5007
    :cond_1a
    const-string v6, "  Daily from "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5008
    const-string/jumbo v6, "yyyy-MM-dd-HH-mm-ss"

    move-object/from16 v0, v33

    iget-wide v12, v0, Landroid/os/BatteryStats$DailyItem;->mStartTime:J

    invoke-static {v6, v12, v13}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5009
    const-string v6, " to "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5010
    const-string/jumbo v6, "yyyy-MM-dd-HH-mm-ss"

    move-object/from16 v0, v33

    iget-wide v12, v0, Landroid/os/BatteryStats$DailyItem;->mEndTime:J

    invoke-static {v6, v12, v13}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5011
    const-string v6, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5012
    and-int/lit8 v6, p3, 0x4

    if-nez v6, :cond_1b

    if-nez v34, :cond_1f

    .line 5013
    :cond_1b
    const-string v6, "      "

    const-string v10, "    Discharge step durations:"

    move-object/from16 v0, v33

    iget-object v12, v0, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v6, v10, v12, v13}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 5015
    const-string v26, "        "

    const-string v27, "Discharge"

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v28, v0

    move-object/from16 v24, p0

    move-object/from16 v25, p2

    move-object/from16 v29, v17

    move-object/from16 v30, v18

    invoke-direct/range {v24 .. v30}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    .line 5018
    :cond_1c
    const-string v6, "      "

    const-string v10, "    Charge step durations:"

    move-object/from16 v0, v33

    iget-object v12, v0, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v6, v10, v12, v13}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 5020
    const-string v26, "        "

    const-string v27, "Charge"

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v28, v0

    move-object/from16 v24, p0

    move-object/from16 v25, p2

    move-object/from16 v29, v17

    move-object/from16 v30, v18

    invoke-direct/range {v24 .. v30}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    .line 5023
    :cond_1d
    const-string v6, "    "

    move-object/from16 v0, v33

    iget-object v10, v0, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v10}, Landroid/os/BatteryStats;->dumpDailyPackageChanges(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_9

    .line 4993
    .end local v31    # "curIndex":I
    .end local v33    # "dit":Landroid/os/BatteryStats$DailyItem;
    :cond_1e
    const-string v6, "  Current daily steps:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4994
    const-string v14, "    "

    const-string v15, "Discharge"

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    invoke-direct/range {v12 .. v18}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    .line 4996
    const-string v21, "    "

    const-string v22, "Charge"

    move-object/from16 v19, p0

    move-object/from16 v20, p2

    move-object/from16 v24, v17

    move-object/from16 v25, v18

    invoke-direct/range {v19 .. v25}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    goto/16 :goto_8

    .line 5025
    .restart local v31    # "curIndex":I
    .restart local v33    # "dit":Landroid/os/BatteryStats$DailyItem;
    :cond_1f
    const-string v26, "    "

    const-string v27, "Discharge"

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v28, v0

    move-object/from16 v24, p0

    move-object/from16 v25, p2

    move-object/from16 v29, v17

    move-object/from16 v30, v18

    invoke-direct/range {v24 .. v30}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    .line 5027
    const-string v26, "    "

    const-string v27, "Charge"

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v28, v0

    move-object/from16 v24, p0

    move-object/from16 v25, p2

    move-object/from16 v29, v17

    move-object/from16 v30, v18

    invoke-direct/range {v24 .. v30}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    goto/16 :goto_9

    .line 5031
    :cond_20
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5033
    .end local v16    # "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    .end local v17    # "sb":Ljava/lang/StringBuilder;
    .end local v18    # "outInt":[I
    .end local v23    # "csteps":Landroid/os/BatteryStats$LevelStepTracker;
    .end local v31    # "curIndex":I
    .end local v33    # "dit":Landroid/os/BatteryStats$DailyItem;
    .end local v45    # "pkgc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$PackageChange;>;"
    :cond_21
    if-eqz v34, :cond_22

    and-int/lit8 v6, p3, 0x2

    if-eqz v6, :cond_7

    .line 5034
    :cond_22
    const-string v6, "Statistics since last charge:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5035
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  System starts: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartCount()I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ", currently on battery: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getIsOnBattery()Z

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5037
    const-string v27, ""

    const/16 v28, 0x0

    and-int/lit8 v6, p3, 0x40

    if-eqz v6, :cond_23

    const/16 v30, 0x1

    :goto_a
    move-object/from16 v24, p0

    move-object/from16 v25, p1

    move-object/from16 v26, p2

    move/from16 v29, p4

    invoke-virtual/range {v24 .. v30}, Landroid/os/BatteryStats;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;IIZ)V

    .line 5039
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_3

    .line 5037
    :cond_23
    const/16 v30, 0x0

    goto :goto_a
.end method

.method public final dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "which"    # I
    .param p5, "reqUid"    # I

    .prologue
    .line 3011
    invoke-static {p1}, Lcom/android/internal/os/BatteryStatsHelper;->checkWifiOnly(Landroid/content/Context;)Z

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;IIZ)V

    .line 3012
    return-void
.end method

.method public final dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;IIZ)V
    .locals 236
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "which"    # I
    .param p5, "reqUid"    # I
    .param p6, "wifiOnly"    # Z

    .prologue
    .line 3017
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v12, 0x3e8

    mul-long v132, v6, v12

    .line 3018
    .local v132, "rawUptime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v12, 0x3e8

    mul-long v20, v6, v12

    .line 3019
    .local v20, "rawRealtime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v132

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v40

    .line 3021
    .local v40, "batteryUptime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v132

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v200

    .line 3022
    .local v200, "whichBatteryUptime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v194

    .line 3023
    .local v194, "whichBatteryRealtime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeRealtime(JI)J

    move-result-wide v160

    .line 3024
    .local v160, "totalRealtime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v132

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeUptime(JI)J

    move-result-wide v166

    .line 3025
    .local v166, "totalUptime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v132

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    move-result-wide v198

    .line 3026
    .local v198, "whichBatteryScreenOffUptime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    move-result-wide v196

    .line 3028
    .local v196, "whichBatteryScreenOffRealtime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v38

    .line 3029
    .local v38, "batteryTimeRemaining":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v50

    .line 3031
    .local v50, "chargeTimeRemaining":J
    new-instance v18, Ljava/lang/StringBuilder;

    const/16 v6, 0x80

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3033
    .local v18, "sb":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v176

    .line 3034
    .local v176, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v176 .. v176}, Landroid/util/SparseArray;->size()I

    move-result v34

    .line 3036
    .local v34, "NU":I
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3037
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3038
    const-string v6, "  Time on battery: "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3039
    const-wide/16 v6, 0x3e8

    div-long v6, v194, v6

    move-object/from16 v0, v18

    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v6, "("

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3040
    move-object/from16 v0, p0

    move-wide/from16 v1, v194

    move-wide/from16 v3, v160

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3041
    const-string v6, ") realtime, "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3042
    const-wide/16 v6, 0x3e8

    div-long v6, v200, v6

    move-object/from16 v0, v18

    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3043
    const-string v6, "("

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v200

    move-wide/from16 v3, v160

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3044
    const-string v6, ") uptime"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3045
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3046
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3047
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3048
    const-string v6, "  Time on battery screen off: "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3049
    const-wide/16 v6, 0x3e8

    div-long v6, v196, v6

    move-object/from16 v0, v18

    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v6, "("

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3050
    move-object/from16 v0, p0

    move-wide/from16 v1, v196

    move-wide/from16 v3, v160

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3051
    const-string v6, ") realtime, "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3052
    const-wide/16 v6, 0x3e8

    div-long v6, v198, v6

    move-object/from16 v0, v18

    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3053
    const-string v6, "("

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3054
    move-object/from16 v0, p0

    move-wide/from16 v1, v198

    move-wide/from16 v3, v160

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3055
    const-string v6, ") uptime"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3056
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3057
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3058
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3059
    const-string v6, "  Total run time: "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3060
    const-wide/16 v6, 0x3e8

    div-long v6, v160, v6

    move-object/from16 v0, v18

    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3061
    const-string/jumbo v6, "realtime, "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3062
    const-wide/16 v6, 0x3e8

    div-long v6, v166, v6

    move-object/from16 v0, v18

    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3063
    const-string/jumbo v6, "uptime"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3064
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3065
    const-wide/16 v6, 0x0

    cmp-long v6, v38, v6

    if-ltz v6, :cond_0

    .line 3066
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3067
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3068
    const-string v6, "  Battery time remaining: "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3069
    const-wide/16 v6, 0x3e8

    div-long v6, v38, v6

    move-object/from16 v0, v18

    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3070
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3072
    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v6, v50, v6

    if-ltz v6, :cond_1

    .line 3073
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3074
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3075
    const-string v6, "  Charge time remaining: "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3076
    const-wide/16 v6, 0x3e8

    div-long v6, v50, v6

    move-object/from16 v0, v18

    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3077
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3079
    :cond_1
    const-string v6, "  Start clock time: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3080
    const-string/jumbo v6, "yyyy-MM-dd-HH-mm-ss"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartClockTime()J

    move-result-wide v12

    invoke-static {v6, v12, v13}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3082
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v134

    .line 3083
    .local v134, "screenOnTime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getInteractiveTime(JI)J

    move-result-wide v78

    .line 3084
    .local v78, "interactiveTime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getPowerSaveModeEnabledTime(JI)J

    move-result-wide v128

    .line 3085
    .local v128, "powerSaveModeEnabledTime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getDeviceIdleModeEnabledTime(JI)J

    move-result-wide v56

    .line 3086
    .local v56, "deviceIdleModeEnabledTime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getDeviceIdlingTime(JI)J

    move-result-wide v58

    .line 3087
    .local v58, "deviceIdlingTime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v124

    .line 3088
    .local v124, "phoneOnTime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v208

    .line 3089
    .local v208, "wifiRunningTime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    move-result-wide v204

    .line 3090
    .local v204, "wifiOnTime":J
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3091
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3092
    const-string v6, "  Screen on: "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v134, v6

    move-object/from16 v0, v18

    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3093
    const-string v6, "("

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v134

    move-wide/from16 v3, v194

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3094
    const-string v6, ") "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getScreenOnCount(I)I

    move-result v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3095
    const-string/jumbo v6, "x, Interactive: "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v78, v6

    move-object/from16 v0, v18

    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3096
    const-string v6, "("

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v78

    move-wide/from16 v3, v194

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3097
    const-string v6, ")"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3098
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3099
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3100
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3101
    const-string v6, "  Screen brightnesses:"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3102
    const/16 v55, 0x0

    .line 3103
    .local v55, "didOne":Z
    const/16 v74, 0x0

    .local v74, "i":I
    :goto_0
    const/4 v6, 0x5

    move/from16 v0, v74

    if-ge v0, v6, :cond_3

    .line 3104
    move-object/from16 v0, p0

    move/from16 v1, v74

    move-wide/from16 v2, v20

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    move-result-wide v150

    .line 3105
    .local v150, "time":J
    const-wide/16 v6, 0x0

    cmp-long v6, v150, v6

    if-nez v6, :cond_2

    .line 3103
    :goto_1
    add-int/lit8 v74, v74, 0x1

    goto :goto_0

    .line 3108
    :cond_2
    const-string v6, "\n    "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3109
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3110
    const/16 v55, 0x1

    .line 3111
    sget-object v6, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v74

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3112
    const-string v6, " "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3113
    const-wide/16 v6, 0x3e8

    div-long v6, v150, v6

    move-object/from16 v0, v18

    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3114
    const-string v6, "("

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3115
    move-object/from16 v0, p0

    move-wide/from16 v1, v150

    move-wide/from16 v3, v134

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3116
    const-string v6, ")"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3118
    .end local v150    # "time":J
    :cond_3
    if-nez v55, :cond_4

    const-string v6, " (no activity)"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3119
    :cond_4
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3120
    const-wide/16 v6, 0x0

    cmp-long v6, v128, v6

    if-eqz v6, :cond_5

    .line 3121
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3122
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3123
    const-string v6, "  Power save mode enabled: "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3124
    const-wide/16 v6, 0x3e8

    div-long v6, v128, v6

    move-object/from16 v0, v18

    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3125
    const-string v6, "("

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3126
    move-object/from16 v0, p0

    move-wide/from16 v1, v128

    move-wide/from16 v3, v194

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3127
    const-string v6, ")"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3128
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3130
    :cond_5
    const-wide/16 v6, 0x0

    cmp-long v6, v58, v6

    if-eqz v6, :cond_6

    .line 3131
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3132
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3133
    const-string v6, "  Device idling: "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3134
    const-wide/16 v6, 0x3e8

    div-long v6, v58, v6

    move-object/from16 v0, v18

    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3135
    const-string v6, "("

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3136
    move-object/from16 v0, p0

    move-wide/from16 v1, v58

    move-wide/from16 v3, v194

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3137
    const-string v6, ") "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getDeviceIdlingCount(I)I

    move-result v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3138
    const-string/jumbo v6, "x"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3139
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3141
    :cond_6
    const-wide/16 v6, 0x0

    cmp-long v6, v56, v6

    if-eqz v6, :cond_7

    .line 3142
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3143
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3144
    const-string v6, "  Idle mode time: "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3145
    const-wide/16 v6, 0x3e8

    div-long v6, v56, v6

    move-object/from16 v0, v18

    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3146
    const-string v6, "("

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3147
    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    move-wide/from16 v3, v194

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3148
    const-string v6, ") "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getDeviceIdleModeEnabledCount(I)I

    move-result v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3149
    const-string/jumbo v6, "x"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3150
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3152
    :cond_7
    const-wide/16 v6, 0x0

    cmp-long v6, v124, v6

    if-eqz v6, :cond_8

    .line 3153
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3154
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3155
    const-string v6, "  Active phone call: "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v124, v6

    move-object/from16 v0, v18

    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3156
    const-string v6, "("

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v124

    move-wide/from16 v3, v194

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3157
    const-string v6, ") "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getPhoneOnCount(I)I

    move-result v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "x"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3159
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getNumConnectivityChange(I)I

    move-result v52

    .line 3160
    .local v52, "connChanges":I
    if-eqz v52, :cond_9

    .line 3161
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3162
    const-string v6, "  Connectivity changes: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 3166
    :cond_9
    const-wide/16 v66, 0x0

    .line 3167
    .local v66, "fullWakeLockTimeTotalMicros":J
    const-wide/16 v122, 0x0

    .line 3169
    .local v122, "partialWakeLockTimeTotalMicros":J
    new-instance v153, Ljava/util/ArrayList;

    invoke-direct/range {v153 .. v153}, Ljava/util/ArrayList;-><init>()V

    .line 3171
    .local v153, "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    const/16 v85, 0x0

    .local v85, "iu":I
    :goto_2
    move/from16 v0, v85

    move/from16 v1, v34

    if-ge v0, v1, :cond_e

    .line 3172
    move-object/from16 v0, v176

    move/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v170

    check-cast v170, Landroid/os/BatteryStats$Uid;

    .line 3174
    .local v170, "u":Landroid/os/BatteryStats$Uid;
    invoke-virtual/range {v170 .. v170}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v192

    .line 3176
    .local v192, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-virtual/range {v192 .. v192}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v86, v6, -0x1

    .local v86, "iw":I
    :goto_3
    if-ltz v86, :cond_d

    .line 3177
    move-object/from16 v0, v192

    move/from16 v1, v86

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v221

    check-cast v221, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 3179
    .local v221, "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    const/4 v6, 0x1

    move-object/from16 v0, v221

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v63

    .line 3180
    .local v63, "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v63, :cond_a

    .line 3181
    move-object/from16 v0, v63

    move-wide/from16 v1, v20

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v6

    add-long v66, v66, v6

    .line 3185
    :cond_a
    const/4 v6, 0x0

    move-object/from16 v0, v221

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v9

    .line 3186
    .local v9, "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v9, :cond_c

    .line 3187
    move-wide/from16 v0, v20

    move/from16 v2, p4

    invoke-virtual {v9, v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v10

    .line 3189
    .local v10, "totalTimeMicros":J
    const-wide/16 v6, 0x0

    cmp-long v6, v10, v6

    if-lez v6, :cond_c

    .line 3190
    if-gez p5, :cond_b

    .line 3194
    new-instance v6, Landroid/os/BatteryStats$TimerEntry;

    move-object/from16 v0, v192

    move/from16 v1, v86

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual/range {v170 .. v170}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v8

    invoke-direct/range {v6 .. v11}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    move-object/from16 v0, v153

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3197
    :cond_b
    add-long v122, v122, v10

    .line 3176
    .end local v10    # "totalTimeMicros":J
    :cond_c
    add-int/lit8 v86, v86, -0x1

    goto :goto_3

    .line 3171
    .end local v9    # "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    .end local v63    # "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    .end local v221    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    :cond_d
    add-int/lit8 v85, v85, 0x1

    goto :goto_2

    .line 3203
    .end local v86    # "iw":I
    .end local v170    # "u":Landroid/os/BatteryStats$Uid;
    .end local v192    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_e
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v102

    .line 3204
    .local v102, "mobileRxTotalBytes":J
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v110

    .line 3205
    .local v110, "mobileTxTotalBytes":J
    const/4 v6, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v216

    .line 3206
    .local v216, "wifiRxTotalBytes":J
    const/4 v6, 0x3

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v232

    .line 3207
    .local v232, "wifiTxTotalBytes":J
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v104

    .line 3208
    .local v104, "mobileRxTotalPackets":J
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v112

    .line 3209
    .local v112, "mobileTxTotalPackets":J
    const/4 v6, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v218

    .line 3210
    .local v218, "wifiRxTotalPackets":J
    const/4 v6, 0x3

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v234

    .line 3212
    .local v234, "wifiTxTotalPackets":J
    const-wide/16 v6, 0x0

    cmp-long v6, v66, v6

    if-eqz v6, :cond_f

    .line 3213
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3214
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3215
    const-string v6, "  Total full wakelock time: "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x1f4

    add-long v6, v6, v66

    const-wide/16 v12, 0x3e8

    div-long/2addr v6, v12

    move-object/from16 v0, v18

    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    .line 3217
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3220
    :cond_f
    const-wide/16 v6, 0x0

    cmp-long v6, v122, v6

    if-eqz v6, :cond_10

    .line 3221
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3222
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3223
    const-string v6, "  Total partial wakelock time: "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x1f4

    add-long v6, v6, v122

    const-wide/16 v12, 0x3e8

    div-long/2addr v6, v12

    move-object/from16 v0, v18

    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    .line 3225
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3228
    :cond_10
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3229
    const-string v6, "  Mobile total received: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v102

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3230
    const-string v6, ", sent: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v110

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3231
    const-string v6, " (packets received "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-wide/from16 v1, v104

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 3232
    const-string v6, ", sent "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-wide/from16 v1, v112

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const-string v6, ")"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3233
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3234
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3235
    const-string v6, "  Phone signal levels:"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3236
    const/16 v55, 0x0

    .line 3237
    const/16 v74, 0x0

    :goto_4
    const/4 v6, 0x5

    move/from16 v0, v74

    if-ge v0, v6, :cond_12

    .line 3238
    move-object/from16 v0, p0

    move/from16 v1, v74

    move-wide/from16 v2, v20

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v150

    .line 3239
    .restart local v150    # "time":J
    const-wide/16 v6, 0x0

    cmp-long v6, v150, v6

    if-nez v6, :cond_11

    .line 3237
    :goto_5
    add-int/lit8 v74, v74, 0x1

    goto :goto_4

    .line 3242
    :cond_11
    const-string v6, "\n    "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3243
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3244
    const/16 v55, 0x1

    .line 3245
    sget-object v6, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v74

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3246
    const-string v6, " "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3247
    const-wide/16 v6, 0x3e8

    div-long v6, v150, v6

    move-object/from16 v0, v18

    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3248
    const-string v6, "("

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3249
    move-object/from16 v0, p0

    move-wide/from16 v1, v150

    move-wide/from16 v3, v194

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3250
    const-string v6, ") "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3251
    move-object/from16 v0, p0

    move/from16 v1, v74

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getPhoneSignalStrengthCount(II)I

    move-result v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3252
    const-string/jumbo v6, "x"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 3254
    .end local v150    # "time":J
    :cond_12
    if-nez v55, :cond_13

    const-string v6, " (no activity)"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3255
    :cond_13
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3257
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3258
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3259
    const-string v6, "  Signal scanning time: "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3260
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getPhoneSignalScanningTime(JI)J

    move-result-wide v6

    const-wide/16 v12, 0x3e8

    div-long/2addr v6, v12

    move-object/from16 v0, v18

    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    .line 3261
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3263
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3264
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3265
    const-string v6, "  Radio types:"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3266
    const/16 v55, 0x0

    .line 3267
    const/16 v74, 0x0

    :goto_6
    const/16 v6, 0x11

    move/from16 v0, v74

    if-ge v0, v6, :cond_15

    .line 3268
    move-object/from16 v0, p0

    move/from16 v1, v74

    move-wide/from16 v2, v20

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->getPhoneDataConnectionTime(IJI)J

    move-result-wide v150

    .line 3269
    .restart local v150    # "time":J
    const-wide/16 v6, 0x0

    cmp-long v6, v150, v6

    if-nez v6, :cond_14

    .line 3267
    :goto_7
    add-int/lit8 v74, v74, 0x1

    goto :goto_6

    .line 3272
    :cond_14
    const-string v6, "\n    "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3273
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3274
    const/16 v55, 0x1

    .line 3275
    sget-object v6, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v74

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3276
    const-string v6, " "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3277
    const-wide/16 v6, 0x3e8

    div-long v6, v150, v6

    move-object/from16 v0, v18

    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3278
    const-string v6, "("

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3279
    move-object/from16 v0, p0

    move-wide/from16 v1, v150

    move-wide/from16 v3, v194

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3280
    const-string v6, ") "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3281
    move-object/from16 v0, p0

    move/from16 v1, v74

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getPhoneDataConnectionCount(II)I

    move-result v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3282
    const-string/jumbo v6, "x"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 3284
    .end local v150    # "time":J
    :cond_15
    if-nez v55, :cond_16

    const-string v6, " (no activity)"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3285
    :cond_16
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3287
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3288
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3289
    const-string v6, "  Mobile radio active time: "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3290
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v94

    .line 3291
    .local v94, "mobileActiveTime":J
    const-wide/16 v6, 0x3e8

    div-long v6, v94, v6

    move-object/from16 v0, v18

    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3292
    const-string v6, "("

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v94

    move-wide/from16 v3, v194

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3293
    const-string v6, ") "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveCount(I)I

    move-result v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3294
    const-string/jumbo v6, "x"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3295
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3297
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveUnknownTime(I)J

    move-result-wide v96

    .line 3298
    .local v96, "mobileActiveUnknownTime":J
    const-wide/16 v6, 0x0

    cmp-long v6, v96, v6

    if-eqz v6, :cond_17

    .line 3299
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3300
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3301
    const-string v6, "  Mobile radio active unknown time: "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3302
    const-wide/16 v6, 0x3e8

    div-long v6, v96, v6

    move-object/from16 v0, v18

    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3303
    const-string v6, "("

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3304
    move-object/from16 v0, p0

    move-wide/from16 v1, v96

    move-wide/from16 v3, v194

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3305
    const-string v6, ") "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveUnknownCount(I)I

    move-result v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3306
    const-string/jumbo v6, "x"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3307
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3310
    :cond_17
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveAdjustedTime(I)J

    move-result-wide v92

    .line 3311
    .local v92, "mobileActiveAdjustedTime":J
    const-wide/16 v6, 0x0

    cmp-long v6, v92, v6

    if-eqz v6, :cond_18

    .line 3312
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3313
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3314
    const-string v6, "  Mobile radio active adjusted time: "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3315
    const-wide/16 v6, 0x3e8

    div-long v6, v92, v6

    move-object/from16 v0, v18

    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3316
    const-string v6, "("

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3317
    move-object/from16 v0, p0

    move-wide/from16 v1, v92

    move-wide/from16 v3, v194

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3318
    const-string v6, ")"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3319
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3322
    :cond_18
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3323
    const-string v6, "  Wi-Fi total received: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v216

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3324
    const-string v6, ", sent: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v232

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3325
    const-string v6, " (packets received "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-wide/from16 v1, v218

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 3326
    const-string v6, ", sent "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-wide/from16 v1, v234

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const-string v6, ")"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3327
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3328
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3329
    const-string v6, "  Wifi on: "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v204, v6

    move-object/from16 v0, v18

    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3330
    const-string v6, "("

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v204

    move-wide/from16 v3, v194

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3331
    const-string v6, "), Wifi running: "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v208, v6

    move-object/from16 v0, v18

    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3332
    const-string v6, "("

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v208

    move-wide/from16 v3, v194

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3333
    const-string v6, ")"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3334
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3336
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3337
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3338
    const-string v6, "  Wifi states:"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3339
    const/16 v55, 0x0

    .line 3340
    const/16 v74, 0x0

    :goto_8
    const/16 v6, 0x8

    move/from16 v0, v74

    if-ge v0, v6, :cond_1a

    .line 3341
    move-object/from16 v0, p0

    move/from16 v1, v74

    move-wide/from16 v2, v20

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->getWifiStateTime(IJI)J

    move-result-wide v150

    .line 3342
    .restart local v150    # "time":J
    const-wide/16 v6, 0x0

    cmp-long v6, v150, v6

    if-nez v6, :cond_19

    .line 3340
    :goto_9
    add-int/lit8 v74, v74, 0x1

    goto :goto_8

    .line 3345
    :cond_19
    const-string v6, "\n    "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3346
    const/16 v55, 0x1

    .line 3347
    sget-object v6, Landroid/os/BatteryStats;->WIFI_STATE_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v74

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3348
    const-string v6, " "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3349
    const-wide/16 v6, 0x3e8

    div-long v6, v150, v6

    move-object/from16 v0, v18

    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3350
    const-string v6, "("

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3351
    move-object/from16 v0, p0

    move-wide/from16 v1, v150

    move-wide/from16 v3, v194

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3352
    const-string v6, ") "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3353
    move-object/from16 v0, p0

    move/from16 v1, v74

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getWifiStateCount(II)I

    move-result v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3354
    const-string/jumbo v6, "x"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 3356
    .end local v150    # "time":J
    :cond_1a
    if-nez v55, :cond_1b

    const-string v6, " (no activity)"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3357
    :cond_1b
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3359
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3360
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3361
    const-string v6, "  Wifi supplicant states:"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3362
    const/16 v55, 0x0

    .line 3363
    const/16 v74, 0x0

    :goto_a
    const/16 v6, 0xd

    move/from16 v0, v74

    if-ge v0, v6, :cond_1d

    .line 3364
    move-object/from16 v0, p0

    move/from16 v1, v74

    move-wide/from16 v2, v20

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->getWifiSupplStateTime(IJI)J

    move-result-wide v150

    .line 3365
    .restart local v150    # "time":J
    const-wide/16 v6, 0x0

    cmp-long v6, v150, v6

    if-nez v6, :cond_1c

    .line 3363
    :goto_b
    add-int/lit8 v74, v74, 0x1

    goto :goto_a

    .line 3368
    :cond_1c
    const-string v6, "\n    "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3369
    const/16 v55, 0x1

    .line 3370
    sget-object v6, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v74

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3371
    const-string v6, " "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3372
    const-wide/16 v6, 0x3e8

    div-long v6, v150, v6

    move-object/from16 v0, v18

    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3373
    const-string v6, "("

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3374
    move-object/from16 v0, p0

    move-wide/from16 v1, v150

    move-wide/from16 v3, v194

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3375
    const-string v6, ") "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3376
    move-object/from16 v0, p0

    move/from16 v1, v74

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getWifiSupplStateCount(II)I

    move-result v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3377
    const-string/jumbo v6, "x"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 3379
    .end local v150    # "time":J
    :cond_1d
    if-nez v55, :cond_1e

    const-string v6, " (no activity)"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3380
    :cond_1e
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3382
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3383
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3384
    const-string v6, "  Wifi signal levels:"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3385
    const/16 v55, 0x0

    .line 3386
    const/16 v74, 0x0

    :goto_c
    const/4 v6, 0x5

    move/from16 v0, v74

    if-ge v0, v6, :cond_20

    .line 3387
    move-object/from16 v0, p0

    move/from16 v1, v74

    move-wide/from16 v2, v20

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->getWifiSignalStrengthTime(IJI)J

    move-result-wide v150

    .line 3388
    .restart local v150    # "time":J
    const-wide/16 v6, 0x0

    cmp-long v6, v150, v6

    if-nez v6, :cond_1f

    .line 3386
    :goto_d
    add-int/lit8 v74, v74, 0x1

    goto :goto_c

    .line 3391
    :cond_1f
    const-string v6, "\n    "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3392
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3393
    const/16 v55, 0x1

    .line 3394
    const-string/jumbo v6, "level("

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3395
    move-object/from16 v0, v18

    move/from16 v1, v74

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3396
    const-string v6, ") "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3397
    const-wide/16 v6, 0x3e8

    div-long v6, v150, v6

    move-object/from16 v0, v18

    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3398
    const-string v6, "("

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3399
    move-object/from16 v0, p0

    move-wide/from16 v1, v150

    move-wide/from16 v3, v194

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3400
    const-string v6, ") "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3401
    move-object/from16 v0, p0

    move/from16 v1, v74

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getWifiSignalStrengthCount(II)I

    move-result v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3402
    const-string/jumbo v6, "x"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 3404
    .end local v150    # "time":J
    :cond_20
    if-nez v55, :cond_21

    const-string v6, " (no activity)"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3405
    :cond_21
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3407
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getWifiControllerActivity(II)J

    move-result-wide v202

    .line 3408
    .local v202, "wifiIdleTimeMs":J
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getWifiControllerActivity(II)J

    move-result-wide v214

    .line 3409
    .local v214, "wifiRxTimeMs":J
    const/4 v6, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getWifiControllerActivity(II)J

    move-result-wide v230

    .line 3410
    .local v230, "wifiTxTimeMs":J
    const/4 v6, 0x3

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getWifiControllerActivity(II)J

    move-result-wide v206

    .line 3411
    .local v206, "wifiPowerDrainMaMs":J
    add-long v6, v202, v214

    add-long v224, v6, v230

    .line 3413
    .local v224, "wifiTotalTimeMs":J
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3414
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3415
    const-string v6, "  WiFi Idle time: "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v18

    move-wide/from16 v1, v202

    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3416
    const-string v6, "("

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3417
    move-object/from16 v0, p0

    move-wide/from16 v1, v202

    move-wide/from16 v3, v224

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3418
    const-string v6, ")"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3419
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3421
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3422
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3423
    const-string v6, "  WiFi Rx time:   "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v18

    move-wide/from16 v1, v214

    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3424
    const-string v6, "("

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3425
    move-object/from16 v0, p0

    move-wide/from16 v1, v214

    move-wide/from16 v3, v224

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3426
    const-string v6, ")"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3427
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3429
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3430
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3431
    const-string v6, "  WiFi Tx time:   "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v18

    move-wide/from16 v1, v230

    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3432
    const-string v6, "("

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3433
    move-object/from16 v0, p0

    move-wide/from16 v1, v230

    move-wide/from16 v3, v224

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3434
    const-string v6, ")"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3435
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3437
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3438
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3439
    const-string v6, "  WiFi Power drain: "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v206

    long-to-double v12, v0

    const-wide v22, 0x414b774000000000L    # 3600000.0

    div-double v12, v12, v22

    invoke-static {v12, v13}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3441
    const-string/jumbo v6, "mAh"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3442
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3444
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getBluetoothControllerActivity(II)J

    move-result-wide v42

    .line 3446
    .local v42, "bluetoothIdleTimeMs":J
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getBluetoothControllerActivity(II)J

    move-result-wide v44

    .line 3447
    .local v44, "bluetoothRxTimeMs":J
    const/4 v6, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getBluetoothControllerActivity(II)J

    move-result-wide v48

    .line 3448
    .local v48, "bluetoothTxTimeMs":J
    add-long v6, v42, v44

    add-long v46, v6, v48

    .line 3451
    .local v46, "bluetoothTotalTimeMs":J
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3452
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3453
    const-string v6, "  Bluetooth Idle time: "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v18

    move-wide/from16 v1, v42

    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3454
    const-string v6, "("

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3455
    move-object/from16 v0, p0

    move-wide/from16 v1, v42

    move-wide/from16 v3, v46

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3456
    const-string v6, ")"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3457
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3459
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3460
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3461
    const-string v6, "  Bluetooth Rx time:   "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v18

    move-wide/from16 v1, v44

    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3462
    const-string v6, "("

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3463
    move-object/from16 v0, p0

    move-wide/from16 v1, v44

    move-wide/from16 v3, v46

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3464
    const-string v6, ")"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3465
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3467
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3468
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3469
    const-string v6, "  Bluetooth Tx time:   "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v18

    move-wide/from16 v1, v48

    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3470
    const-string v6, "("

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3471
    move-object/from16 v0, p0

    move-wide/from16 v1, v48

    move-wide/from16 v3, v46

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3472
    const-string v6, ")"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3473
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3475
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3476
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3477
    const-string v6, "  Bluetooth Power drain: "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v7, v1}, Landroid/os/BatteryStats;->getBluetoothControllerActivity(II)J

    move-result-wide v12

    long-to-double v12, v12

    const-wide v22, 0x414b774000000000L    # 3600000.0

    div-double v12, v12, v22

    invoke-static {v12, v13}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3480
    const-string/jumbo v6, "mAh"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3481
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3483
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3485
    const/4 v6, 0x2

    move/from16 v0, p4

    if-ne v0, v6, :cond_2e

    .line 3486
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getIsOnBattery()Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 3487
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  Device is currently unplugged"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3488
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "    Discharge cycle start level: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3489
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 3490
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "    Discharge cycle current level: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3491
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 3499
    :goto_e
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "    Amount discharged while screen on: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3500
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOn()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 3501
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "    Amount discharged while screen off: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3502
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOff()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 3503
    const-string v6, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3517
    :goto_f
    new-instance v73, Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v6, 0x0

    move-object/from16 v0, v73

    move-object/from16 v1, p1

    move/from16 v2, p6

    invoke-direct {v0, v1, v6, v2}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;ZZ)V

    .line 3518
    .local v73, "helper":Lcom/android/internal/os/BatteryStatsHelper;
    move-object/from16 v0, v73

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    .line 3519
    const/4 v6, -0x1

    move-object/from16 v0, v73

    move/from16 v1, p4

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    .line 3520
    invoke-virtual/range {v73 .. v73}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v140

    .line 3521
    .local v140, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    if-eqz v140, :cond_30

    invoke-interface/range {v140 .. v140}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_30

    .line 3522
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  Estimated power use (mAh):"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3523
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "    Capacity: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3524
    invoke-virtual/range {v73 .. v73}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 3525
    const-string v6, ", Computed drain: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {v73 .. v73}, Lcom/android/internal/os/BatteryStatsHelper;->getComputedPower()D

    move-result-wide v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 3526
    const-string v6, ", actual drain: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {v73 .. v73}, Lcom/android/internal/os/BatteryStatsHelper;->getMinDrainedPower()D

    move-result-wide v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 3527
    invoke-virtual/range {v73 .. v73}, Lcom/android/internal/os/BatteryStatsHelper;->getMinDrainedPower()D

    move-result-wide v6

    invoke-virtual/range {v73 .. v73}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxDrainedPower()D

    move-result-wide v12

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_22

    .line 3528
    const-string v6, "-"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {v73 .. v73}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxDrainedPower()D

    move-result-wide v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 3530
    :cond_22
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3531
    const/16 v74, 0x0

    :goto_10
    invoke-interface/range {v140 .. v140}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v0, v74

    if-ge v0, v6, :cond_2f

    .line 3532
    move-object/from16 v0, v140

    move/from16 v1, v74

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/internal/os/BatterySipper;

    .line 3533
    .local v37, "bs":Lcom/android/internal/os/BatterySipper;
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3534
    sget-object v6, Landroid/os/BatteryStats$2;->$SwitchMap$com$android$internal$os$BatterySipper$DrainType:[I

    move-object/from16 v0, v37

    iget-object v7, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v7}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 3575
    const-string v6, "    ???: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3578
    :goto_11
    move-object/from16 v0, v37

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 3580
    move-object/from16 v0, v37

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    move-object/from16 v0, v37

    iget-wide v12, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_2c

    .line 3584
    const-string v6, " ("

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3585
    move-object/from16 v0, v37

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_23

    .line 3586
    const-string v6, " usage="

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3587
    move-object/from16 v0, v37

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 3589
    :cond_23
    move-object/from16 v0, v37

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_24

    .line 3590
    const-string v6, " cpu="

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3591
    move-object/from16 v0, v37

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 3593
    :cond_24
    move-object/from16 v0, v37

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_25

    .line 3594
    const-string v6, " wake="

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3595
    move-object/from16 v0, v37

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 3597
    :cond_25
    move-object/from16 v0, v37

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_26

    .line 3598
    const-string v6, " radio="

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3599
    move-object/from16 v0, v37

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 3601
    :cond_26
    move-object/from16 v0, v37

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_27

    .line 3602
    const-string v6, " wifi="

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3603
    move-object/from16 v0, v37

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 3605
    :cond_27
    move-object/from16 v0, v37

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_28

    .line 3606
    const-string v6, " gps="

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3607
    move-object/from16 v0, v37

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 3609
    :cond_28
    move-object/from16 v0, v37

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_29

    .line 3610
    const-string v6, " sensor="

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3611
    move-object/from16 v0, v37

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 3613
    :cond_29
    move-object/from16 v0, v37

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_2a

    .line 3614
    const-string v6, " camera="

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3615
    move-object/from16 v0, v37

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 3617
    :cond_2a
    move-object/from16 v0, v37

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_2b

    .line 3618
    const-string v6, " flash="

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3619
    move-object/from16 v0, v37

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 3621
    :cond_2b
    const-string v6, " )"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3623
    :cond_2c
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3531
    add-int/lit8 v74, v74, 0x1

    goto/16 :goto_10

    .line 3493
    .end local v37    # "bs":Lcom/android/internal/os/BatterySipper;
    .end local v73    # "helper":Lcom/android/internal/os/BatteryStatsHelper;
    .end local v140    # "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    :cond_2d
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  Device is currently plugged into power"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3494
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "    Last discharge cycle start level: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3495
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 3496
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "    Last discharge cycle end level: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3497
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    goto/16 :goto_e

    .line 3505
    :cond_2e
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  Device battery use since last full charge"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3506
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "    Amount discharged (lower bound): "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3507
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 3508
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "    Amount discharged (upper bound): "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3509
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 3510
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "    Amount discharged while screen on: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3511
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceCharge()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 3512
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "    Amount discharged while screen off: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3513
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceCharge()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 3514
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_f

    .line 3536
    .restart local v37    # "bs":Lcom/android/internal/os/BatterySipper;
    .restart local v73    # "helper":Lcom/android/internal/os/BatteryStatsHelper;
    .restart local v140    # "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    :pswitch_0
    const-string v6, "    Idle: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 3539
    :pswitch_1
    const-string v6, "    Cell standby: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 3542
    :pswitch_2
    const-string v6, "    Phone calls: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 3545
    :pswitch_3
    const-string v6, "    Wifi: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 3548
    :pswitch_4
    const-string v6, "    Bluetooth: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 3551
    :pswitch_5
    const-string v6, "    Screen: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 3554
    :pswitch_6
    const-string v6, "    Flashlight: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 3557
    :pswitch_7
    const-string v6, "    Uid "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3558
    move-object/from16 v0, v37

    iget-object v6, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v6

    move-object/from16 v0, p2

    invoke-static {v0, v6}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 3559
    const-string v6, ": "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 3562
    :pswitch_8
    const-string v6, "    User "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v37

    iget v6, v0, Lcom/android/internal/os/BatterySipper;->userId:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 3563
    const-string v6, ": "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 3566
    :pswitch_9
    const-string v6, "    Unaccounted: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 3569
    :pswitch_a
    const-string v6, "    Over-counted: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 3572
    :pswitch_b
    const-string v6, "    Camera: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 3625
    .end local v37    # "bs":Lcom/android/internal/os/BatterySipper;
    :cond_2f
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3628
    :cond_30
    invoke-virtual/range {v73 .. v73}, Lcom/android/internal/os/BatteryStatsHelper;->getMobilemsppList()Ljava/util/List;

    move-result-object v140

    .line 3629
    if-eqz v140, :cond_32

    invoke-interface/range {v140 .. v140}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_32

    .line 3630
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  Per-app mobile ms per packet:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3631
    const-wide/16 v164, 0x0

    .line 3632
    .local v164, "totalTime":J
    const/16 v74, 0x0

    :goto_12
    invoke-interface/range {v140 .. v140}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v0, v74

    if-ge v0, v6, :cond_31

    .line 3633
    move-object/from16 v0, v140

    move/from16 v1, v74

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/internal/os/BatterySipper;

    .line 3634
    .restart local v37    # "bs":Lcom/android/internal/os/BatterySipper;
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3635
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "    Uid "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3636
    move-object/from16 v0, v37

    iget-object v6, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v6

    move-object/from16 v0, v18

    invoke-static {v0, v6}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 3637
    const-string v6, ": "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v37

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->mobilemspp:D

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3638
    const-string v6, " ("

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v37

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    move-object/from16 v0, v37

    iget-wide v12, v0, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    add-long/2addr v6, v12

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3639
    const-string v6, " packets over "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v37

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    move-object/from16 v0, v18

    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    .line 3640
    const-string v6, ") "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v37

    iget v6, v0, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "x"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3641
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3642
    move-object/from16 v0, v37

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    add-long v164, v164, v6

    .line 3632
    add-int/lit8 v74, v74, 0x1

    goto/16 :goto_12

    .line 3644
    .end local v37    # "bs":Lcom/android/internal/os/BatterySipper;
    :cond_31
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3645
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3646
    const-string v6, "    TOTAL TIME: "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3647
    move-object/from16 v0, v18

    move-wide/from16 v1, v164

    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3648
    const-string v6, "("

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v164

    move-wide/from16 v3, v194

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3649
    const-string v6, ")"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3650
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3651
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3654
    .end local v164    # "totalTime":J
    :cond_32
    new-instance v152, Landroid/os/BatteryStats$1;

    move-object/from16 v0, v152

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/os/BatteryStats$1;-><init>(Landroid/os/BatteryStats;)V

    .line 3669
    .local v152, "timerComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/os/BatteryStats$TimerEntry;>;"
    if-gez p5, :cond_3c

    .line 3670
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v89

    .line 3672
    .local v89, "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v89 .. v89}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_37

    .line 3673
    new-instance v90, Ljava/util/ArrayList;

    invoke-direct/range {v90 .. v90}, Ljava/util/ArrayList;-><init>()V

    .line 3675
    .local v90, "ktimers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    invoke-interface/range {v89 .. v89}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v75

    .local v75, "i$":Ljava/util/Iterator;
    :cond_33
    :goto_13
    invoke-interface/range {v75 .. v75}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_34

    invoke-interface/range {v75 .. v75}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/util/Map$Entry;

    .line 3676
    .local v61, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v61 .. v61}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/BatteryStats$Timer;

    .line 3677
    .local v15, "timer":Landroid/os/BatteryStats$Timer;
    move-wide/from16 v0, v20

    move/from16 v2, p4

    invoke-static {v15, v0, v1, v2}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v16

    .line 3678
    .local v16, "totalTimeMillis":J
    const-wide/16 v6, 0x0

    cmp-long v6, v16, v6

    if-lez v6, :cond_33

    .line 3679
    new-instance v12, Landroid/os/BatteryStats$TimerEntry;

    invoke-interface/range {v61 .. v61}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const/4 v14, 0x0

    invoke-direct/range {v12 .. v17}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    move-object/from16 v0, v90

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 3682
    .end local v15    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v16    # "totalTimeMillis":J
    .end local v61    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_34
    invoke-virtual/range {v90 .. v90}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_37

    .line 3683
    move-object/from16 v0, v90

    move-object/from16 v1, v152

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3684
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  All kernel wake locks:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3685
    const/16 v74, 0x0

    :goto_14
    invoke-virtual/range {v90 .. v90}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v74

    if-ge v0, v6, :cond_36

    .line 3686
    move-object/from16 v0, v90

    move/from16 v1, v74

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/BatteryStats$TimerEntry;

    .line 3687
    .local v15, "timer":Landroid/os/BatteryStats$TimerEntry;
    const-string v24, ": "

    .line 3688
    .local v24, "linePrefix":Ljava/lang/String;
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3689
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3690
    const-string v6, "  Kernel Wake lock "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3691
    iget-object v6, v15, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3692
    iget-object v0, v15, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    move-object/from16 v19, v0

    const/16 v22, 0x0

    move/from16 v23, p4

    invoke-static/range {v18 .. v24}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 3694
    const-string v6, ": "

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_35

    .line 3695
    const-string v6, " realtime"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3697
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3685
    :cond_35
    add-int/lit8 v74, v74, 0x1

    goto :goto_14

    .line 3700
    .end local v15    # "timer":Landroid/os/BatteryStats$TimerEntry;
    .end local v24    # "linePrefix":Ljava/lang/String;
    :cond_36
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3704
    .end local v75    # "i$":Ljava/util/Iterator;
    .end local v90    # "ktimers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    :cond_37
    invoke-virtual/range {v153 .. v153}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_39

    .line 3705
    move-object/from16 v0, v153

    move-object/from16 v1, v152

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3706
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  All partial wake locks:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3707
    const/16 v74, 0x0

    :goto_15
    invoke-virtual/range {v153 .. v153}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v74

    if-ge v0, v6, :cond_38

    .line 3708
    move-object/from16 v0, v153

    move/from16 v1, v74

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/BatteryStats$TimerEntry;

    .line 3709
    .restart local v15    # "timer":Landroid/os/BatteryStats$TimerEntry;
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3710
    const-string v6, "  Wake lock "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3711
    iget v6, v15, Landroid/os/BatteryStats$TimerEntry;->mId:I

    move-object/from16 v0, v18

    invoke-static {v0, v6}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 3712
    const-string v6, " "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3713
    iget-object v6, v15, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3714
    iget-object v0, v15, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    move-object/from16 v27, v0

    const/16 v30, 0x0

    const-string v32, ": "

    move-object/from16 v26, v18

    move-wide/from16 v28, v20

    move/from16 v31, p4

    invoke-static/range {v26 .. v32}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 3715
    const-string v6, " realtime"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3716
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3707
    add-int/lit8 v74, v74, 0x1

    goto :goto_15

    .line 3718
    .end local v15    # "timer":Landroid/os/BatteryStats$TimerEntry;
    :cond_38
    invoke-virtual/range {v153 .. v153}, Ljava/util/ArrayList;->clear()V

    .line 3719
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3722
    :cond_39
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v193

    .line 3723
    .local v193, "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v193 .. v193}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_3c

    .line 3724
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  All wakeup reasons:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3725
    new-instance v131, Ljava/util/ArrayList;

    invoke-direct/range {v131 .. v131}, Ljava/util/ArrayList;-><init>()V

    .line 3726
    .local v131, "reasons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    invoke-interface/range {v193 .. v193}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v75

    .restart local v75    # "i$":Ljava/util/Iterator;
    :goto_16
    invoke-interface/range {v75 .. v75}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3a

    invoke-interface/range {v75 .. v75}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/util/Map$Entry;

    .line 3727
    .restart local v61    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v61 .. v61}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/BatteryStats$Timer;

    .line 3728
    .local v15, "timer":Landroid/os/BatteryStats$Timer;
    new-instance v26, Landroid/os/BatteryStats$TimerEntry;

    invoke-interface/range {v61 .. v61}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    const/16 v28, 0x0

    move/from16 v0, p4

    invoke-virtual {v15, v0}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v30, v0

    move-object/from16 v29, v15

    invoke-direct/range {v26 .. v31}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    move-object/from16 v0, v131

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 3731
    .end local v15    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v61    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_3a
    move-object/from16 v0, v131

    move-object/from16 v1, v152

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3732
    const/16 v74, 0x0

    :goto_17
    invoke-virtual/range {v131 .. v131}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v74

    if-ge v0, v6, :cond_3b

    .line 3733
    move-object/from16 v0, v131

    move/from16 v1, v74

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/BatteryStats$TimerEntry;

    .line 3734
    .local v15, "timer":Landroid/os/BatteryStats$TimerEntry;
    const-string v24, ": "

    .line 3735
    .restart local v24    # "linePrefix":Ljava/lang/String;
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3736
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3737
    const-string v6, "  Wakeup reason "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3738
    iget-object v6, v15, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3739
    iget-object v0, v15, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    move-object/from16 v27, v0

    const/16 v30, 0x0

    const-string v32, ": "

    move-object/from16 v26, v18

    move-wide/from16 v28, v20

    move/from16 v31, p4

    invoke-static/range {v26 .. v32}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 3740
    const-string v6, " realtime"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3741
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3732
    add-int/lit8 v74, v74, 0x1

    goto :goto_17

    .line 3743
    .end local v15    # "timer":Landroid/os/BatteryStats$TimerEntry;
    .end local v24    # "linePrefix":Ljava/lang/String;
    :cond_3b
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3747
    .end local v75    # "i$":Ljava/util/Iterator;
    .end local v89    # "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v131    # "reasons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .end local v193    # "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_3c
    const/16 v85, 0x0

    :goto_18
    move/from16 v0, v85

    move/from16 v1, v34

    if-ge v0, v1, :cond_77

    .line 3748
    move-object/from16 v0, v176

    move/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v171

    .line 3749
    .local v171, "uid":I
    if-ltz p5, :cond_3e

    move/from16 v0, v171

    move/from16 v1, p5

    if-eq v0, v1, :cond_3e

    const/16 v6, 0x3e8

    move/from16 v0, v171

    if-eq v0, v6, :cond_3e

    .line 3747
    :cond_3d
    :goto_19
    add-int/lit8 v85, v85, 0x1

    goto :goto_18

    .line 3753
    :cond_3e
    move-object/from16 v0, v176

    move/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v170

    check-cast v170, Landroid/os/BatteryStats$Uid;

    .line 3755
    .restart local v170    # "u":Landroid/os/BatteryStats$Uid;
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3756
    const-string v6, "  "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3757
    move-object/from16 v0, p2

    move/from16 v1, v171

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 3758
    const-string v6, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3759
    const/16 v172, 0x0

    .line 3761
    .local v172, "uidActivity":Z
    const/4 v6, 0x0

    move-object/from16 v0, v170

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v98

    .line 3762
    .local v98, "mobileRxBytes":J
    const/4 v6, 0x1

    move-object/from16 v0, v170

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v106

    .line 3763
    .local v106, "mobileTxBytes":J
    const/4 v6, 0x2

    move-object/from16 v0, v170

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v210

    .line 3764
    .local v210, "wifiRxBytes":J
    const/4 v6, 0x3

    move-object/from16 v0, v170

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v226

    .line 3765
    .local v226, "wifiTxBytes":J
    const/4 v6, 0x0

    move-object/from16 v0, v170

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v100

    .line 3766
    .local v100, "mobileRxPackets":J
    const/4 v6, 0x1

    move-object/from16 v0, v170

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v108

    .line 3767
    .local v108, "mobileTxPackets":J
    move-object/from16 v0, v170

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v174

    .line 3768
    .local v174, "uidMobileActiveTime":J
    move-object/from16 v0, v170

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v173

    .line 3769
    .local v173, "uidMobileActiveCount":I
    const/4 v6, 0x2

    move-object/from16 v0, v170

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v212

    .line 3770
    .local v212, "wifiRxPackets":J
    const/4 v6, 0x3

    move-object/from16 v0, v170

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v228

    .line 3771
    .local v228, "wifiTxPackets":J
    move-object/from16 v0, v170

    move-wide/from16 v1, v20

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v68

    .line 3772
    .local v68, "fullWifiLockOnTime":J
    move-object/from16 v0, v170

    move-wide/from16 v1, v20

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v222

    .line 3773
    .local v222, "wifiScanTime":J
    move-object/from16 v0, v170

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getWifiScanCount(I)I

    move-result v220

    .line 3774
    .local v220, "wifiScanCount":I
    move-object/from16 v0, v170

    move-wide/from16 v1, v20

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v180

    .line 3776
    .local v180, "uidWifiRunningTime":J
    const-wide/16 v6, 0x0

    cmp-long v6, v98, v6

    if-gtz v6, :cond_3f

    const-wide/16 v6, 0x0

    cmp-long v6, v106, v6

    if-gtz v6, :cond_3f

    const-wide/16 v6, 0x0

    cmp-long v6, v100, v6

    if-gtz v6, :cond_3f

    const-wide/16 v6, 0x0

    cmp-long v6, v108, v6

    if-lez v6, :cond_40

    .line 3778
    :cond_3f
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "    Mobile network: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3779
    move-object/from16 v0, p0

    move-wide/from16 v1, v98

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, " received, "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3780
    move-object/from16 v0, p0

    move-wide/from16 v1, v106

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3781
    const-string v6, " sent (packets "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-wide/from16 v1, v100

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 3782
    const-string v6, " received, "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-wide/from16 v1, v108

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const-string v6, " sent)"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3784
    :cond_40
    const-wide/16 v6, 0x0

    cmp-long v6, v174, v6

    if-gtz v6, :cond_41

    if-lez v173, :cond_43

    .line 3785
    :cond_41
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3786
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "    Mobile radio active: "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3787
    const-wide/16 v6, 0x3e8

    div-long v6, v174, v6

    move-object/from16 v0, v18

    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3788
    const-string v6, "("

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3789
    move-object/from16 v0, p0

    move-wide/from16 v1, v174

    move-wide/from16 v3, v94

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3790
    const-string v6, ") "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v18

    move/from16 v1, v173

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "x"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3791
    add-long v120, v100, v108

    .line 3792
    .local v120, "packets":J
    const-wide/16 v6, 0x0

    cmp-long v6, v120, v6

    if-nez v6, :cond_42

    .line 3793
    const-wide/16 v120, 0x1

    .line 3795
    :cond_42
    const-string v6, " @ "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3796
    const-wide/16 v6, 0x3e8

    div-long v6, v174, v6

    long-to-double v6, v6

    move-wide/from16 v0, v120

    long-to-double v12, v0

    div-double/2addr v6, v12

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3797
    const-string v6, " mspp"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3798
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3801
    .end local v120    # "packets":J
    :cond_43
    const-wide/16 v6, 0x0

    cmp-long v6, v210, v6

    if-gtz v6, :cond_44

    const-wide/16 v6, 0x0

    cmp-long v6, v226, v6

    if-gtz v6, :cond_44

    const-wide/16 v6, 0x0

    cmp-long v6, v212, v6

    if-gtz v6, :cond_44

    const-wide/16 v6, 0x0

    cmp-long v6, v228, v6

    if-lez v6, :cond_45

    .line 3802
    :cond_44
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "    Wi-Fi network: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3803
    move-object/from16 v0, p0

    move-wide/from16 v1, v210

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, " received, "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3804
    move-object/from16 v0, p0

    move-wide/from16 v1, v226

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3805
    const-string v6, " sent (packets "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-wide/from16 v1, v212

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 3806
    const-string v6, " received, "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-wide/from16 v1, v228

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const-string v6, " sent)"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3809
    :cond_45
    const-wide/16 v6, 0x0

    cmp-long v6, v68, v6

    if-nez v6, :cond_46

    const-wide/16 v6, 0x0

    cmp-long v6, v222, v6

    if-nez v6, :cond_46

    if-nez v220, :cond_46

    const-wide/16 v6, 0x0

    cmp-long v6, v180, v6

    if-eqz v6, :cond_47

    .line 3811
    :cond_46
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3812
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "    Wifi Running: "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3813
    const-wide/16 v6, 0x3e8

    div-long v6, v180, v6

    move-object/from16 v0, v18

    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3814
    const-string v6, "("

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v180

    move-wide/from16 v3, v194

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3815
    const-string v6, ")\n"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3816
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "    Full Wifi Lock: "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3817
    const-wide/16 v6, 0x3e8

    div-long v6, v68, v6

    move-object/from16 v0, v18

    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3818
    const-string v6, "("

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v68

    move-wide/from16 v3, v194

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3819
    const-string v6, ")\n"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3820
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "    Wifi Scan: "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3821
    const-wide/16 v6, 0x3e8

    div-long v6, v222, v6

    move-object/from16 v0, v18

    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3822
    const-string v6, "("

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v222

    move-wide/from16 v3, v194

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3823
    const-string v6, ") "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3824
    move-object/from16 v0, v18

    move/from16 v1, v220

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3825
    const-string/jumbo v6, "x"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3826
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3829
    :cond_47
    const/4 v6, 0x0

    move-object/from16 v0, v170

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity(II)J

    move-result-wide v178

    .line 3830
    .local v178, "uidWifiIdleTimeMs":J
    const/4 v6, 0x1

    move-object/from16 v0, v170

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity(II)J

    move-result-wide v182

    .line 3831
    .local v182, "uidWifiRxTimeMs":J
    const/4 v6, 0x2

    move-object/from16 v0, v170

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity(II)J

    move-result-wide v186

    .line 3832
    .local v186, "uidWifiTxTimeMs":J
    add-long v6, v178, v182

    add-long v184, v6, v186

    .line 3833
    .local v184, "uidWifiTotalTimeMs":J
    const-wide/16 v6, 0x0

    cmp-long v6, v184, v6

    if-lez v6, :cond_48

    .line 3834
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3835
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "    WiFi Idle time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3836
    move-object/from16 v0, v18

    move-wide/from16 v1, v178

    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3837
    const-string v6, "("

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    move-wide/from16 v1, v178

    move-wide/from16 v3, v184

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3840
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "    WiFi Rx time:   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v18

    move-wide/from16 v1, v182

    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3841
    const-string v6, "("

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    move-wide/from16 v1, v182

    move-wide/from16 v3, v184

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3844
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "    WiFi Tx time:   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v18

    move-wide/from16 v1, v186

    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3845
    const-string v6, "("

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    move-wide/from16 v1, v186

    move-wide/from16 v3, v184

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3847
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3850
    :cond_48
    invoke-virtual/range {v170 .. v170}, Landroid/os/BatteryStats$Uid;->hasUserActivity()Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 3851
    const/16 v71, 0x0

    .line 3852
    .local v71, "hasData":Z
    const/16 v74, 0x0

    :goto_1a
    const/4 v6, 0x3

    move/from16 v0, v74

    if-ge v0, v6, :cond_4b

    .line 3853
    move-object/from16 v0, v170

    move/from16 v1, v74

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v177

    .line 3854
    .local v177, "val":I
    if-eqz v177, :cond_49

    .line 3855
    if-nez v71, :cond_4a

    .line 3856
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3857
    const-string v6, "    User activity: "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3858
    const/16 v71, 0x1

    .line 3862
    :goto_1b
    move-object/from16 v0, v18

    move/from16 v1, v177

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3863
    const-string v6, " "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3864
    sget-object v6, Landroid/os/BatteryStats$Uid;->USER_ACTIVITY_TYPES:[Ljava/lang/String;

    aget-object v6, v6, v74

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3852
    :cond_49
    add-int/lit8 v74, v74, 0x1

    goto :goto_1a

    .line 3860
    :cond_4a
    const-string v6, ", "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 3867
    .end local v177    # "val":I
    :cond_4b
    if-eqz v71, :cond_4c

    .line 3868
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3872
    .end local v71    # "hasData":Z
    :cond_4c
    invoke-virtual/range {v170 .. v170}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v192

    .line 3874
    .restart local v192    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    const-wide/16 v156, 0x0

    .local v156, "totalFullWakelock":J
    const-wide/16 v158, 0x0

    .local v158, "totalPartialWakelock":J
    const-wide/16 v168, 0x0

    .line 3875
    .local v168, "totalWindowWakelock":J
    const-wide/16 v154, 0x0

    .line 3876
    .local v154, "totalDrawWakelock":J
    const/16 v54, 0x0

    .line 3877
    .local v54, "countWakelock":I
    invoke-virtual/range {v192 .. v192}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v86, v6, -0x1

    .restart local v86    # "iw":I
    :goto_1c
    if-ltz v86, :cond_4d

    .line 3878
    move-object/from16 v0, v192

    move/from16 v1, v86

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v221

    check-cast v221, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 3879
    .restart local v221    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    const-string v24, ": "

    .line 3880
    .restart local v24    # "linePrefix":Ljava/lang/String;
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3881
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3882
    const-string v6, "    Wake lock "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3883
    move-object/from16 v0, v192

    move/from16 v1, v86

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3884
    const/4 v6, 0x1

    move-object/from16 v0, v221

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v19

    const-string v22, "full"

    move/from16 v23, p4

    invoke-static/range {v18 .. v24}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 3886
    const/4 v6, 0x0

    move-object/from16 v0, v221

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v19

    const-string/jumbo v22, "partial"

    move/from16 v23, p4

    invoke-static/range {v18 .. v24}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 3888
    const/4 v6, 0x2

    move-object/from16 v0, v221

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v19

    const-string/jumbo v22, "window"

    move/from16 v23, p4

    invoke-static/range {v18 .. v24}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 3890
    const/16 v6, 0x12

    move-object/from16 v0, v221

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v19

    const-string v22, "draw"

    move/from16 v23, p4

    invoke-static/range {v18 .. v24}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 3892
    const-string v6, " realtime"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3893
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3894
    const/16 v172, 0x1

    .line 3895
    add-int/lit8 v54, v54, 0x1

    .line 3897
    const/4 v6, 0x1

    move-object/from16 v0, v221

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v6

    move-wide/from16 v0, v20

    move/from16 v2, p4

    invoke-static {v6, v0, v1, v2}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v6

    add-long v156, v156, v6

    .line 3899
    const/4 v6, 0x0

    move-object/from16 v0, v221

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v6

    move-wide/from16 v0, v20

    move/from16 v2, p4

    invoke-static {v6, v0, v1, v2}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v6

    add-long v158, v158, v6

    .line 3901
    const/4 v6, 0x2

    move-object/from16 v0, v221

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v6

    move-wide/from16 v0, v20

    move/from16 v2, p4

    invoke-static {v6, v0, v1, v2}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v6

    add-long v168, v168, v6

    .line 3903
    const/16 v6, 0x12

    move-object/from16 v0, v221

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v6

    move-wide/from16 v0, v20

    move/from16 v2, p4

    invoke-static {v6, v0, v1, v2}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v6

    add-long v154, v154, v6

    .line 3877
    add-int/lit8 v86, v86, -0x1

    goto/16 :goto_1c

    .line 3906
    .end local v24    # "linePrefix":Ljava/lang/String;
    .end local v221    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    :cond_4d
    const/4 v6, 0x1

    move/from16 v0, v54

    if-le v0, v6, :cond_56

    .line 3907
    const-wide/16 v6, 0x0

    cmp-long v6, v156, v6

    if-nez v6, :cond_4e

    const-wide/16 v6, 0x0

    cmp-long v6, v158, v6

    if-nez v6, :cond_4e

    const-wide/16 v6, 0x0

    cmp-long v6, v168, v6

    if-eqz v6, :cond_56

    .line 3909
    :cond_4e
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3910
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3911
    const-string v6, "    TOTAL wake: "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3912
    const/16 v114, 0x0

    .line 3913
    .local v114, "needComma":Z
    const-wide/16 v6, 0x0

    cmp-long v6, v156, v6

    if-eqz v6, :cond_4f

    .line 3914
    const/16 v114, 0x1

    .line 3915
    move-object/from16 v0, v18

    move-wide/from16 v1, v156

    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3916
    const-string v6, "full"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3918
    :cond_4f
    const-wide/16 v6, 0x0

    cmp-long v6, v158, v6

    if-eqz v6, :cond_51

    .line 3919
    if-eqz v114, :cond_50

    .line 3920
    const-string v6, ", "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3922
    :cond_50
    const/16 v114, 0x1

    .line 3923
    move-object/from16 v0, v18

    move-wide/from16 v1, v158

    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3924
    const-string/jumbo v6, "partial"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3926
    :cond_51
    const-wide/16 v6, 0x0

    cmp-long v6, v168, v6

    if-eqz v6, :cond_53

    .line 3927
    if-eqz v114, :cond_52

    .line 3928
    const-string v6, ", "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3930
    :cond_52
    const/16 v114, 0x1

    .line 3931
    move-object/from16 v0, v18

    move-wide/from16 v1, v168

    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3932
    const-string/jumbo v6, "window"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3934
    :cond_53
    const-wide/16 v6, 0x0

    cmp-long v6, v154, v6

    if-eqz v6, :cond_55

    .line 3935
    if-eqz v114, :cond_54

    .line 3936
    const-string v6, ","

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3938
    :cond_54
    const/16 v114, 0x1

    .line 3939
    move-object/from16 v0, v18

    move-wide/from16 v1, v154

    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3940
    const-string v6, "draw"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3942
    :cond_55
    const-string v6, " realtime"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3943
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3947
    .end local v114    # "needComma":Z
    :cond_56
    invoke-virtual/range {v170 .. v170}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    move-result-object v145

    .line 3948
    .local v145, "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual/range {v145 .. v145}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v84, v6, -0x1

    .local v84, "isy":I
    :goto_1d
    if-ltz v84, :cond_58

    .line 3949
    move-object/from16 v0, v145

    move/from16 v1, v84

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/BatteryStats$Timer;

    .line 3951
    .local v15, "timer":Landroid/os/BatteryStats$Timer;
    move-wide/from16 v0, v20

    move/from16 v2, p4

    invoke-virtual {v15, v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v6

    const-wide/16 v12, 0x1f4

    add-long/2addr v6, v12

    const-wide/16 v12, 0x3e8

    div-long v164, v6, v12

    .line 3952
    .restart local v164    # "totalTime":J
    move/from16 v0, p4

    invoke-virtual {v15, v0}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v53

    .line 3953
    .local v53, "count":I
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3954
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3955
    const-string v6, "    Sync "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3956
    move-object/from16 v0, v145

    move/from16 v1, v84

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3957
    const-string v6, ": "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3958
    const-wide/16 v6, 0x0

    cmp-long v6, v164, v6

    if-eqz v6, :cond_57

    .line 3959
    move-object/from16 v0, v18

    move-wide/from16 v1, v164

    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3960
    const-string/jumbo v6, "realtime ("

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3961
    move-object/from16 v0, v18

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3962
    const-string v6, " times)"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3966
    :goto_1e
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3967
    const/16 v172, 0x1

    .line 3948
    add-int/lit8 v84, v84, -0x1

    goto :goto_1d

    .line 3964
    :cond_57
    const-string v6, "(not used)"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e

    .line 3970
    .end local v15    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v53    # "count":I
    .end local v164    # "totalTime":J
    :cond_58
    invoke-virtual/range {v170 .. v170}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    move-result-object v88

    .line 3971
    .local v88, "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual/range {v88 .. v88}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v76, v6, -0x1

    .local v76, "ij":I
    :goto_1f
    if-ltz v76, :cond_5a

    .line 3972
    move-object/from16 v0, v88

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/BatteryStats$Timer;

    .line 3974
    .restart local v15    # "timer":Landroid/os/BatteryStats$Timer;
    move-wide/from16 v0, v20

    move/from16 v2, p4

    invoke-virtual {v15, v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v6

    const-wide/16 v12, 0x1f4

    add-long/2addr v6, v12

    const-wide/16 v12, 0x3e8

    div-long v164, v6, v12

    .line 3975
    .restart local v164    # "totalTime":J
    move/from16 v0, p4

    invoke-virtual {v15, v0}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v53

    .line 3976
    .restart local v53    # "count":I
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3977
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3978
    const-string v6, "    Job "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3979
    move-object/from16 v0, v88

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3980
    const-string v6, ": "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3981
    const-wide/16 v6, 0x0

    cmp-long v6, v164, v6

    if-eqz v6, :cond_59

    .line 3982
    move-object/from16 v0, v18

    move-wide/from16 v1, v164

    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3983
    const-string/jumbo v6, "realtime ("

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3984
    move-object/from16 v0, v18

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3985
    const-string v6, " times)"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3989
    :goto_20
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3990
    const/16 v172, 0x1

    .line 3971
    add-int/lit8 v76, v76, -0x1

    goto :goto_1f

    .line 3987
    :cond_59
    const-string v6, "(not used)"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    .line 3993
    .end local v15    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v53    # "count":I
    .end local v164    # "totalTime":J
    :cond_5a
    invoke-virtual/range {v170 .. v170}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v27

    const-string v32, "Flashlight"

    move-object/from16 v25, p2

    move-object/from16 v26, v18

    move-wide/from16 v28, v20

    move/from16 v30, p4

    move-object/from16 v31, p3

    invoke-static/range {v25 .. v32}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    or-int v172, v172, v6

    .line 3995
    invoke-virtual/range {v170 .. v170}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v27

    const-string v32, "Camera"

    move-object/from16 v25, p2

    move-object/from16 v26, v18

    move-wide/from16 v28, v20

    move/from16 v30, p4

    move-object/from16 v31, p3

    invoke-static/range {v25 .. v32}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    or-int v172, v172, v6

    .line 3997
    invoke-virtual/range {v170 .. v170}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v27

    const-string v32, "Video"

    move-object/from16 v25, p2

    move-object/from16 v26, v18

    move-wide/from16 v28, v20

    move/from16 v30, p4

    move-object/from16 v31, p3

    invoke-static/range {v25 .. v32}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    or-int v172, v172, v6

    .line 3999
    invoke-virtual/range {v170 .. v170}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v27

    const-string v32, "Audio"

    move-object/from16 v25, p2

    move-object/from16 v26, v18

    move-wide/from16 v28, v20

    move/from16 v30, p4

    move-object/from16 v31, p3

    invoke-static/range {v25 .. v32}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    or-int v172, v172, v6

    .line 4002
    invoke-virtual/range {v170 .. v170}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v138

    .line 4003
    .local v138, "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-virtual/range {v138 .. v138}, Landroid/util/SparseArray;->size()I

    move-result v33

    .line 4004
    .local v33, "NSE":I
    const/16 v82, 0x0

    .local v82, "ise":I
    :goto_21
    move/from16 v0, v82

    move/from16 v1, v33

    if-ge v0, v1, :cond_5e

    .line 4005
    move-object/from16 v0, v138

    move/from16 v1, v82

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v136

    check-cast v136, Landroid/os/BatteryStats$Uid$Sensor;

    .line 4006
    .local v136, "se":Landroid/os/BatteryStats$Uid$Sensor;
    move-object/from16 v0, v138

    move/from16 v1, v82

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v137

    .line 4007
    .local v137, "sensorNumber":I
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4008
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4009
    const-string v6, "    Sensor "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4010
    invoke-virtual/range {v136 .. v136}, Landroid/os/BatteryStats$Uid$Sensor;->getHandle()I

    move-result v70

    .line 4011
    .local v70, "handle":I
    const/16 v6, -0x2710

    move/from16 v0, v70

    if-ne v0, v6, :cond_5b

    .line 4012
    const-string v6, "GPS"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4016
    :goto_22
    const-string v6, ": "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4018
    invoke-virtual/range {v136 .. v136}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v15

    .line 4019
    .restart local v15    # "timer":Landroid/os/BatteryStats$Timer;
    if-eqz v15, :cond_5d

    .line 4021
    move-wide/from16 v0, v20

    move/from16 v2, p4

    invoke-virtual {v15, v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v6

    const-wide/16 v12, 0x1f4

    add-long/2addr v6, v12

    const-wide/16 v12, 0x3e8

    div-long v164, v6, v12

    .line 4023
    .restart local v164    # "totalTime":J
    move/from16 v0, p4

    invoke-virtual {v15, v0}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v53

    .line 4025
    .restart local v53    # "count":I
    const-wide/16 v6, 0x0

    cmp-long v6, v164, v6

    if-eqz v6, :cond_5c

    .line 4026
    move-object/from16 v0, v18

    move-wide/from16 v1, v164

    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4027
    const-string/jumbo v6, "realtime ("

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4028
    move-object/from16 v0, v18

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4029
    const-string v6, " times)"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4037
    .end local v53    # "count":I
    .end local v164    # "totalTime":J
    :goto_23
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4038
    const/16 v172, 0x1

    .line 4004
    add-int/lit8 v82, v82, 0x1

    goto/16 :goto_21

    .line 4014
    .end local v15    # "timer":Landroid/os/BatteryStats$Timer;
    :cond_5b
    move-object/from16 v0, v18

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 4031
    .restart local v15    # "timer":Landroid/os/BatteryStats$Timer;
    .restart local v53    # "count":I
    .restart local v164    # "totalTime":J
    :cond_5c
    const-string v6, "(not used)"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_23

    .line 4034
    .end local v53    # "count":I
    .end local v164    # "totalTime":J
    :cond_5d
    const-string v6, "(not used)"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_23

    .line 4041
    .end local v15    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v70    # "handle":I
    .end local v136    # "se":Landroid/os/BatteryStats$Uid$Sensor;
    .end local v137    # "sensorNumber":I
    :cond_5e
    invoke-virtual/range {v170 .. v170}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v27

    const-string v32, "Vibrator"

    move-object/from16 v25, p2

    move-object/from16 v26, v18

    move-wide/from16 v28, v20

    move/from16 v30, p4

    move-object/from16 v31, p3

    invoke-static/range {v25 .. v32}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    or-int v172, v172, v6

    .line 4043
    invoke-virtual/range {v170 .. v170}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v27

    const-string v32, "Foreground activities"

    move-object/from16 v25, p2

    move-object/from16 v26, v18

    move-wide/from16 v28, v20

    move/from16 v30, p4

    move-object/from16 v31, p3

    invoke-static/range {v25 .. v32}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    or-int v172, v172, v6

    .line 4046
    const-wide/16 v162, 0x0

    .line 4047
    .local v162, "totalStateTime":J
    const/16 v81, 0x0

    .local v81, "ips":I
    :goto_24
    const/4 v6, 0x3

    move/from16 v0, v81

    if-ge v0, v6, :cond_60

    .line 4048
    move-object/from16 v0, v170

    move/from16 v1, v81

    move-wide/from16 v2, v20

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v150

    .line 4049
    .restart local v150    # "time":J
    const-wide/16 v6, 0x0

    cmp-long v6, v150, v6

    if-lez v6, :cond_5f

    .line 4050
    add-long v162, v162, v150

    .line 4051
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4052
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4053
    const-string v6, "    "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4054
    sget-object v6, Landroid/os/BatteryStats$Uid;->PROCESS_STATE_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v81

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4055
    const-string v6, " for: "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4056
    const-wide/16 v6, 0x1f4

    add-long v6, v6, v162

    const-wide/16 v12, 0x3e8

    div-long/2addr v6, v12

    move-object/from16 v0, v18

    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4057
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4058
    const/16 v172, 0x1

    .line 4047
    :cond_5f
    add-int/lit8 v81, v81, 0x1

    goto :goto_24

    .line 4062
    .end local v150    # "time":J
    :cond_60
    move-object/from16 v0, v170

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v188

    .line 4063
    .local v188, "userCpuTimeUs":J
    move-object/from16 v0, v170

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v146

    .line 4064
    .local v146, "systemCpuTimeUs":J
    move-object/from16 v0, v170

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getCpuPowerMaUs(I)J

    move-result-wide v126

    .line 4065
    .local v126, "powerCpuMaUs":J
    const-wide/16 v6, 0x0

    cmp-long v6, v188, v6

    if-gtz v6, :cond_61

    const-wide/16 v6, 0x0

    cmp-long v6, v146, v6

    if-gtz v6, :cond_61

    const-wide/16 v6, 0x0

    cmp-long v6, v126, v6

    if-lez v6, :cond_62

    .line 4066
    :cond_61
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4067
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4068
    const-string v6, "    Total cpu time: u="

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4069
    const-wide/16 v6, 0x3e8

    div-long v6, v188, v6

    move-object/from16 v0, v18

    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4070
    const-string/jumbo v6, "s="

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4071
    const-wide/16 v6, 0x3e8

    div-long v6, v146, v6

    move-object/from16 v0, v18

    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4072
    const-string/jumbo v6, "p="

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4073
    move-wide/from16 v0, v126

    long-to-double v6, v0

    const-wide v12, 0x41ead27480000000L    # 3.6E9

    div-double/2addr v6, v12

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/lang/StringBuilder;D)V

    .line 4074
    const-string/jumbo v6, "mAh"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4075
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4078
    :cond_62
    invoke-virtual/range {v170 .. v170}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v119

    .line 4080
    .local v119, "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-virtual/range {v119 .. v119}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v80, v6, -0x1

    .local v80, "ipr":I
    :goto_25
    if-ltz v80, :cond_70

    .line 4081
    move-object/from16 v0, v119

    move/from16 v1, v80

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v130

    check-cast v130, Landroid/os/BatteryStats$Uid$Proc;

    .line 4088
    .local v130, "ps":Landroid/os/BatteryStats$Uid$Proc;
    move-object/from16 v0, v130

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v190

    .line 4089
    .local v190, "userTime":J
    move-object/from16 v0, v130

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v148

    .line 4090
    .local v148, "systemTime":J
    move-object/from16 v0, v130

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v64

    .line 4091
    .local v64, "foregroundTime":J
    move-object/from16 v0, v130

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    move-result v144

    .line 4092
    .local v144, "starts":I
    move-object/from16 v0, v130

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    move-result v116

    .line 4093
    .local v116, "numCrashes":I
    move-object/from16 v0, v130

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    move-result v115

    .line 4094
    .local v115, "numAnrs":I
    if-nez p4, :cond_6b

    invoke-virtual/range {v130 .. v130}, Landroid/os/BatteryStats$Uid$Proc;->countExcessivePowers()I

    move-result v117

    .line 4097
    .local v117, "numExcessive":I
    :goto_26
    const-wide/16 v6, 0x0

    cmp-long v6, v190, v6

    if-nez v6, :cond_63

    const-wide/16 v6, 0x0

    cmp-long v6, v148, v6

    if-nez v6, :cond_63

    const-wide/16 v6, 0x0

    cmp-long v6, v64, v6

    if-nez v6, :cond_63

    if-nez v144, :cond_63

    if-nez v117, :cond_63

    if-nez v116, :cond_63

    if-eqz v115, :cond_6f

    .line 4099
    :cond_63
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4100
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "    Proc "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4101
    move-object/from16 v0, v119

    move/from16 v1, v80

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":\n"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4102
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "      CPU: "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4103
    move-object/from16 v0, v18

    move-wide/from16 v1, v190

    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "usr + "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4104
    move-object/from16 v0, v18

    move-wide/from16 v1, v148

    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "krn ; "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4105
    move-object/from16 v0, v18

    move-wide/from16 v1, v64

    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v6, "fg"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4106
    if-nez v144, :cond_64

    if-nez v116, :cond_64

    if-eqz v115, :cond_69

    .line 4107
    :cond_64
    const-string v6, "\n"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "      "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4108
    const/16 v72, 0x0

    .line 4109
    .local v72, "hasOne":Z
    if-eqz v144, :cond_65

    .line 4110
    const/16 v72, 0x1

    .line 4111
    move-object/from16 v0, v18

    move/from16 v1, v144

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " starts"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4113
    :cond_65
    if-eqz v116, :cond_67

    .line 4114
    if-eqz v72, :cond_66

    .line 4115
    const-string v6, ", "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4117
    :cond_66
    const/16 v72, 0x1

    .line 4118
    move-object/from16 v0, v18

    move/from16 v1, v116

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " crashes"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4120
    :cond_67
    if-eqz v115, :cond_69

    .line 4121
    if-eqz v72, :cond_68

    .line 4122
    const-string v6, ", "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4124
    :cond_68
    move-object/from16 v0, v18

    move/from16 v1, v115

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " anrs"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4127
    .end local v72    # "hasOne":Z
    :cond_69
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4128
    const/16 v60, 0x0

    .local v60, "e":I
    :goto_27
    move/from16 v0, v60

    move/from16 v1, v117

    if-ge v0, v1, :cond_6e

    .line 4129
    move-object/from16 v0, v130

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getExcessivePower(I)Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    move-result-object v62

    .line 4130
    .local v62, "ew":Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    if-eqz v62, :cond_6a

    .line 4131
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "      * Killed for "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4132
    move-object/from16 v0, v62

    iget v6, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6c

    .line 4133
    const-string/jumbo v6, "wake lock"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4139
    :goto_28
    const-string v6, " use: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4140
    move-object/from16 v0, v62

    iget-wide v6, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    move-object/from16 v0, p2

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4141
    const-string v6, " over "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4142
    move-object/from16 v0, v62

    iget-wide v6, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    move-object/from16 v0, p2

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4143
    move-object/from16 v0, v62

    iget-wide v6, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    const-wide/16 v12, 0x0

    cmp-long v6, v6, v12

    if-eqz v6, :cond_6a

    .line 4144
    const-string v6, " ("

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4145
    move-object/from16 v0, v62

    iget-wide v6, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    const-wide/16 v12, 0x64

    mul-long/2addr v6, v12

    move-object/from16 v0, v62

    iget-wide v12, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    div-long/2addr v6, v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 4146
    const-string v6, "%)"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4128
    :cond_6a
    add-int/lit8 v60, v60, 0x1

    goto :goto_27

    .line 4094
    .end local v60    # "e":I
    .end local v62    # "ew":Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    .end local v117    # "numExcessive":I
    :cond_6b
    const/16 v117, 0x0

    goto/16 :goto_26

    .line 4134
    .restart local v60    # "e":I
    .restart local v62    # "ew":Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    .restart local v117    # "numExcessive":I
    :cond_6c
    move-object/from16 v0, v62

    iget v6, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6d

    .line 4135
    const-string v6, "cpu"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_28

    .line 4137
    :cond_6d
    const-string/jumbo v6, "unknown"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_28

    .line 4150
    .end local v62    # "ew":Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    :cond_6e
    const/16 v172, 0x1

    .line 4080
    .end local v60    # "e":I
    :cond_6f
    add-int/lit8 v80, v80, -0x1

    goto/16 :goto_25

    .line 4154
    .end local v64    # "foregroundTime":J
    .end local v115    # "numAnrs":I
    .end local v116    # "numCrashes":I
    .end local v117    # "numExcessive":I
    .end local v130    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .end local v144    # "starts":I
    .end local v148    # "systemTime":J
    .end local v190    # "userTime":J
    :cond_70
    invoke-virtual/range {v170 .. v170}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v118

    .line 4156
    .local v118, "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    invoke-virtual/range {v118 .. v118}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v77, v6, -0x1

    .local v77, "ipkg":I
    :goto_29
    if-ltz v77, :cond_76

    .line 4157
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "    Apk "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v118

    move/from16 v1, v77

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4158
    const-string v6, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4159
    const/16 v36, 0x0

    .line 4160
    .local v36, "apkActivity":Z
    move-object/from16 v0, v118

    move/from16 v1, v77

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v130

    check-cast v130, Landroid/os/BatteryStats$Uid$Pkg;

    .line 4161
    .local v130, "ps":Landroid/os/BatteryStats$Uid$Pkg;
    invoke-virtual/range {v130 .. v130}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v35

    .line 4162
    .local v35, "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    invoke-virtual/range {v35 .. v35}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v87, v6, -0x1

    .local v87, "iwa":I
    :goto_2a
    if-ltz v87, :cond_71

    .line 4163
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "      Wakeup alarm "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4164
    move-object/from16 v0, v35

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, ": "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4165
    move-object/from16 v0, v35

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$Counter;

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 4166
    const-string v6, " times"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4167
    const/16 v36, 0x1

    .line 4162
    add-int/lit8 v87, v87, -0x1

    goto :goto_2a

    .line 4169
    :cond_71
    invoke-virtual/range {v130 .. v130}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    move-result-object v139

    .line 4170
    .local v139, "serviceStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    invoke-virtual/range {v139 .. v139}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v83, v6, -0x1

    .local v83, "isvc":I
    :goto_2b
    if-ltz v83, :cond_74

    .line 4171
    move-object/from16 v0, v139

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v141

    check-cast v141, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    .line 4172
    .local v141, "ss":Landroid/os/BatteryStats$Uid$Pkg$Serv;
    move-object/from16 v0, v141

    move-wide/from16 v1, v40

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStartTime(JI)J

    move-result-wide v142

    .line 4173
    .local v142, "startTime":J
    move-object/from16 v0, v141

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    move-result v144

    .line 4174
    .restart local v144    # "starts":I
    move-object/from16 v0, v141

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    move-result v91

    .line 4175
    .local v91, "launches":I
    const-wide/16 v6, 0x0

    cmp-long v6, v142, v6

    if-nez v6, :cond_72

    if-nez v144, :cond_72

    if-eqz v91, :cond_73

    .line 4176
    :cond_72
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4177
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "      Service "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4178
    move-object/from16 v0, v139

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":\n"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4179
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "        Created for: "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4180
    const-wide/16 v6, 0x3e8

    div-long v6, v142, v6

    move-object/from16 v0, v18

    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4181
    const-string/jumbo v6, "uptime\n"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4182
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "        Starts: "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4183
    move-object/from16 v0, v18

    move/from16 v1, v144

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4184
    const-string v6, ", launches: "

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v18

    move/from16 v1, v91

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4185
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4186
    const/16 v36, 0x1

    .line 4170
    :cond_73
    add-int/lit8 v83, v83, -0x1

    goto/16 :goto_2b

    .line 4189
    .end local v91    # "launches":I
    .end local v141    # "ss":Landroid/os/BatteryStats$Uid$Pkg$Serv;
    .end local v142    # "startTime":J
    .end local v144    # "starts":I
    :cond_74
    if-nez v36, :cond_75

    .line 4190
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "      (nothing executed)"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4192
    :cond_75
    const/16 v172, 0x1

    .line 4156
    add-int/lit8 v77, v77, -0x1

    goto/16 :goto_29

    .line 4194
    .end local v35    # "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    .end local v36    # "apkActivity":Z
    .end local v83    # "isvc":I
    .end local v87    # "iwa":I
    .end local v130    # "ps":Landroid/os/BatteryStats$Uid$Pkg;
    .end local v139    # "serviceStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    :cond_76
    if-nez v172, :cond_3d

    .line 4195
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "    (nothing executed)"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_19

    .line 4198
    .end local v33    # "NSE":I
    .end local v54    # "countWakelock":I
    .end local v68    # "fullWifiLockOnTime":J
    .end local v76    # "ij":I
    .end local v77    # "ipkg":I
    .end local v80    # "ipr":I
    .end local v81    # "ips":I
    .end local v82    # "ise":I
    .end local v84    # "isy":I
    .end local v86    # "iw":I
    .end local v88    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v98    # "mobileRxBytes":J
    .end local v100    # "mobileRxPackets":J
    .end local v106    # "mobileTxBytes":J
    .end local v108    # "mobileTxPackets":J
    .end local v118    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v119    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v126    # "powerCpuMaUs":J
    .end local v138    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v145    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v146    # "systemCpuTimeUs":J
    .end local v154    # "totalDrawWakelock":J
    .end local v156    # "totalFullWakelock":J
    .end local v158    # "totalPartialWakelock":J
    .end local v162    # "totalStateTime":J
    .end local v168    # "totalWindowWakelock":J
    .end local v170    # "u":Landroid/os/BatteryStats$Uid;
    .end local v171    # "uid":I
    .end local v172    # "uidActivity":Z
    .end local v173    # "uidMobileActiveCount":I
    .end local v174    # "uidMobileActiveTime":J
    .end local v178    # "uidWifiIdleTimeMs":J
    .end local v180    # "uidWifiRunningTime":J
    .end local v182    # "uidWifiRxTimeMs":J
    .end local v184    # "uidWifiTotalTimeMs":J
    .end local v186    # "uidWifiTxTimeMs":J
    .end local v188    # "userCpuTimeUs":J
    .end local v192    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v210    # "wifiRxBytes":J
    .end local v212    # "wifiRxPackets":J
    .end local v220    # "wifiScanCount":I
    .end local v222    # "wifiScanTime":J
    .end local v226    # "wifiTxBytes":J
    .end local v228    # "wifiTxPackets":J
    :cond_77
    return-void

    .line 3534
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public abstract finishIteratingHistoryLocked()V
.end method

.method public abstract finishIteratingOldHistoryLocked()V
.end method

.method final formatBytesLocked(J)Ljava/lang/String;
    .locals 9
    .param p1, "bytes"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v8, 0x0

    .line 2336
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2338
    const-wide/16 v0, 0x400

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 2339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2348
    :goto_0
    return-object v0

    .line 2340
    :cond_0
    const-wide/32 v0, 0x100000

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 2341
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    const-string v1, "%.2fKB"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double v4, p1

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 2342
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2343
    :cond_1
    const-wide/32 v0, 0x40000000

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    .line 2344
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    const-string v1, "%.2fMB"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double v4, p1

    const-wide/high16 v6, 0x4130000000000000L    # 1048576.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 2345
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2347
    :cond_2
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    const-string v1, "%.2fGB"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double v4, p1

    const-wide/high16 v6, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 2348
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final formatRatioLocked(JJ)Ljava/lang/String;
    .locals 7
    .param p1, "num"    # J
    .param p3, "den"    # J

    .prologue
    const/4 v5, 0x0

    .line 2326
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-nez v1, :cond_0

    .line 2327
    const-string v1, "--%"

    .line 2332
    :goto_0
    return-object v1

    .line 2329
    :cond_0
    long-to-float v1, p1

    long-to-float v2, p3

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v0, v1, v2

    .line 2330
    .local v0, "perc":F
    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2331
    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    const-string v2, "%.1f%%"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 2332
    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public abstract getBatteryRealtime(J)J
.end method

.method public abstract getBatteryUptime(J)J
.end method

.method public abstract getBluetoothControllerActivity(II)J
.end method

.method public abstract getCameraOnTime(JI)J
.end method

.method public abstract getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract getCurrentDailyStartTime()J
.end method

.method public abstract getDailyChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract getDailyDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract getDailyItemLocked(I)Landroid/os/BatteryStats$DailyItem;
.end method

.method public abstract getDailyPackageChanges()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/BatteryStats$PackageChange;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDeviceIdleModeEnabledCount(I)I
.end method

.method public abstract getDeviceIdleModeEnabledTime(JI)J
.end method

.method public abstract getDeviceIdlingCount(I)I
.end method

.method public abstract getDeviceIdlingTime(JI)J
.end method

.method public abstract getDischargeAmount(I)I
.end method

.method public abstract getDischargeAmountScreenOff()I
.end method

.method public abstract getDischargeAmountScreenOffSinceCharge()I
.end method

.method public abstract getDischargeAmountScreenOn()I
.end method

.method public abstract getDischargeAmountScreenOnSinceCharge()I
.end method

.method public abstract getDischargeCurrentLevel()I
.end method

.method public abstract getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract getDischargeStartLevel()I
.end method

.method public abstract getEndPlatformVersion()Ljava/lang/String;
.end method

.method public abstract getFlashlightOnCount(I)J
.end method

.method public abstract getFlashlightOnTime(JI)J
.end method

.method public abstract getGlobalWifiRunningTime(JI)J
.end method

.method public abstract getHighDischargeAmountSinceCharge()I
.end method

.method public abstract getHistoryBaseTime()J
.end method

.method public abstract getHistoryStringPoolBytes()I
.end method

.method public abstract getHistoryStringPoolSize()I
.end method

.method public abstract getHistoryTagPoolString(I)Ljava/lang/String;
.end method

.method public abstract getHistoryTagPoolUid(I)I
.end method

.method public abstract getHistoryTotalSize()I
.end method

.method public abstract getHistoryUsedSize()I
.end method

.method public abstract getInteractiveTime(JI)J
.end method

.method public abstract getIsOnBattery()Z
.end method

.method public abstract getKernelWakelockStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLowDischargeAmountSinceCharge()I
.end method

.method public abstract getMobileRadioActiveAdjustedTime(I)J
.end method

.method public abstract getMobileRadioActiveCount(I)I
.end method

.method public abstract getMobileRadioActiveTime(JI)J
.end method

.method public abstract getMobileRadioActiveUnknownCount(I)I
.end method

.method public abstract getMobileRadioActiveUnknownTime(I)J
.end method

.method public abstract getNetworkActivityBytes(II)J
.end method

.method public abstract getNetworkActivityPackets(II)J
.end method

.method public abstract getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z
.end method

.method public abstract getNextMaxDailyDeadline()J
.end method

.method public abstract getNextMinDailyDeadline()J
.end method

.method public abstract getNextOldHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z
.end method

.method public abstract getNumConnectivityChange(I)I
.end method

.method public abstract getParcelVersion()I
.end method

.method public abstract getPhoneDataConnectionCount(II)I
.end method

.method public abstract getPhoneDataConnectionTime(IJI)J
.end method

.method public abstract getPhoneOnCount(I)I
.end method

.method public abstract getPhoneOnTime(JI)J
.end method

.method public abstract getPhoneSignalScanningTime(JI)J
.end method

.method public abstract getPhoneSignalStrengthCount(II)I
.end method

.method public abstract getPhoneSignalStrengthTime(IJI)J
.end method

.method public abstract getPowerSaveModeEnabledCount(I)I
.end method

.method public abstract getPowerSaveModeEnabledTime(JI)J
.end method

.method public abstract getScreenBrightnessTime(IJI)J
.end method

.method public abstract getScreenOnCount(I)I
.end method

.method public abstract getScreenOnTime(JI)J
.end method

.method public abstract getStartClockTime()J
.end method

.method public abstract getStartCount()I
.end method

.method public abstract getStartPlatformVersion()Ljava/lang/String;
.end method

.method public abstract getUidStats()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<+",
            "Landroid/os/BatteryStats$Uid;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWakeupReasonStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWifiControllerActivity(II)J
.end method

.method public abstract getWifiOnTime(JI)J
.end method

.method public abstract getWifiSignalStrengthCount(II)I
.end method

.method public abstract getWifiSignalStrengthTime(IJI)J
.end method

.method public abstract getWifiStateCount(II)I
.end method

.method public abstract getWifiStateTime(IJI)J
.end method

.method public abstract getWifiSupplStateCount(II)I
.end method

.method public abstract getWifiSupplStateTime(IJI)J
.end method

.method public abstract hasBluetoothActivityReporting()Z
.end method

.method public abstract hasWifiActivityReporting()Z
.end method

.method public prepareForDumpLocked()V
    .locals 0

    .prologue
    .line 4250
    return-void
.end method

.method public abstract startIteratingHistoryLocked()Z
.end method

.method public abstract startIteratingOldHistoryLocked()Z
.end method

.method public abstract writeToParcelWithoutUids(Landroid/os/Parcel;I)V
.end method
