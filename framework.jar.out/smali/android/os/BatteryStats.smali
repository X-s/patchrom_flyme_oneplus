.class public abstract Landroid/os/BatteryStats;
.super Ljava/lang/Object;
.source "BatteryStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BatteryStats$BitDescription;,
        Landroid/os/BatteryStats$ControllerActivityCounter;,
        Landroid/os/BatteryStats$Counter;,
        Landroid/os/BatteryStats$DailyItem;,
        Landroid/os/BatteryStats$HistoryEventTracker;,
        Landroid/os/BatteryStats$HistoryItem;,
        Landroid/os/BatteryStats$HistoryPrinter;,
        Landroid/os/BatteryStats$HistoryStepDetails;,
        Landroid/os/BatteryStats$HistoryTag;,
        Landroid/os/BatteryStats$LevelStepTracker;,
        Landroid/os/BatteryStats$LongCounter;,
        Landroid/os/BatteryStats$PackageChange;,
        Landroid/os/BatteryStats$Timer;,
        Landroid/os/BatteryStats$TimerEntry;,
        Landroid/os/BatteryStats$Uid;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-internal-os-BatterySipper$DrainTypeSwitchesValues:[I = null

.field private static final APK_DATA:Ljava/lang/String; = "apk"

.field private static final AUDIO_DATA:Ljava/lang/String; = "aud"

.field public static final AUDIO_TURNED_ON:I = 0xf

.field private static final BATTERY_DATA:Ljava/lang/String; = "bt"

.field private static final BATTERY_DISCHARGE_DATA:Ljava/lang/String; = "dc"

.field private static final BATTERY_LEVEL_DATA:Ljava/lang/String; = "lv"

.field private static final BATTERY_STATS_CHECKIN_VERSION:I = 0x9

.field private static final BLUETOOTH_CONTROLLER_DATA:Ljava/lang/String; = "ble"

.field private static final BLUETOOTH_MISC_DATA:Ljava/lang/String; = "blem"

.field public static final BLUETOOTH_SCAN_ON:I = 0x13

.field private static final BYTES_PER_GB:J = 0x40000000L

.field private static final BYTES_PER_KB:J = 0x400L

.field private static final BYTES_PER_MB:J = 0x100000L

.field private static final CAMERA_DATA:Ljava/lang/String; = "cam"

.field public static final CAMERA_TURNED_ON:I = 0x11

.field private static final CHARGE_STEP_DATA:Ljava/lang/String; = "csd"

.field private static final CHARGE_TIME_REMAIN_DATA:Ljava/lang/String; = "ctr"

.field static final CHECKIN_VERSION:Ljava/lang/String; = "19"

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

.field public static final DEVICE_IDLE_MODE_DEEP:I = 0x2

.field public static final DEVICE_IDLE_MODE_LIGHT:I = 0x1

.field public static final DEVICE_IDLE_MODE_OFF:I = 0x0

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

.field private static final GLOBAL_BLUETOOTH_CONTROLLER_DATA:Ljava/lang/String; = "gble"

.field private static final GLOBAL_MODEM_CONTROLLER_DATA:Ljava/lang/String; = "gmcd"

.field private static final GLOBAL_NETWORK_DATA:Ljava/lang/String; = "gn"

.field private static final GLOBAL_WIFI_CONTROLLER_DATA:Ljava/lang/String; = "gwfcd"

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

.field private static final MODEM_CONTROLLER_DATA:Ljava/lang/String; = "mcd"

.field public static final NETWORK_BT_RX_DATA:I = 0x4

.field public static final NETWORK_BT_TX_DATA:I = 0x5

.field private static final NETWORK_DATA:Ljava/lang/String; = "nt"

.field public static final NETWORK_MOBILE_RX_DATA:I = 0x0

.field public static final NETWORK_MOBILE_TX_DATA:I = 0x1

.field public static final NETWORK_WIFI_RX_DATA:I = 0x2

.field public static final NETWORK_WIFI_TX_DATA:I = 0x3

.field public static final NUM_DATA_CONNECTION_TYPES:I = 0x11

.field public static final NUM_NETWORK_ACTIVITY_TYPES:I = 0x6

.field public static final NUM_SCREEN_BRIGHTNESS_BINS:I = 0x5

.field public static final NUM_WIFI_SIGNAL_STRENGTH_BINS:I = 0x5

.field public static final NUM_WIFI_STATES:I = 0x8

.field public static final NUM_WIFI_SUPPL_STATES:I = 0xd

.field private static final POWER_USE_ITEM_DATA:Ljava/lang/String; = "pwi"

.field private static final POWER_USE_SUMMARY_DATA:Ljava/lang/String; = "pws"

.field private static final PROCESS_DATA:Ljava/lang/String; = "pr"

.field public static final PROCESS_STATE:I = 0xc

.field public static final RESULT_RECEIVER_CONTROLLER_KEY:Ljava/lang/String; = "controller_activity"

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

.field private static final TAG:Ljava/lang/String; = "BatteryStats"

.field private static final UID_DATA:Ljava/lang/String; = "uid"

.field private static final USER_ACTIVITY_DATA:Ljava/lang/String; = "ua"

.field private static final VERSION_DATA:Ljava/lang/String; = "vers"

.field private static final VIBRATOR_DATA:Ljava/lang/String; = "vib"

.field public static final VIBRATOR_ON:I = 0x9

.field private static final VIDEO_DATA:Ljava/lang/String; = "vid"

.field public static final VIDEO_TURNED_ON:I = 0x8

.field private static final WAKELOCK_DATA:Ljava/lang/String; = "wl"

.field private static final WAKEUP_ALARM_DATA:Ljava/lang/String; = "wua"

.field private static final WAKEUP_REASON_DATA:Ljava/lang/String; = "wr"

.field public static final WAKE_TYPE_DRAW:I = 0x12

.field public static final WAKE_TYPE_FULL:I = 0x1

.field public static final WAKE_TYPE_PARTIAL:I = 0x0

.field public static final WAKE_TYPE_WINDOW:I = 0x2

.field public static final WIFI_BATCHED_SCAN:I = 0xb

.field private static final WIFI_CONTROLLER_DATA:Ljava/lang/String; = "wfcd"

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

.field private static final sRPMFile:Ljava/lang/String; = "/d/rpm_stats"

.field private static final sRPMMasterFile:Ljava/lang/String; = "/d/rpm_master_stats"


# instance fields
.field private final mFormatBuilder:Ljava/lang/StringBuilder;

.field private final mFormatter:Ljava/util/Formatter;

.field private timeout:J


# direct methods
.method private static synthetic -getcom-android-internal-os-BatterySipper$DrainTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/os/BatteryStats;->-com-android-internal-os-BatterySipper$DrainTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/BatteryStats;->-com-android-internal-os-BatterySipper$DrainTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/os/BatterySipper$DrainType;->values()[Lcom/android/internal/os/BatterySipper$DrainType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_b

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->BLUETOOTH:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_a

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->CAMERA:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_9

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->CELL:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_8

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->FLASHLIGHT:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_7

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_6

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_5

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->PHONE:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_4

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_3

    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_2

    :goto_9
    :try_start_a
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->USER:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1

    :goto_a
    :try_start_b
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->WIFI:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_0

    :goto_b
    sput-object v0, Landroid/os/BatteryStats;->-com-android-internal-os-BatterySipper$DrainTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_b

    :catch_1
    move-exception v1

    goto :goto_a

    :catch_2
    move-exception v1

    goto :goto_9

    :catch_3
    move-exception v1

    goto :goto_8

    :catch_4
    move-exception v1

    goto :goto_7

    :catch_5
    move-exception v1

    goto :goto_6

    :catch_6
    move-exception v1

    goto :goto_5

    :catch_7
    move-exception v1

    goto :goto_4

    :catch_8
    move-exception v1

    goto :goto_3

    :catch_9
    move-exception v1

    goto :goto_2

    :catch_a
    move-exception v1

    goto :goto_1

    :catch_b
    move-exception v1

    goto/16 :goto_0
.end method

.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 183
    new-array v0, v9, [Ljava/lang/String;

    const-string/jumbo v1, "l"

    aput-object v1, v0, v8

    const-string/jumbo v1, "c"

    aput-object v1, v0, v10

    const-string/jumbo v1, "u"

    aput-object v1, v0, v11

    sput-object v0, Landroid/os/BatteryStats;->STAT_NAMES:[Ljava/lang/String;

    .line 1739
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 1740
    const-string/jumbo v1, "dark"

    aput-object v1, v0, v8

    const-string/jumbo v1, "dim"

    aput-object v1, v0, v10

    const-string/jumbo v1, "medium"

    aput-object v1, v0, v11

    const-string/jumbo v1, "light"

    aput-object v1, v0, v9

    const-string/jumbo v1, "bright"

    aput-object v1, v0, v12

    .line 1739
    sput-object v0, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    .line 1743
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 1744
    const-string/jumbo v1, "0"

    aput-object v1, v0, v8

    const-string/jumbo v1, "1"

    aput-object v1, v0, v10

    const-string/jumbo v1, "2"

    aput-object v1, v0, v11

    const-string/jumbo v1, "3"

    aput-object v1, v0, v9

    const-string/jumbo v1, "4"

    aput-object v1, v0, v12

    .line 1743
    sput-object v0, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_SHORT_NAMES:[Ljava/lang/String;

    .line 1931
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    .line 1932
    const-string/jumbo v1, "none"

    aput-object v1, v0, v8

    const-string/jumbo v1, "gprs"

    aput-object v1, v0, v10

    const-string/jumbo v1, "edge"

    aput-object v1, v0, v11

    const-string/jumbo v1, "umts"

    aput-object v1, v0, v9

    const-string/jumbo v1, "cdma"

    aput-object v1, v0, v12

    const-string/jumbo v1, "evdo_0"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "evdo_A"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 1933
    const-string/jumbo v1, "1xrtt"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "hsdpa"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "hsupa"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "hspa"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "iden"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "evdo_b"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "lte"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 1934
    const-string/jumbo v1, "ehrpd"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "hspap"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "other"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 1931
    sput-object v0, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    .line 1972
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    .line 1973
    const-string/jumbo v1, "invalid"

    aput-object v1, v0, v8

    const-string/jumbo v1, "disconn"

    aput-object v1, v0, v10

    const-string/jumbo v1, "disabled"

    aput-object v1, v0, v11

    const-string/jumbo v1, "inactive"

    aput-object v1, v0, v9

    const-string/jumbo v1, "scanning"

    aput-object v1, v0, v12

    .line 1974
    const-string/jumbo v1, "authenticating"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "associating"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "associated"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "4-way-handshake"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 1975
    const-string/jumbo v1, "group-handshake"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "completed"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "dormant"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "uninit"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 1972
    sput-object v0, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

    .line 1978
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    .line 1979
    const-string/jumbo v1, "inv"

    aput-object v1, v0, v8

    const-string/jumbo v1, "dsc"

    aput-object v1, v0, v10

    const-string/jumbo v1, "dis"

    aput-object v1, v0, v11

    const-string/jumbo v1, "inact"

    aput-object v1, v0, v9

    const-string/jumbo v1, "scan"

    aput-object v1, v0, v12

    .line 1980
    const-string/jumbo v1, "auth"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "ascing"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "asced"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "4-way"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 1981
    const-string/jumbo v1, "group"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "compl"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "dorm"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "uninit"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 1978
    sput-object v0, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_SHORT_NAMES:[Ljava/lang/String;

    .line 1985
    const/16 v0, 0x11

    new-array v7, v0, [Landroid/os/BatteryStats$BitDescription;

    .line 1986
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "running"

    const-string/jumbo v2, "r"

    const/high16 v3, -0x80000000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    .line 1987
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "wake_lock"

    const-string/jumbo v2, "w"

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v10

    .line 1988
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "sensor"

    const-string/jumbo v2, "s"

    const/high16 v3, 0x800000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v11

    .line 1989
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "gps"

    const-string/jumbo v2, "g"

    const/high16 v3, 0x20000000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v9

    .line 1990
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "wifi_full_lock"

    const-string/jumbo v2, "Wl"

    const/high16 v3, 0x10000000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v12

    .line 1991
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "wifi_scan"

    const-string/jumbo v2, "Ws"

    const/high16 v3, 0x8000000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    aput-object v0, v7, v1

    .line 1992
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "wifi_multicast"

    const-string/jumbo v2, "Wm"

    const/high16 v3, 0x10000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x6

    aput-object v0, v7, v1

    .line 1993
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "wifi_radio"

    const-string/jumbo v2, "Wr"

    const/high16 v3, 0x4000000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x7

    aput-object v0, v7, v1

    .line 1994
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "mobile_radio"

    const-string/jumbo v2, "Pr"

    const/high16 v3, 0x2000000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x8

    aput-object v0, v7, v1

    .line 1995
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "phone_scanning"

    const-string/jumbo v2, "Psc"

    const/high16 v3, 0x200000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x9

    aput-object v0, v7, v1

    .line 1996
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "audio"

    const-string/jumbo v2, "a"

    const/high16 v3, 0x400000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xa

    aput-object v0, v7, v1

    .line 1997
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "screen"

    const-string/jumbo v2, "S"

    const/high16 v3, 0x100000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xb

    aput-object v0, v7, v1

    .line 1998
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "plugged"

    const-string/jumbo v2, "BP"

    const/high16 v3, 0x80000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xc

    aput-object v0, v7, v1

    .line 1999
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    .line 2000
    const-string/jumbo v3, "data_conn"

    const-string/jumbo v4, "Pcn"

    .line 2001
    sget-object v5, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    sget-object v6, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    .line 1999
    const/16 v1, 0x3e00

    .line 2000
    const/16 v2, 0x9

    .line 1999
    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v1, 0xd

    aput-object v0, v7, v1

    .line 2002
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    .line 2003
    const-string/jumbo v3, "phone_state"

    const-string/jumbo v4, "Pst"

    .line 2004
    new-array v5, v12, [Ljava/lang/String;

    const-string/jumbo v1, "in"

    aput-object v1, v5, v8

    const-string/jumbo v1, "out"

    aput-object v1, v5, v10

    const-string/jumbo v1, "emergency"

    aput-object v1, v5, v11

    const-string/jumbo v1, "off"

    aput-object v1, v5, v9

    .line 2005
    new-array v6, v12, [Ljava/lang/String;

    const-string/jumbo v1, "in"

    aput-object v1, v6, v8

    const-string/jumbo v1, "out"

    aput-object v1, v6, v10

    const-string/jumbo v1, "em"

    aput-object v1, v6, v11

    const-string/jumbo v1, "off"

    aput-object v1, v6, v9

    .line 2002
    const/16 v1, 0x1c0

    .line 2003
    const/4 v2, 0x6

    .line 2002
    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v1, 0xe

    aput-object v0, v7, v1

    .line 2006
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    .line 2007
    const-string/jumbo v3, "phone_signal_strength"

    const-string/jumbo v4, "Pss"

    .line 2008
    sget-object v5, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    .line 2009
    const/4 v1, 0x5

    new-array v6, v1, [Ljava/lang/String;

    const-string/jumbo v1, "0"

    aput-object v1, v6, v8

    const-string/jumbo v1, "1"

    aput-object v1, v6, v10

    const-string/jumbo v1, "2"

    aput-object v1, v6, v11

    const-string/jumbo v1, "3"

    aput-object v1, v6, v9

    const-string/jumbo v1, "4"

    aput-object v1, v6, v12

    .line 2006
    const/16 v1, 0x38

    move v2, v9

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v1, 0xf

    aput-object v0, v7, v1

    .line 2010
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    .line 2011
    const-string/jumbo v3, "brightness"

    const-string/jumbo v4, "Sb"

    .line 2012
    sget-object v5, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    sget-object v6, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_SHORT_NAMES:[Ljava/lang/String;

    .line 2010
    const/4 v1, 0x7

    move v2, v8

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v1, 0x10

    aput-object v0, v7, v1

    .line 1984
    sput-object v7, Landroid/os/BatteryStats;->HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    .line 2016
    const/16 v0, 0xd

    new-array v7, v0, [Landroid/os/BatteryStats$BitDescription;

    .line 2017
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "power_save"

    const-string/jumbo v2, "ps"

    const/high16 v3, -0x80000000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    .line 2018
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "video"

    const-string/jumbo v2, "v"

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v10

    .line 2019
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "wifi_running"

    const-string/jumbo v2, "Ww"

    const/high16 v3, 0x20000000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v11

    .line 2020
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "wifi"

    const-string/jumbo v2, "W"

    const/high16 v3, 0x10000000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v9

    .line 2021
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "flashlight"

    const-string/jumbo v2, "fl"

    const/high16 v3, 0x8000000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v12

    .line 2022
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    .line 2023
    const-string/jumbo v3, "device_idle"

    const-string/jumbo v4, "di"

    .line 2024
    new-array v5, v12, [Ljava/lang/String;

    const-string/jumbo v1, "off"

    aput-object v1, v5, v8

    const-string/jumbo v1, "light"

    aput-object v1, v5, v10

    const-string/jumbo v1, "full"

    aput-object v1, v5, v11

    const-string/jumbo v1, "???"

    aput-object v1, v5, v9

    .line 2025
    new-array v6, v12, [Ljava/lang/String;

    const-string/jumbo v1, "off"

    aput-object v1, v6, v8

    const-string/jumbo v1, "light"

    aput-object v1, v6, v10

    const-string/jumbo v1, "full"

    aput-object v1, v6, v11

    const-string/jumbo v1, "???"

    aput-object v1, v6, v9

    .line 2022
    const/high16 v1, 0x6000000

    .line 2023
    const/16 v2, 0x19

    .line 2022
    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v1, 0x5

    aput-object v0, v7, v1

    .line 2026
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "charging"

    const-string/jumbo v2, "ch"

    const/high16 v3, 0x1000000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x6

    aput-object v0, v7, v1

    .line 2027
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "phone_in_call"

    const-string/jumbo v2, "Pcl"

    const/high16 v3, 0x800000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x7

    aput-object v0, v7, v1

    .line 2028
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "bluetooth"

    const-string/jumbo v2, "b"

    const/high16 v3, 0x400000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x8

    aput-object v0, v7, v1

    .line 2029
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    .line 2030
    const-string/jumbo v3, "wifi_signal_strength"

    const-string/jumbo v4, "Wss"

    .line 2031
    const/4 v1, 0x5

    new-array v5, v1, [Ljava/lang/String;

    const-string/jumbo v1, "0"

    aput-object v1, v5, v8

    const-string/jumbo v1, "1"

    aput-object v1, v5, v10

    const-string/jumbo v1, "2"

    aput-object v1, v5, v11

    const-string/jumbo v1, "3"

    aput-object v1, v5, v9

    const-string/jumbo v1, "4"

    aput-object v1, v5, v12

    .line 2032
    const/4 v1, 0x5

    new-array v6, v1, [Ljava/lang/String;

    const-string/jumbo v1, "0"

    aput-object v1, v6, v8

    const-string/jumbo v1, "1"

    aput-object v1, v6, v10

    const-string/jumbo v1, "2"

    aput-object v1, v6, v11

    const-string/jumbo v1, "3"

    aput-object v1, v6, v9

    const-string/jumbo v1, "4"

    aput-object v1, v6, v12

    .line 2029
    const/16 v1, 0x70

    move v2, v12

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v1, 0x9

    aput-object v0, v7, v1

    .line 2033
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    .line 2034
    const-string/jumbo v3, "wifi_suppl"

    const-string/jumbo v4, "Wsp"

    .line 2035
    sget-object v5, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

    sget-object v6, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_SHORT_NAMES:[Ljava/lang/String;

    .line 2033
    const/16 v1, 0xf

    move v2, v8

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v1, 0xa

    aput-object v0, v7, v1

    .line 2036
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "camera"

    const-string/jumbo v2, "ca"

    const/high16 v3, 0x200000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xb

    aput-object v0, v7, v1

    .line 2037
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "ble_scan"

    const-string/jumbo v2, "bles"

    const/high16 v3, 0x100000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xc

    aput-object v0, v7, v1

    .line 2015
    sput-object v7, Landroid/os/BatteryStats;->HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    .line 2040
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    .line 2041
    const-string/jumbo v1, "null"

    aput-object v1, v0, v8

    const-string/jumbo v1, "proc"

    aput-object v1, v0, v10

    const-string/jumbo v1, "fg"

    aput-object v1, v0, v11

    const-string/jumbo v1, "top"

    aput-object v1, v0, v9

    const-string/jumbo v1, "sync"

    aput-object v1, v0, v12

    const-string/jumbo v1, "wake_lock_in"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "job"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "user"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "userfg"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "conn"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 2042
    const-string/jumbo v1, "active"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "pkginst"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "pkgunin"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "alarm"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "stats"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "inactive"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "active"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "tmpwhitelist"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 2043
    const-string/jumbo v1, "screenwake"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "wakeupap"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "longwake"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 2040
    sput-object v0, Landroid/os/BatteryStats;->HISTORY_EVENT_NAMES:[Ljava/lang/String;

    .line 2046
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    .line 2047
    const-string/jumbo v1, "Enl"

    aput-object v1, v0, v8

    const-string/jumbo v1, "Epr"

    aput-object v1, v0, v10

    const-string/jumbo v1, "Efg"

    aput-object v1, v0, v11

    const-string/jumbo v1, "Etp"

    aput-object v1, v0, v9

    const-string/jumbo v1, "Esy"

    aput-object v1, v0, v12

    const-string/jumbo v1, "Ewl"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "Ejb"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "Eur"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "Euf"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "Ecn"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 2048
    const-string/jumbo v1, "Eac"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "Epi"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "Epu"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "Eal"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "Est"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "Eai"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "Eaa"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "Etw"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 2049
    const-string/jumbo v1, "Esw"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "Ewa"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "Elw"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 2046
    sput-object v0, Landroid/os/BatteryStats;->HISTORY_EVENT_CHECKIN_NAMES:[Ljava/lang/String;

    .line 2077
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    .line 2078
    const-string/jumbo v1, "off"

    aput-object v1, v0, v8

    const-string/jumbo v1, "scanning"

    aput-object v1, v0, v10

    const-string/jumbo v1, "no_net"

    aput-object v1, v0, v11

    const-string/jumbo v1, "disconn"

    aput-object v1, v0, v9

    .line 2079
    const-string/jumbo v1, "sta"

    aput-object v1, v0, v12

    const-string/jumbo v1, "p2p"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "sta_p2p"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "soft_ap"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 2077
    sput-object v0, Landroid/os/BatteryStats;->WIFI_STATE_NAMES:[Ljava/lang/String;

    .line 2397
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    .line 2409
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_VALUES:[I

    .line 2421
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 2422
    const-string/jumbo v1, "screen off"

    aput-object v1, v0, v8

    .line 2423
    const-string/jumbo v1, "screen off power save"

    aput-object v1, v0, v10

    .line 2424
    const-string/jumbo v1, "screen off device idle"

    aput-object v1, v0, v11

    .line 2425
    const-string/jumbo v1, "screen on"

    aput-object v1, v0, v9

    .line 2426
    const-string/jumbo v1, "screen on power save"

    aput-object v1, v0, v12

    .line 2427
    const-string/jumbo v1, "screen doze"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 2428
    const-string/jumbo v1, "screen doze power save"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 2429
    const-string/jumbo v1, "screen doze-suspend"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 2430
    const-string/jumbo v1, "screen doze-suspend power save"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 2431
    const-string/jumbo v1, "screen doze-suspend device idle"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 2421
    sput-object v0, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    .line 57
    return-void

    .line 2397
    nop

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

    .line 2409
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
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 261
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    iput-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    .line 4693
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Landroid/os/BatteryStats;->timeout:J

    .line 57
    return-void
.end method

.method private static computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J
    .locals 9
    .param p0, "timer"    # Landroid/os/BatteryStats$Timer;
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 2563
    if-eqz p0, :cond_0

    .line 2565
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    .line 2566
    .local v0, "totalTimeMicros":J
    const-wide/16 v4, 0x1f4

    add-long/2addr v4, v0

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    .line 2567
    .local v2, "totalTimeMillis":J
    return-wide v2

    .line 2569
    .end local v0    # "totalTimeMicros":J
    .end local v2    # "totalTimeMillis":J
    :cond_0
    const-wide/16 v4, 0x0

    return-wide v4
.end method

.method private static controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z
    .locals 11
    .param p0, "counter"    # Landroid/os/BatteryStats$ControllerActivityCounter;
    .param p1, "which"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    const-wide/16 v8, 0x0

    .line 2764
    if-nez p0, :cond_0

    .line 2765
    return v2

    .line 2768
    :cond_0
    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v4

    cmp-long v1, v4, v8

    if-nez v1, :cond_1

    .line 2769
    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v4

    cmp-long v1, v4, v8

    if-eqz v1, :cond_2

    .line 2771
    :cond_1
    return v10

    .line 2770
    :cond_2
    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v4

    cmp-long v1, v4, v8

    if-nez v1, :cond_1

    .line 2774
    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_4

    aget-object v0, v3, v1

    .line 2775
    .local v0, "c":Landroid/os/BatteryStats$LongCounter;
    invoke-virtual {v0, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v6

    cmp-long v5, v6, v8

    if-eqz v5, :cond_3

    .line 2776
    return v10

    .line 2774
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2779
    .end local v0    # "c":Landroid/os/BatteryStats$LongCounter;
    :cond_4
    return v2
.end method

.method private static final dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V
    .locals 6
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "uid"    # I
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "counter"    # Landroid/os/BatteryStats$ControllerActivityCounter;
    .param p5, "which"    # I

    .prologue
    .line 2794
    invoke-static {p4, p5}, Landroid/os/BatteryStats;->controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2795
    return-void

    .line 2798
    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroid/os/BatteryStats;->dumpLineHeader(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;)V

    .line 2799
    const-string/jumbo v1, ","

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2800
    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 2801
    const-string/jumbo v1, ","

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2802
    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 2803
    const-string/jumbo v1, ","

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2804
    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v2

    const-wide/32 v4, 0x36ee80

    div-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 2805
    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 2806
    .local v0, "c":Landroid/os/BatteryStats$LongCounter;
    const-string/jumbo v4, ","

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2807
    invoke-virtual {v0, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 2805
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2809
    .end local v0    # "c":Landroid/os/BatteryStats$LongCounter;
    :cond_1
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 2793
    return-void
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
    .line 5341
    if-nez p4, :cond_0

    .line 5342
    return-void

    .line 5344
    :cond_0
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v3, p4

    move-object/from16 v8, p6

    invoke-virtual/range {v3 .. v8}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimeEstimate(JJ[I)J

    move-result-wide v12

    .line 5345
    .local v12, "timeRemaining":J
    const-wide/16 v4, 0x0

    cmp-long v3, v12, v4

    if-ltz v3, :cond_1

    .line 5346
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, " total time: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5347
    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5348
    move-object/from16 v0, p5

    invoke-static {v0, v12, v13}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5349
    move-object/from16 v0, p5

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 5350
    const-string/jumbo v3, " (from "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v3, 0x0

    aget v3, p6, v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 5351
    const-string/jumbo v3, " steps)"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5353
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 5354
    sget-object v3, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    aget v3, v3, v2

    int-to-long v4, v3

    .line 5355
    sget-object v3, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_VALUES:[I

    aget v3, v3, v2

    int-to-long v6, v3

    move-object/from16 v3, p4

    move-object/from16 v8, p6

    .line 5354
    invoke-virtual/range {v3 .. v8}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimeEstimate(JJ[I)J

    move-result-wide v10

    .line 5356
    .local v10, "estimatedTime":J
    const-wide/16 v4, 0x0

    cmp-long v3, v10, v4

    if-lez v3, :cond_2

    .line 5357
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, " "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5358
    sget-object v3, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5359
    const-string/jumbo v3, " time: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5360
    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5361
    move-object/from16 v0, p5

    invoke-static {v0, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5362
    move-object/from16 v0, p5

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 5363
    const-string/jumbo v3, " (from "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v3, 0x0

    aget v3, p6, v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 5364
    const-string/jumbo v3, " steps)"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5353
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5340
    .end local v10    # "estimatedTime":J
    :cond_3
    return-void
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
    .line 5371
    .local p3, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$PackageChange;>;"
    if-nez p3, :cond_0

    .line 5372
    return-void

    .line 5374
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "Package changes:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5375
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 5376
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$PackageChange;

    .line 5377
    .local v1, "pc":Landroid/os/BatteryStats$PackageChange;
    iget-boolean v2, v1, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    if-eqz v2, :cond_1

    .line 5378
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "  Update "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5379
    const-string/jumbo v2, " vers="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Landroid/os/BatteryStats$PackageChange;->mVersionCode:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 5375
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5381
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "  Uninstall "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 5370
    .end local v1    # "pc":Landroid/os/BatteryStats$PackageChange;
    :cond_2
    return-void
.end method

.method private static dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z
    .locals 18
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "header"    # Ljava/lang/String;
    .param p3, "steps"    # Landroid/os/BatteryStats$LevelStepTracker;
    .param p4, "checkin"    # Z

    .prologue
    .line 5169
    if-nez p3, :cond_0

    .line 5170
    const/4 v11, 0x0

    return v11

    .line 5172
    :cond_0
    move-object/from16 v0, p3

    iget v2, v0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 5173
    .local v2, "count":I
    if-gtz v2, :cond_1

    .line 5174
    const/4 v11, 0x0

    return v11

    .line 5176
    :cond_1
    if-nez p4, :cond_2

    .line 5177
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5179
    :cond_2
    const/4 v11, 0x5

    new-array v10, v11, [Ljava/lang/String;

    .line 5180
    .local v10, "lineArgs":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v2, :cond_11

    .line 5181
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getDurationAt(I)J

    move-result-wide v4

    .line 5182
    .local v4, "duration":J
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getLevelAt(I)I

    move-result v7

    .line 5183
    .local v7, "level":I
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getInitModeAt(I)I

    move-result v11

    int-to-long v8, v11

    .line 5184
    .local v8, "initMode":J
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getModModeAt(I)I

    move-result v11

    int-to-long v12, v11

    .line 5185
    .local v12, "modMode":J
    if-eqz p4, :cond_8

    .line 5186
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x0

    aput-object v11, v10, v14

    .line 5187
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x1

    aput-object v11, v10, v14

    .line 5188
    const-wide/16 v14, 0x3

    and-long/2addr v14, v12

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-nez v11, :cond_3

    .line 5189
    const-wide/16 v14, 0x3

    and-long/2addr v14, v8

    long-to-int v11, v14

    add-int/lit8 v11, v11, 0x1

    packed-switch v11, :pswitch_data_0

    .line 5194
    const-string/jumbo v11, "?"

    const/4 v14, 0x2

    aput-object v11, v10, v14

    .line 5199
    :goto_1
    const-wide/16 v14, 0x4

    and-long/2addr v14, v12

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-nez v11, :cond_5

    .line 5200
    const-wide/16 v14, 0x4

    and-long/2addr v14, v8

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-eqz v11, :cond_4

    const-string/jumbo v11, "p+"

    :goto_2
    const/4 v14, 0x3

    aput-object v11, v10, v14

    .line 5204
    :goto_3
    const-wide/16 v14, 0x8

    and-long/2addr v14, v12

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-nez v11, :cond_7

    .line 5205
    const-wide/16 v14, 0x8

    and-long/2addr v14, v8

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-eqz v11, :cond_6

    const-string/jumbo v11, "i+"

    :goto_4
    const/4 v14, 0x4

    aput-object v11, v10, v14

    .line 5209
    :goto_5
    const-string/jumbo v11, "i"

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v14, v11, v1, v10}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5180
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 5190
    :pswitch_0
    const-string/jumbo v11, "s-"

    const/4 v14, 0x2

    aput-object v11, v10, v14

    goto :goto_1

    .line 5191
    :pswitch_1
    const-string/jumbo v11, "s+"

    const/4 v14, 0x2

    aput-object v11, v10, v14

    goto :goto_1

    .line 5192
    :pswitch_2
    const-string/jumbo v11, "sd"

    const/4 v14, 0x2

    aput-object v11, v10, v14

    goto :goto_1

    .line 5193
    :pswitch_3
    const-string/jumbo v11, "sds"

    const/4 v14, 0x2

    aput-object v11, v10, v14

    goto :goto_1

    .line 5197
    :cond_3
    const-string/jumbo v11, ""

    const/4 v14, 0x2

    aput-object v11, v10, v14

    goto :goto_1

    .line 5200
    :cond_4
    const-string/jumbo v11, "p-"

    goto :goto_2

    .line 5202
    :cond_5
    const-string/jumbo v11, ""

    const/4 v14, 0x3

    aput-object v11, v10, v14

    goto :goto_3

    .line 5205
    :cond_6
    const-string/jumbo v11, "i-"

    goto :goto_4

    .line 5207
    :cond_7
    const-string/jumbo v11, ""

    const/4 v14, 0x4

    aput-object v11, v10, v14

    goto :goto_5

    .line 5211
    :cond_8
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5212
    const-string/jumbo v11, "#"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v11, ": "

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5213
    move-object/from16 v0, p0

    invoke-static {v4, v5, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 5214
    const-string/jumbo v11, " to "

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 5215
    const/4 v3, 0x0

    .line 5216
    .local v3, "haveModes":Z
    const-wide/16 v14, 0x3

    and-long/2addr v14, v12

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-nez v11, :cond_9

    .line 5217
    const-string/jumbo v11, " ("

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5218
    const-wide/16 v14, 0x3

    and-long/2addr v14, v8

    long-to-int v11, v14

    add-int/lit8 v11, v11, 0x1

    packed-switch v11, :pswitch_data_1

    .line 5223
    const-string/jumbo v11, "screen-?"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5225
    :goto_7
    const/4 v3, 0x1

    .line 5227
    :cond_9
    const-wide/16 v14, 0x4

    and-long/2addr v14, v12

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-nez v11, :cond_a

    .line 5228
    if-eqz v3, :cond_d

    const-string/jumbo v11, ", "

    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5229
    const-wide/16 v14, 0x4

    and-long/2addr v14, v8

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-eqz v11, :cond_e

    .line 5230
    const-string/jumbo v11, "power-save-on"

    .line 5229
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5231
    const/4 v3, 0x1

    .line 5233
    :cond_a
    const-wide/16 v14, 0x8

    and-long/2addr v14, v12

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-nez v11, :cond_b

    .line 5234
    if-eqz v3, :cond_f

    const-string/jumbo v11, ", "

    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5235
    const-wide/16 v14, 0x8

    and-long/2addr v14, v8

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-eqz v11, :cond_10

    .line 5236
    const-string/jumbo v11, "device-idle-on"

    .line 5235
    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5237
    const/4 v3, 0x1

    .line 5239
    :cond_b
    if-eqz v3, :cond_c

    .line 5240
    const-string/jumbo v11, ")"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5242
    :cond_c
    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_6

    .line 5219
    :pswitch_4
    const-string/jumbo v11, "screen-off"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_7

    .line 5220
    :pswitch_5
    const-string/jumbo v11, "screen-on"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_7

    .line 5221
    :pswitch_6
    const-string/jumbo v11, "screen-doze"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_7

    .line 5222
    :pswitch_7
    const-string/jumbo v11, "screen-doze-suspend"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_7

    .line 5228
    :cond_d
    const-string/jumbo v11, " ("

    goto :goto_8

    .line 5230
    :cond_e
    const-string/jumbo v11, "power-save-off"

    goto :goto_9

    .line 5234
    :cond_f
    const-string/jumbo v11, " ("

    goto :goto_a

    .line 5236
    :cond_10
    const-string/jumbo v11, "device-idle-off"

    goto :goto_b

    .line 5245
    .end local v3    # "haveModes":Z
    .end local v4    # "duration":J
    .end local v7    # "level":I
    .end local v8    # "initMode":J
    .end local v12    # "modMode":J
    :cond_11
    const/4 v11, 0x1

    return v11

    .line 5189
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 5218
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
    .line 5256
    new-instance v3, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v3}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    .line 5257
    .local v3, "hprinter":Landroid/os/BatteryStats$HistoryPrinter;
    new-instance v5, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v5}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 5258
    .local v5, "rec":Landroid/os/BatteryStats$HistoryItem;
    const-wide/16 v16, -0x1

    .line 5259
    .local v16, "lastTime":J
    const-wide/16 v6, -0x1

    .line 5260
    .local v6, "baseTime":J
    const/16 v19, 0x0

    .line 5261
    .local v19, "printed":Z
    const/16 v20, 0x0

    .line 5262
    .local v20, "tracker":Landroid/os/BatteryStats$HistoryEventTracker;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 5263
    iget-wide v0, v5, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v16, v0

    .line 5264
    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-gez v4, :cond_1

    .line 5265
    move-wide/from16 v6, v16

    .line 5267
    :cond_1
    iget-wide v8, v5, Landroid/os/BatteryStats$HistoryItem;->time:J

    cmp-long v4, v8, p3

    if-ltz v4, :cond_0

    .line 5268
    const-wide/16 v8, 0x0

    cmp-long v4, p3, v8

    if-ltz v4, :cond_2

    if-eqz v19, :cond_3

    .line 5321
    :cond_2
    :goto_1
    and-int/lit8 v4, p2, 0x20

    if-eqz v4, :cond_10

    const/4 v9, 0x1

    :goto_2
    move-object/from16 v4, p1

    move/from16 v8, p5

    .line 5320
    invoke-virtual/range {v3 .. v9}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    goto :goto_0

    .line 5269
    :cond_3
    iget-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v8, 0x5

    if-eq v4, v8, :cond_4

    .line 5270
    iget-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v8, 0x7

    if-ne v4, v8, :cond_8

    .line 5273
    :cond_4
    const/16 v19, 0x1

    .line 5275
    and-int/lit8 v4, p2, 0x20

    if-eqz v4, :cond_9

    const/4 v9, 0x1

    :goto_3
    move-object/from16 v4, p1

    move/from16 v8, p5

    .line 5274
    invoke-virtual/range {v3 .. v9}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    .line 5276
    const/4 v4, 0x0

    iput-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 5285
    :cond_5
    :goto_4
    const/4 v4, 0x0

    if-eqz v4, :cond_2

    .line 5286
    iget-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-eqz v4, :cond_6

    .line 5288
    and-int/lit8 v4, p2, 0x20

    if-eqz v4, :cond_b

    const/4 v9, 0x1

    :goto_5
    move-object/from16 v4, p1

    move/from16 v8, p5

    .line 5287
    invoke-virtual/range {v3 .. v9}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    .line 5289
    const/4 v4, 0x0

    iput-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 5291
    :cond_6
    iget v15, v5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 5292
    .local v15, "oldEventCode":I
    iget-object v0, v5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v18, v0

    .line 5293
    .local v18, "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    new-instance v4, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v4}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v4, v5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 5294
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_6
    const/16 v4, 0x15

    if-ge v13, v4, :cond_f

    .line 5296
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/os/BatteryStats$HistoryEventTracker;->getStateForEvent(I)Ljava/util/HashMap;

    move-result-object v2

    .line 5297
    .local v2, "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    if-nez v2, :cond_c

    .line 5294
    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 5271
    .end local v2    # "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v13    # "i":I
    .end local v15    # "oldEventCode":I
    .end local v18    # "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    :cond_8
    iget-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v8, 0x4

    if-eq v4, v8, :cond_4

    .line 5272
    iget-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/16 v8, 0x8

    if-eq v4, v8, :cond_4

    .line 5277
    iget-wide v8, v5, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    const-wide/16 v22, 0x0

    cmp-long v4, v8, v22

    if-eqz v4, :cond_5

    .line 5278
    const/16 v19, 0x1

    .line 5279
    iget-byte v10, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 5280
    .local v10, "cmd":B
    const/4 v4, 0x5

    iput-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 5282
    and-int/lit8 v4, p2, 0x20

    if-eqz v4, :cond_a

    const/4 v9, 0x1

    :goto_7
    move-object/from16 v4, p1

    move/from16 v8, p5

    .line 5281
    invoke-virtual/range {v3 .. v9}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    .line 5283
    iput-byte v10, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    goto :goto_4

    .line 5275
    .end local v10    # "cmd":B
    :cond_9
    const/4 v9, 0x0

    goto :goto_3

    .line 5282
    .restart local v10    # "cmd":B
    :cond_a
    const/4 v9, 0x0

    goto :goto_7

    .line 5288
    .end local v10    # "cmd":B
    :cond_b
    const/4 v9, 0x0

    goto :goto_5

    .line 5301
    .restart local v2    # "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .restart local v13    # "i":I
    .restart local v15    # "oldEventCode":I
    .restart local v18    # "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    :cond_c
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 5300
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "ent$iterator":Ljava/util/Iterator;
    :cond_d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 5302
    .local v11, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/util/SparseIntArray;

    .line 5303
    .local v21, "uids":Landroid/util/SparseIntArray;
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_8
    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v14, v4, :cond_d

    .line 5304
    iput v13, v5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 5305
    iget-object v8, v5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v8, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 5306
    iget-object v4, v5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    iput v8, v4, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 5307
    iget-object v4, v5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    iput v8, v4, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 5309
    and-int/lit8 v4, p2, 0x20

    if-eqz v4, :cond_e

    const/4 v9, 0x1

    :goto_9
    move-object/from16 v4, p1

    move/from16 v8, p5

    .line 5308
    invoke-virtual/range {v3 .. v9}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    .line 5310
    const/4 v4, 0x0

    iput-object v4, v5, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 5311
    const/4 v4, 0x0

    iput-object v4, v5, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 5303
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    .line 5309
    :cond_e
    const/4 v9, 0x0

    goto :goto_9

    .line 5315
    .end local v2    # "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v11    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v12    # "ent$iterator":Ljava/util/Iterator;
    .end local v14    # "j":I
    .end local v21    # "uids":Landroid/util/SparseIntArray;
    :cond_f
    iput v15, v5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 5316
    move-object/from16 v0, v18

    iput-object v0, v5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 5317
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 5321
    .end local v13    # "i":I
    .end local v15    # "oldEventCode":I
    .end local v18    # "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    :cond_10
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 5333
    :cond_11
    const-wide/16 v8, 0x0

    cmp-long v4, p3, v8

    if-ltz v4, :cond_12

    .line 5334
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->commitCurrentHistoryBatchLocked()V

    .line 5335
    if-eqz p5, :cond_13

    const-string/jumbo v4, "NEXT: "

    :goto_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v8, 0x1

    add-long v8, v8, v16

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Ljava/io/PrintWriter;->println(J)V

    .line 5255
    :cond_12
    return-void

    .line 5335
    :cond_13
    const-string/jumbo v4, "  NEXT: "

    goto :goto_a
.end method

.method private static final varargs dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "uid"    # I
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .prologue
    .line 2728
    invoke-static {p0, p1, p2, p3}, Landroid/os/BatteryStats;->dumpLineHeader(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;)V

    .line 2729
    const/4 v1, 0x0

    array-length v2, p4

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p4, v1

    .line 2730
    .local v0, "arg":Ljava/lang/Object;
    const/16 v3, 0x2c

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 2731
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2729
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2733
    .end local v0    # "arg":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 2727
    return-void
.end method

.method private static final dumpLineHeader(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "uid"    # I
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x2c

    .line 2709
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2710
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2711
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 2712
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2713
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2714
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2715
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2708
    return-void
.end method

.method private dumpRPMStatsLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 16
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "sourcefile"    # Ljava/lang/String;

    .prologue
    .line 4696
    const/4 v7, 0x0

    .line 4697
    .local v7, "fis":Ljava/io/FileInputStream;
    const/16 v2, 0x400

    .line 4698
    .local v2, "buf_size":I
    new-array v3, v2, [B

    .line 4700
    .local v3, "buffer":[B
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4701
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .local v8, "fis":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 4702
    .local v9, "length":I
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 4703
    .local v10, "nowELAPSED":J
    :cond_0
    invoke-virtual {v8, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v9

    const/4 v12, -0x1

    if-eq v9, v12, :cond_1

    .line 4704
    new-instance v12, Ljava/lang/String;

    const/4 v13, 0x0

    invoke-direct {v12, v3, v13, v9}, Ljava/lang/String;-><init>([BII)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4705
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long/2addr v12, v10

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/os/BatteryStats;->timeout:J

    cmp-long v12, v12, v14

    if-ltz v12, :cond_0

    .line 4706
    const-string/jumbo v12, "**** Exceed read timeout, force exit ***"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4716
    :cond_1
    if-eqz v8, :cond_2

    .line 4717
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_0
    move-object v7, v8

    .line 4695
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .end local v9    # "length":I
    .end local v10    # "nowELAPSED":J
    :cond_3
    :goto_1
    return-void

    .line 4718
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "length":I
    .restart local v10    # "nowELAPSED":J
    :catch_0
    move-exception v6

    .local v6, "ex":Ljava/io/IOException;
    goto :goto_0

    .line 4712
    .end local v6    # "ex":Ljava/io/IOException;
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .end local v9    # "length":I
    .end local v10    # "nowELAPSED":J
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v5

    .line 4713
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .local v5, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "**** Failed to read, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4716
    if-eqz v7, :cond_3

    .line 4717
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 4718
    :catch_2
    move-exception v6

    .restart local v6    # "ex":Ljava/io/IOException;
    goto :goto_1

    .line 4710
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "ex":Ljava/io/IOException;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v4

    .line 4711
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .local v4, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "**** File not found, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4716
    if-eqz v7, :cond_3

    .line 4717
    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 4718
    :catch_4
    move-exception v6

    .restart local v6    # "ex":Ljava/io/IOException;
    goto :goto_1

    .line 4714
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    .end local v6    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    .line 4716
    :goto_4
    if-eqz v7, :cond_4

    .line 4717
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 4714
    :cond_4
    :goto_5
    throw v12

    .line 4718
    :catch_5
    move-exception v6

    .restart local v6    # "ex":Ljava/io/IOException;
    goto :goto_5

    .line 4714
    .end local v6    # "ex":Ljava/io/IOException;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "length":I
    :catchall_1
    move-exception v12

    move-object v7, v8

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .local v7, "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 4710
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    :catch_6
    move-exception v4

    .restart local v4    # "e":Ljava/io/FileNotFoundException;
    move-object v7, v8

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 4712
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    :catch_7
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    move-object v7, v8

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private static dumpTimeEstimate(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "label1"    # Ljava/lang/String;
    .param p2, "label2"    # Ljava/lang/String;
    .param p3, "label3"    # Ljava/lang/String;
    .param p4, "estimatedTime"    # J

    .prologue
    .line 5154
    const-wide/16 v2, 0x0

    cmp-long v1, p4, v2

    if-gez v1, :cond_0

    .line 5155
    const/4 v1, 0x0

    return v1

    .line 5157
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5158
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5159
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5160
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5161
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {v0, p4, p5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5162
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 5163
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 5164
    const/4 v1, 0x1

    return v1
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
    .line 2749
    if-eqz p4, :cond_0

    .line 2751
    invoke-virtual/range {p4 .. p7}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v6

    const-wide/16 v8, 0x1f4

    add-long/2addr v6, v8

    .line 2752
    const-wide/16 v8, 0x3e8

    .line 2751
    div-long v4, v6, v8

    .line 2753
    .local v4, "totalTime":J
    move/from16 v0, p7

    invoke-virtual {p4, v0}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v2

    .line 2754
    .local v2, "count":I
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 2755
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v3, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v3, v7

    invoke-static {p0, p1, p2, p3, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2748
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

    .line 2522
    div-long v0, p1, v2

    .line 2523
    .local v0, "sec":J
    invoke-static {p0, v0, v1}, Landroid/os/BatteryStats;->formatTimeRaw(Ljava/lang/StringBuilder;J)V

    .line 2524
    mul-long/2addr v2, v0

    sub-long v2, p1, v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2525
    const-string/jumbo v2, "ms "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2521
    return-void
.end method

.method public static final formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V
    .locals 5
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "time"    # J

    .prologue
    const-wide/16 v2, 0x3e8

    .line 2529
    div-long v0, p1, v2

    .line 2530
    .local v0, "sec":J
    invoke-static {p0, v0, v1}, Landroid/os/BatteryStats;->formatTimeRaw(Ljava/lang/StringBuilder;J)V

    .line 2531
    mul-long/2addr v2, v0

    sub-long v2, p1, v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2532
    const-string/jumbo v2, "ms"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2528
    return-void
.end method

.method private static final formatTimeRaw(Ljava/lang/StringBuilder;J)V
    .locals 13
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "seconds"    # J

    .prologue
    .line 2494
    const-wide/32 v8, 0x15180

    div-long v0, p1, v8

    .line 2495
    .local v0, "days":J
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-eqz v8, :cond_0

    .line 2496
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2497
    const-string/jumbo v8, "d "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2499
    :cond_0
    const-wide/16 v8, 0x3c

    mul-long/2addr v8, v0

    const-wide/16 v10, 0x3c

    mul-long/2addr v8, v10

    const-wide/16 v10, 0x18

    mul-long v6, v8, v10

    .line 2501
    .local v6, "used":J
    sub-long v8, p1, v6

    const-wide/16 v10, 0xe10

    div-long v2, v8, v10

    .line 2502
    .local v2, "hours":J
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-nez v8, :cond_1

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-eqz v8, :cond_2

    .line 2503
    :cond_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2504
    const-string/jumbo v8, "h "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2506
    :cond_2
    const-wide/16 v8, 0x3c

    mul-long/2addr v8, v2

    const-wide/16 v10, 0x3c

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    .line 2508
    sub-long v8, p1, v6

    const-wide/16 v10, 0x3c

    div-long v4, v8, v10

    .line 2509
    .local v4, "mins":J
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-nez v8, :cond_3

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-eqz v8, :cond_4

    .line 2510
    :cond_3
    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2511
    const-string/jumbo v8, "m "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2513
    :cond_4
    const-wide/16 v8, 0x3c

    mul-long/2addr v8, v4

    add-long/2addr v6, v8

    .line 2515
    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-nez v8, :cond_5

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-eqz v8, :cond_6

    .line 2516
    :cond_5
    sub-long v8, p1, v6

    invoke-virtual {p0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2517
    const-string/jumbo v8, "s "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2493
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
    .line 4726
    xor-int v2, p1, p2

    .line 4727
    .local v2, "diff":I
    if-nez v2, :cond_0

    return-void

    .line 4728
    :cond_0
    const/4 v1, 0x0

    .line 4729
    .local v1, "didWake":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, p4

    if-ge v3, v5, :cond_a

    .line 4730
    aget-object v0, p4, v3

    .line 4731
    .local v0, "bd":Landroid/os/BatteryStats$BitDescription;
    iget v5, v0, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v5, v2

    if-eqz v5, :cond_1

    .line 4732
    if-eqz p5, :cond_2

    const-string/jumbo v5, " "

    :goto_1
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4733
    iget v5, v0, Landroid/os/BatteryStats$BitDescription;->shift:I

    if-gez v5, :cond_6

    .line 4734
    iget v5, v0, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v5, p2

    if-eqz v5, :cond_3

    const-string/jumbo v5, "+"

    :goto_2
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4735
    if-eqz p5, :cond_4

    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    :goto_3
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4736
    iget v5, v0, Landroid/os/BatteryStats$BitDescription;->mask:I

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v5, v6, :cond_1

    if-eqz p3, :cond_1

    .line 4737
    const/4 v1, 0x1

    .line 4738
    const-string/jumbo v5, "="

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4739
    if-eqz p5, :cond_5

    .line 4740
    iget v5, p3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-static {p0, v5}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 4741
    const-string/jumbo v5, ":\""

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4742
    iget-object v5, p3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4743
    const-string/jumbo v5, "\""

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4729
    :cond_1
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4732
    :cond_2
    const-string/jumbo v5, ","

    goto :goto_1

    .line 4734
    :cond_3
    const-string/jumbo v5, "-"

    goto :goto_2

    .line 4735
    :cond_4
    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->shortName:Ljava/lang/String;

    goto :goto_3

    .line 4745
    :cond_5
    iget v5, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_4

    .line 4749
    :cond_6
    if-eqz p5, :cond_7

    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    :goto_5
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4750
    const-string/jumbo v5, "="

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4751
    iget v5, v0, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v5, p2

    iget v6, v0, Landroid/os/BatteryStats$BitDescription;->shift:I

    shr-int v4, v5, v6

    .line 4752
    .local v4, "val":I
    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    if-eqz v5, :cond_9

    if-ltz v4, :cond_9

    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_9

    .line 4753
    if-eqz p5, :cond_8

    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    aget-object v5, v5, v4

    :goto_6
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4

    .line 4749
    .end local v4    # "val":I
    :cond_7
    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->shortName:Ljava/lang/String;

    goto :goto_5

    .line 4753
    .restart local v4    # "val":I
    :cond_8
    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->shortValues:[Ljava/lang/String;

    aget-object v5, v5, v4

    goto :goto_6

    .line 4755
    :cond_9
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_4

    .line 4760
    .end local v0    # "bd":Landroid/os/BatteryStats$BitDescription;
    .end local v4    # "val":I
    :cond_a
    if-nez v1, :cond_b

    if-eqz p3, :cond_b

    .line 4761
    if-eqz p5, :cond_c

    const-string/jumbo v5, " wake_lock="

    :goto_7
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4762
    if-eqz p5, :cond_d

    .line 4763
    iget v5, p3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-static {p0, v5}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 4764
    const-string/jumbo v5, ":\""

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4765
    iget-object v5, p3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4766
    const-string/jumbo v5, "\""

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4725
    :cond_b
    :goto_8
    return-void

    .line 4761
    :cond_c
    const-string/jumbo v5, ",w="

    goto :goto_7

    .line 4768
    :cond_d
    iget v5, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_8
.end method

.method private final printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V
    .locals 22
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "sb"    # Ljava/lang/StringBuilder;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "controllerName"    # Ljava/lang/String;
    .param p5, "counter"    # Landroid/os/BatteryStats$ControllerActivityCounter;
    .param p6, "which"    # I

    .prologue
    .line 2824
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v2

    .line 2825
    .local v2, "idleTimeMs":J
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v8

    .line 2826
    .local v8, "rxTimeMs":J
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v6

    .line 2827
    .local v6, "powerDrainMaMs":J
    const-wide/16 v12, 0x0

    .line 2828
    .local v12, "totalTxTimeMs":J
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v18

    const/16 v17, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    aget-object v16, v18, v17

    .line 2829
    .local v16, "txState":Landroid/os/BatteryStats$LongCounter;
    move-object/from16 v0, v16

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v20

    add-long v12, v12, v20

    .line 2828
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 2832
    .end local v16    # "txState":Landroid/os/BatteryStats$LongCounter;
    :cond_0
    add-long v18, v2, v8

    add-long v10, v18, v12

    .line 2834
    .local v10, "totalTimeMs":J
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2835
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2836
    const-string/jumbo v17, "  "

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2837
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2838
    const-string/jumbo v17, " Idle time:   "

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2839
    move-object/from16 v0, p2

    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 2840
    const-string/jumbo v17, "("

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2841
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v10, v11}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2842
    const-string/jumbo v17, ")"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2843
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2845
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2846
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2847
    const-string/jumbo v17, "  "

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2848
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2849
    const-string/jumbo v17, " Rx time:     "

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2850
    move-object/from16 v0, p2

    invoke-static {v0, v8, v9}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 2851
    const-string/jumbo v17, "("

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2852
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2853
    const-string/jumbo v17, ")"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2854
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2856
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2857
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2858
    const-string/jumbo v17, "  "

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2859
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2860
    const-string/jumbo v17, " Tx time:     "

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2861
    move-object/from16 v0, p2

    invoke-static {v0, v12, v13}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 2862
    const-string/jumbo v17, "("

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2863
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v10, v11}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2864
    const-string/jumbo v17, ")"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2865
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2867
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v17

    move-object/from16 v0, v17

    array-length v5, v0

    .line 2868
    .local v5, "numTxLvls":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v5, v0, :cond_1

    .line 2869
    const/4 v4, 0x0

    .local v4, "lvl":I
    :goto_1
    if-ge v4, v5, :cond_1

    .line 2870
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v17

    aget-object v17, v17, v4

    move-object/from16 v0, v17

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v14

    .line 2871
    .local v14, "txLvlTimeMs":J
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2872
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2873
    const-string/jumbo v17, "    ["

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2874
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2875
    const-string/jumbo v17, "] "

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2876
    move-object/from16 v0, p2

    invoke-static {v0, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 2877
    const-string/jumbo v17, "("

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2878
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15, v12, v13}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2879
    const-string/jumbo v17, ")"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2880
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2869
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2884
    .end local v4    # "lvl":I
    .end local v14    # "txLvlTimeMs":J
    :cond_1
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2885
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2886
    const-string/jumbo v17, "  "

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2887
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2888
    const-string/jumbo v17, " Power drain: "

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 2889
    long-to-double v0, v6

    move-wide/from16 v18, v0

    const-wide v20, 0x414b774000000000L    # 3600000.0

    div-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v18

    .line 2888
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2890
    const-string/jumbo v17, "mAh"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2891
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2823
    return-void
.end method

.method private final printControllerActivityIfInteresting(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "sb"    # Ljava/lang/StringBuilder;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "controllerName"    # Ljava/lang/String;
    .param p5, "counter"    # Landroid/os/BatteryStats$ControllerActivityCounter;
    .param p6, "which"    # I

    .prologue
    .line 2816
    invoke-static {p5, p6}, Landroid/os/BatteryStats;->controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2817
    invoke-direct/range {p0 .. p6}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 2815
    :cond_0
    return-void
.end method

.method private printSizeValue(Ljava/io/PrintWriter;J)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "size"    # J

    .prologue
    const/high16 v4, 0x46200000    # 10240.0f

    const/high16 v3, 0x44800000    # 1024.0f

    .line 5126
    long-to-float v0, p2

    .line 5127
    .local v0, "result":F
    const-string/jumbo v1, ""

    .line 5128
    .local v1, "suffix":Ljava/lang/String;
    cmpl-float v2, v0, v4

    if-ltz v2, :cond_0

    .line 5129
    const-string/jumbo v1, "KB"

    .line 5130
    div-float/2addr v0, v3

    .line 5132
    :cond_0
    cmpl-float v2, v0, v4

    if-ltz v2, :cond_1

    .line 5133
    const-string/jumbo v1, "MB"

    .line 5134
    div-float/2addr v0, v3

    .line 5136
    :cond_1
    cmpl-float v2, v0, v4

    if-ltz v2, :cond_2

    .line 5137
    const-string/jumbo v1, "GB"

    .line 5138
    div-float/2addr v0, v3

    .line 5140
    :cond_2
    cmpl-float v2, v0, v4

    if-ltz v2, :cond_3

    .line 5141
    const-string/jumbo v1, "TB"

    .line 5142
    div-float/2addr v0, v3

    .line 5144
    :cond_3
    cmpl-float v2, v0, v4

    if-ltz v2, :cond_4

    .line 5145
    const-string/jumbo v1, "PB"

    .line 5146
    div-float/2addr v0, v3

    .line 5148
    :cond_4
    float-to-int v2, v0

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 5149
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5125
    return-void
.end method

.method private static final printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z
    .locals 15
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "timer"    # Landroid/os/BatteryStats$Timer;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "which"    # I
    .param p6, "prefix"    # Ljava/lang/String;
    .param p7, "type"    # Ljava/lang/String;

    .prologue
    .line 2635
    if-eqz p2, :cond_3

    .line 2637
    invoke-virtual/range {p2 .. p5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v10

    .line 2638
    const-wide/16 v12, 0x1f4

    .line 2637
    add-long/2addr v10, v12

    .line 2638
    const-wide/16 v12, 0x3e8

    .line 2637
    div-long v8, v10, v12

    .line 2639
    .local v8, "totalTimeMs":J
    move-object/from16 v0, p2

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v2

    .line 2640
    .local v2, "count":I
    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-eqz v3, :cond_3

    .line 2641
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2642
    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2643
    const-string/jumbo v3, "    "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2644
    move-object/from16 v0, p1

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2645
    const-string/jumbo v3, ": "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2646
    move-object/from16 v0, p1

    invoke-static {v0, v8, v9}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 2647
    const-string/jumbo v3, "realtime ("

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2648
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2649
    const-string/jumbo v3, " times)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2650
    const-wide/16 v10, 0x3e8

    div-long v10, p3, v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v6

    .line 2651
    .local v6, "maxDurationMs":J
    const-wide/16 v10, 0x0

    cmp-long v3, v6, v10

    if-ltz v3, :cond_0

    .line 2652
    const-string/jumbo v3, " max="

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2653
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2655
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2656
    const-wide/16 v10, 0x3e8

    div-long v10, p3, v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    move-result-wide v4

    .line 2657
    .local v4, "currentMs":J
    const-wide/16 v10, 0x0

    cmp-long v3, v4, v10

    if-ltz v3, :cond_2

    .line 2658
    const-string/jumbo v3, " (running for "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2659
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2660
    const-string/jumbo v3, "ms)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2665
    .end local v4    # "currentMs":J
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2666
    const/4 v3, 0x1

    return v3

    .line 2662
    .restart local v4    # "currentMs":J
    :cond_2
    const-string/jumbo v3, " (running)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2669
    .end local v2    # "count":I
    .end local v4    # "currentMs":J
    .end local v6    # "maxDurationMs":J
    .end local v8    # "totalTimeMs":J
    :cond_3
    const/4 v3, 0x0

    return v3
.end method

.method private static final printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "timer"    # Landroid/os/BatteryStats$Timer;
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "which"    # I
    .param p6, "linePrefix"    # Ljava/lang/String;

    .prologue
    .line 2585
    if-eqz p1, :cond_4

    .line 2586
    move/from16 v0, p5

    invoke-static {p1, p2, p3, v0}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v8

    .line 2588
    .local v8, "totalTimeMillis":J
    move/from16 v0, p5

    invoke-virtual {p1, v0}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v2

    .line 2589
    .local v2, "count":I
    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-eqz v3, :cond_4

    .line 2590
    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2591
    invoke-static {p0, v8, v9}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 2592
    if-eqz p4, :cond_0

    .line 2593
    move-object/from16 v0, p4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2594
    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2596
    :cond_0
    const/16 v3, 0x28

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2597
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2598
    const-string/jumbo v3, " times)"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2599
    const-wide/16 v10, 0x3e8

    div-long v10, p2, v10

    invoke-virtual {p1, v10, v11}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v6

    .line 2600
    .local v6, "maxDurationMs":J
    const-wide/16 v10, 0x0

    cmp-long v3, v6, v10

    if-ltz v3, :cond_1

    .line 2601
    const-string/jumbo v3, " max="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2602
    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2604
    :cond_1
    invoke-virtual {p1}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2605
    const-wide/16 v10, 0x3e8

    div-long v10, p2, v10

    invoke-virtual {p1, v10, v11}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    move-result-wide v4

    .line 2606
    .local v4, "currentMs":J
    const-wide/16 v10, 0x0

    cmp-long v3, v4, v10

    if-ltz v3, :cond_3

    .line 2607
    const-string/jumbo v3, " (running for "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2608
    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2609
    const-string/jumbo v3, "ms)"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2615
    .end local v4    # "currentMs":J
    :cond_2
    :goto_0
    const-string/jumbo v3, ", "

    return-object v3

    .line 2611
    .restart local v4    # "currentMs":J
    :cond_3
    const-string/jumbo v3, " (running)"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2618
    .end local v2    # "count":I
    .end local v4    # "currentMs":J
    .end local v6    # "maxDurationMs":J
    .end local v8    # "totalTimeMillis":J
    :cond_4
    return-object p6
.end method

.method private static final printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "timer"    # Landroid/os/BatteryStats$Timer;
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "which"    # I
    .param p6, "linePrefix"    # Ljava/lang/String;

    .prologue
    .line 2685
    const-wide/16 v10, 0x0

    .line 2686
    .local v10, "totalTimeMicros":J
    const/4 v4, 0x0

    .line 2687
    .local v4, "count":I
    const-wide/16 v8, -0x1

    .line 2688
    .local v8, "max":J
    const-wide/16 v6, -0x1

    .line 2689
    .local v6, "current":J
    if-eqz p1, :cond_0

    .line 2690
    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    move/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v10

    .line 2691
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v4

    .line 2692
    const-wide/16 v12, 0x3e8

    div-long v12, p2, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    move-result-wide v6

    .line 2693
    const-wide/16 v12, 0x3e8

    div-long v12, p2, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v8

    .line 2695
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2696
    const-wide/16 v12, 0x1f4

    add-long/2addr v12, v10

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2697
    const/16 v5, 0x2c

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2698
    if-eqz p4, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v12, ","

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2699
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2700
    const/16 v5, 0x2c

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2701
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2702
    const/16 v5, 0x2c

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2703
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2704
    const-string/jumbo v5, ","

    return-object v5

    .line 2698
    :cond_1
    const-string/jumbo v5, ""

    goto :goto_0
.end method

.method private printmAh(Ljava/io/PrintWriter;D)V
    .locals 2
    .param p1, "printer"    # Ljava/io/PrintWriter;
    .param p2, "power"    # D

    .prologue
    .line 3426
    invoke-static {p2, p3}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3425
    return-void
.end method

.method private printmAh(Ljava/lang/StringBuilder;D)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "power"    # D

    .prologue
    .line 3430
    invoke-static {p2, p3}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3429
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
    .line 2898
    invoke-static {p1}, Lcom/android/internal/os/BatteryStatsHelper;->checkWifiOnly(Landroid/content/Context;)Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/os/BatteryStats;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZ)V

    .line 2897
    return-void
.end method

.method public final dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZ)V
    .locals 196
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "which"    # I
    .param p4, "reqUid"    # I
    .param p5, "wifiOnly"    # Z

    .prologue
    .line 2908
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const-wide/16 v12, 0x3e8

    mul-long v118, v8, v12

    .line 2909
    .local v118, "rawUptime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-wide/16 v12, 0x3e8

    mul-long v10, v8, v12

    .line 2910
    .local v10, "rawRealtime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v118

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v28

    .line 2911
    .local v28, "batteryUptime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v118

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v168

    .line 2912
    .local v168, "whichBatteryUptime":J
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v162

    .line 2913
    .local v162, "whichBatteryRealtime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v118

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    move-result-wide v166

    .line 2914
    .local v166, "whichBatteryScreenOffUptime":J
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    move-result-wide v164

    .line 2916
    .local v164, "whichBatteryScreenOffRealtime":J
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->computeRealtime(JI)J

    move-result-wide v140

    .line 2917
    .local v140, "totalRealtime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v118

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeUptime(JI)J

    move-result-wide v148

    .line 2918
    .local v148, "totalUptime":J
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v120

    .line 2919
    .local v120, "screenOnTime":J
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->getInteractiveTime(JI)J

    move-result-wide v66

    .line 2920
    .local v66, "interactiveTime":J
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->getPowerSaveModeEnabledTime(JI)J

    move-result-wide v112

    .line 2921
    .local v112, "powerSaveModeEnabledTime":J
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v10, v11, v1}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v42

    .line 2923
    .local v42, "deviceIdleModeLightTime":J
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v10, v11, v1}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v40

    .line 2925
    .local v40, "deviceIdleModeFullTime":J
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v10, v11, v1}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v46

    .line 2927
    .local v46, "deviceLightIdlingTime":J
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v10, v11, v1}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v44

    .line 2929
    .local v44, "deviceIdlingTime":J
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getNumConnectivityChange(I)I

    move-result v38

    .line 2930
    .local v38, "connChanges":I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v108

    .line 2931
    .local v108, "phoneOnTime":J
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCoulombCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v48

    .line 2932
    .local v48, "dischargeCount":J
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeScreenOffCoulombCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v50

    .line 2935
    .local v50, "dischargeScreenOffCount":J
    new-instance v117, Ljava/lang/StringBuilder;

    const/16 v4, 0x80

    move-object/from16 v0, v117

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2937
    .local v117, "sb":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v151

    .line 2938
    .local v151, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v151 .. v151}, Landroid/util/SparseArray;->size()I

    move-result v24

    .line 2940
    .local v24, "NU":I
    sget-object v4, Landroid/os/BatteryStats;->STAT_NAMES:[Ljava/lang/String;

    aget-object v6, v4, p3

    .line 2943
    .local v6, "category":Ljava/lang/String;
    const-string/jumbo v7, "bt"

    const/16 v4, 0x9

    new-array v8, v4, [Ljava/lang/Object;

    .line 2944
    if-nez p3, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_0
    const/4 v9, 0x0

    aput-object v4, v8, v9

    .line 2945
    const-wide/16 v12, 0x3e8

    div-long v12, v162, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v9, 0x1

    aput-object v4, v8, v9

    const-wide/16 v12, 0x3e8

    div-long v12, v168, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v9, 0x2

    aput-object v4, v8, v9

    .line 2946
    const-wide/16 v12, 0x3e8

    div-long v12, v140, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v9, 0x3

    aput-object v4, v8, v9

    const-wide/16 v12, 0x3e8

    div-long v12, v148, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v9, 0x4

    aput-object v4, v8, v9

    .line 2947
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartClockTime()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v9, 0x5

    aput-object v4, v8, v9

    .line 2948
    const-wide/16 v12, 0x3e8

    div-long v12, v164, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v9, 0x6

    aput-object v4, v8, v9

    const-wide/16 v12, 0x3e8

    div-long v12, v166, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v9, 0x7

    aput-object v4, v8, v9

    .line 2949
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getEstimatedBatteryCapacity()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v9, 0x8

    aput-object v4, v8, v9

    .line 2943
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v4, v6, v7, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2953
    const-wide/16 v56, 0x0

    .line 2954
    .local v56, "fullWakeLockTimeTotal":J
    const-wide/16 v106, 0x0

    .line 2956
    .local v106, "partialWakeLockTimeTotal":J
    const/16 v73, 0x0

    .local v73, "iu":I
    :goto_1
    move/from16 v0, v73

    move/from16 v1, v24

    if-ge v0, v1, :cond_4

    .line 2957
    move-object/from16 v0, v151

    move/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v150

    check-cast v150, Landroid/os/BatteryStats$Uid;

    .line 2960
    .local v150, "u":Landroid/os/BatteryStats$Uid;
    invoke-virtual/range {v150 .. v150}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v159

    .line 2961
    .local v159, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-virtual/range {v159 .. v159}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v74, v4, -0x1

    .local v74, "iw":I
    :goto_2
    if-ltz v74, :cond_3

    .line 2962
    move-object/from16 v0, v159

    move/from16 v1, v74

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v187

    check-cast v187, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 2964
    .local v187, "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    const/4 v4, 0x1

    move-object/from16 v0, v187

    invoke-virtual {v0, v4}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v58

    .line 2965
    .local v58, "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v58, :cond_0

    .line 2966
    move-object/from16 v0, v58

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v8

    add-long v56, v56, v8

    .line 2970
    :cond_0
    const/4 v4, 0x0

    move-object/from16 v0, v187

    invoke-virtual {v0, v4}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v105

    .line 2971
    .local v105, "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v105, :cond_1

    .line 2972
    move-object/from16 v0, v105

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v8

    add-long v106, v106, v8

    .line 2961
    :cond_1
    add-int/lit8 v74, v74, -0x1

    goto :goto_2

    .line 2944
    .end local v56    # "fullWakeLockTimeTotal":J
    .end local v58    # "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    .end local v73    # "iu":I
    .end local v74    # "iw":I
    .end local v105    # "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    .end local v106    # "partialWakeLockTimeTotal":J
    .end local v150    # "u":Landroid/os/BatteryStats$Uid;
    .end local v159    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v187    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    :cond_2
    const-string/jumbo v4, "N/A"

    goto/16 :goto_0

    .line 2956
    .restart local v56    # "fullWakeLockTimeTotal":J
    .restart local v73    # "iu":I
    .restart local v74    # "iw":I
    .restart local v106    # "partialWakeLockTimeTotal":J
    .restart local v150    # "u":Landroid/os/BatteryStats$Uid;
    .restart local v159    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_3
    add-int/lit8 v73, v73, 0x1

    goto :goto_1

    .line 2979
    .end local v74    # "iw":I
    .end local v150    # "u":Landroid/os/BatteryStats$Uid;
    .end local v159    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_4
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v92

    .line 2980
    .local v92, "mobileRxTotalBytes":J
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v96

    .line 2981
    .local v96, "mobileTxTotalBytes":J
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v182

    .line 2982
    .local v182, "wifiRxTotalBytes":J
    const/4 v4, 0x3

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v190

    .line 2983
    .local v190, "wifiTxTotalBytes":J
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v94

    .line 2984
    .local v94, "mobileRxTotalPackets":J
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v98

    .line 2985
    .local v98, "mobileTxTotalPackets":J
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v184

    .line 2986
    .local v184, "wifiRxTotalPackets":J
    const/4 v4, 0x3

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v192

    .line 2987
    .local v192, "wifiTxTotalPackets":J
    const/4 v4, 0x4

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v34

    .line 2988
    .local v34, "btRxTotalBytes":J
    const/4 v4, 0x5

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v36

    .line 2989
    .local v36, "btTxTotalBytes":J
    const-string/jumbo v4, "gn"

    const/16 v7, 0xa

    new-array v7, v7, [Ljava/lang/Object;

    .line 2990
    invoke-static/range {v92 .. v93}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static/range {v96 .. v97}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static/range {v182 .. v183}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    invoke-static/range {v190 .. v191}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v7, v9

    .line 2991
    invoke-static/range {v94 .. v95}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x4

    aput-object v8, v7, v9

    invoke-static/range {v98 .. v99}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x5

    aput-object v8, v7, v9

    invoke-static/range {v184 .. v185}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x6

    aput-object v8, v7, v9

    invoke-static/range {v192 .. v193}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x7

    aput-object v8, v7, v9

    .line 2992
    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v9, 0x8

    aput-object v8, v7, v9

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v9, 0x9

    aput-object v8, v7, v9

    .line 2989
    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v8, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2995
    const-string/jumbo v7, "gmcd"

    .line 2996
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v8

    .line 2995
    const/4 v5, 0x0

    move-object/from16 v4, p2

    move/from16 v9, p3

    invoke-static/range {v4 .. v9}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 2999
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    move-result-wide v174

    .line 3000
    .local v174, "wifiOnTime":J
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v180

    .line 3001
    .local v180, "wifiRunningTime":J
    const-string/jumbo v4, "gwfl"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const-wide/16 v8, 0x3e8

    div-long v8, v174, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 3002
    const-wide/16 v8, 0x3e8

    div-long v8, v180, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v7, v9

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x4

    aput-object v8, v7, v9

    .line 3001
    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v8, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3004
    const-string/jumbo v7, "gwfcd"

    .line 3005
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v8

    .line 3004
    const/4 v5, 0x0

    move-object/from16 v4, p2

    move/from16 v9, p3

    invoke-static/range {v4 .. v9}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 3008
    const-string/jumbo v7, "gble"

    .line 3009
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v8

    .line 3008
    const/4 v5, 0x0

    move-object/from16 v4, p2

    move/from16 v9, p3

    invoke-static/range {v4 .. v9}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 3012
    const-string/jumbo v4, "m"

    const/16 v7, 0x15

    new-array v7, v7, [Ljava/lang/Object;

    .line 3013
    const-wide/16 v8, 0x3e8

    div-long v8, v120, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-wide/16 v8, 0x3e8

    div-long v8, v108, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 3014
    const-wide/16 v8, 0x3e8

    div-long v8, v56, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    const-wide/16 v8, 0x3e8

    div-long v8, v106, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v7, v9

    .line 3015
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v8

    const-wide/16 v12, 0x3e8

    div-long/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x4

    aput-object v8, v7, v9

    .line 3016
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveAdjustedTime(I)J

    move-result-wide v8

    const-wide/16 v12, 0x3e8

    div-long/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x5

    aput-object v8, v7, v9

    const-wide/16 v8, 0x3e8

    div-long v8, v66, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x6

    aput-object v8, v7, v9

    .line 3017
    const-wide/16 v8, 0x3e8

    div-long v8, v112, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x7

    aput-object v8, v7, v9

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0x8

    aput-object v8, v7, v9

    const-wide/16 v8, 0x3e8

    div-long v8, v40, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v9, 0x9

    aput-object v8, v7, v9

    .line 3018
    const/4 v8, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v8, v1}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0xa

    aput-object v8, v7, v9

    const-wide/16 v8, 0x3e8

    div-long v8, v44, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v9, 0xb

    aput-object v8, v7, v9

    .line 3019
    const/4 v8, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v8, v1}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0xc

    aput-object v8, v7, v9

    .line 3020
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveCount(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0xd

    aput-object v8, v7, v9

    .line 3021
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveUnknownTime(I)J

    move-result-wide v8

    const-wide/16 v12, 0x3e8

    div-long/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v9, 0xe

    aput-object v8, v7, v9

    const-wide/16 v8, 0x3e8

    div-long v8, v42, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v9, 0xf

    aput-object v8, v7, v9

    .line 3022
    const/4 v8, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v8, v1}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0x10

    aput-object v8, v7, v9

    const-wide/16 v8, 0x3e8

    div-long v8, v46, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v9, 0x11

    aput-object v8, v7, v9

    .line 3023
    const/4 v8, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v8, v1}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0x12

    aput-object v8, v7, v9

    .line 3024
    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v9, 0x13

    aput-object v8, v7, v9

    .line 3025
    const/4 v8, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v9, 0x14

    aput-object v8, v7, v9

    .line 3012
    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v8, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3028
    const/4 v4, 0x5

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v26, v0

    .line 3029
    .local v26, "args":[Ljava/lang/Object;
    const/16 v63, 0x0

    .local v63, "i":I
    :goto_3
    const/4 v4, 0x5

    move/from16 v0, v63

    if-ge v0, v4, :cond_5

    .line 3030
    move-object/from16 v0, p0

    move/from16 v1, v63

    move/from16 v2, p3

    invoke-virtual {v0, v1, v10, v11, v2}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    move-result-wide v8

    const-wide/16 v12, 0x3e8

    div-long/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v26, v63

    .line 3029
    add-int/lit8 v63, v63, 0x1

    goto :goto_3

    .line 3032
    :cond_5
    const-string/jumbo v4, "br"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-static {v0, v7, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3035
    const/4 v4, 0x5

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v26, v0

    .line 3036
    const/16 v63, 0x0

    :goto_4
    const/4 v4, 0x5

    move/from16 v0, v63

    if-ge v0, v4, :cond_6

    .line 3037
    move-object/from16 v0, p0

    move/from16 v1, v63

    move/from16 v2, p3

    invoke-virtual {v0, v1, v10, v11, v2}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v8

    const-wide/16 v12, 0x3e8

    div-long/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v26, v63

    .line 3036
    add-int/lit8 v63, v63, 0x1

    goto :goto_4

    .line 3039
    :cond_6
    const-string/jumbo v4, "sgt"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-static {v0, v7, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3040
    const-string/jumbo v4, "sst"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 3041
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->getPhoneSignalScanningTime(JI)J

    move-result-wide v8

    const-wide/16 v12, 0x3e8

    div-long/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 3040
    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v8, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3042
    const/16 v63, 0x0

    :goto_5
    const/4 v4, 0x5

    move/from16 v0, v63

    if-ge v0, v4, :cond_7

    .line 3043
    move-object/from16 v0, p0

    move/from16 v1, v63

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getPhoneSignalStrengthCount(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v26, v63

    .line 3042
    add-int/lit8 v63, v63, 0x1

    goto :goto_5

    .line 3045
    :cond_7
    const-string/jumbo v4, "sgc"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-static {v0, v7, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3048
    const/16 v4, 0x11

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v26, v0

    .line 3049
    const/16 v63, 0x0

    :goto_6
    const/16 v4, 0x11

    move/from16 v0, v63

    if-ge v0, v4, :cond_8

    .line 3050
    move-object/from16 v0, p0

    move/from16 v1, v63

    move/from16 v2, p3

    invoke-virtual {v0, v1, v10, v11, v2}, Landroid/os/BatteryStats;->getPhoneDataConnectionTime(IJI)J

    move-result-wide v8

    const-wide/16 v12, 0x3e8

    div-long/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v26, v63

    .line 3049
    add-int/lit8 v63, v63, 0x1

    goto :goto_6

    .line 3052
    :cond_8
    const-string/jumbo v4, "dct"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-static {v0, v7, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3053
    const/16 v63, 0x0

    :goto_7
    const/16 v4, 0x11

    move/from16 v0, v63

    if-ge v0, v4, :cond_9

    .line 3054
    move-object/from16 v0, p0

    move/from16 v1, v63

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getPhoneDataConnectionCount(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v26, v63

    .line 3053
    add-int/lit8 v63, v63, 0x1

    goto :goto_7

    .line 3056
    :cond_9
    const-string/jumbo v4, "dcc"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-static {v0, v7, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3059
    const/16 v4, 0x8

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v26, v0

    .line 3060
    const/16 v63, 0x0

    :goto_8
    const/16 v4, 0x8

    move/from16 v0, v63

    if-ge v0, v4, :cond_a

    .line 3061
    move-object/from16 v0, p0

    move/from16 v1, v63

    move/from16 v2, p3

    invoke-virtual {v0, v1, v10, v11, v2}, Landroid/os/BatteryStats;->getWifiStateTime(IJI)J

    move-result-wide v8

    const-wide/16 v12, 0x3e8

    div-long/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v26, v63

    .line 3060
    add-int/lit8 v63, v63, 0x1

    goto :goto_8

    .line 3063
    :cond_a
    const-string/jumbo v4, "wst"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-static {v0, v7, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3064
    const/16 v63, 0x0

    :goto_9
    const/16 v4, 0x8

    move/from16 v0, v63

    if-ge v0, v4, :cond_b

    .line 3065
    move-object/from16 v0, p0

    move/from16 v1, v63

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getWifiStateCount(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v26, v63

    .line 3064
    add-int/lit8 v63, v63, 0x1

    goto :goto_9

    .line 3067
    :cond_b
    const-string/jumbo v4, "wsc"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-static {v0, v7, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3070
    const/16 v4, 0xd

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v26, v0

    .line 3071
    const/16 v63, 0x0

    :goto_a
    const/16 v4, 0xd

    move/from16 v0, v63

    if-ge v0, v4, :cond_c

    .line 3072
    move-object/from16 v0, p0

    move/from16 v1, v63

    move/from16 v2, p3

    invoke-virtual {v0, v1, v10, v11, v2}, Landroid/os/BatteryStats;->getWifiSupplStateTime(IJI)J

    move-result-wide v8

    const-wide/16 v12, 0x3e8

    div-long/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v26, v63

    .line 3071
    add-int/lit8 v63, v63, 0x1

    goto :goto_a

    .line 3074
    :cond_c
    const-string/jumbo v4, "wsst"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-static {v0, v7, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3075
    const/16 v63, 0x0

    :goto_b
    const/16 v4, 0xd

    move/from16 v0, v63

    if-ge v0, v4, :cond_d

    .line 3076
    move-object/from16 v0, p0

    move/from16 v1, v63

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getWifiSupplStateCount(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v26, v63

    .line 3075
    add-int/lit8 v63, v63, 0x1

    goto :goto_b

    .line 3078
    :cond_d
    const-string/jumbo v4, "wssc"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-static {v0, v7, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3081
    const/4 v4, 0x5

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v26, v0

    .line 3082
    const/16 v63, 0x0

    :goto_c
    const/4 v4, 0x5

    move/from16 v0, v63

    if-ge v0, v4, :cond_e

    .line 3083
    move-object/from16 v0, p0

    move/from16 v1, v63

    move/from16 v2, p3

    invoke-virtual {v0, v1, v10, v11, v2}, Landroid/os/BatteryStats;->getWifiSignalStrengthTime(IJI)J

    move-result-wide v8

    const-wide/16 v12, 0x3e8

    div-long/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v26, v63

    .line 3082
    add-int/lit8 v63, v63, 0x1

    goto :goto_c

    .line 3085
    :cond_e
    const-string/jumbo v4, "wsgt"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-static {v0, v7, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3086
    const/16 v63, 0x0

    :goto_d
    const/4 v4, 0x5

    move/from16 v0, v63

    if-ge v0, v4, :cond_f

    .line 3087
    move-object/from16 v0, p0

    move/from16 v1, v63

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getWifiSignalStrengthCount(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v26, v63

    .line 3086
    add-int/lit8 v63, v63, 0x1

    goto :goto_d

    .line 3089
    :cond_f
    const-string/jumbo v4, "wsgc"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-static {v0, v7, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3091
    const/4 v4, 0x2

    move/from16 v0, p3

    if-ne v0, v4, :cond_10

    .line 3092
    const-string/jumbo v4, "lv"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 3093
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 3092
    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v8, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3096
    :cond_10
    const/4 v4, 0x2

    move/from16 v0, p3

    if-ne v0, v4, :cond_11

    .line 3097
    const-string/jumbo v4, "dc"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    .line 3098
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 3099
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 3100
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOn()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOff()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v7, v9

    .line 3101
    const-wide/16 v8, 0x3e8

    div-long v8, v48, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x4

    aput-object v8, v7, v9

    const-wide/16 v8, 0x3e8

    div-long v8, v50, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x5

    aput-object v8, v7, v9

    .line 3097
    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v8, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3110
    :goto_e
    if-gez p4, :cond_13

    .line 3111
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v77

    .line 3112
    .local v77, "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v77 .. v77}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_12

    .line 3113
    invoke-interface/range {v77 .. v77}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .local v53, "ent$iterator":Ljava/util/Iterator;
    :goto_f
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Ljava/util/Map$Entry;

    .line 3114
    .local v52, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    const/4 v4, 0x0

    move-object/from16 v0, v117

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3115
    invoke-interface/range {v52 .. v52}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/BatteryStats$Timer;

    const-string/jumbo v14, ""

    const/4 v12, 0x0

    move-object/from16 v8, v117

    move/from16 v13, p3

    invoke-static/range {v8 .. v14}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 3116
    const-string/jumbo v4, "kwl"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface/range {v52 .. v52}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 3117
    invoke-virtual/range {v117 .. v117}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 3116
    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v8, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_f

    .line 3103
    .end local v52    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v53    # "ent$iterator":Ljava/util/Iterator;
    .end local v77    # "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_11
    const-string/jumbo v4, "dc"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    .line 3104
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 3105
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceCharge()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    .line 3106
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceCharge()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v7, v9

    .line 3107
    const-wide/16 v8, 0x3e8

    div-long v8, v48, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x4

    aput-object v8, v7, v9

    const-wide/16 v8, 0x3e8

    div-long v8, v50, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x5

    aput-object v8, v7, v9

    .line 3103
    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v8, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_e

    .line 3120
    .restart local v77    # "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v160

    .line 3121
    .local v160, "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v160 .. v160}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_13

    .line 3122
    invoke-interface/range {v160 .. v160}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53    # "ent$iterator":Ljava/util/Iterator;
    :goto_10
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Ljava/util/Map$Entry;

    .line 3125
    .restart local v52    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v52 .. v52}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Timer;

    move/from16 v0, p3

    invoke-virtual {v4, v10, v11, v0}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v146

    .line 3126
    .local v146, "totalTimeMicros":J
    invoke-interface/range {v52 .. v52}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Timer;

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v39

    .line 3127
    .local v39, "count":I
    const-string/jumbo v7, "wr"

    const/4 v4, 0x3

    new-array v8, v4, [Ljava/lang/Object;

    .line 3128
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\""

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface/range {v52 .. v52}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v9, "\""

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    aput-object v4, v8, v9

    const-wide/16 v12, 0x1f4

    add-long v12, v12, v146

    const-wide/16 v16, 0x3e8

    div-long v12, v12, v16

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v9, 0x1

    aput-object v4, v8, v9

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v9, 0x2

    aput-object v4, v8, v9

    .line 3127
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v4, v6, v7, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_10

    .line 3133
    .end local v39    # "count":I
    .end local v52    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v53    # "ent$iterator":Ljava/util/Iterator;
    .end local v77    # "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v146    # "totalTimeMicros":J
    .end local v160    # "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_13
    new-instance v62, Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v4, 0x0

    move-object/from16 v0, v62

    move-object/from16 v1, p1

    move/from16 v2, p5

    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;ZZ)V

    .line 3134
    .local v62, "helper":Lcom/android/internal/os/BatteryStatsHelper;
    move-object/from16 v0, v62

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    .line 3135
    const/4 v4, -0x1

    move-object/from16 v0, v62

    move/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    .line 3136
    invoke-virtual/range {v62 .. v62}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v126

    .line 3137
    .local v126, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    if-eqz v126, :cond_14

    invoke-interface/range {v126 .. v126}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_14

    .line 3138
    const-string/jumbo v4, "pws"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    .line 3139
    invoke-virtual/range {v62 .. v62}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 3140
    invoke-virtual/range {v62 .. v62}, Lcom/android/internal/os/BatteryStatsHelper;->getComputedPower()D

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 3141
    invoke-virtual/range {v62 .. v62}, Lcom/android/internal/os/BatteryStatsHelper;->getMinDrainedPower()D

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    .line 3142
    invoke-virtual/range {v62 .. v62}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxDrainedPower()D

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v7, v9

    .line 3138
    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v8, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3143
    const/16 v63, 0x0

    :goto_11
    invoke-interface/range {v126 .. v126}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v63

    if-ge v0, v4, :cond_14

    .line 3144
    move-object/from16 v0, v126

    move/from16 v1, v63

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/internal/os/BatterySipper;

    .line 3145
    .local v27, "bs":Lcom/android/internal/os/BatterySipper;
    const/4 v5, 0x0

    .line 3147
    .local v5, "uid":I
    invoke-static {}, Landroid/os/BatteryStats;->-getcom-android-internal-os-BatterySipper$DrainTypeSwitchesValues()[I

    move-result-object v4

    move-object/from16 v0, v27

    iget-object v7, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v7}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v7

    aget v4, v4, v7

    packed-switch v4, :pswitch_data_0

    .line 3187
    const-string/jumbo v78, "???"

    .line 3189
    .local v78, "label":Ljava/lang/String;
    :goto_12
    const-string/jumbo v4, "pwi"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v78, v7, v8

    .line 3190
    move-object/from16 v0, v27

    iget-wide v8, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    invoke-static {v8, v9}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 3189
    move-object/from16 v0, p2

    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3143
    add-int/lit8 v63, v63, 0x1

    goto :goto_11

    .line 3149
    .end local v78    # "label":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v78, "idle"

    .restart local v78    # "label":Ljava/lang/String;
    goto :goto_12

    .line 3152
    .end local v78    # "label":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v78, "cell"

    .restart local v78    # "label":Ljava/lang/String;
    goto :goto_12

    .line 3155
    .end local v78    # "label":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v78, "phone"

    .restart local v78    # "label":Ljava/lang/String;
    goto :goto_12

    .line 3158
    .end local v78    # "label":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v78, "wifi"

    .restart local v78    # "label":Ljava/lang/String;
    goto :goto_12

    .line 3161
    .end local v78    # "label":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v78, "blue"

    .restart local v78    # "label":Ljava/lang/String;
    goto :goto_12

    .line 3164
    .end local v78    # "label":Ljava/lang/String;
    :pswitch_5
    const-string/jumbo v78, "scrn"

    .restart local v78    # "label":Ljava/lang/String;
    goto :goto_12

    .line 3167
    .end local v78    # "label":Ljava/lang/String;
    :pswitch_6
    const-string/jumbo v78, "flashlight"

    .restart local v78    # "label":Ljava/lang/String;
    goto :goto_12

    .line 3170
    .end local v78    # "label":Ljava/lang/String;
    :pswitch_7
    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    .line 3171
    const-string/jumbo v78, "uid"

    .restart local v78    # "label":Ljava/lang/String;
    goto :goto_12

    .line 3174
    .end local v78    # "label":Ljava/lang/String;
    :pswitch_8
    move-object/from16 v0, v27

    iget v4, v0, Lcom/android/internal/os/BatterySipper;->userId:I

    const/4 v7, 0x0

    invoke-static {v4, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    .line 3175
    const-string/jumbo v78, "user"

    .restart local v78    # "label":Ljava/lang/String;
    goto :goto_12

    .line 3178
    .end local v78    # "label":Ljava/lang/String;
    :pswitch_9
    const-string/jumbo v78, "unacc"

    .restart local v78    # "label":Ljava/lang/String;
    goto :goto_12

    .line 3181
    .end local v78    # "label":Ljava/lang/String;
    :pswitch_a
    const-string/jumbo v78, "over"

    .restart local v78    # "label":Ljava/lang/String;
    goto :goto_12

    .line 3184
    .end local v78    # "label":Ljava/lang/String;
    :pswitch_b
    const-string/jumbo v78, "camera"

    .restart local v78    # "label":Ljava/lang/String;
    goto :goto_12

    .line 3194
    .end local v5    # "uid":I
    .end local v27    # "bs":Lcom/android/internal/os/BatterySipper;
    .end local v78    # "label":Ljava/lang/String;
    :cond_14
    const/16 v73, 0x0

    :goto_13
    move/from16 v0, v73

    move/from16 v1, v24

    if-ge v0, v1, :cond_37

    .line 3195
    move-object/from16 v0, v151

    move/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 3196
    .restart local v5    # "uid":I
    if-ltz p4, :cond_16

    move/from16 v0, p4

    if-eq v5, v0, :cond_16

    .line 3194
    :cond_15
    add-int/lit8 v73, v73, 0x1

    goto :goto_13

    .line 3199
    :cond_16
    move-object/from16 v0, v151

    move/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v150

    check-cast v150, Landroid/os/BatteryStats$Uid;

    .line 3202
    .restart local v150    # "u":Landroid/os/BatteryStats$Uid;
    const/4 v4, 0x0

    move-object/from16 v0, v150

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v84

    .line 3203
    .local v84, "mobileBytesRx":J
    const/4 v4, 0x1

    move-object/from16 v0, v150

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v86

    .line 3204
    .local v86, "mobileBytesTx":J
    const/4 v4, 0x2

    move-object/from16 v0, v150

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v170

    .line 3205
    .local v170, "wifiBytesRx":J
    const/4 v4, 0x3

    move-object/from16 v0, v150

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v172

    .line 3206
    .local v172, "wifiBytesTx":J
    const/4 v4, 0x0

    move-object/from16 v0, v150

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v88

    .line 3207
    .local v88, "mobilePacketsRx":J
    const/4 v4, 0x1

    move-object/from16 v0, v150

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v90

    .line 3208
    .local v90, "mobilePacketsTx":J
    move-object/from16 v0, v150

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v82

    .line 3209
    .local v82, "mobileActiveTime":J
    move-object/from16 v0, v150

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v80

    .line 3210
    .local v80, "mobileActiveCount":I
    move-object/from16 v0, v150

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioApWakeupCount(I)J

    move-result-wide v100

    .line 3211
    .local v100, "mobileWakeup":J
    const/4 v4, 0x2

    move-object/from16 v0, v150

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v176

    .line 3212
    .local v176, "wifiPacketsRx":J
    const/4 v4, 0x3

    move-object/from16 v0, v150

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v178

    .line 3213
    .local v178, "wifiPacketsTx":J
    move-object/from16 v0, v150

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getWifiRadioApWakeupCount(I)J

    move-result-wide v194

    .line 3214
    .local v194, "wifiWakeup":J
    const/4 v4, 0x4

    move-object/from16 v0, v150

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v30

    .line 3215
    .local v30, "btBytesRx":J
    const/4 v4, 0x5

    move-object/from16 v0, v150

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v32

    .line 3216
    .local v32, "btBytesTx":J
    const-wide/16 v8, 0x0

    cmp-long v4, v84, v8

    if-gtz v4, :cond_17

    const-wide/16 v8, 0x0

    cmp-long v4, v86, v8

    if-lez v4, :cond_1c

    .line 3220
    :cond_17
    :goto_14
    const-string/jumbo v4, "nt"

    const/16 v7, 0xe

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static/range {v84 .. v85}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static/range {v86 .. v87}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 3221
    invoke-static/range {v170 .. v171}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    invoke-static/range {v172 .. v173}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v7, v9

    .line 3222
    invoke-static/range {v88 .. v89}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x4

    aput-object v8, v7, v9

    invoke-static/range {v90 .. v91}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x5

    aput-object v8, v7, v9

    .line 3223
    invoke-static/range {v176 .. v177}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x6

    aput-object v8, v7, v9

    invoke-static/range {v178 .. v179}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x7

    aput-object v8, v7, v9

    .line 3224
    invoke-static/range {v82 .. v83}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v9, 0x8

    aput-object v8, v7, v9

    invoke-static/range {v80 .. v80}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0x9

    aput-object v8, v7, v9

    .line 3225
    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v9, 0xa

    aput-object v8, v7, v9

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v9, 0xb

    aput-object v8, v7, v9

    invoke-static/range {v100 .. v101}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v9, 0xc

    aput-object v8, v7, v9

    invoke-static/range {v194 .. v195}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v9, 0xd

    aput-object v8, v7, v9

    .line 3220
    move-object/from16 v0, p2

    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3229
    :cond_18
    const-string/jumbo v7, "mcd"

    .line 3230
    invoke-virtual/range {v150 .. v150}, Landroid/os/BatteryStats$Uid;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v8

    move-object/from16 v4, p2

    move/from16 v9, p3

    .line 3229
    invoke-static/range {v4 .. v9}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 3233
    move-object/from16 v0, v150

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v60

    .line 3234
    .local v60, "fullWifiLockOnTime":J
    move-object/from16 v0, v150

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v188

    .line 3235
    .local v188, "wifiScanTime":J
    move-object/from16 v0, v150

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getWifiScanCount(I)I

    move-result v186

    .line 3236
    .local v186, "wifiScanCount":I
    move-object/from16 v0, v150

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v152

    .line 3237
    .local v152, "uidWifiRunningTime":J
    const-wide/16 v8, 0x0

    cmp-long v4, v60, v8

    if-nez v4, :cond_19

    const-wide/16 v8, 0x0

    cmp-long v4, v188, v8

    if-eqz v4, :cond_1d

    .line 3239
    :cond_19
    :goto_15
    const-string/jumbo v4, "wfl"

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static/range {v188 .. v189}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 3240
    invoke-static/range {v152 .. v153}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    invoke-static/range {v186 .. v186}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v7, v9

    .line 3241
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x4

    aput-object v8, v7, v9

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x5

    aput-object v8, v7, v9

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x6

    aput-object v8, v7, v9

    .line 3239
    move-object/from16 v0, p2

    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3244
    :cond_1a
    const-string/jumbo v7, "wfcd"

    .line 3245
    invoke-virtual/range {v150 .. v150}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v8

    move-object/from16 v4, p2

    move/from16 v9, p3

    .line 3244
    invoke-static/range {v4 .. v9}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 3247
    const-string/jumbo v16, "blem"

    invoke-virtual/range {v150 .. v150}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v17

    move-object/from16 v13, p2

    move v14, v5

    move-object v15, v6

    move-wide/from16 v18, v10

    move/from16 v20, p3

    invoke-static/range {v13 .. v20}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    .line 3250
    const-string/jumbo v7, "ble"

    .line 3251
    invoke-virtual/range {v150 .. v150}, Landroid/os/BatteryStats$Uid;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v8

    move-object/from16 v4, p2

    move/from16 v9, p3

    .line 3250
    invoke-static/range {v4 .. v9}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 3253
    invoke-virtual/range {v150 .. v150}, Landroid/os/BatteryStats$Uid;->hasUserActivity()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 3254
    const/4 v4, 0x4

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v26, v0

    .line 3255
    const/16 v59, 0x0

    .line 3256
    .local v59, "hasData":Z
    const/16 v63, 0x0

    :goto_16
    const/4 v4, 0x4

    move/from16 v0, v63

    if-ge v0, v4, :cond_1e

    .line 3257
    move-object/from16 v0, v150

    move/from16 v1, v63

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v158

    .line 3258
    .local v158, "val":I
    invoke-static/range {v158 .. v158}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v26, v63

    .line 3259
    if-eqz v158, :cond_1b

    const/16 v59, 0x1

    .line 3256
    :cond_1b
    add-int/lit8 v63, v63, 0x1

    goto :goto_16

    .line 3216
    .end local v59    # "hasData":Z
    .end local v60    # "fullWifiLockOnTime":J
    .end local v152    # "uidWifiRunningTime":J
    .end local v158    # "val":I
    .end local v186    # "wifiScanCount":I
    .end local v188    # "wifiScanTime":J
    :cond_1c
    const-wide/16 v8, 0x0

    cmp-long v4, v170, v8

    if-gtz v4, :cond_17

    const-wide/16 v8, 0x0

    cmp-long v4, v172, v8

    if-gtz v4, :cond_17

    .line 3217
    const-wide/16 v8, 0x0

    cmp-long v4, v88, v8

    if-gtz v4, :cond_17

    const-wide/16 v8, 0x0

    cmp-long v4, v90, v8

    if-gtz v4, :cond_17

    const-wide/16 v8, 0x0

    cmp-long v4, v176, v8

    if-gtz v4, :cond_17

    .line 3218
    const-wide/16 v8, 0x0

    cmp-long v4, v178, v8

    if-gtz v4, :cond_17

    const-wide/16 v8, 0x0

    cmp-long v4, v82, v8

    if-gtz v4, :cond_17

    if-gtz v80, :cond_17

    .line 3219
    const-wide/16 v8, 0x0

    cmp-long v4, v30, v8

    if-gtz v4, :cond_17

    const-wide/16 v8, 0x0

    cmp-long v4, v32, v8

    if-gtz v4, :cond_17

    const-wide/16 v8, 0x0

    cmp-long v4, v100, v8

    if-gtz v4, :cond_17

    const-wide/16 v8, 0x0

    cmp-long v4, v194, v8

    if-lez v4, :cond_18

    goto/16 :goto_14

    .line 3237
    .restart local v60    # "fullWifiLockOnTime":J
    .restart local v152    # "uidWifiRunningTime":J
    .restart local v186    # "wifiScanCount":I
    .restart local v188    # "wifiScanTime":J
    :cond_1d
    if-nez v186, :cond_19

    .line 3238
    const-wide/16 v8, 0x0

    cmp-long v4, v152, v8

    if-eqz v4, :cond_1a

    goto/16 :goto_15

    .line 3261
    .restart local v59    # "hasData":Z
    :cond_1e
    if-eqz v59, :cond_1f

    .line 3262
    const-string/jumbo v4, "ua"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-static {v0, v5, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3266
    .end local v59    # "hasData":Z
    :cond_1f
    invoke-virtual/range {v150 .. v150}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v159

    .line 3267
    .restart local v159    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-virtual/range {v159 .. v159}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v74, v4, -0x1

    .restart local v74    # "iw":I
    :goto_17
    if-ltz v74, :cond_22

    .line 3268
    move-object/from16 v0, v159

    move/from16 v1, v74

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v187

    check-cast v187, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 3269
    .restart local v187    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    const-string/jumbo v14, ""

    .line 3270
    .local v14, "linePrefix":Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, v117

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3271
    const/4 v4, 0x1

    move-object/from16 v0, v187

    invoke-virtual {v0, v4}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v9

    .line 3272
    const-string/jumbo v12, "f"

    move-object/from16 v8, v117

    move/from16 v13, p3

    .line 3271
    invoke-static/range {v8 .. v14}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3273
    const/4 v4, 0x0

    move-object/from16 v0, v187

    invoke-virtual {v0, v4}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v9

    .line 3274
    const-string/jumbo v12, "p"

    move-object/from16 v8, v117

    move/from16 v13, p3

    .line 3273
    invoke-static/range {v8 .. v14}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3275
    const/4 v4, 0x2

    move-object/from16 v0, v187

    invoke-virtual {v0, v4}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v9

    .line 3276
    const-string/jumbo v12, "w"

    move-object/from16 v8, v117

    move/from16 v13, p3

    .line 3275
    invoke-static/range {v8 .. v14}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3279
    invoke-virtual/range {v117 .. v117}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_21

    .line 3280
    move-object/from16 v0, v159

    move/from16 v1, v74

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v81

    check-cast v81, Ljava/lang/String;

    .line 3281
    .local v81, "name":Ljava/lang/String;
    const/16 v4, 0x2c

    move-object/from16 v0, v81

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_20

    .line 3282
    const/16 v4, 0x2c

    const/16 v7, 0x5f

    move-object/from16 v0, v81

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v81

    .line 3284
    :cond_20
    const-string/jumbo v4, "wl"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v81, v7, v8

    invoke-virtual/range {v117 .. v117}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    move-object/from16 v0, p2

    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3267
    .end local v81    # "name":Ljava/lang/String;
    :cond_21
    add-int/lit8 v74, v74, -0x1

    goto/16 :goto_17

    .line 3288
    .end local v14    # "linePrefix":Ljava/lang/String;
    .end local v187    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    :cond_22
    invoke-virtual/range {v150 .. v150}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    move-result-object v132

    .line 3289
    .local v132, "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual/range {v132 .. v132}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v72, v4, -0x1

    .local v72, "isy":I
    :goto_18
    if-ltz v72, :cond_24

    .line 3290
    move-object/from16 v0, v132

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v133

    check-cast v133, Landroid/os/BatteryStats$Timer;

    .line 3292
    .local v133, "timer":Landroid/os/BatteryStats$Timer;
    move-object/from16 v0, v133

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v8

    const-wide/16 v12, 0x1f4

    add-long/2addr v8, v12

    const-wide/16 v12, 0x3e8

    div-long v144, v8, v12

    .line 3293
    .local v144, "totalTime":J
    move-object/from16 v0, v133

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v39

    .line 3294
    .restart local v39    # "count":I
    const-wide/16 v8, 0x0

    cmp-long v4, v144, v8

    if-eqz v4, :cond_23

    .line 3295
    const-string/jumbo v4, "sy"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    move-object/from16 v0, v132

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static/range {v144 .. v145}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    move-object/from16 v0, p2

    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3289
    :cond_23
    add-int/lit8 v72, v72, -0x1

    goto :goto_18

    .line 3299
    .end local v39    # "count":I
    .end local v133    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v144    # "totalTime":J
    :cond_24
    invoke-virtual/range {v150 .. v150}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    move-result-object v76

    .line 3300
    .local v76, "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual/range {v76 .. v76}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v64, v4, -0x1

    .local v64, "ij":I
    :goto_19
    if-ltz v64, :cond_26

    .line 3301
    move-object/from16 v0, v76

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v133

    check-cast v133, Landroid/os/BatteryStats$Timer;

    .line 3303
    .restart local v133    # "timer":Landroid/os/BatteryStats$Timer;
    move-object/from16 v0, v133

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v8

    const-wide/16 v12, 0x1f4

    add-long/2addr v8, v12

    const-wide/16 v12, 0x3e8

    div-long v144, v8, v12

    .line 3304
    .restart local v144    # "totalTime":J
    move-object/from16 v0, v133

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v39

    .line 3305
    .restart local v39    # "count":I
    const-wide/16 v8, 0x0

    cmp-long v4, v144, v8

    if-eqz v4, :cond_25

    .line 3306
    const-string/jumbo v4, "jb"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    move-object/from16 v0, v76

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static/range {v144 .. v145}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    move-object/from16 v0, p2

    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3300
    :cond_25
    add-int/lit8 v64, v64, -0x1

    goto :goto_19

    .line 3310
    .end local v39    # "count":I
    .end local v133    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v144    # "totalTime":J
    :cond_26
    const-string/jumbo v18, "fla"

    invoke-virtual/range {v150 .. v150}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v19

    move-object/from16 v15, p2

    move/from16 v16, v5

    move-object/from16 v17, v6

    move-wide/from16 v20, v10

    move/from16 v22, p3

    invoke-static/range {v15 .. v22}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    .line 3312
    const-string/jumbo v18, "cam"

    invoke-virtual/range {v150 .. v150}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v19

    move-object/from16 v15, p2

    move/from16 v16, v5

    move-object/from16 v17, v6

    move-wide/from16 v20, v10

    move/from16 v22, p3

    invoke-static/range {v15 .. v22}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    .line 3314
    const-string/jumbo v18, "vid"

    invoke-virtual/range {v150 .. v150}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v19

    move-object/from16 v15, p2

    move/from16 v16, v5

    move-object/from16 v17, v6

    move-wide/from16 v20, v10

    move/from16 v22, p3

    invoke-static/range {v15 .. v22}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    .line 3316
    const-string/jumbo v18, "aud"

    invoke-virtual/range {v150 .. v150}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v19

    move-object/from16 v15, p2

    move/from16 v16, v5

    move-object/from16 v17, v6

    move-wide/from16 v20, v10

    move/from16 v22, p3

    invoke-static/range {v15 .. v22}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    .line 3319
    invoke-virtual/range {v150 .. v150}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v124

    .line 3320
    .local v124, "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-virtual/range {v124 .. v124}, Landroid/util/SparseArray;->size()I

    move-result v23

    .line 3321
    .local v23, "NSE":I
    const/16 v70, 0x0

    .local v70, "ise":I
    :goto_1a
    move/from16 v0, v70

    move/from16 v1, v23

    if-ge v0, v1, :cond_28

    .line 3322
    move-object/from16 v0, v124

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v122

    check-cast v122, Landroid/os/BatteryStats$Uid$Sensor;

    .line 3323
    .local v122, "se":Landroid/os/BatteryStats$Uid$Sensor;
    move-object/from16 v0, v124

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v123

    .line 3324
    .local v123, "sensorNumber":I
    invoke-virtual/range {v122 .. v122}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v133

    .line 3325
    .restart local v133    # "timer":Landroid/os/BatteryStats$Timer;
    if-eqz v133, :cond_27

    .line 3327
    move-object/from16 v0, v133

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v8

    const-wide/16 v12, 0x1f4

    add-long/2addr v8, v12

    .line 3328
    const-wide/16 v12, 0x3e8

    .line 3327
    div-long v144, v8, v12

    .line 3329
    .restart local v144    # "totalTime":J
    move-object/from16 v0, v133

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v39

    .line 3330
    .restart local v39    # "count":I
    const-wide/16 v8, 0x0

    cmp-long v4, v144, v8

    if-eqz v4, :cond_27

    .line 3331
    const-string/jumbo v4, "sr"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static/range {v123 .. v123}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static/range {v144 .. v145}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    move-object/from16 v0, p2

    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3321
    .end local v39    # "count":I
    .end local v144    # "totalTime":J
    :cond_27
    add-int/lit8 v70, v70, 0x1

    goto :goto_1a

    .line 3336
    .end local v122    # "se":Landroid/os/BatteryStats$Uid$Sensor;
    .end local v123    # "sensorNumber":I
    .end local v133    # "timer":Landroid/os/BatteryStats$Timer;
    :cond_28
    const-string/jumbo v18, "vib"

    invoke-virtual/range {v150 .. v150}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v19

    move-object/from16 v15, p2

    move/from16 v16, v5

    move-object/from16 v17, v6

    move-wide/from16 v20, v10

    move/from16 v22, p3

    invoke-static/range {v15 .. v22}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    .line 3339
    const-string/jumbo v18, "fg"

    invoke-virtual/range {v150 .. v150}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v19

    move-object/from16 v15, p2

    move/from16 v16, v5

    move-object/from16 v17, v6

    move-wide/from16 v20, v10

    move/from16 v22, p3

    invoke-static/range {v15 .. v22}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    .line 3342
    const/4 v4, 0x6

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v131, v0

    .line 3343
    .local v131, "stateTimes":[Ljava/lang/Object;
    const-wide/16 v142, 0x0

    .line 3344
    .local v142, "totalStateTime":J
    const/16 v69, 0x0

    .local v69, "ips":I
    :goto_1b
    const/4 v4, 0x6

    move/from16 v0, v69

    if-ge v0, v4, :cond_29

    .line 3345
    move-object/from16 v0, v150

    move/from16 v1, v69

    move/from16 v2, p3

    invoke-virtual {v0, v1, v10, v11, v2}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v138

    .line 3346
    .local v138, "time":J
    add-long v142, v142, v138

    .line 3347
    const-wide/16 v8, 0x1f4

    add-long v8, v8, v138

    const-wide/16 v12, 0x3e8

    div-long/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v131, v69

    .line 3344
    add-int/lit8 v69, v69, 0x1

    goto :goto_1b

    .line 3349
    .end local v138    # "time":J
    :cond_29
    const-wide/16 v8, 0x0

    cmp-long v4, v142, v8

    if-lez v4, :cond_2a

    .line 3350
    const-string/jumbo v4, "st"

    move-object/from16 v0, p2

    move-object/from16 v1, v131

    invoke-static {v0, v5, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3353
    :cond_2a
    move-object/from16 v0, v150

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v154

    .line 3354
    .local v154, "userCpuTimeUs":J
    move-object/from16 v0, v150

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v134

    .line 3355
    .local v134, "systemCpuTimeUs":J
    move-object/from16 v0, v150

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getCpuPowerMaUs(I)J

    move-result-wide v110

    .line 3356
    .local v110, "powerCpuMaUs":J
    const-wide/16 v8, 0x0

    cmp-long v4, v154, v8

    if-gtz v4, :cond_2b

    const-wide/16 v8, 0x0

    cmp-long v4, v134, v8

    if-lez v4, :cond_2f

    .line 3357
    :cond_2b
    :goto_1c
    const-string/jumbo v4, "cpu"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const-wide/16 v8, 0x3e8

    div-long v8, v154, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-wide/16 v8, 0x3e8

    div-long v8, v134, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 3358
    const-wide/16 v8, 0x3e8

    div-long v8, v110, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    .line 3357
    move-object/from16 v0, p2

    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3362
    :cond_2c
    invoke-virtual/range {v150 .. v150}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v114

    .line 3363
    .local v114, "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-virtual/range {v114 .. v114}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v68, v4, -0x1

    .local v68, "ipr":I
    :goto_1d
    if-ltz v68, :cond_31

    .line 3364
    move-object/from16 v0, v114

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v116

    check-cast v116, Landroid/os/BatteryStats$Uid$Proc;

    .line 3366
    .local v116, "ps":Landroid/os/BatteryStats$Uid$Proc;
    move-object/from16 v0, v116

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v156

    .line 3367
    .local v156, "userMillis":J
    move-object/from16 v0, v116

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v136

    .line 3368
    .local v136, "systemMillis":J
    move-object/from16 v0, v116

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v54

    .line 3369
    .local v54, "foregroundMillis":J
    move-object/from16 v0, v116

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    move-result v130

    .line 3370
    .local v130, "starts":I
    move-object/from16 v0, v116

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    move-result v103

    .line 3371
    .local v103, "numCrashes":I
    move-object/from16 v0, v116

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    move-result v102

    .line 3373
    .local v102, "numAnrs":I
    const-wide/16 v8, 0x0

    cmp-long v4, v156, v8

    if-nez v4, :cond_2d

    const-wide/16 v8, 0x0

    cmp-long v4, v136, v8

    if-eqz v4, :cond_30

    .line 3375
    :cond_2d
    :goto_1e
    const-string/jumbo v4, "pr"

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    move-object/from16 v0, v114

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static/range {v156 .. v157}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 3376
    invoke-static/range {v136 .. v137}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    invoke-static/range {v54 .. v55}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v7, v9

    invoke-static/range {v130 .. v130}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x4

    aput-object v8, v7, v9

    invoke-static/range {v102 .. v102}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x5

    aput-object v8, v7, v9

    invoke-static/range {v103 .. v103}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x6

    aput-object v8, v7, v9

    .line 3375
    move-object/from16 v0, p2

    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3363
    :cond_2e
    add-int/lit8 v68, v68, -0x1

    goto/16 :goto_1d

    .line 3356
    .end local v54    # "foregroundMillis":J
    .end local v68    # "ipr":I
    .end local v102    # "numAnrs":I
    .end local v103    # "numCrashes":I
    .end local v114    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v116    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .end local v130    # "starts":I
    .end local v136    # "systemMillis":J
    .end local v156    # "userMillis":J
    :cond_2f
    const-wide/16 v8, 0x0

    cmp-long v4, v110, v8

    if-lez v4, :cond_2c

    goto/16 :goto_1c

    .line 3373
    .restart local v54    # "foregroundMillis":J
    .restart local v68    # "ipr":I
    .restart local v102    # "numAnrs":I
    .restart local v103    # "numCrashes":I
    .restart local v114    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .restart local v116    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .restart local v130    # "starts":I
    .restart local v136    # "systemMillis":J
    .restart local v156    # "userMillis":J
    :cond_30
    const-wide/16 v8, 0x0

    cmp-long v4, v54, v8

    if-nez v4, :cond_2d

    .line 3374
    if-nez v130, :cond_2d

    if-nez v102, :cond_2d

    if-eqz v103, :cond_2e

    goto :goto_1e

    .line 3381
    .end local v54    # "foregroundMillis":J
    .end local v102    # "numAnrs":I
    .end local v103    # "numCrashes":I
    .end local v116    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .end local v130    # "starts":I
    .end local v136    # "systemMillis":J
    .end local v156    # "userMillis":J
    :cond_31
    invoke-virtual/range {v150 .. v150}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v104

    .line 3382
    .local v104, "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    invoke-virtual/range {v104 .. v104}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v65, v4, -0x1

    .local v65, "ipkg":I
    :goto_1f
    if-ltz v65, :cond_15

    .line 3383
    move-object/from16 v0, v104

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v115

    check-cast v115, Landroid/os/BatteryStats$Uid$Pkg;

    .line 3384
    .local v115, "ps":Landroid/os/BatteryStats$Uid$Pkg;
    const/16 v161, 0x0

    .line 3385
    .local v161, "wakeups":I
    invoke-virtual/range {v115 .. v115}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v25

    .line 3386
    .local v25, "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v75, v4, -0x1

    .local v75, "iwa":I
    :goto_20
    if-ltz v75, :cond_32

    .line 3387
    move-object/from16 v0, v25

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Counter;

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v39

    .line 3388
    .restart local v39    # "count":I
    add-int v161, v161, v39

    .line 3389
    move-object/from16 v0, v25

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v7, 0x2c

    const/16 v8, 0x5f

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v81

    .line 3390
    .restart local v81    # "name":Ljava/lang/String;
    const-string/jumbo v4, "wua"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v81, v7, v8

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    move-object/from16 v0, p2

    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3386
    add-int/lit8 v75, v75, -0x1

    goto :goto_20

    .line 3392
    .end local v39    # "count":I
    .end local v81    # "name":Ljava/lang/String;
    :cond_32
    invoke-virtual/range {v115 .. v115}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    move-result-object v125

    .line 3393
    .local v125, "serviceStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    invoke-virtual/range {v125 .. v125}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v71, v4, -0x1

    .local v71, "isvc":I
    :goto_21
    if-ltz v71, :cond_36

    .line 3394
    move-object/from16 v0, v125

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v127

    check-cast v127, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    .line 3395
    .local v127, "ss":Landroid/os/BatteryStats$Uid$Pkg$Serv;
    move-object/from16 v0, v127

    move-wide/from16 v1, v28

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStartTime(JI)J

    move-result-wide v128

    .line 3396
    .local v128, "startTime":J
    move-object/from16 v0, v127

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    move-result v130

    .line 3397
    .restart local v130    # "starts":I
    move-object/from16 v0, v127

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    move-result v79

    .line 3398
    .local v79, "launches":I
    const-wide/16 v8, 0x0

    cmp-long v4, v128, v8

    if-nez v4, :cond_33

    if-eqz v130, :cond_35

    .line 3399
    :cond_33
    :goto_22
    const-string/jumbo v4, "apk"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    .line 3400
    invoke-static/range {v161 .. v161}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 3401
    move-object/from16 v0, v104

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 3402
    move-object/from16 v0, v125

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    .line 3403
    const-wide/16 v8, 0x3e8

    div-long v8, v128, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v7, v9

    .line 3404
    invoke-static/range {v130 .. v130}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x4

    aput-object v8, v7, v9

    .line 3405
    invoke-static/range {v79 .. v79}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x5

    aput-object v8, v7, v9

    .line 3399
    move-object/from16 v0, p2

    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3393
    :cond_34
    add-int/lit8 v71, v71, -0x1

    goto :goto_21

    .line 3398
    :cond_35
    if-eqz v79, :cond_34

    goto :goto_22

    .line 3382
    .end local v79    # "launches":I
    .end local v127    # "ss":Landroid/os/BatteryStats$Uid$Pkg$Serv;
    .end local v128    # "startTime":J
    .end local v130    # "starts":I
    :cond_36
    add-int/lit8 v65, v65, -0x1

    goto/16 :goto_1f

    .line 2907
    .end local v5    # "uid":I
    .end local v23    # "NSE":I
    .end local v25    # "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    .end local v30    # "btBytesRx":J
    .end local v32    # "btBytesTx":J
    .end local v60    # "fullWifiLockOnTime":J
    .end local v64    # "ij":I
    .end local v65    # "ipkg":I
    .end local v68    # "ipr":I
    .end local v69    # "ips":I
    .end local v70    # "ise":I
    .end local v71    # "isvc":I
    .end local v72    # "isy":I
    .end local v74    # "iw":I
    .end local v75    # "iwa":I
    .end local v76    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v80    # "mobileActiveCount":I
    .end local v82    # "mobileActiveTime":J
    .end local v84    # "mobileBytesRx":J
    .end local v86    # "mobileBytesTx":J
    .end local v88    # "mobilePacketsRx":J
    .end local v90    # "mobilePacketsTx":J
    .end local v100    # "mobileWakeup":J
    .end local v104    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v110    # "powerCpuMaUs":J
    .end local v114    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v115    # "ps":Landroid/os/BatteryStats$Uid$Pkg;
    .end local v124    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v125    # "serviceStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    .end local v131    # "stateTimes":[Ljava/lang/Object;
    .end local v132    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v134    # "systemCpuTimeUs":J
    .end local v142    # "totalStateTime":J
    .end local v150    # "u":Landroid/os/BatteryStats$Uid;
    .end local v152    # "uidWifiRunningTime":J
    .end local v154    # "userCpuTimeUs":J
    .end local v159    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v161    # "wakeups":I
    .end local v170    # "wifiBytesRx":J
    .end local v172    # "wifiBytesTx":J
    .end local v176    # "wifiPacketsRx":J
    .end local v178    # "wifiPacketsTx":J
    .end local v186    # "wifiScanCount":I
    .end local v188    # "wifiScanTime":J
    .end local v194    # "wifiWakeup":J
    :cond_37
    return-void

    .line 3147
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_4
        :pswitch_b
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_a
        :pswitch_2
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_3
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
    .line 5584
    .local p3, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->prepareForDumpLocked()V

    .line 5586
    const-string/jumbo v2, "i"

    const-string/jumbo v3, "vers"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 5587
    const-string/jumbo v5, "19"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getParcelVersion()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartPlatformVersion()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 5588
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getEndPlatformVersion()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    .line 5586
    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v5, v2, v3, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5590
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryBaseTime()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long v16, v2, v4

    .line 5592
    .local v16, "now":J
    and-int/lit8 v2, p4, 0xe

    if-eqz v2, :cond_1

    const/4 v11, 0x1

    .line 5595
    .local v11, "filtering":Z
    :goto_0
    and-int/lit8 v2, p4, 0x10

    if-nez v2, :cond_0

    and-int/lit8 v2, p4, 0x8

    if-eqz v2, :cond_3

    .line 5596
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5598
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryStringPoolSize()I

    move-result v2

    if-ge v12, v2, :cond_2

    .line 5599
    const/16 v2, 0x9

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const/16 v2, 0x2c

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 5600
    const-string/jumbo v2, "hsp"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v2, 0x2c

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 5601
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 5602
    const-string/jumbo v2, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5603
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/os/BatteryStats;->getHistoryTagPoolUid(I)I

    move-result v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 5604
    const-string/jumbo v2, ",\""

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5605
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/os/BatteryStats;->getHistoryTagPoolString(I)Ljava/lang/String;

    move-result-object v18

    .line 5606
    .local v18, "str":Ljava/lang/String;
    const-string/jumbo v2, "\\"

    const-string/jumbo v3, "\\\\"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    .line 5607
    const-string/jumbo v2, "\""

    const-string/jumbo v3, "\\\""

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    .line 5608
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5609
    const-string/jumbo v2, "\""

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5610
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5598
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 5592
    .end local v11    # "filtering":Z
    .end local v12    # "i":I
    .end local v18    # "str":Ljava/lang/String;
    :cond_1
    const/4 v11, 0x0

    .restart local v11    # "filtering":Z
    goto/16 :goto_0

    .line 5612
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

    .line 5614
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    .line 5619
    .end local v12    # "i":I
    :cond_3
    if-eqz v11, :cond_4

    and-int/lit8 v2, p4, 0x6

    if-nez v2, :cond_4

    .line 5620
    return-void

    .line 5613
    .restart local v12    # "i":I
    :catchall_0
    move-exception v2

    .line 5614
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    .line 5613
    throw v2

    .line 5623
    .end local v12    # "i":I
    :cond_4
    if-eqz p3, :cond_9

    .line 5624
    new-instance v23, Landroid/util/SparseArray;

    invoke-direct/range {v23 .. v23}, Landroid/util/SparseArray;-><init>()V

    .line 5625
    .local v23, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;>;"
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_2
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v12, v2, :cond_6

    .line 5626
    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ApplicationInfo;

    .line 5628
    .local v10, "ai":Landroid/content/pm/ApplicationInfo;
    iget v2, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 5627
    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Pair;

    .line 5629
    .local v15, "pkgs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;"
    if-nez v15, :cond_5

    .line 5630
    new-instance v15, Landroid/util/Pair;

    .end local v15    # "pkgs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Landroid/util/MutableBoolean;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/util/MutableBoolean;-><init>(Z)V

    invoke-direct {v15, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5631
    .restart local v15    # "pkgs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;"
    iget v2, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5633
    :cond_5
    iget-object v2, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5625
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 5635
    .end local v10    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v15    # "pkgs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;"
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v22

    .line 5636
    .local v22, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 5637
    .local v9, "NU":I
    const/4 v2, 0x2

    new-array v14, v2, [Ljava/lang/String;

    .line 5638
    .local v14, "lineArgs":[Ljava/lang/String;
    const/4 v12, 0x0

    :goto_3
    if-ge v12, v9, :cond_9

    .line 5639
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v19

    .line 5640
    .local v19, "uid":I
    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Pair;

    .line 5641
    .restart local v15    # "pkgs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;"
    if-eqz v15, :cond_7

    iget-object v2, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/util/MutableBoolean;

    iget-boolean v2, v2, Landroid/util/MutableBoolean;->value:Z

    if-eqz v2, :cond_8

    .line 5638
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 5642
    :cond_8
    iget-object v2, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z

    .line 5643
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_4
    iget-object v2, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v13, v2, :cond_7

    .line 5644
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v14, v3

    .line 5645
    iget-object v2, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v14, v3

    .line 5646
    const-string/jumbo v2, "i"

    const-string/jumbo v3, "uid"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v4, v2, v3, v14}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5643
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 5652
    .end local v9    # "NU":I
    .end local v12    # "i":I
    .end local v13    # "j":I
    .end local v14    # "lineArgs":[Ljava/lang/String;
    .end local v15    # "pkgs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;"
    .end local v19    # "uid":I
    .end local v22    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v23    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;>;"
    :cond_9
    if-eqz v11, :cond_a

    and-int/lit8 v2, p4, 0x2

    if-eqz v2, :cond_d

    .line 5653
    :cond_a
    const-string/jumbo v2, ""

    const-string/jumbo v3, "dsd"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3, v4, v5}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    .line 5654
    const/4 v2, 0x1

    new-array v14, v2, [Ljava/lang/String;

    .line 5655
    .restart local v14    # "lineArgs":[Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v20

    .line 5656
    .local v20, "timeRemaining":J
    const-wide/16 v2, 0x0

    cmp-long v2, v20, v2

    if-ltz v2, :cond_b

    .line 5657
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v14, v3

    .line 5658
    const-string/jumbo v2, "i"

    const-string/jumbo v3, "dtr"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v4, v2, v3, v14}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5661
    :cond_b
    const-string/jumbo v2, ""

    const-string/jumbo v3, "csd"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3, v4, v5}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    .line 5662
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v20

    .line 5663
    const-wide/16 v2, 0x0

    cmp-long v2, v20, v2

    if-ltz v2, :cond_c

    .line 5664
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v14, v3

    .line 5665
    const-string/jumbo v2, "i"

    const-string/jumbo v3, "ctr"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v4, v2, v3, v14}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5669
    :cond_c
    and-int/lit8 v2, p4, 0x40

    if-eqz v2, :cond_e

    const/4 v7, 0x1

    .line 5668
    :goto_5
    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, Landroid/os/BatteryStats;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZ)V

    .line 5583
    .end local v14    # "lineArgs":[Ljava/lang/String;
    .end local v20    # "timeRemaining":J
    :cond_d
    return-void

    .line 5669
    .restart local v14    # "lineArgs":[Ljava/lang/String;
    .restart local v20    # "timeRemaining":J
    :cond_e
    const/4 v7, 0x0

    goto :goto_5
.end method

.method public dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIJ)V
    .locals 53
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "flags"    # I
    .param p4, "reqUid"    # I
    .param p5, "histStart"    # J

    .prologue
    .line 5393
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->prepareForDumpLocked()V

    .line 5395
    and-int/lit8 v6, p3, 0xe

    if-eqz v6, :cond_1

    const/16 v34, 0x1

    .line 5398
    .local v34, "filtering":Z
    :goto_0
    and-int/lit8 v6, p3, 0x8

    if-nez v6, :cond_2

    if-eqz v34, :cond_2

    .line 5440
    :cond_0
    :goto_1
    if-eqz v34, :cond_7

    and-int/lit8 v6, p3, 0x6

    if-nez v6, :cond_7

    .line 5441
    return-void

    .line 5395
    .end local v34    # "filtering":Z
    :cond_1
    const/16 v34, 0x0

    .restart local v34    # "filtering":Z
    goto :goto_0

    .line 5399
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryTotalSize()I

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v36, v0

    .line 5400
    .local v36, "historyTotalSize":J
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryUsedSize()I

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v38, v0

    .line 5401
    .local v38, "historyUsedSize":J
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 5403
    :try_start_0
    const-string/jumbo v6, "Battery History ("

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5404
    const-wide/16 v12, 0x64

    mul-long v12, v12, v38

    div-long v12, v12, v36

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    .line 5405
    const-string/jumbo v6, "% used, "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5406
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, v38

    invoke-direct {v0, v1, v2, v3}, Landroid/os/BatteryStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 5407
    const-string/jumbo v6, " used of "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5408
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, v36

    invoke-direct {v0, v1, v2, v3}, Landroid/os/BatteryStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 5409
    const-string/jumbo v6, ", "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5410
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryStringPoolSize()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 5411
    const-string/jumbo v6, " strings using "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5412
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryStringPoolBytes()I

    move-result v6

    int-to-long v12, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v12, v13}, Landroid/os/BatteryStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 5413
    const-string/jumbo v6, "):"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5414
    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v5 .. v10}, Landroid/os/BatteryStats;->dumpHistoryLocked(Ljava/io/PrintWriter;IJZ)V

    .line 5415
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5417
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    .line 5421
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingOldHistoryLocked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5423
    :try_start_1
    new-instance v7, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v7}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 5424
    .local v7, "rec":Landroid/os/BatteryStats$HistoryItem;
    const-string/jumbo v6, "Old battery History:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5425
    new-instance v5, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v5}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    .line 5426
    .local v5, "hprinter":Landroid/os/BatteryStats$HistoryPrinter;
    const-wide/16 v8, -0x1

    .line 5427
    .local v8, "baseTime":J
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/os/BatteryStats;->getNextOldHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 5428
    const-wide/16 v12, 0x0

    cmp-long v6, v8, v12

    if-gez v6, :cond_4

    .line 5429
    iget-wide v8, v7, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 5431
    :cond_4
    and-int/lit8 v6, p3, 0x20

    if-eqz v6, :cond_5

    const/4 v11, 0x1

    :goto_3
    const/4 v10, 0x0

    move-object/from16 v6, p2

    invoke-virtual/range {v5 .. v11}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 5434
    .end local v5    # "hprinter":Landroid/os/BatteryStats$HistoryPrinter;
    .end local v7    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .end local v8    # "baseTime":J
    :catchall_0
    move-exception v6

    .line 5435
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingOldHistoryLocked()V

    .line 5434
    throw v6

    .line 5416
    :catchall_1
    move-exception v6

    .line 5417
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    .line 5416
    throw v6

    .line 5431
    .restart local v5    # "hprinter":Landroid/os/BatteryStats$HistoryPrinter;
    .restart local v7    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .restart local v8    # "baseTime":J
    :cond_5
    const/4 v11, 0x0

    goto :goto_3

    .line 5433
    :cond_6
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5435
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingOldHistoryLocked()V

    goto/16 :goto_1

    .line 5444
    .end local v5    # "hprinter":Landroid/os/BatteryStats$HistoryPrinter;
    .end local v7    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .end local v8    # "baseTime":J
    .end local v36    # "historyTotalSize":J
    .end local v38    # "historyUsedSize":J
    :cond_7
    if-nez v34, :cond_c

    .line 5445
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v51

    .line 5446
    .local v51, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v51 .. v51}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 5447
    .local v4, "NU":I
    const/16 v32, 0x0

    .line 5448
    .local v32, "didPid":Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v42

    .line 5449
    .local v42, "nowRealtime":J
    const/16 v35, 0x0

    .local v35, "i":I
    :goto_4
    move/from16 v0, v35

    if-ge v0, v4, :cond_b

    .line 5450
    move-object/from16 v0, v51

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Landroid/os/BatteryStats$Uid;

    .line 5451
    .local v50, "uid":Landroid/os/BatteryStats$Uid;
    invoke-virtual/range {v50 .. v50}, Landroid/os/BatteryStats$Uid;->getPidStats()Landroid/util/SparseArray;

    move-result-object v44

    .line 5452
    .local v44, "pids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Pid;>;"
    if-eqz v44, :cond_a

    .line 5453
    const/16 v40, 0x0

    .local v40, "j":I
    :goto_5
    invoke-virtual/range {v44 .. v44}, Landroid/util/SparseArray;->size()I

    move-result v6

    move/from16 v0, v40

    if-ge v0, v6, :cond_a

    .line 5454
    move-object/from16 v0, v44

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/os/BatteryStats$Uid$Pid;

    .line 5455
    .local v41, "pid":Landroid/os/BatteryStats$Uid$Pid;
    if-nez v32, :cond_8

    .line 5456
    const-string/jumbo v6, "Per-PID Stats:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5457
    const/16 v32, 0x1

    .line 5459
    :cond_8
    move-object/from16 v0, v41

    iget-wide v14, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeSumMs:J

    move-object/from16 v0, v41

    iget v6, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    if-lez v6, :cond_9

    .line 5460
    move-object/from16 v0, v41

    iget-wide v12, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    sub-long v12, v42, v12

    .line 5459
    :goto_6
    add-long v46, v14, v12

    .line 5461
    .local v46, "time":J
    const-string/jumbo v6, "  PID "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v44

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 5462
    const-string/jumbo v6, " wake time: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5463
    move-wide/from16 v0, v46

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 5464
    const-string/jumbo v6, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5453
    add-int/lit8 v40, v40, 0x1

    goto :goto_5

    .line 5460
    .end local v46    # "time":J
    :cond_9
    const-wide/16 v12, 0x0

    goto :goto_6

    .line 5449
    .end local v40    # "j":I
    .end local v41    # "pid":Landroid/os/BatteryStats$Uid$Pid;
    :cond_a
    add-int/lit8 v35, v35, 0x1

    goto :goto_4

    .line 5468
    .end local v44    # "pids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Pid;>;"
    .end local v50    # "uid":Landroid/os/BatteryStats$Uid;
    :cond_b
    if-eqz v32, :cond_c

    .line 5469
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5473
    .end local v4    # "NU":I
    .end local v32    # "didPid":Z
    .end local v35    # "i":I
    .end local v42    # "nowRealtime":J
    .end local v51    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    :cond_c
    if-eqz v34, :cond_d

    and-int/lit8 v6, p3, 0x2

    if-eqz v6, :cond_12

    .line 5474
    :cond_d
    const-string/jumbo v6, "  "

    const-string/jumbo v10, "Discharge step durations:"

    .line 5475
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v12

    const/4 v13, 0x0

    .line 5474
    move-object/from16 v0, p2

    invoke-static {v0, v6, v10, v12, v13}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 5476
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v48

    .line 5477
    .local v48, "timeRemaining":J
    const-wide/16 v12, 0x0

    cmp-long v6, v48, v12

    if-ltz v6, :cond_e

    .line 5478
    const-string/jumbo v6, "  Estimated discharge time remaining: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5479
    const-wide/16 v12, 0x3e8

    div-long v12, v48, v12

    move-object/from16 v0, p2

    invoke-static {v12, v13, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 5480
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5482
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v11

    .line 5483
    .local v11, "steps":Landroid/os/BatteryStats$LevelStepTracker;
    const/16 v35, 0x0

    .restart local v35    # "i":I
    :goto_7
    sget-object v6, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    array-length v6, v6

    move/from16 v0, v35

    if-ge v0, v6, :cond_f

    .line 5484
    const-string/jumbo v6, "  Estimated "

    sget-object v10, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    aget-object v10, v10, v35

    const-string/jumbo v19, " time: "

    .line 5485
    sget-object v12, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    aget v12, v12, v35

    int-to-long v12, v12

    .line 5486
    sget-object v14, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_VALUES:[I

    aget v14, v14, v35

    int-to-long v14, v14

    const/16 v16, 0x0

    .line 5485
    invoke-virtual/range {v11 .. v16}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimeEstimate(JJ[I)J

    move-result-wide v16

    move-object/from16 v12, p2

    move-object v13, v6

    move-object v14, v10

    move-object/from16 v15, v19

    .line 5484
    invoke-static/range {v12 .. v17}, Landroid/os/BatteryStats;->dumpTimeEstimate(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    .line 5483
    add-int/lit8 v35, v35, 0x1

    goto :goto_7

    .line 5488
    :cond_f
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5490
    .end local v11    # "steps":Landroid/os/BatteryStats$LevelStepTracker;
    .end local v35    # "i":I
    .end local v48    # "timeRemaining":J
    :cond_10
    const-string/jumbo v6, "  "

    const-string/jumbo v10, "Charge step durations:"

    .line 5491
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v12

    const/4 v13, 0x0

    .line 5490
    move-object/from16 v0, p2

    invoke-static {v0, v6, v10, v12, v13}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 5492
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v48

    .line 5493
    .restart local v48    # "timeRemaining":J
    const-wide/16 v12, 0x0

    cmp-long v6, v48, v12

    if-ltz v6, :cond_11

    .line 5494
    const-string/jumbo v6, "  Estimated charge time remaining: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5495
    const-wide/16 v12, 0x3e8

    div-long v12, v48, v12

    move-object/from16 v0, p2

    invoke-static {v12, v13, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 5496
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5498
    :cond_11
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5501
    .end local v48    # "timeRemaining":J
    :cond_12
    if-eqz v34, :cond_13

    and-int/lit8 v6, p3, 0x6

    if-eqz v6, :cond_1f

    .line 5502
    :cond_13
    const-string/jumbo v6, "Daily stats:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5503
    const-string/jumbo v6, "  Current start time: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5504
    const-string/jumbo v6, "yyyy-MM-dd-HH-mm-ss"

    .line 5505
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCurrentDailyStartTime()J

    move-result-wide v12

    .line 5504
    invoke-static {v6, v12, v13}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5506
    const-string/jumbo v6, "  Next min deadline: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5507
    const-string/jumbo v6, "yyyy-MM-dd-HH-mm-ss"

    .line 5508
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getNextMinDailyDeadline()J

    move-result-wide v12

    .line 5507
    invoke-static {v6, v12, v13}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5509
    const-string/jumbo v6, "  Next max deadline: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5510
    const-string/jumbo v6, "yyyy-MM-dd-HH-mm-ss"

    .line 5511
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getNextMaxDailyDeadline()J

    move-result-wide v12

    .line 5510
    invoke-static {v6, v12, v13}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5512
    new-instance v17, Ljava/lang/StringBuilder;

    const/16 v6, 0x40

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5513
    .local v17, "sb":Ljava/lang/StringBuilder;
    const/4 v6, 0x1

    new-array v0, v6, [I

    move-object/from16 v18, v0

    .line 5514
    .local v18, "outInt":[I
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDailyDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v16

    .line 5515
    .local v16, "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDailyChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v23

    .line 5516
    .local v23, "csteps":Landroid/os/BatteryStats$LevelStepTracker;
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDailyPackageChanges()Ljava/util/ArrayList;

    move-result-object v45

    .line 5517
    .local v45, "pkgc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$PackageChange;>;"
    move-object/from16 v0, v16

    iget v6, v0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    if-gtz v6, :cond_14

    move-object/from16 v0, v23

    iget v6, v0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    if-lez v6, :cond_17

    .line 5518
    :cond_14
    :goto_8
    and-int/lit8 v6, p3, 0x4

    if-nez v6, :cond_18

    if-eqz v34, :cond_18

    .line 5531
    const-string/jumbo v6, "  Current daily steps:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5532
    const-string/jumbo v14, "    "

    const-string/jumbo v15, "Discharge"

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    invoke-direct/range {v12 .. v18}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    .line 5534
    const-string/jumbo v21, "    "

    const-string/jumbo v22, "Charge"

    move-object/from16 v19, p0

    move-object/from16 v20, p2

    move-object/from16 v24, v17

    move-object/from16 v25, v18

    invoke-direct/range {v19 .. v25}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    .line 5539
    :cond_15
    :goto_9
    const/16 v31, 0x0

    .line 5540
    .local v31, "curIndex":I
    :goto_a
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getDailyItemLocked(I)Landroid/os/BatteryStats$DailyItem;

    move-result-object v33

    .local v33, "dit":Landroid/os/BatteryStats$DailyItem;
    if-eqz v33, :cond_1e

    .line 5541
    add-int/lit8 v31, v31, 0x1

    .line 5542
    and-int/lit8 v6, p3, 0x4

    if-eqz v6, :cond_16

    .line 5543
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5545
    :cond_16
    const-string/jumbo v6, "  Daily from "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5546
    const-string/jumbo v6, "yyyy-MM-dd-HH-mm-ss"

    move-object/from16 v0, v33

    iget-wide v12, v0, Landroid/os/BatteryStats$DailyItem;->mStartTime:J

    invoke-static {v6, v12, v13}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5547
    const-string/jumbo v6, " to "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5548
    const-string/jumbo v6, "yyyy-MM-dd-HH-mm-ss"

    move-object/from16 v0, v33

    iget-wide v12, v0, Landroid/os/BatteryStats$DailyItem;->mEndTime:J

    invoke-static {v6, v12, v13}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5549
    const-string/jumbo v6, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5550
    and-int/lit8 v6, p3, 0x4

    if-nez v6, :cond_1b

    if-eqz v34, :cond_1b

    .line 5563
    const-string/jumbo v26, "    "

    const-string/jumbo v27, "Discharge"

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v28, v0

    move-object/from16 v24, p0

    move-object/from16 v25, p2

    move-object/from16 v29, v17

    move-object/from16 v30, v18

    invoke-direct/range {v24 .. v30}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    .line 5565
    const-string/jumbo v26, "    "

    const-string/jumbo v27, "Charge"

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v28, v0

    move-object/from16 v24, p0

    move-object/from16 v25, p2

    move-object/from16 v29, v17

    move-object/from16 v30, v18

    invoke-direct/range {v24 .. v30}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    goto/16 :goto_a

    .line 5517
    .end local v31    # "curIndex":I
    .end local v33    # "dit":Landroid/os/BatteryStats$DailyItem;
    :cond_17
    if-eqz v45, :cond_15

    goto/16 :goto_8

    .line 5519
    :cond_18
    const-string/jumbo v6, "    "

    const-string/jumbo v10, "  Current daily discharge step durations:"

    .line 5520
    const/4 v12, 0x0

    .line 5519
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v0, v6, v10, v1, v12}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 5521
    const-string/jumbo v14, "      "

    const-string/jumbo v15, "Discharge"

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    invoke-direct/range {v12 .. v18}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    .line 5524
    :cond_19
    const-string/jumbo v6, "    "

    const-string/jumbo v10, "  Current daily charge step durations:"

    .line 5525
    const/4 v12, 0x0

    .line 5524
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-static {v0, v6, v10, v1, v12}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 5526
    const-string/jumbo v21, "      "

    const-string/jumbo v22, "Charge"

    move-object/from16 v19, p0

    move-object/from16 v20, p2

    move-object/from16 v24, v17

    move-object/from16 v25, v18

    invoke-direct/range {v19 .. v25}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    .line 5529
    :cond_1a
    const-string/jumbo v6, "    "

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v6, v2}, Landroid/os/BatteryStats;->dumpDailyPackageChanges(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_9

    .line 5551
    .restart local v31    # "curIndex":I
    .restart local v33    # "dit":Landroid/os/BatteryStats$DailyItem;
    :cond_1b
    const-string/jumbo v6, "      "

    .line 5552
    const-string/jumbo v10, "    Discharge step durations:"

    move-object/from16 v0, v33

    iget-object v12, v0, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const/4 v13, 0x0

    .line 5551
    move-object/from16 v0, p2

    invoke-static {v0, v6, v10, v12, v13}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 5553
    const-string/jumbo v26, "        "

    const-string/jumbo v27, "Discharge"

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v28, v0

    move-object/from16 v24, p0

    move-object/from16 v25, p2

    move-object/from16 v29, v17

    move-object/from16 v30, v18

    invoke-direct/range {v24 .. v30}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    .line 5556
    :cond_1c
    const-string/jumbo v6, "      "

    .line 5557
    const-string/jumbo v10, "    Charge step durations:"

    move-object/from16 v0, v33

    iget-object v12, v0, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const/4 v13, 0x0

    .line 5556
    move-object/from16 v0, p2

    invoke-static {v0, v6, v10, v12, v13}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 5558
    const-string/jumbo v26, "        "

    const-string/jumbo v27, "Charge"

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v28, v0

    move-object/from16 v24, p0

    move-object/from16 v25, p2

    move-object/from16 v29, v17

    move-object/from16 v30, v18

    invoke-direct/range {v24 .. v30}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    .line 5561
    :cond_1d
    const-string/jumbo v6, "    "

    move-object/from16 v0, v33

    iget-object v10, v0, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v10}, Landroid/os/BatteryStats;->dumpDailyPackageChanges(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_a

    .line 5569
    :cond_1e
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5571
    .end local v16    # "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    .end local v17    # "sb":Ljava/lang/StringBuilder;
    .end local v18    # "outInt":[I
    .end local v23    # "csteps":Landroid/os/BatteryStats$LevelStepTracker;
    .end local v31    # "curIndex":I
    .end local v33    # "dit":Landroid/os/BatteryStats$DailyItem;
    .end local v45    # "pkgc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$PackageChange;>;"
    :cond_1f
    if-eqz v34, :cond_20

    and-int/lit8 v6, p3, 0x2

    if-eqz v6, :cond_21

    .line 5572
    :cond_20
    const-string/jumbo v6, "Statistics since last charge:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5573
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "  System starts: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartCount()I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 5574
    const-string/jumbo v10, ", currently on battery: "

    .line 5573
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 5574
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getIsOnBattery()Z

    move-result v10

    .line 5573
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5575
    const-string/jumbo v27, ""

    .line 5576
    and-int/lit8 v6, p3, 0x40

    if-eqz v6, :cond_22

    const/16 v30, 0x1

    .line 5575
    :goto_b
    const/16 v28, 0x0

    move-object/from16 v24, p0

    move-object/from16 v25, p1

    move-object/from16 v26, p2

    move/from16 v29, p4

    invoke-virtual/range {v24 .. v30}, Landroid/os/BatteryStats;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;IIZ)V

    .line 5577
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5392
    :cond_21
    return-void

    .line 5576
    :cond_22
    const/16 v30, 0x0

    goto :goto_b
.end method

.method public final dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "which"    # I
    .param p5, "reqUid"    # I

    .prologue
    .line 3438
    invoke-static {p1}, Lcom/android/internal/os/BatteryStatsHelper;->checkWifiOnly(Landroid/content/Context;)Z

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;IIZ)V

    .line 3437
    return-void
.end method

.method public final dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;IIZ)V
    .locals 243
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "which"    # I
    .param p5, "reqUid"    # I
    .param p6, "wifiOnly"    # Z

    .prologue
    .line 3444
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v12, 0x3e8

    mul-long v154, v6, v12

    .line 3445
    .local v154, "rawUptime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v12, 0x3e8

    mul-long v24, v6, v12

    .line 3446
    .local v24, "rawRealtime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v154

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v44

    .line 3448
    .local v44, "batteryUptime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v154

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v216

    .line 3449
    .local v216, "whichBatteryUptime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v210

    .line 3450
    .local v210, "whichBatteryRealtime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeRealtime(JI)J

    move-result-wide v184

    .line 3451
    .local v184, "totalRealtime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v154

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeUptime(JI)J

    move-result-wide v190

    .line 3452
    .local v190, "totalUptime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v154

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    move-result-wide v214

    .line 3453
    .local v214, "whichBatteryScreenOffUptime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    move-result-wide v212

    .line 3455
    .local v212, "whichBatteryScreenOffRealtime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v42

    .line 3456
    .local v42, "batteryTimeRemaining":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v56

    .line 3458
    .local v56, "chargeTimeRemaining":J
    new-instance v14, Ljava/lang/StringBuilder;

    const/16 v6, 0x80

    invoke-direct {v14, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3460
    .local v14, "sb":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v197

    .line 3461
    .local v197, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v197 .. v197}, Landroid/util/SparseArray;->size()I

    move-result v38

    .line 3463
    .local v38, "NU":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getEstimatedBatteryCapacity()I

    move-result v81

    .line 3464
    .local v81, "estimatedBatteryCapacity":I
    if-lez v81, :cond_0

    .line 3465
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3466
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3467
    const-string/jumbo v6, "  Estimated battery capacity: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3468
    move/from16 v0, v81

    int-to-double v6, v0

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3469
    const-string/jumbo v6, " mAh"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3470
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3473
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3474
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3475
    const-string/jumbo v6, "  Time on battery: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3476
    const-wide/16 v6, 0x3e8

    div-long v6, v210, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3477
    move-object/from16 v0, p0

    move-wide/from16 v1, v210

    move-wide/from16 v3, v184

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3478
    const-string/jumbo v6, ") realtime, "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3479
    const-wide/16 v6, 0x3e8

    div-long v6, v216, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3480
    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v216

    move-wide/from16 v3, v184

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3481
    const-string/jumbo v6, ") uptime"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3482
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3483
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3484
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3485
    const-string/jumbo v6, "  Time on battery screen off: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3486
    const-wide/16 v6, 0x3e8

    div-long v6, v212, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3487
    move-object/from16 v0, p0

    move-wide/from16 v1, v212

    move-wide/from16 v3, v184

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3488
    const-string/jumbo v6, ") realtime, "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3489
    const-wide/16 v6, 0x3e8

    div-long v6, v214, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3490
    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3491
    move-object/from16 v0, p0

    move-wide/from16 v1, v214

    move-wide/from16 v3, v184

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3492
    const-string/jumbo v6, ") uptime"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3493
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3494
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3495
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3496
    const-string/jumbo v6, "  Total run time: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3497
    const-wide/16 v6, 0x3e8

    div-long v6, v184, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3498
    const-string/jumbo v6, "realtime, "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3499
    const-wide/16 v6, 0x3e8

    div-long v6, v190, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3500
    const-string/jumbo v6, "uptime"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3501
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3502
    const-wide/16 v6, 0x0

    cmp-long v6, v42, v6

    if-ltz v6, :cond_1

    .line 3503
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3504
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3505
    const-string/jumbo v6, "  Battery time remaining: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3506
    const-wide/16 v6, 0x3e8

    div-long v6, v42, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3507
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3509
    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v6, v56, v6

    if-ltz v6, :cond_2

    .line 3510
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3511
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3512
    const-string/jumbo v6, "  Charge time remaining: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3513
    const-wide/16 v6, 0x3e8

    div-long v6, v56, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3514
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3517
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCoulombCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v72

    .line 3518
    .local v72, "dischargeCounter":Landroid/os/BatteryStats$LongCounter;
    move-object/from16 v0, v72

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v70

    .line 3519
    .local v70, "dischargeCount":J
    const-wide/16 v6, 0x0

    cmp-long v6, v70, v6

    if-ltz v6, :cond_3

    .line 3520
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3521
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3522
    const-string/jumbo v6, "  Discharge: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3523
    move-wide/from16 v0, v70

    long-to-double v6, v0

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v12

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3524
    const-string/jumbo v6, " mAh"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3525
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3528
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeScreenOffCoulombCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v73

    .line 3529
    .local v73, "dischargeScreenOffCounter":Landroid/os/BatteryStats$LongCounter;
    move-object/from16 v0, v73

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v74

    .line 3530
    .local v74, "dischargeScreenOffCount":J
    const-wide/16 v6, 0x0

    cmp-long v6, v74, v6

    if-ltz v6, :cond_4

    .line 3531
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3532
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3533
    const-string/jumbo v6, "  Screen off discharge: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3534
    move-wide/from16 v0, v74

    long-to-double v6, v0

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v12

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3535
    const-string/jumbo v6, " mAh"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3536
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3539
    :cond_4
    sub-long v76, v70, v74

    .line 3540
    .local v76, "dischargeScreenOnCount":J
    const-wide/16 v6, 0x0

    cmp-long v6, v76, v6

    if-ltz v6, :cond_5

    .line 3541
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3542
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3543
    const-string/jumbo v6, "  Screen on discharge: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3544
    move-wide/from16 v0, v76

    long-to-double v6, v0

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v12

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3545
    const-string/jumbo v6, " mAh"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3546
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3549
    :cond_5
    const-string/jumbo v6, "  Start clock time: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3550
    const-string/jumbo v6, "yyyy-MM-dd-HH-mm-ss"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartClockTime()J

    move-result-wide v12

    invoke-static {v6, v12, v13}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3552
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v156

    .line 3553
    .local v156, "screenOnTime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getInteractiveTime(JI)J

    move-result-wide v96

    .line 3554
    .local v96, "interactiveTime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getPowerSaveModeEnabledTime(JI)J

    move-result-wide v148

    .line 3555
    .local v148, "powerSaveModeEnabledTime":J
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v64

    .line 3557
    .local v64, "deviceIdleModeLightTime":J
    const/4 v6, 0x2

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v62

    .line 3559
    .local v62, "deviceIdleModeFullTime":J
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v68

    .line 3561
    .local v68, "deviceLightIdlingTime":J
    const/4 v6, 0x2

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v66

    .line 3563
    .local v66, "deviceIdlingTime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v144

    .line 3564
    .local v144, "phoneOnTime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v220

    .line 3565
    .local v220, "wifiRunningTime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    move-result-wide v218

    .line 3566
    .local v218, "wifiOnTime":J
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3567
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3568
    const-string/jumbo v6, "  Screen on: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v156, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3569
    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v156

    move-wide/from16 v3, v210

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3570
    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getScreenOnCount(I)I

    move-result v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3571
    const-string/jumbo v6, "x, Interactive: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v96, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3572
    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v96

    move-wide/from16 v3, v210

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3573
    const-string/jumbo v6, ")"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3574
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3575
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3576
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3577
    const-string/jumbo v6, "  Screen brightnesses:"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3578
    const/16 v61, 0x0

    .line 3579
    .local v61, "didOne":Z
    const/16 v94, 0x0

    .local v94, "i":I
    :goto_0
    const/4 v6, 0x5

    move/from16 v0, v94

    if-ge v0, v6, :cond_7

    .line 3580
    move-object/from16 v0, p0

    move/from16 v1, v94

    move-wide/from16 v2, v24

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    move-result-wide v172

    .line 3581
    .local v172, "time":J
    const-wide/16 v6, 0x0

    cmp-long v6, v172, v6

    if-nez v6, :cond_6

    .line 3579
    :goto_1
    add-int/lit8 v94, v94, 0x1

    goto :goto_0

    .line 3584
    :cond_6
    const-string/jumbo v6, "\n    "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3585
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3586
    const/16 v61, 0x1

    .line 3587
    sget-object v6, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v94

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3588
    const-string/jumbo v6, " "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3589
    const-wide/16 v6, 0x3e8

    div-long v6, v172, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3590
    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3591
    move-object/from16 v0, p0

    move-wide/from16 v1, v172

    move-wide/from16 v3, v156

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3592
    const-string/jumbo v6, ")"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3594
    .end local v172    # "time":J
    :cond_7
    if-nez v61, :cond_8

    const-string/jumbo v6, " (no activity)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3595
    :cond_8
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3596
    const-wide/16 v6, 0x0

    cmp-long v6, v148, v6

    if-eqz v6, :cond_9

    .line 3597
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3598
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3599
    const-string/jumbo v6, "  Power save mode enabled: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3600
    const-wide/16 v6, 0x3e8

    div-long v6, v148, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3601
    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3602
    move-object/from16 v0, p0

    move-wide/from16 v1, v148

    move-wide/from16 v3, v210

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3603
    const-string/jumbo v6, ")"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3604
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3606
    :cond_9
    const-wide/16 v6, 0x0

    cmp-long v6, v68, v6

    if-eqz v6, :cond_a

    .line 3607
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3608
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3609
    const-string/jumbo v6, "  Device light idling: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3610
    const-wide/16 v6, 0x3e8

    div-long v6, v68, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3611
    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3612
    move-object/from16 v0, p0

    move-wide/from16 v1, v68

    move-wide/from16 v3, v210

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3613
    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3614
    const-string/jumbo v6, "x"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3615
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3617
    :cond_a
    const-wide/16 v6, 0x0

    cmp-long v6, v64, v6

    if-eqz v6, :cond_b

    .line 3618
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3619
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3620
    const-string/jumbo v6, "  Idle mode light time: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3621
    const-wide/16 v6, 0x3e8

    div-long v6, v64, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3622
    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3623
    move-object/from16 v0, p0

    move-wide/from16 v1, v64

    move-wide/from16 v3, v210

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3624
    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3625
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3626
    const-string/jumbo v6, "x"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3627
    const-string/jumbo v6, " -- longest "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3628
    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3629
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3631
    :cond_b
    const-wide/16 v6, 0x0

    cmp-long v6, v66, v6

    if-eqz v6, :cond_c

    .line 3632
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3633
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3634
    const-string/jumbo v6, "  Device full idling: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3635
    const-wide/16 v6, 0x3e8

    div-long v6, v66, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3636
    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3637
    move-object/from16 v0, p0

    move-wide/from16 v1, v66

    move-wide/from16 v3, v210

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3638
    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3639
    const-string/jumbo v6, "x"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3640
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3642
    :cond_c
    const-wide/16 v6, 0x0

    cmp-long v6, v62, v6

    if-eqz v6, :cond_d

    .line 3643
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3644
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3645
    const-string/jumbo v6, "  Idle mode full time: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3646
    const-wide/16 v6, 0x3e8

    div-long v6, v62, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3647
    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3648
    move-object/from16 v0, p0

    move-wide/from16 v1, v62

    move-wide/from16 v3, v210

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3649
    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3650
    const/4 v6, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3651
    const-string/jumbo v6, "x"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3652
    const-string/jumbo v6, " -- longest "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3653
    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3654
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3656
    :cond_d
    const-wide/16 v6, 0x0

    cmp-long v6, v144, v6

    if-eqz v6, :cond_e

    .line 3657
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3658
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3659
    const-string/jumbo v6, "  Active phone call: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v144, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3660
    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v144

    move-wide/from16 v3, v210

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3661
    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getPhoneOnCount(I)I

    move-result v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "x"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3663
    :cond_e
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getNumConnectivityChange(I)I

    move-result v58

    .line 3664
    .local v58, "connChanges":I
    if-eqz v58, :cond_f

    .line 3665
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3666
    const-string/jumbo v6, "  Connectivity changes: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 3670
    :cond_f
    const-wide/16 v86, 0x0

    .line 3671
    .local v86, "fullWakeLockTimeTotalMicros":J
    const-wide/16 v142, 0x0

    .line 3673
    .local v142, "partialWakeLockTimeTotalMicros":J
    new-instance v176, Ljava/util/ArrayList;

    invoke-direct/range {v176 .. v176}, Ljava/util/ArrayList;-><init>()V

    .line 3675
    .local v176, "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    const/16 v104, 0x0

    .local v104, "iu":I
    :goto_2
    move/from16 v0, v104

    move/from16 v1, v38

    if-ge v0, v1, :cond_14

    .line 3676
    move-object/from16 v0, v197

    move/from16 v1, v104

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v177

    check-cast v177, Landroid/os/BatteryStats$Uid;

    .line 3679
    .local v177, "u":Landroid/os/BatteryStats$Uid;
    invoke-virtual/range {v177 .. v177}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v207

    .line 3680
    .local v207, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-virtual/range {v207 .. v207}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v105, v6, -0x1

    .local v105, "iw":I
    :goto_3
    if-ltz v105, :cond_13

    .line 3681
    move-object/from16 v0, v207

    move/from16 v1, v105

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v242

    check-cast v242, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 3683
    .local v242, "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    const/4 v6, 0x1

    move-object/from16 v0, v242

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v83

    .line 3684
    .local v83, "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v83, :cond_10

    .line 3685
    move-object/from16 v0, v83

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v6

    add-long v86, v86, v6

    .line 3689
    :cond_10
    const/4 v6, 0x0

    move-object/from16 v0, v242

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v9

    .line 3690
    .local v9, "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v9, :cond_12

    .line 3691
    move-wide/from16 v0, v24

    move/from16 v2, p4

    invoke-virtual {v9, v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v10

    .line 3693
    .local v10, "totalTimeMicros":J
    const-wide/16 v6, 0x0

    cmp-long v6, v10, v6

    if-lez v6, :cond_12

    .line 3694
    if-gez p5, :cond_11

    .line 3698
    new-instance v6, Landroid/os/BatteryStats$TimerEntry;

    move-object/from16 v0, v207

    move/from16 v1, v105

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual/range {v177 .. v177}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v8

    invoke-direct/range {v6 .. v11}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    move-object/from16 v0, v176

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3701
    :cond_11
    add-long v142, v142, v10

    .line 3680
    .end local v10    # "totalTimeMicros":J
    :cond_12
    add-int/lit8 v105, v105, -0x1

    goto :goto_3

    .line 3675
    .end local v9    # "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    .end local v83    # "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    .end local v242    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    :cond_13
    add-int/lit8 v104, v104, 0x1

    goto :goto_2

    .line 3707
    .end local v105    # "iw":I
    .end local v177    # "u":Landroid/os/BatteryStats$Uid;
    .end local v207    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_14
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v122

    .line 3708
    .local v122, "mobileRxTotalBytes":J
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v130

    .line 3709
    .local v130, "mobileTxTotalBytes":J
    const/4 v6, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v226

    .line 3710
    .local v226, "wifiRxTotalBytes":J
    const/4 v6, 0x3

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v236

    .line 3711
    .local v236, "wifiTxTotalBytes":J
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v124

    .line 3712
    .local v124, "mobileRxTotalPackets":J
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v132

    .line 3713
    .local v132, "mobileTxTotalPackets":J
    const/4 v6, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v228

    .line 3714
    .local v228, "wifiRxTotalPackets":J
    const/4 v6, 0x3

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v238

    .line 3715
    .local v238, "wifiTxTotalPackets":J
    const/4 v6, 0x4

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v50

    .line 3716
    .local v50, "btRxTotalBytes":J
    const/4 v6, 0x5

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v54

    .line 3718
    .local v54, "btTxTotalBytes":J
    const-wide/16 v6, 0x0

    cmp-long v6, v86, v6

    if-eqz v6, :cond_15

    .line 3719
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3720
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3721
    const-string/jumbo v6, "  Total full wakelock time: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3722
    const-wide/16 v6, 0x1f4

    add-long v6, v6, v86

    const-wide/16 v12, 0x3e8

    div-long/2addr v6, v12

    .line 3721
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    .line 3723
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3726
    :cond_15
    const-wide/16 v6, 0x0

    cmp-long v6, v142, v6

    if-eqz v6, :cond_16

    .line 3727
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3728
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3729
    const-string/jumbo v6, "  Total partial wakelock time: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3730
    const-wide/16 v6, 0x1f4

    add-long v6, v6, v142

    const-wide/16 v12, 0x3e8

    div-long/2addr v6, v12

    .line 3729
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    .line 3731
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3734
    :cond_16
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3735
    const-string/jumbo v6, "  Mobile total received: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v122

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3736
    const-string/jumbo v6, ", sent: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v130

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3737
    const-string/jumbo v6, " (packets received "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-wide/from16 v1, v124

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 3738
    const-string/jumbo v6, ", sent "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-wide/from16 v1, v132

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v6, ")"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3739
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3740
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3741
    const-string/jumbo v6, "  Phone signal levels:"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3742
    const/16 v61, 0x0

    .line 3743
    const/16 v94, 0x0

    :goto_4
    const/4 v6, 0x5

    move/from16 v0, v94

    if-ge v0, v6, :cond_18

    .line 3744
    move-object/from16 v0, p0

    move/from16 v1, v94

    move-wide/from16 v2, v24

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v172

    .line 3745
    .restart local v172    # "time":J
    const-wide/16 v6, 0x0

    cmp-long v6, v172, v6

    if-nez v6, :cond_17

    .line 3743
    :goto_5
    add-int/lit8 v94, v94, 0x1

    goto :goto_4

    .line 3748
    :cond_17
    const-string/jumbo v6, "\n    "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3749
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3750
    const/16 v61, 0x1

    .line 3751
    sget-object v6, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v94

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3752
    const-string/jumbo v6, " "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3753
    const-wide/16 v6, 0x3e8

    div-long v6, v172, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3754
    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3755
    move-object/from16 v0, p0

    move-wide/from16 v1, v172

    move-wide/from16 v3, v210

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3756
    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3757
    move-object/from16 v0, p0

    move/from16 v1, v94

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getPhoneSignalStrengthCount(II)I

    move-result v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3758
    const-string/jumbo v6, "x"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 3760
    .end local v172    # "time":J
    :cond_18
    if-nez v61, :cond_19

    const-string/jumbo v6, " (no activity)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3761
    :cond_19
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3763
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3764
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3765
    const-string/jumbo v6, "  Signal scanning time: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3766
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getPhoneSignalScanningTime(JI)J

    move-result-wide v6

    const-wide/16 v12, 0x3e8

    div-long/2addr v6, v12

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    .line 3767
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3769
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3770
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3771
    const-string/jumbo v6, "  Radio types:"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3772
    const/16 v61, 0x0

    .line 3773
    const/16 v94, 0x0

    :goto_6
    const/16 v6, 0x11

    move/from16 v0, v94

    if-ge v0, v6, :cond_1b

    .line 3774
    move-object/from16 v0, p0

    move/from16 v1, v94

    move-wide/from16 v2, v24

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->getPhoneDataConnectionTime(IJI)J

    move-result-wide v172

    .line 3775
    .restart local v172    # "time":J
    const-wide/16 v6, 0x0

    cmp-long v6, v172, v6

    if-nez v6, :cond_1a

    .line 3773
    :goto_7
    add-int/lit8 v94, v94, 0x1

    goto :goto_6

    .line 3778
    :cond_1a
    const-string/jumbo v6, "\n    "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3779
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3780
    const/16 v61, 0x1

    .line 3781
    sget-object v6, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v94

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3782
    const-string/jumbo v6, " "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3783
    const-wide/16 v6, 0x3e8

    div-long v6, v172, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3784
    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3785
    move-object/from16 v0, p0

    move-wide/from16 v1, v172

    move-wide/from16 v3, v210

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3786
    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3787
    move-object/from16 v0, p0

    move/from16 v1, v94

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getPhoneDataConnectionCount(II)I

    move-result v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3788
    const-string/jumbo v6, "x"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 3790
    .end local v172    # "time":J
    :cond_1b
    if-nez v61, :cond_1c

    const-string/jumbo v6, " (no activity)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3791
    :cond_1c
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3793
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3794
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3795
    const-string/jumbo v6, "  Mobile radio active time: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3796
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v114

    .line 3797
    .local v114, "mobileActiveTime":J
    const-wide/16 v6, 0x3e8

    div-long v6, v114, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3798
    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v114

    move-wide/from16 v3, v210

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3799
    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveCount(I)I

    move-result v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3800
    const-string/jumbo v6, "x"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3801
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3803
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveUnknownTime(I)J

    move-result-wide v116

    .line 3804
    .local v116, "mobileActiveUnknownTime":J
    const-wide/16 v6, 0x0

    cmp-long v6, v116, v6

    if-eqz v6, :cond_1d

    .line 3805
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3806
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3807
    const-string/jumbo v6, "  Mobile radio active unknown time: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3808
    const-wide/16 v6, 0x3e8

    div-long v6, v116, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3809
    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3810
    move-object/from16 v0, p0

    move-wide/from16 v1, v116

    move-wide/from16 v3, v210

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3811
    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveUnknownCount(I)I

    move-result v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3812
    const-string/jumbo v6, "x"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3813
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3816
    :cond_1d
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveAdjustedTime(I)J

    move-result-wide v112

    .line 3817
    .local v112, "mobileActiveAdjustedTime":J
    const-wide/16 v6, 0x0

    cmp-long v6, v112, v6

    if-eqz v6, :cond_1e

    .line 3818
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3819
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3820
    const-string/jumbo v6, "  Mobile radio active adjusted time: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3821
    const-wide/16 v6, 0x3e8

    div-long v6, v112, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3822
    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3823
    move-object/from16 v0, p0

    move-wide/from16 v1, v112

    move-wide/from16 v3, v210

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3824
    const-string/jumbo v6, ")"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3825
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3828
    :cond_1e
    const-string/jumbo v16, "Radio"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v17

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move-object/from16 v15, p3

    move/from16 v18, p4

    invoke-direct/range {v12 .. v18}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 3830
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3831
    const-string/jumbo v6, "  Wi-Fi total received: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v226

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3832
    const-string/jumbo v6, ", sent: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v236

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3833
    const-string/jumbo v6, " (packets received "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-wide/from16 v1, v228

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 3834
    const-string/jumbo v6, ", sent "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-wide/from16 v1, v238

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v6, ")"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3835
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3836
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3837
    const-string/jumbo v6, "  Wifi on: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v218, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3838
    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v218

    move-wide/from16 v3, v210

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3839
    const-string/jumbo v6, "), Wifi running: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v220, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3840
    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v220

    move-wide/from16 v3, v210

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3841
    const-string/jumbo v6, ")"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3842
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3844
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3845
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3846
    const-string/jumbo v6, "  Wifi states:"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3847
    const/16 v61, 0x0

    .line 3848
    const/16 v94, 0x0

    :goto_8
    const/16 v6, 0x8

    move/from16 v0, v94

    if-ge v0, v6, :cond_20

    .line 3849
    move-object/from16 v0, p0

    move/from16 v1, v94

    move-wide/from16 v2, v24

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->getWifiStateTime(IJI)J

    move-result-wide v172

    .line 3850
    .restart local v172    # "time":J
    const-wide/16 v6, 0x0

    cmp-long v6, v172, v6

    if-nez v6, :cond_1f

    .line 3848
    :goto_9
    add-int/lit8 v94, v94, 0x1

    goto :goto_8

    .line 3853
    :cond_1f
    const-string/jumbo v6, "\n    "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3854
    const/16 v61, 0x1

    .line 3855
    sget-object v6, Landroid/os/BatteryStats;->WIFI_STATE_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v94

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3856
    const-string/jumbo v6, " "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3857
    const-wide/16 v6, 0x3e8

    div-long v6, v172, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3858
    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3859
    move-object/from16 v0, p0

    move-wide/from16 v1, v172

    move-wide/from16 v3, v210

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3860
    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3861
    move-object/from16 v0, p0

    move/from16 v1, v94

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getWifiStateCount(II)I

    move-result v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3862
    const-string/jumbo v6, "x"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 3864
    .end local v172    # "time":J
    :cond_20
    if-nez v61, :cond_21

    const-string/jumbo v6, " (no activity)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3865
    :cond_21
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3867
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3868
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3869
    const-string/jumbo v6, "  Wifi supplicant states:"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3870
    const/16 v61, 0x0

    .line 3871
    const/16 v94, 0x0

    :goto_a
    const/16 v6, 0xd

    move/from16 v0, v94

    if-ge v0, v6, :cond_23

    .line 3872
    move-object/from16 v0, p0

    move/from16 v1, v94

    move-wide/from16 v2, v24

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->getWifiSupplStateTime(IJI)J

    move-result-wide v172

    .line 3873
    .restart local v172    # "time":J
    const-wide/16 v6, 0x0

    cmp-long v6, v172, v6

    if-nez v6, :cond_22

    .line 3871
    :goto_b
    add-int/lit8 v94, v94, 0x1

    goto :goto_a

    .line 3876
    :cond_22
    const-string/jumbo v6, "\n    "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3877
    const/16 v61, 0x1

    .line 3878
    sget-object v6, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v94

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3879
    const-string/jumbo v6, " "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3880
    const-wide/16 v6, 0x3e8

    div-long v6, v172, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3881
    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3882
    move-object/from16 v0, p0

    move-wide/from16 v1, v172

    move-wide/from16 v3, v210

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3883
    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3884
    move-object/from16 v0, p0

    move/from16 v1, v94

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getWifiSupplStateCount(II)I

    move-result v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3885
    const-string/jumbo v6, "x"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 3887
    .end local v172    # "time":J
    :cond_23
    if-nez v61, :cond_24

    const-string/jumbo v6, " (no activity)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3888
    :cond_24
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3890
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3891
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3892
    const-string/jumbo v6, "  Wifi signal levels:"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3893
    const/16 v61, 0x0

    .line 3894
    const/16 v94, 0x0

    :goto_c
    const/4 v6, 0x5

    move/from16 v0, v94

    if-ge v0, v6, :cond_26

    .line 3895
    move-object/from16 v0, p0

    move/from16 v1, v94

    move-wide/from16 v2, v24

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->getWifiSignalStrengthTime(IJI)J

    move-result-wide v172

    .line 3896
    .restart local v172    # "time":J
    const-wide/16 v6, 0x0

    cmp-long v6, v172, v6

    if-nez v6, :cond_25

    .line 3894
    :goto_d
    add-int/lit8 v94, v94, 0x1

    goto :goto_c

    .line 3899
    :cond_25
    const-string/jumbo v6, "\n    "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3900
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3901
    const/16 v61, 0x1

    .line 3902
    const-string/jumbo v6, "level("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3903
    move/from16 v0, v94

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3904
    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3905
    const-wide/16 v6, 0x3e8

    div-long v6, v172, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3906
    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3907
    move-object/from16 v0, p0

    move-wide/from16 v1, v172

    move-wide/from16 v3, v210

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3908
    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3909
    move-object/from16 v0, p0

    move/from16 v1, v94

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getWifiSignalStrengthCount(II)I

    move-result v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3910
    const-string/jumbo v6, "x"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 3912
    .end local v172    # "time":J
    :cond_26
    if-nez v61, :cond_27

    const-string/jumbo v6, " (no activity)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3913
    :cond_27
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3915
    const-string/jumbo v16, "WiFi"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v17

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move-object/from16 v15, p3

    move/from16 v18, p4

    invoke-direct/range {v12 .. v18}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 3917
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3918
    const-string/jumbo v6, "  Bluetooth total received: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v50

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3919
    const-string/jumbo v6, ", sent: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v54

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3921
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getBluetoothScanTime(JI)J

    move-result-wide v6

    const-wide/16 v12, 0x3e8

    div-long v46, v6, v12

    .line 3922
    .local v46, "bluetoothScanTimeMs":J
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3923
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3924
    const-string/jumbo v6, "  Bluetooth scan time: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v46

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3925
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3927
    const-string/jumbo v16, "Bluetooth"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v17

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move-object/from16 v15, p3

    move/from16 v18, p4

    invoke-direct/range {v12 .. v18}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 3930
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3932
    const/4 v6, 0x2

    move/from16 v0, p4

    if-ne v0, v6, :cond_35

    .line 3933
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getIsOnBattery()Z

    move-result v6

    if-eqz v6, :cond_34

    .line 3934
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  Device is currently unplugged"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3935
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Discharge cycle start level: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3936
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 3937
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Discharge cycle current level: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3938
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 3946
    :goto_e
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Amount discharged while screen on: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3947
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOn()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 3948
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Amount discharged while screen off: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3949
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOff()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 3950
    const-string/jumbo v6, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3964
    :goto_f
    new-instance v93, Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v6, 0x0

    move-object/from16 v0, v93

    move-object/from16 v1, p1

    move/from16 v2, p6

    invoke-direct {v0, v1, v6, v2}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;ZZ)V

    .line 3965
    .local v93, "helper":Lcom/android/internal/os/BatteryStatsHelper;
    move-object/from16 v0, v93

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    .line 3966
    const/4 v6, -0x1

    move-object/from16 v0, v93

    move/from16 v1, p4

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    .line 3967
    invoke-virtual/range {v93 .. v93}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v162

    .line 3968
    .local v162, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    if-eqz v162, :cond_37

    invoke-interface/range {v162 .. v162}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_37

    .line 3969
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  Estimated power use (mAh):"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3970
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Capacity: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3971
    invoke-virtual/range {v93 .. v93}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 3972
    const-string/jumbo v6, ", Computed drain: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {v93 .. v93}, Lcom/android/internal/os/BatteryStatsHelper;->getComputedPower()D

    move-result-wide v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 3973
    const-string/jumbo v6, ", actual drain: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {v93 .. v93}, Lcom/android/internal/os/BatteryStatsHelper;->getMinDrainedPower()D

    move-result-wide v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 3974
    invoke-virtual/range {v93 .. v93}, Lcom/android/internal/os/BatteryStatsHelper;->getMinDrainedPower()D

    move-result-wide v6

    invoke-virtual/range {v93 .. v93}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxDrainedPower()D

    move-result-wide v12

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_28

    .line 3975
    const-string/jumbo v6, "-"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {v93 .. v93}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxDrainedPower()D

    move-result-wide v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 3977
    :cond_28
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3978
    const/16 v94, 0x0

    :goto_10
    invoke-interface/range {v162 .. v162}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v0, v94

    if-ge v0, v6, :cond_36

    .line 3979
    move-object/from16 v0, v162

    move/from16 v1, v94

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/internal/os/BatterySipper;

    .line 3980
    .local v41, "bs":Lcom/android/internal/os/BatterySipper;
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3981
    invoke-static {}, Landroid/os/BatteryStats;->-getcom-android-internal-os-BatterySipper$DrainTypeSwitchesValues()[I

    move-result-object v6

    move-object/from16 v0, v41

    iget-object v7, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v7}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 4022
    const-string/jumbo v6, "    ???: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4025
    :goto_11
    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 4027
    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    move-object/from16 v0, v41

    iget-wide v12, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_33

    .line 4031
    const-string/jumbo v6, " ("

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4032
    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_29

    .line 4033
    const-string/jumbo v6, " usage="

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4034
    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 4036
    :cond_29
    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_2a

    .line 4037
    const-string/jumbo v6, " cpu="

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4038
    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 4040
    :cond_2a
    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_2b

    .line 4041
    const-string/jumbo v6, " wake="

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4042
    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 4044
    :cond_2b
    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_2c

    .line 4045
    const-string/jumbo v6, " radio="

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4046
    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 4048
    :cond_2c
    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_2d

    .line 4049
    const-string/jumbo v6, " wifi="

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4050
    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 4052
    :cond_2d
    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_2e

    .line 4053
    const-string/jumbo v6, " bt="

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4054
    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 4056
    :cond_2e
    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_2f

    .line 4057
    const-string/jumbo v6, " gps="

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4058
    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 4060
    :cond_2f
    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_30

    .line 4061
    const-string/jumbo v6, " sensor="

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4062
    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 4064
    :cond_30
    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_31

    .line 4065
    const-string/jumbo v6, " camera="

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4066
    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 4068
    :cond_31
    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_32

    .line 4069
    const-string/jumbo v6, " flash="

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4070
    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 4072
    :cond_32
    const-string/jumbo v6, " )"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4074
    :cond_33
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3978
    add-int/lit8 v94, v94, 0x1

    goto/16 :goto_10

    .line 3940
    .end local v41    # "bs":Lcom/android/internal/os/BatterySipper;
    .end local v93    # "helper":Lcom/android/internal/os/BatteryStatsHelper;
    .end local v162    # "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    :cond_34
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  Device is currently plugged into power"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3941
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Last discharge cycle start level: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3942
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 3943
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Last discharge cycle end level: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3944
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    goto/16 :goto_e

    .line 3952
    :cond_35
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  Device battery use since last full charge"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3953
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Amount discharged (lower bound): "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3954
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 3955
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Amount discharged (upper bound): "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3956
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 3957
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Amount discharged while screen on: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3958
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceCharge()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 3959
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Amount discharged while screen off: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3960
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceCharge()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 3961
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_f

    .line 3983
    .restart local v41    # "bs":Lcom/android/internal/os/BatterySipper;
    .restart local v93    # "helper":Lcom/android/internal/os/BatteryStatsHelper;
    .restart local v162    # "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    :pswitch_0
    const-string/jumbo v6, "    Idle: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 3986
    :pswitch_1
    const-string/jumbo v6, "    Cell standby: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 3989
    :pswitch_2
    const-string/jumbo v6, "    Phone calls: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 3992
    :pswitch_3
    const-string/jumbo v6, "    Wifi: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 3995
    :pswitch_4
    const-string/jumbo v6, "    Bluetooth: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 3998
    :pswitch_5
    const-string/jumbo v6, "    Screen: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 4001
    :pswitch_6
    const-string/jumbo v6, "    Flashlight: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 4004
    :pswitch_7
    const-string/jumbo v6, "    Uid "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4005
    move-object/from16 v0, v41

    iget-object v6, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v6

    move-object/from16 v0, p2

    invoke-static {v0, v6}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 4006
    const-string/jumbo v6, ": "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 4009
    :pswitch_8
    const-string/jumbo v6, "    User "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v41

    iget v6, v0, Lcom/android/internal/os/BatterySipper;->userId:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 4010
    const-string/jumbo v6, ": "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 4013
    :pswitch_9
    const-string/jumbo v6, "    Unaccounted: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 4016
    :pswitch_a
    const-string/jumbo v6, "    Over-counted: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 4019
    :pswitch_b
    const-string/jumbo v6, "    Camera: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 4076
    .end local v41    # "bs":Lcom/android/internal/os/BatterySipper;
    :cond_36
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4079
    :cond_37
    invoke-virtual/range {v93 .. v93}, Lcom/android/internal/os/BatteryStatsHelper;->getMobilemsppList()Ljava/util/List;

    move-result-object v162

    .line 4080
    if-eqz v162, :cond_39

    invoke-interface/range {v162 .. v162}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_39

    .line 4081
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  Per-app mobile ms per packet:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4082
    const-wide/16 v188, 0x0

    .line 4083
    .local v188, "totalTime":J
    const/16 v94, 0x0

    :goto_12
    invoke-interface/range {v162 .. v162}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v0, v94

    if-ge v0, v6, :cond_38

    .line 4084
    move-object/from16 v0, v162

    move/from16 v1, v94

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/internal/os/BatterySipper;

    .line 4085
    .restart local v41    # "bs":Lcom/android/internal/os/BatterySipper;
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4086
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "    Uid "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4087
    move-object/from16 v0, v41

    iget-object v6, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v6

    invoke-static {v14, v6}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 4088
    const-string/jumbo v6, ": "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->mobilemspp:D

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4089
    const-string/jumbo v6, " ("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    move-object/from16 v0, v41

    iget-wide v12, v0, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    add-long/2addr v6, v12

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4090
    const-string/jumbo v6, " packets over "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    .line 4091
    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v41

    iget v6, v0, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "x"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4092
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4093
    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    add-long v188, v188, v6

    .line 4083
    add-int/lit8 v94, v94, 0x1

    goto :goto_12

    .line 4095
    .end local v41    # "bs":Lcom/android/internal/os/BatterySipper;
    :cond_38
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4096
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4097
    const-string/jumbo v6, "    TOTAL TIME: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4098
    move-wide/from16 v0, v188

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4099
    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v188

    move-wide/from16 v3, v210

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4100
    const-string/jumbo v6, ")"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4101
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4102
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4105
    .end local v188    # "totalTime":J
    :cond_39
    new-instance v175, Landroid/os/BatteryStats$1;

    move-object/from16 v0, v175

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/os/BatteryStats$1;-><init>(Landroid/os/BatteryStats;)V

    .line 4120
    .local v175, "timerComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/os/BatteryStats$TimerEntry;>;"
    if-gez p5, :cond_43

    .line 4122
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v108

    .line 4123
    .local v108, "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v108 .. v108}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_3e

    .line 4124
    new-instance v109, Ljava/util/ArrayList;

    invoke-direct/range {v109 .. v109}, Ljava/util/ArrayList;-><init>()V

    .line 4126
    .local v109, "ktimers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    invoke-interface/range {v108 .. v108}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    .line 4125
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v80

    .local v80, "ent$iterator":Ljava/util/Iterator;
    :cond_3a
    :goto_13
    invoke-interface/range {v80 .. v80}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3b

    invoke-interface/range {v80 .. v80}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v79

    check-cast v79, Ljava/util/Map$Entry;

    .line 4127
    .local v79, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v79 .. v79}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/BatteryStats$Timer;

    .line 4128
    .local v19, "timer":Landroid/os/BatteryStats$Timer;
    move-object/from16 v0, v19

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v20

    .line 4129
    .local v20, "totalTimeMillis":J
    const-wide/16 v6, 0x0

    cmp-long v6, v20, v6

    if-lez v6, :cond_3a

    .line 4130
    new-instance v16, Landroid/os/BatteryStats$TimerEntry;

    invoke-interface/range {v79 .. v79}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    const/16 v18, 0x0

    invoke-direct/range {v16 .. v21}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    move-object/from16 v0, v109

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 4133
    .end local v19    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v20    # "totalTimeMillis":J
    .end local v79    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_3b
    invoke-virtual/range {v109 .. v109}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3e

    .line 4134
    move-object/from16 v0, v109

    move-object/from16 v1, v175

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4135
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  All kernel wake locks:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4136
    const/16 v94, 0x0

    :goto_14
    invoke-virtual/range {v109 .. v109}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v94

    if-ge v0, v6, :cond_3d

    .line 4137
    move-object/from16 v0, v109

    move/from16 v1, v94

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v174

    check-cast v174, Landroid/os/BatteryStats$TimerEntry;

    .line 4138
    .local v174, "timer":Landroid/os/BatteryStats$TimerEntry;
    const-string/jumbo v28, ": "

    .line 4139
    .local v28, "linePrefix":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4140
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4141
    const-string/jumbo v6, "  Kernel Wake lock "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4142
    move-object/from16 v0, v174

    iget-object v6, v0, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4143
    move-object/from16 v0, v174

    iget-object v0, v0, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    move-object/from16 v23, v0

    const/16 v26, 0x0

    move-object/from16 v22, v14

    move/from16 v27, p4

    invoke-static/range {v22 .. v28}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 4145
    const-string/jumbo v6, ": "

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3c

    .line 4146
    const-string/jumbo v6, " realtime"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4148
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4136
    :cond_3c
    add-int/lit8 v94, v94, 0x1

    goto :goto_14

    .line 4151
    .end local v28    # "linePrefix":Ljava/lang/String;
    .end local v174    # "timer":Landroid/os/BatteryStats$TimerEntry;
    :cond_3d
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4155
    .end local v80    # "ent$iterator":Ljava/util/Iterator;
    .end local v109    # "ktimers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    :cond_3e
    invoke-virtual/range {v176 .. v176}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_40

    .line 4156
    move-object/from16 v0, v176

    move-object/from16 v1, v175

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4157
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  All partial wake locks:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4158
    const/16 v94, 0x0

    :goto_15
    invoke-virtual/range {v176 .. v176}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v94

    if-ge v0, v6, :cond_3f

    .line 4159
    move-object/from16 v0, v176

    move/from16 v1, v94

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v174

    check-cast v174, Landroid/os/BatteryStats$TimerEntry;

    .line 4160
    .restart local v174    # "timer":Landroid/os/BatteryStats$TimerEntry;
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4161
    const-string/jumbo v6, "  Wake lock "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4162
    move-object/from16 v0, v174

    iget v6, v0, Landroid/os/BatteryStats$TimerEntry;->mId:I

    invoke-static {v14, v6}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 4163
    const-string/jumbo v6, " "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4164
    move-object/from16 v0, v174

    iget-object v6, v0, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4165
    move-object/from16 v0, v174

    iget-object v0, v0, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    move-object/from16 v31, v0

    const-string/jumbo v36, ": "

    const/16 v34, 0x0

    move-object/from16 v30, v14

    move-wide/from16 v32, v24

    move/from16 v35, p4

    invoke-static/range {v30 .. v36}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 4166
    const-string/jumbo v6, " realtime"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4167
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4158
    add-int/lit8 v94, v94, 0x1

    goto :goto_15

    .line 4169
    .end local v174    # "timer":Landroid/os/BatteryStats$TimerEntry;
    :cond_3f
    invoke-virtual/range {v176 .. v176}, Ljava/util/ArrayList;->clear()V

    .line 4170
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4173
    :cond_40
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v208

    .line 4174
    .local v208, "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v208 .. v208}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_43

    .line 4175
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  All wakeup reasons:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4176
    new-instance v153, Ljava/util/ArrayList;

    invoke-direct/range {v153 .. v153}, Ljava/util/ArrayList;-><init>()V

    .line 4177
    .local v153, "reasons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    invoke-interface/range {v208 .. v208}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v80

    .restart local v80    # "ent$iterator":Ljava/util/Iterator;
    :goto_16
    invoke-interface/range {v80 .. v80}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_41

    invoke-interface/range {v80 .. v80}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v79

    check-cast v79, Ljava/util/Map$Entry;

    .line 4178
    .restart local v79    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v79 .. v79}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/BatteryStats$Timer;

    .line 4179
    .restart local v19    # "timer":Landroid/os/BatteryStats$Timer;
    new-instance v30, Landroid/os/BatteryStats$TimerEntry;

    invoke-interface/range {v79 .. v79}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    .line 4180
    move-object/from16 v0, v19

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v34, v0

    .line 4179
    const/16 v32, 0x0

    move-object/from16 v33, v19

    invoke-direct/range {v30 .. v35}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    move-object/from16 v0, v153

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 4182
    .end local v19    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v79    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_41
    move-object/from16 v0, v153

    move-object/from16 v1, v175

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4183
    const/16 v94, 0x0

    :goto_17
    invoke-virtual/range {v153 .. v153}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v94

    if-ge v0, v6, :cond_42

    .line 4184
    move-object/from16 v0, v153

    move/from16 v1, v94

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v174

    check-cast v174, Landroid/os/BatteryStats$TimerEntry;

    .line 4185
    .restart local v174    # "timer":Landroid/os/BatteryStats$TimerEntry;
    const-string/jumbo v28, ": "

    .line 4186
    .restart local v28    # "linePrefix":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4187
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4188
    const-string/jumbo v6, "  Wakeup reason "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4189
    move-object/from16 v0, v174

    iget-object v6, v0, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4190
    move-object/from16 v0, v174

    iget-object v0, v0, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    move-object/from16 v31, v0

    const-string/jumbo v36, ": "

    const/16 v34, 0x0

    move-object/from16 v30, v14

    move-wide/from16 v32, v24

    move/from16 v35, p4

    invoke-static/range {v30 .. v36}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 4191
    const-string/jumbo v6, " realtime"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4192
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4183
    add-int/lit8 v94, v94, 0x1

    goto :goto_17

    .line 4194
    .end local v28    # "linePrefix":Ljava/lang/String;
    .end local v174    # "timer":Landroid/os/BatteryStats$TimerEntry;
    :cond_42
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4198
    .end local v80    # "ent$iterator":Ljava/util/Iterator;
    .end local v108    # "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v153    # "reasons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .end local v208    # "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_43
    const/16 v104, 0x0

    :goto_18
    move/from16 v0, v104

    move/from16 v1, v38

    if-ge v0, v1, :cond_89

    .line 4199
    move-object/from16 v0, v197

    move/from16 v1, v104

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v194

    .line 4200
    .local v194, "uid":I
    if-ltz p5, :cond_45

    move/from16 v0, v194

    move/from16 v1, p5

    if-eq v0, v1, :cond_45

    const/16 v6, 0x3e8

    move/from16 v0, v194

    if-eq v0, v6, :cond_45

    .line 4198
    :cond_44
    :goto_19
    add-int/lit8 v104, v104, 0x1

    goto :goto_18

    .line 4204
    :cond_45
    move-object/from16 v0, v197

    move/from16 v1, v104

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v177

    check-cast v177, Landroid/os/BatteryStats$Uid;

    .line 4206
    .restart local v177    # "u":Landroid/os/BatteryStats$Uid;
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4207
    const-string/jumbo v6, "  "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4208
    move-object/from16 v0, p2

    move/from16 v1, v194

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 4209
    const-string/jumbo v6, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4212
    const/4 v6, 0x0

    move-object/from16 v0, v177

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v118

    .line 4213
    .local v118, "mobileRxBytes":J
    const/4 v6, 0x1

    move-object/from16 v0, v177

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v126

    .line 4214
    .local v126, "mobileTxBytes":J
    const/4 v6, 0x2

    move-object/from16 v0, v177

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v222

    .line 4215
    .local v222, "wifiRxBytes":J
    const/4 v6, 0x3

    move-object/from16 v0, v177

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v232

    .line 4216
    .local v232, "wifiTxBytes":J
    const/4 v6, 0x4

    move-object/from16 v0, v177

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v48

    .line 4217
    .local v48, "btRxBytes":J
    const/4 v6, 0x5

    move-object/from16 v0, v177

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v52

    .line 4219
    .local v52, "btTxBytes":J
    const/4 v6, 0x0

    move-object/from16 v0, v177

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v120

    .line 4220
    .local v120, "mobileRxPackets":J
    const/4 v6, 0x1

    move-object/from16 v0, v177

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v128

    .line 4221
    .local v128, "mobileTxPackets":J
    const/4 v6, 0x2

    move-object/from16 v0, v177

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v224

    .line 4222
    .local v224, "wifiRxPackets":J
    const/4 v6, 0x3

    move-object/from16 v0, v177

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v234

    .line 4224
    .local v234, "wifiTxPackets":J
    move-object/from16 v0, v177

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v198

    .line 4225
    .local v198, "uidMobileActiveTime":J
    move-object/from16 v0, v177

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v196

    .line 4227
    .local v196, "uidMobileActiveCount":I
    move-object/from16 v0, v177

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v88

    .line 4228
    .local v88, "fullWifiLockOnTime":J
    move-object/from16 v0, v177

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v230

    .line 4229
    .local v230, "wifiScanTime":J
    move-object/from16 v0, v177

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getWifiScanCount(I)I

    move-result v209

    .line 4230
    .local v209, "wifiScanCount":I
    move-object/from16 v0, v177

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v200

    .line 4232
    .local v200, "uidWifiRunningTime":J
    move-object/from16 v0, v177

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioApWakeupCount(I)J

    move-result-wide v134

    .line 4233
    .local v134, "mobileWakeup":J
    move-object/from16 v0, v177

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getWifiRadioApWakeupCount(I)J

    move-result-wide v240

    .line 4235
    .local v240, "wifiWakeup":J
    const-wide/16 v6, 0x0

    cmp-long v6, v118, v6

    if-gtz v6, :cond_46

    const-wide/16 v6, 0x0

    cmp-long v6, v126, v6

    if-lez v6, :cond_54

    .line 4237
    :cond_46
    :goto_1a
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Mobile network: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4238
    move-object/from16 v0, p0

    move-wide/from16 v1, v118

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, " received, "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4239
    move-object/from16 v0, p0

    move-wide/from16 v1, v126

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4240
    const-string/jumbo v6, " sent (packets "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-wide/from16 v1, v120

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 4241
    const-string/jumbo v6, " received, "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-wide/from16 v1, v128

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v6, " sent)"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4243
    :cond_47
    const-wide/16 v6, 0x0

    cmp-long v6, v198, v6

    if-gtz v6, :cond_48

    if-lez v196, :cond_4a

    .line 4244
    :cond_48
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4245
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "    Mobile radio active: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4246
    const-wide/16 v6, 0x3e8

    div-long v6, v198, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4247
    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4248
    move-object/from16 v0, p0

    move-wide/from16 v1, v198

    move-wide/from16 v3, v114

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4249
    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v196

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "x"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4250
    add-long v140, v120, v128

    .line 4251
    .local v140, "packets":J
    const-wide/16 v6, 0x0

    cmp-long v6, v140, v6

    if-nez v6, :cond_49

    .line 4252
    const-wide/16 v140, 0x1

    .line 4254
    :cond_49
    const-string/jumbo v6, " @ "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4255
    const-wide/16 v6, 0x3e8

    div-long v6, v198, v6

    long-to-double v6, v6

    move-wide/from16 v0, v140

    long-to-double v12, v0

    div-double/2addr v6, v12

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4256
    const-string/jumbo v6, " mspp"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4257
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4260
    .end local v140    # "packets":J
    :cond_4a
    const-wide/16 v6, 0x0

    cmp-long v6, v134, v6

    if-lez v6, :cond_4b

    .line 4261
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4262
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4263
    const-string/jumbo v6, "    Mobile radio AP wakeups: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4264
    move-wide/from16 v0, v134

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4265
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4268
    :cond_4b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "Modem"

    .line 4269
    invoke-virtual/range {v177 .. v177}, Landroid/os/BatteryStats$Uid;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v17

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move/from16 v18, p4

    .line 4268
    invoke-direct/range {v12 .. v18}, Landroid/os/BatteryStats;->printControllerActivityIfInteresting(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 4271
    const-wide/16 v6, 0x0

    cmp-long v6, v222, v6

    if-gtz v6, :cond_4c

    const-wide/16 v6, 0x0

    cmp-long v6, v232, v6

    if-lez v6, :cond_55

    .line 4272
    :cond_4c
    :goto_1b
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Wi-Fi network: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4273
    move-object/from16 v0, p0

    move-wide/from16 v1, v222

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, " received, "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4274
    move-object/from16 v0, p0

    move-wide/from16 v1, v232

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4275
    const-string/jumbo v6, " sent (packets "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-wide/from16 v1, v224

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 4276
    const-string/jumbo v6, " received, "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-wide/from16 v1, v234

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v6, " sent)"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4279
    :cond_4d
    const-wide/16 v6, 0x0

    cmp-long v6, v88, v6

    if-nez v6, :cond_4e

    const-wide/16 v6, 0x0

    cmp-long v6, v230, v6

    if-eqz v6, :cond_56

    .line 4281
    :cond_4e
    :goto_1c
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4282
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "    Wifi Running: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4283
    const-wide/16 v6, 0x3e8

    div-long v6, v200, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4284
    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v200

    move-wide/from16 v3, v210

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4285
    const-string/jumbo v6, ")\n"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4286
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "    Full Wifi Lock: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4287
    const-wide/16 v6, 0x3e8

    div-long v6, v88, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4288
    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v88

    move-wide/from16 v3, v210

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4289
    const-string/jumbo v6, ")\n"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4290
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "    Wifi Scan: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4291
    const-wide/16 v6, 0x3e8

    div-long v6, v230, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4292
    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v230

    move-wide/from16 v3, v210

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4293
    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4294
    move/from16 v0, v209

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4295
    const-string/jumbo v6, "x"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4296
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4299
    :cond_4f
    const-wide/16 v6, 0x0

    cmp-long v6, v240, v6

    if-lez v6, :cond_50

    .line 4300
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4301
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4302
    const-string/jumbo v6, "    WiFi AP wakeups: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4303
    move-wide/from16 v0, v240

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4304
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4307
    :cond_50
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "WiFi"

    .line 4308
    invoke-virtual/range {v177 .. v177}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v17

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move/from16 v18, p4

    .line 4307
    invoke-direct/range {v12 .. v18}, Landroid/os/BatteryStats;->printControllerActivityIfInteresting(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 4310
    const-wide/16 v6, 0x0

    cmp-long v6, v48, v6

    if-gtz v6, :cond_51

    const-wide/16 v6, 0x0

    cmp-long v6, v52, v6

    if-lez v6, :cond_52

    .line 4311
    :cond_51
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Bluetooth network: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4312
    move-object/from16 v0, p0

    move-wide/from16 v1, v48

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, " received, "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4313
    move-object/from16 v0, p0

    move-wide/from16 v1, v52

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4314
    const-string/jumbo v6, " sent"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4317
    :cond_52
    invoke-virtual/range {v177 .. v177}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v31

    .line 4318
    const-string/jumbo v36, "Bluetooth Scan"

    move-object/from16 v29, p2

    move-object/from16 v30, v14

    move-wide/from16 v32, v24

    move/from16 v34, p4

    move-object/from16 v35, p3

    .line 4317
    invoke-static/range {v29 .. v36}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v195

    .line 4320
    .local v195, "uidActivity":Z
    invoke-virtual/range {v177 .. v177}, Landroid/os/BatteryStats$Uid;->hasUserActivity()Z

    move-result v6

    if-eqz v6, :cond_59

    .line 4321
    const/16 v91, 0x0

    .line 4322
    .local v91, "hasData":Z
    const/16 v94, 0x0

    :goto_1d
    const/4 v6, 0x4

    move/from16 v0, v94

    if-ge v0, v6, :cond_58

    .line 4323
    move-object/from16 v0, v177

    move/from16 v1, v94

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v206

    .line 4324
    .local v206, "val":I
    if-eqz v206, :cond_53

    .line 4325
    if-nez v91, :cond_57

    .line 4326
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4327
    const-string/jumbo v6, "    User activity: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4328
    const/16 v91, 0x1

    .line 4332
    :goto_1e
    move/from16 v0, v206

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4333
    const-string/jumbo v6, " "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4334
    sget-object v6, Landroid/os/BatteryStats$Uid;->USER_ACTIVITY_TYPES:[Ljava/lang/String;

    aget-object v6, v6, v94

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4322
    :cond_53
    add-int/lit8 v94, v94, 0x1

    goto :goto_1d

    .line 4236
    .end local v91    # "hasData":Z
    .end local v195    # "uidActivity":Z
    .end local v206    # "val":I
    :cond_54
    const-wide/16 v6, 0x0

    cmp-long v6, v120, v6

    if-gtz v6, :cond_46

    const-wide/16 v6, 0x0

    cmp-long v6, v128, v6

    if-lez v6, :cond_47

    goto/16 :goto_1a

    .line 4271
    :cond_55
    const-wide/16 v6, 0x0

    cmp-long v6, v224, v6

    if-gtz v6, :cond_4c

    const-wide/16 v6, 0x0

    cmp-long v6, v234, v6

    if-lez v6, :cond_4d

    goto/16 :goto_1b

    .line 4279
    :cond_56
    if-nez v209, :cond_4e

    .line 4280
    const-wide/16 v6, 0x0

    cmp-long v6, v200, v6

    if-eqz v6, :cond_4f

    goto/16 :goto_1c

    .line 4330
    .restart local v91    # "hasData":Z
    .restart local v195    # "uidActivity":Z
    .restart local v206    # "val":I
    :cond_57
    const-string/jumbo v6, ", "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e

    .line 4337
    .end local v206    # "val":I
    :cond_58
    if-eqz v91, :cond_59

    .line 4338
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4343
    .end local v91    # "hasData":Z
    :cond_59
    invoke-virtual/range {v177 .. v177}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v207

    .line 4344
    .restart local v207    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    const-wide/16 v180, 0x0

    .local v180, "totalFullWakelock":J
    const-wide/16 v182, 0x0

    .local v182, "totalPartialWakelock":J
    const-wide/16 v192, 0x0

    .line 4345
    .local v192, "totalWindowWakelock":J
    const-wide/16 v178, 0x0

    .line 4346
    .local v178, "totalDrawWakelock":J
    const/16 v60, 0x0

    .line 4347
    .local v60, "countWakelock":I
    invoke-virtual/range {v207 .. v207}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v105, v6, -0x1

    .end local v195    # "uidActivity":Z
    .restart local v105    # "iw":I
    :goto_1f
    if-ltz v105, :cond_5a

    .line 4348
    move-object/from16 v0, v207

    move/from16 v1, v105

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v242

    check-cast v242, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 4349
    .restart local v242    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    const-string/jumbo v28, ": "

    .line 4350
    .restart local v28    # "linePrefix":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4351
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4352
    const-string/jumbo v6, "    Wake lock "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4353
    move-object/from16 v0, v207

    move/from16 v1, v105

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4354
    const/4 v6, 0x1

    move-object/from16 v0, v242

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v23

    .line 4355
    const-string/jumbo v26, "full"

    move-object/from16 v22, v14

    move/from16 v27, p4

    .line 4354
    invoke-static/range {v22 .. v28}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 4356
    const/4 v6, 0x0

    move-object/from16 v0, v242

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v23

    .line 4357
    const-string/jumbo v26, "partial"

    move-object/from16 v22, v14

    move/from16 v27, p4

    .line 4356
    invoke-static/range {v22 .. v28}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 4358
    const/4 v6, 0x2

    move-object/from16 v0, v242

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v23

    .line 4359
    const-string/jumbo v26, "window"

    move-object/from16 v22, v14

    move/from16 v27, p4

    .line 4358
    invoke-static/range {v22 .. v28}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 4360
    const/16 v6, 0x12

    move-object/from16 v0, v242

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v23

    .line 4361
    const-string/jumbo v26, "draw"

    move-object/from16 v22, v14

    move/from16 v27, p4

    .line 4360
    invoke-static/range {v22 .. v28}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 4362
    const-string/jumbo v6, " realtime"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4363
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4364
    const/16 v195, 0x1

    .line 4365
    .local v195, "uidActivity":Z
    add-int/lit8 v60, v60, 0x1

    .line 4367
    const/4 v6, 0x1

    move-object/from16 v0, v242

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v6

    move-wide/from16 v0, v24

    move/from16 v2, p4

    invoke-static {v6, v0, v1, v2}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v6

    add-long v180, v180, v6

    .line 4369
    const/4 v6, 0x0

    move-object/from16 v0, v242

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v6

    move-wide/from16 v0, v24

    move/from16 v2, p4

    invoke-static {v6, v0, v1, v2}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v6

    add-long v182, v182, v6

    .line 4371
    const/4 v6, 0x2

    move-object/from16 v0, v242

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v6

    move-wide/from16 v0, v24

    move/from16 v2, p4

    invoke-static {v6, v0, v1, v2}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v6

    add-long v192, v192, v6

    .line 4373
    const/16 v6, 0x12

    move-object/from16 v0, v242

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v6

    move-wide/from16 v0, v24

    move/from16 v2, p4

    invoke-static {v6, v0, v1, v2}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v6

    add-long v178, v178, v6

    .line 4347
    add-int/lit8 v105, v105, -0x1

    goto/16 :goto_1f

    .line 4376
    .end local v28    # "linePrefix":Ljava/lang/String;
    .end local v195    # "uidActivity":Z
    .end local v242    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    :cond_5a
    const/4 v6, 0x1

    move/from16 v0, v60

    if-le v0, v6, :cond_63

    .line 4377
    const-wide/16 v6, 0x0

    cmp-long v6, v180, v6

    if-nez v6, :cond_5b

    const-wide/16 v6, 0x0

    cmp-long v6, v182, v6

    if-eqz v6, :cond_64

    .line 4379
    :cond_5b
    :goto_20
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4380
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4381
    const-string/jumbo v6, "    TOTAL wake: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4382
    const/16 v111, 0x0

    .line 4383
    .local v111, "needComma":Z
    const-wide/16 v6, 0x0

    cmp-long v6, v180, v6

    if-eqz v6, :cond_5c

    .line 4384
    const/16 v111, 0x1

    .line 4385
    move-wide/from16 v0, v180

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4386
    const-string/jumbo v6, "full"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4388
    :cond_5c
    const-wide/16 v6, 0x0

    cmp-long v6, v182, v6

    if-eqz v6, :cond_5e

    .line 4389
    if-eqz v111, :cond_5d

    .line 4390
    const-string/jumbo v6, ", "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4392
    :cond_5d
    const/16 v111, 0x1

    .line 4393
    move-wide/from16 v0, v182

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4394
    const-string/jumbo v6, "partial"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4396
    :cond_5e
    const-wide/16 v6, 0x0

    cmp-long v6, v192, v6

    if-eqz v6, :cond_60

    .line 4397
    if-eqz v111, :cond_5f

    .line 4398
    const-string/jumbo v6, ", "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4400
    :cond_5f
    const/16 v111, 0x1

    .line 4401
    move-wide/from16 v0, v192

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4402
    const-string/jumbo v6, "window"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4404
    :cond_60
    const-wide/16 v6, 0x0

    cmp-long v6, v178, v6

    if-eqz v6, :cond_62

    .line 4405
    if-eqz v111, :cond_61

    .line 4406
    const-string/jumbo v6, ","

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4408
    :cond_61
    const/16 v111, 0x1

    .line 4409
    move-wide/from16 v0, v178

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4410
    const-string/jumbo v6, "draw"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4412
    :cond_62
    const-string/jumbo v6, " realtime"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4413
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4417
    .end local v111    # "needComma":Z
    :cond_63
    invoke-virtual/range {v177 .. v177}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    move-result-object v167

    .line 4418
    .local v167, "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual/range {v167 .. v167}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v103, v6, -0x1

    .local v103, "isy":I
    :goto_21
    if-ltz v103, :cond_66

    .line 4419
    move-object/from16 v0, v167

    move/from16 v1, v103

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/BatteryStats$Timer;

    .line 4421
    .restart local v19    # "timer":Landroid/os/BatteryStats$Timer;
    move-object/from16 v0, v19

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v6

    const-wide/16 v12, 0x1f4

    add-long/2addr v6, v12

    const-wide/16 v12, 0x3e8

    div-long v188, v6, v12

    .line 4422
    .restart local v188    # "totalTime":J
    move-object/from16 v0, v19

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v59

    .line 4423
    .local v59, "count":I
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4424
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4425
    const-string/jumbo v6, "    Sync "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4426
    move-object/from16 v0, v167

    move/from16 v1, v103

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4427
    const-string/jumbo v6, ": "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4428
    const-wide/16 v6, 0x0

    cmp-long v6, v188, v6

    if-eqz v6, :cond_65

    .line 4429
    move-wide/from16 v0, v188

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4430
    const-string/jumbo v6, "realtime ("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4431
    move/from16 v0, v59

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4432
    const-string/jumbo v6, " times)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4436
    :goto_22
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4437
    const/16 v195, 0x1

    .line 4418
    .restart local v195    # "uidActivity":Z
    add-int/lit8 v103, v103, -0x1

    goto :goto_21

    .line 4378
    .end local v19    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v59    # "count":I
    .end local v103    # "isy":I
    .end local v167    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v188    # "totalTime":J
    .end local v195    # "uidActivity":Z
    :cond_64
    const-wide/16 v6, 0x0

    cmp-long v6, v192, v6

    if-eqz v6, :cond_63

    goto/16 :goto_20

    .line 4434
    .restart local v19    # "timer":Landroid/os/BatteryStats$Timer;
    .restart local v59    # "count":I
    .restart local v103    # "isy":I
    .restart local v167    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v188    # "totalTime":J
    :cond_65
    const-string/jumbo v6, "(not used)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 4440
    .end local v19    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v59    # "count":I
    .end local v188    # "totalTime":J
    :cond_66
    invoke-virtual/range {v177 .. v177}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    move-result-object v107

    .line 4441
    .local v107, "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual/range {v107 .. v107}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v95, v6, -0x1

    .local v95, "ij":I
    :goto_23
    if-ltz v95, :cond_68

    .line 4442
    move-object/from16 v0, v107

    move/from16 v1, v95

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/BatteryStats$Timer;

    .line 4444
    .restart local v19    # "timer":Landroid/os/BatteryStats$Timer;
    move-object/from16 v0, v19

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v6

    const-wide/16 v12, 0x1f4

    add-long/2addr v6, v12

    const-wide/16 v12, 0x3e8

    div-long v188, v6, v12

    .line 4445
    .restart local v188    # "totalTime":J
    move-object/from16 v0, v19

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v59

    .line 4446
    .restart local v59    # "count":I
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4447
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4448
    const-string/jumbo v6, "    Job "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4449
    move-object/from16 v0, v107

    move/from16 v1, v95

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4450
    const-string/jumbo v6, ": "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4451
    const-wide/16 v6, 0x0

    cmp-long v6, v188, v6

    if-eqz v6, :cond_67

    .line 4452
    move-wide/from16 v0, v188

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4453
    const-string/jumbo v6, "realtime ("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4454
    move/from16 v0, v59

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4455
    const-string/jumbo v6, " times)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4459
    :goto_24
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4460
    const/16 v195, 0x1

    .line 4441
    .restart local v195    # "uidActivity":Z
    add-int/lit8 v95, v95, -0x1

    goto :goto_23

    .line 4457
    .end local v195    # "uidActivity":Z
    :cond_67
    const-string/jumbo v6, "(not used)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 4463
    .end local v19    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v59    # "count":I
    .end local v188    # "totalTime":J
    :cond_68
    invoke-virtual/range {v177 .. v177}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v31

    .line 4464
    const-string/jumbo v36, "Flashlight"

    move-object/from16 v29, p2

    move-object/from16 v30, v14

    move-wide/from16 v32, v24

    move/from16 v34, p4

    move-object/from16 v35, p3

    .line 4463
    invoke-static/range {v29 .. v36}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    or-int v195, v195, v6

    .line 4465
    .local v195, "uidActivity":Z
    invoke-virtual/range {v177 .. v177}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v31

    .line 4466
    const-string/jumbo v36, "Camera"

    move-object/from16 v29, p2

    move-object/from16 v30, v14

    move-wide/from16 v32, v24

    move/from16 v34, p4

    move-object/from16 v35, p3

    .line 4465
    invoke-static/range {v29 .. v36}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    or-int v195, v195, v6

    .line 4467
    invoke-virtual/range {v177 .. v177}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v31

    .line 4468
    const-string/jumbo v36, "Video"

    move-object/from16 v29, p2

    move-object/from16 v30, v14

    move-wide/from16 v32, v24

    move/from16 v34, p4

    move-object/from16 v35, p3

    .line 4467
    invoke-static/range {v29 .. v36}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    or-int v195, v195, v6

    .line 4469
    invoke-virtual/range {v177 .. v177}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v31

    .line 4470
    const-string/jumbo v36, "Audio"

    move-object/from16 v29, p2

    move-object/from16 v30, v14

    move-wide/from16 v32, v24

    move/from16 v34, p4

    move-object/from16 v35, p3

    .line 4469
    invoke-static/range {v29 .. v36}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    or-int v195, v195, v6

    .line 4472
    invoke-virtual/range {v177 .. v177}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v160

    .line 4473
    .local v160, "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-virtual/range {v160 .. v160}, Landroid/util/SparseArray;->size()I

    move-result v37

    .line 4474
    .local v37, "NSE":I
    const/16 v101, 0x0

    .end local v195    # "uidActivity":Z
    .local v101, "ise":I
    :goto_25
    move/from16 v0, v101

    move/from16 v1, v37

    if-ge v0, v1, :cond_6c

    .line 4475
    move-object/from16 v0, v160

    move/from16 v1, v101

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v158

    check-cast v158, Landroid/os/BatteryStats$Uid$Sensor;

    .line 4476
    .local v158, "se":Landroid/os/BatteryStats$Uid$Sensor;
    move-object/from16 v0, v160

    move/from16 v1, v101

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v159

    .line 4477
    .local v159, "sensorNumber":I
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4478
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4479
    const-string/jumbo v6, "    Sensor "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4480
    invoke-virtual/range {v158 .. v158}, Landroid/os/BatteryStats$Uid$Sensor;->getHandle()I

    move-result v90

    .line 4481
    .local v90, "handle":I
    const/16 v6, -0x2710

    move/from16 v0, v90

    if-ne v0, v6, :cond_69

    .line 4482
    const-string/jumbo v6, "GPS"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4486
    :goto_26
    const-string/jumbo v6, ": "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4488
    invoke-virtual/range {v158 .. v158}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v19

    .line 4489
    .restart local v19    # "timer":Landroid/os/BatteryStats$Timer;
    if-eqz v19, :cond_6b

    .line 4491
    move-object/from16 v0, v19

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v6

    .line 4492
    const-wide/16 v12, 0x1f4

    .line 4491
    add-long/2addr v6, v12

    .line 4492
    const-wide/16 v12, 0x3e8

    .line 4491
    div-long v188, v6, v12

    .line 4493
    .restart local v188    # "totalTime":J
    move-object/from16 v0, v19

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v59

    .line 4495
    .restart local v59    # "count":I
    const-wide/16 v6, 0x0

    cmp-long v6, v188, v6

    if-eqz v6, :cond_6a

    .line 4496
    move-wide/from16 v0, v188

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4497
    const-string/jumbo v6, "realtime ("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4498
    move/from16 v0, v59

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4499
    const-string/jumbo v6, " times)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4507
    .end local v59    # "count":I
    .end local v188    # "totalTime":J
    :goto_27
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4508
    const/16 v195, 0x1

    .line 4474
    .local v195, "uidActivity":Z
    add-int/lit8 v101, v101, 0x1

    goto/16 :goto_25

    .line 4484
    .end local v19    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v195    # "uidActivity":Z
    :cond_69
    move/from16 v0, v90

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_26

    .line 4501
    .restart local v19    # "timer":Landroid/os/BatteryStats$Timer;
    .restart local v59    # "count":I
    .restart local v188    # "totalTime":J
    :cond_6a
    const-string/jumbo v6, "(not used)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27

    .line 4504
    .end local v59    # "count":I
    .end local v188    # "totalTime":J
    :cond_6b
    const-string/jumbo v6, "(not used)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27

    .line 4511
    .end local v19    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v90    # "handle":I
    .end local v158    # "se":Landroid/os/BatteryStats$Uid$Sensor;
    .end local v159    # "sensorNumber":I
    :cond_6c
    invoke-virtual/range {v177 .. v177}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v31

    .line 4512
    const-string/jumbo v36, "Vibrator"

    move-object/from16 v29, p2

    move-object/from16 v30, v14

    move-wide/from16 v32, v24

    move/from16 v34, p4

    move-object/from16 v35, p3

    .line 4511
    invoke-static/range {v29 .. v36}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    or-int v195, v195, v6

    .line 4513
    .local v195, "uidActivity":Z
    invoke-virtual/range {v177 .. v177}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v31

    .line 4514
    const-string/jumbo v36, "Foreground activities"

    move-object/from16 v29, p2

    move-object/from16 v30, v14

    move-wide/from16 v32, v24

    move/from16 v34, p4

    move-object/from16 v35, p3

    .line 4513
    invoke-static/range {v29 .. v36}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    or-int v195, v195, v6

    .line 4516
    const-wide/16 v186, 0x0

    .line 4517
    .local v186, "totalStateTime":J
    const/16 v100, 0x0

    .end local v195    # "uidActivity":Z
    .local v100, "ips":I
    :goto_28
    const/4 v6, 0x6

    move/from16 v0, v100

    if-ge v0, v6, :cond_6e

    .line 4518
    move-object/from16 v0, v177

    move/from16 v1, v100

    move-wide/from16 v2, v24

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v172

    .line 4519
    .restart local v172    # "time":J
    const-wide/16 v6, 0x0

    cmp-long v6, v172, v6

    if-lez v6, :cond_6d

    .line 4520
    add-long v186, v186, v172

    .line 4521
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4522
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4523
    const-string/jumbo v6, "    "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4524
    sget-object v6, Landroid/os/BatteryStats$Uid;->PROCESS_STATE_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v100

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4525
    const-string/jumbo v6, " for: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4526
    const-wide/16 v6, 0x1f4

    add-long v6, v6, v172

    const-wide/16 v12, 0x3e8

    div-long/2addr v6, v12

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4527
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4528
    const/16 v195, 0x1

    .line 4517
    :cond_6d
    add-int/lit8 v100, v100, 0x1

    goto :goto_28

    .line 4531
    .end local v172    # "time":J
    :cond_6e
    const-wide/16 v6, 0x0

    cmp-long v6, v186, v6

    if-lez v6, :cond_6f

    .line 4532
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4533
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4534
    const-string/jumbo v6, "    Total running: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4535
    const-wide/16 v6, 0x1f4

    add-long v6, v6, v186

    const-wide/16 v12, 0x3e8

    div-long/2addr v6, v12

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4536
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4539
    :cond_6f
    move-object/from16 v0, v177

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v202

    .line 4540
    .local v202, "userCpuTimeUs":J
    move-object/from16 v0, v177

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v168

    .line 4541
    .local v168, "systemCpuTimeUs":J
    move-object/from16 v0, v177

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getCpuPowerMaUs(I)J

    move-result-wide v146

    .line 4542
    .local v146, "powerCpuMaUs":J
    const-wide/16 v6, 0x0

    cmp-long v6, v202, v6

    if-gtz v6, :cond_70

    const-wide/16 v6, 0x0

    cmp-long v6, v168, v6

    if-lez v6, :cond_7a

    .line 4543
    :cond_70
    :goto_29
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4544
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4545
    const-string/jumbo v6, "    Total cpu time: u="

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4546
    const-wide/16 v6, 0x3e8

    div-long v6, v202, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4547
    const-string/jumbo v6, "s="

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4548
    const-wide/16 v6, 0x3e8

    div-long v6, v168, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4549
    const-string/jumbo v6, "p="

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4550
    move-wide/from16 v0, v146

    long-to-double v6, v0

    const-wide v12, 0x41ead27480000000L    # 3.6E9

    div-double/2addr v6, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/lang/StringBuilder;D)V

    .line 4551
    const-string/jumbo v6, "mAh"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4552
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4556
    :cond_71
    invoke-virtual/range {v177 .. v177}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v150

    .line 4557
    .local v150, "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-virtual/range {v150 .. v150}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v99, v6, -0x1

    .local v99, "ipr":I
    :goto_2a
    if-ltz v99, :cond_81

    .line 4558
    move-object/from16 v0, v150

    move/from16 v1, v99

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v152

    check-cast v152, Landroid/os/BatteryStats$Uid$Proc;

    .line 4565
    .local v152, "ps":Landroid/os/BatteryStats$Uid$Proc;
    move-object/from16 v0, v152

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v204

    .line 4566
    .local v204, "userTime":J
    move-object/from16 v0, v152

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v170

    .line 4567
    .local v170, "systemTime":J
    move-object/from16 v0, v152

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v84

    .line 4568
    .local v84, "foregroundTime":J
    move-object/from16 v0, v152

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    move-result v166

    .line 4569
    .local v166, "starts":I
    move-object/from16 v0, v152

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    move-result v137

    .line 4570
    .local v137, "numCrashes":I
    move-object/from16 v0, v152

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    move-result v136

    .line 4571
    .local v136, "numAnrs":I
    if-nez p4, :cond_7b

    .line 4572
    invoke-virtual/range {v152 .. v152}, Landroid/os/BatteryStats$Uid$Proc;->countExcessivePowers()I

    move-result v138

    .line 4574
    .local v138, "numExcessive":I
    :goto_2b
    const-wide/16 v6, 0x0

    cmp-long v6, v204, v6

    if-nez v6, :cond_72

    const-wide/16 v6, 0x0

    cmp-long v6, v170, v6

    if-eqz v6, :cond_7c

    .line 4576
    :cond_72
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4577
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "    Proc "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4578
    move-object/from16 v0, v150

    move/from16 v1, v99

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ":\n"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4579
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "      CPU: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4580
    move-wide/from16 v0, v204

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "usr + "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4581
    move-wide/from16 v0, v170

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "krn ; "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4582
    move-wide/from16 v0, v84

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "fg"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4583
    if-nez v166, :cond_73

    if-eqz v137, :cond_7d

    .line 4584
    :cond_73
    :goto_2c
    const-string/jumbo v6, "\n"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "      "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4585
    const/16 v92, 0x0

    .line 4586
    .local v92, "hasOne":Z
    if-eqz v166, :cond_74

    .line 4587
    const/16 v92, 0x1

    .line 4588
    move/from16 v0, v166

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " starts"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4590
    :cond_74
    if-eqz v137, :cond_76

    .line 4591
    if-eqz v92, :cond_75

    .line 4592
    const-string/jumbo v6, ", "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4594
    :cond_75
    const/16 v92, 0x1

    .line 4595
    move/from16 v0, v137

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " crashes"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4597
    :cond_76
    if-eqz v136, :cond_78

    .line 4598
    if-eqz v92, :cond_77

    .line 4599
    const-string/jumbo v6, ", "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4601
    :cond_77
    move/from16 v0, v136

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " anrs"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4604
    .end local v92    # "hasOne":Z
    :cond_78
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4605
    const/16 v78, 0x0

    .local v78, "e":I
    :goto_2d
    move/from16 v0, v78

    move/from16 v1, v138

    if-ge v0, v1, :cond_80

    .line 4606
    move-object/from16 v0, v152

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getExcessivePower(I)Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    move-result-object v82

    .line 4607
    .local v82, "ew":Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    if-eqz v82, :cond_79

    .line 4608
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "      * Killed for "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4609
    move-object/from16 v0, v82

    iget v6, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7e

    .line 4610
    const-string/jumbo v6, "wake lock"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4616
    :goto_2e
    const-string/jumbo v6, " use: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4617
    move-object/from16 v0, v82

    iget-wide v6, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    move-object/from16 v0, p2

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4618
    const-string/jumbo v6, " over "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4619
    move-object/from16 v0, v82

    iget-wide v6, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    move-object/from16 v0, p2

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4620
    move-object/from16 v0, v82

    iget-wide v6, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    const-wide/16 v12, 0x0

    cmp-long v6, v6, v12

    if-eqz v6, :cond_79

    .line 4621
    const-string/jumbo v6, " ("

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4622
    move-object/from16 v0, v82

    iget-wide v6, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    const-wide/16 v12, 0x64

    mul-long/2addr v6, v12

    move-object/from16 v0, v82

    iget-wide v12, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    div-long/2addr v6, v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 4623
    const-string/jumbo v6, "%)"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4605
    :cond_79
    add-int/lit8 v78, v78, 0x1

    goto :goto_2d

    .line 4542
    .end local v78    # "e":I
    .end local v82    # "ew":Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    .end local v84    # "foregroundTime":J
    .end local v99    # "ipr":I
    .end local v136    # "numAnrs":I
    .end local v137    # "numCrashes":I
    .end local v138    # "numExcessive":I
    .end local v150    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v152    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .end local v166    # "starts":I
    .end local v170    # "systemTime":J
    .end local v204    # "userTime":J
    :cond_7a
    const-wide/16 v6, 0x0

    cmp-long v6, v146, v6

    if-lez v6, :cond_71

    goto/16 :goto_29

    .line 4572
    .restart local v84    # "foregroundTime":J
    .restart local v99    # "ipr":I
    .restart local v136    # "numAnrs":I
    .restart local v137    # "numCrashes":I
    .restart local v150    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .restart local v152    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .restart local v166    # "starts":I
    .restart local v170    # "systemTime":J
    .restart local v204    # "userTime":J
    :cond_7b
    const/16 v138, 0x0

    .restart local v138    # "numExcessive":I
    goto/16 :goto_2b

    .line 4574
    :cond_7c
    const-wide/16 v6, 0x0

    cmp-long v6, v84, v6

    if-nez v6, :cond_72

    if-nez v166, :cond_72

    .line 4575
    if-nez v138, :cond_72

    if-nez v137, :cond_72

    if-nez v136, :cond_72

    .line 4557
    :goto_2f
    add-int/lit8 v99, v99, -0x1

    goto/16 :goto_2a

    .line 4583
    :cond_7d
    if-eqz v136, :cond_78

    goto/16 :goto_2c

    .line 4611
    .restart local v78    # "e":I
    .restart local v82    # "ew":Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    :cond_7e
    move-object/from16 v0, v82

    iget v6, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_7f

    .line 4612
    const-string/jumbo v6, "cpu"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_2e

    .line 4614
    :cond_7f
    const-string/jumbo v6, "unknown"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_2e

    .line 4627
    .end local v82    # "ew":Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    :cond_80
    const/16 v195, 0x1

    .local v195, "uidActivity":Z
    goto :goto_2f

    .line 4632
    .end local v78    # "e":I
    .end local v84    # "foregroundTime":J
    .end local v136    # "numAnrs":I
    .end local v137    # "numCrashes":I
    .end local v138    # "numExcessive":I
    .end local v152    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .end local v166    # "starts":I
    .end local v170    # "systemTime":J
    .end local v195    # "uidActivity":Z
    .end local v204    # "userTime":J
    :cond_81
    invoke-virtual/range {v177 .. v177}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v139

    .line 4633
    .local v139, "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    invoke-virtual/range {v139 .. v139}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v98, v6, -0x1

    .local v98, "ipkg":I
    :goto_30
    if-ltz v98, :cond_88

    .line 4634
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Apk "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v139

    move/from16 v1, v98

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4635
    const-string/jumbo v6, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4636
    const/16 v40, 0x0

    .line 4637
    .local v40, "apkActivity":Z
    move-object/from16 v0, v139

    move/from16 v1, v98

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v151

    check-cast v151, Landroid/os/BatteryStats$Uid$Pkg;

    .line 4638
    .local v151, "ps":Landroid/os/BatteryStats$Uid$Pkg;
    invoke-virtual/range {v151 .. v151}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v39

    .line 4639
    .local v39, "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    invoke-virtual/range {v39 .. v39}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v106, v6, -0x1

    .local v106, "iwa":I
    :goto_31
    if-ltz v106, :cond_82

    .line 4640
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "      Wakeup alarm "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4641
    move-object/from16 v0, v39

    move/from16 v1, v106

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, ": "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4642
    move-object/from16 v0, v39

    move/from16 v1, v106

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$Counter;

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 4643
    const-string/jumbo v6, " times"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4644
    const/16 v40, 0x1

    .line 4639
    add-int/lit8 v106, v106, -0x1

    goto :goto_31

    .line 4646
    :cond_82
    invoke-virtual/range {v151 .. v151}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    move-result-object v161

    .line 4647
    .local v161, "serviceStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    invoke-virtual/range {v161 .. v161}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v102, v6, -0x1

    .local v102, "isvc":I
    :goto_32
    if-ltz v102, :cond_86

    .line 4648
    move-object/from16 v0, v161

    move/from16 v1, v102

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v163

    check-cast v163, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    .line 4649
    .local v163, "ss":Landroid/os/BatteryStats$Uid$Pkg$Serv;
    move-object/from16 v0, v163

    move-wide/from16 v1, v44

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStartTime(JI)J

    move-result-wide v164

    .line 4650
    .local v164, "startTime":J
    move-object/from16 v0, v163

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    move-result v166

    .line 4651
    .restart local v166    # "starts":I
    move-object/from16 v0, v163

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    move-result v110

    .line 4652
    .local v110, "launches":I
    const-wide/16 v6, 0x0

    cmp-long v6, v164, v6

    if-nez v6, :cond_83

    if-eqz v166, :cond_85

    .line 4653
    :cond_83
    :goto_33
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4654
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "      Service "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4655
    move-object/from16 v0, v161

    move/from16 v1, v102

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ":\n"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4656
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "        Created for: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4657
    const-wide/16 v6, 0x3e8

    div-long v6, v164, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4658
    const-string/jumbo v6, "uptime\n"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4659
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "        Starts: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4660
    move/from16 v0, v166

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4661
    const-string/jumbo v6, ", launches: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v110

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4662
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4663
    const/16 v40, 0x1

    .line 4647
    :cond_84
    add-int/lit8 v102, v102, -0x1

    goto/16 :goto_32

    .line 4652
    :cond_85
    if-eqz v110, :cond_84

    goto :goto_33

    .line 4666
    .end local v110    # "launches":I
    .end local v163    # "ss":Landroid/os/BatteryStats$Uid$Pkg$Serv;
    .end local v164    # "startTime":J
    .end local v166    # "starts":I
    :cond_86
    if-nez v40, :cond_87

    .line 4667
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "      (nothing executed)"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4669
    :cond_87
    const/16 v195, 0x1

    .line 4633
    .restart local v195    # "uidActivity":Z
    add-int/lit8 v98, v98, -0x1

    goto/16 :goto_30

    .line 4671
    .end local v39    # "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    .end local v40    # "apkActivity":Z
    .end local v102    # "isvc":I
    .end local v106    # "iwa":I
    .end local v151    # "ps":Landroid/os/BatteryStats$Uid$Pkg;
    .end local v161    # "serviceStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    .end local v195    # "uidActivity":Z
    :cond_88
    if-nez v195, :cond_44

    .line 4672
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    (nothing executed)"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_19

    .line 4678
    .end local v37    # "NSE":I
    .end local v48    # "btRxBytes":J
    .end local v52    # "btTxBytes":J
    .end local v60    # "countWakelock":I
    .end local v88    # "fullWifiLockOnTime":J
    .end local v95    # "ij":I
    .end local v98    # "ipkg":I
    .end local v99    # "ipr":I
    .end local v100    # "ips":I
    .end local v101    # "ise":I
    .end local v103    # "isy":I
    .end local v105    # "iw":I
    .end local v107    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v118    # "mobileRxBytes":J
    .end local v120    # "mobileRxPackets":J
    .end local v126    # "mobileTxBytes":J
    .end local v128    # "mobileTxPackets":J
    .end local v134    # "mobileWakeup":J
    .end local v139    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v146    # "powerCpuMaUs":J
    .end local v150    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v160    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v167    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v168    # "systemCpuTimeUs":J
    .end local v177    # "u":Landroid/os/BatteryStats$Uid;
    .end local v178    # "totalDrawWakelock":J
    .end local v180    # "totalFullWakelock":J
    .end local v182    # "totalPartialWakelock":J
    .end local v186    # "totalStateTime":J
    .end local v192    # "totalWindowWakelock":J
    .end local v194    # "uid":I
    .end local v196    # "uidMobileActiveCount":I
    .end local v198    # "uidMobileActiveTime":J
    .end local v200    # "uidWifiRunningTime":J
    .end local v202    # "userCpuTimeUs":J
    .end local v207    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v209    # "wifiScanCount":I
    .end local v222    # "wifiRxBytes":J
    .end local v224    # "wifiRxPackets":J
    .end local v230    # "wifiScanTime":J
    .end local v232    # "wifiTxBytes":J
    .end local v234    # "wifiTxPackets":J
    .end local v240    # "wifiWakeup":J
    :cond_89
    const-string/jumbo v6, "\n**** RPM_STATS ****\n"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4679
    const-string/jumbo v6, "/d/rpm_stats"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6}, Landroid/os/BatteryStats;->dumpRPMStatsLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4680
    const-string/jumbo v6, "**** RPM_STATS ****"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4682
    const-string/jumbo v6, "\n**** RPM_MASTER_STATS ****\n"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4683
    const-string/jumbo v6, "/d/rpm_master_stats"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6}, Landroid/os/BatteryStats;->dumpRPMStatsLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4684
    const-string/jumbo v6, "**** RPM_MASTER_STATS ****"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3443
    return-void

    .line 3981
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_4
        :pswitch_b
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_a
        :pswitch_2
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_3
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

    .line 2546
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2548
    const-wide/16 v0, 0x400

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 2549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2550
    :cond_0
    const-wide/32 v0, 0x100000

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 2551
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    const-string/jumbo v1, "%.2fKB"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double v4, p1

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 2552
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2553
    :cond_1
    const-wide/32 v0, 0x40000000

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    .line 2554
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    const-string/jumbo v1, "%.2fMB"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double v4, p1

    const-wide/high16 v6, 0x4130000000000000L    # 1048576.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 2555
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2557
    :cond_2
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    const-string/jumbo v1, "%.2fGB"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double v4, p1

    const-wide/high16 v6, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 2558
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final formatRatioLocked(JJ)Ljava/lang/String;
    .locals 7
    .param p1, "num"    # J
    .param p3, "den"    # J

    .prologue
    const/4 v5, 0x0

    .line 2536
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-nez v1, :cond_0

    .line 2537
    const-string/jumbo v1, "--%"

    return-object v1

    .line 2539
    :cond_0
    long-to-float v1, p1

    long-to-float v2, p3

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v0, v1, v2

    .line 2540
    .local v0, "perc":F
    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2541
    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    const-string/jumbo v2, "%.1f%%"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 2542
    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public abstract getBatteryRealtime(J)J
.end method

.method public abstract getBatteryUptime(J)J
.end method

.method public abstract getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
.end method

.method public abstract getBluetoothScanTime(JI)J
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

.method public abstract getDeviceIdleModeCount(II)I
.end method

.method public abstract getDeviceIdleModeTime(IJI)J
.end method

.method public abstract getDeviceIdlingCount(II)I
.end method

.method public abstract getDeviceIdlingTime(IJI)J
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

.method public abstract getDischargeCoulombCounter()Landroid/os/BatteryStats$LongCounter;
.end method

.method public abstract getDischargeCurrentLevel()I
.end method

.method public abstract getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract getDischargeScreenOffCoulombCounter()Landroid/os/BatteryStats$LongCounter;
.end method

.method public abstract getDischargeStartLevel()I
.end method

.method public abstract getEndPlatformVersion()Ljava/lang/String;
.end method

.method public abstract getEstimatedBatteryCapacity()I
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

.method public abstract getLongestDeviceIdleModeTime(I)J
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

.method public abstract getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
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

.method public abstract getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
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

.method public abstract hasModemActivityReporting()Z
.end method

.method public abstract hasWifiActivityReporting()Z
.end method

.method public prepareForDumpLocked()V
    .locals 0

    .prologue
    .line 4773
    return-void
.end method

.method public abstract startIteratingHistoryLocked()Z
.end method

.method public abstract startIteratingOldHistoryLocked()Z
.end method

.method public abstract writeToParcelWithoutUids(Landroid/os/Parcel;I)V
.end method
