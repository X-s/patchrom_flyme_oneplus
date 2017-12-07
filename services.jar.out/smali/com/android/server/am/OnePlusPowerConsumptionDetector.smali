.class Lcom/android/server/am/OnePlusPowerConsumptionDetector;
.super Ljava/lang/Object;
.source "OnePlusPowerConsumptionDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;,
        Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;,
        Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-internal-os-BatterySipper$DrainTypeSwitchesValues:[I = null

.field private static final ACTION_TEST:Ljava/lang/String; = "action.opcd.test"

.field public static DEBUG:Z = false

.field public static DISK:Z = false

.field public static ENABLE:Z = false

.field public static final FAKE_UID_APP:I = -0x5c

.field public static final FAKE_UID_BASE:I = -0x64

.field public static final FAKE_UID_BLUETOOTH:I = -0x5f

.field public static final FAKE_UID_CAMERA:I = -0x58

.field public static final FAKE_UID_CELL:I = -0x62

.field public static final FAKE_UID_DEFAULT:I = -0x57

.field public static final FAKE_UID_END:I = -0x56

.field public static final FAKE_UID_FLASHLIGHT:I = -0x5d

.field public static final FAKE_UID_IDLE:I = -0x63

.field public static final FAKE_UID_OVERCOUNTED:I = -0x59

.field public static final FAKE_UID_PHONE:I = -0x61

.field public static final FAKE_UID_SCREEN:I = -0x5e

.field public static final FAKE_UID_UNACCOUNTED:I = -0x5a

.field public static final FAKE_UID_USER:I = -0x5b

.field public static final FAKE_UID_WIFI:I = -0x60

.field public static final FLAG_UPDATE_ALL_POWER:I = 0x3

.field public static final FLAG_UPDATE_HW_POWER:I = 0x2

.field public static final FLAG_UPDATE_SOFT_POWER:I = 0x1

.field public static final HIGH_DRAIN_INTERVAL_PERCENT_THRESHOLD:D = 0.2

.field public static final HIGH_DRAIN_TOTAL_PERCENT_THRESHOLD:D = 0.1

.field public static LITE:Z = false

.field public static MDM:Z = false

.field public static final OPCD_RECORD_FILE:Ljava/lang/String; = "/data/system/opcd.log"

.field public static final OPCD_RECORD_OLD_FILE:Ljava/lang/String; = "/data/system/opcd.log.old"

.field private static final PROP_DEBUG:Ljava/lang/String; = "persist.sys.opcd.debug"

.field private static final PROP_DISK:Ljava/lang/String; = "persist.sys.opcd.disk"

.field private static final PROP_ENABLE:Ljava/lang/String; = "persist.sys.opcd.enable"

.field private static final PROP_LITE:Ljava/lang/String; = "persist.sys.opcd.lite"

.field private static final PROP_MDM:Ljava/lang/String; = "persist.sys.opcd.mdm"

.field public static final TAG:Ljava/lang/String; = "OPCD"

.field public static final TRACK_KEY_CUMULATIVE_DRAIN:Ljava/lang/String; = "app"

.field public static final TRACK_KEY_DRAIN_TO_CHARGE:Ljava/lang/String; = "total"

.field public static final TRACK_TAG_OPCD:Ljava/lang/String; = "OPCD"

.field public static final VERSION:I = 0xf5aeed

.field private static mAms:Lcom/android/server/am/ActivityManagerService;

.field private static mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

.field private static mCharging:Z

.field private static mContext:Landroid/content/Context;

.field private static mDischargeTriggerTime:J

.field private static mScreenOffTriggerTime:J

.field private static mScreenOn:Z

.field private static mScreenOnTriggerTime:J

.field private static mTotalScreenOnTime:J

.field static sTraceDateFormat:Ljava/text/SimpleDateFormat;


# instance fields
.field private mchargingRecord:Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;


# direct methods
.method static synthetic -get0()Lcom/android/server/am/BatteryStatsService;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    return-object v0
.end method

.method static synthetic -get1()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2()J
    .locals 2

    sget-wide v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mTotalScreenOnTime:J

    return-wide v0
.end method

.method private static synthetic -getcom-android-internal-os-BatterySipper$DrainTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-com-android-internal-os-BatterySipper$DrainTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-com-android-internal-os-BatterySipper$DrainTypeSwitchesValues:[I

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
    sput-object v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-com-android-internal-os-BatterySipper$DrainTypeSwitchesValues:[I

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

.method static synthetic -set0(J)J
    .locals 0

    sput-wide p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mTotalScreenOnTime:J

    return-wide p0
.end method

.method static synthetic -wrap0(Ljava/lang/String;)Z
    .locals 1
    .param p0, "record"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->persistToDisk(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(J)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J

    .prologue
    invoke-static {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->formatTime(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(I)Ljava/lang/String;
    .locals 1
    .param p0, "fakeUid"    # I

    .prologue
    invoke-static {p0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->getDrainTypeByFakeUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(D)Ljava/util/List;
    .locals 2
    .param p0, "percentThreshold"    # D

    .prologue
    invoke-static {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->getHighSipperFromCumulativeDrain(D)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/android/server/am/OnePlusPowerConsumptionDetector;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->responseBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->trackPowerData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    .line 37
    sput-boolean v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->ENABLE:Z

    .line 38
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DEBUG:Z

    .line 39
    sput-boolean v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->LITE:Z

    .line 40
    sput-boolean v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->MDM:Z

    .line 41
    sput-boolean v4, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DISK:Z

    .line 62
    sput-wide v2, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mTotalScreenOnTime:J

    .line 63
    sput-wide v2, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mScreenOnTriggerTime:J

    .line 64
    sput-wide v2, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mScreenOffTriggerTime:J

    .line 65
    sput-wide v2, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mDischargeTriggerTime:J

    .line 66
    sput-boolean v4, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mCharging:Z

    .line 67
    sput-boolean v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mScreenOn:Z

    .line 71
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd_HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sTraceDateFormat:Ljava/text/SimpleDateFormat;

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/BatteryStatsService;)V
    .locals 2
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "batteryStatsService"    # Lcom/android/server/am/BatteryStatsService;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const-string/jumbo v0, "persist.sys.opcd.enable"

    sget-boolean v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->ENABLE:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->ENABLE:Z

    .line 81
    const-string/jumbo v0, "persist.sys.opcd.debug"

    sget-boolean v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DEBUG:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DEBUG:Z

    .line 82
    const-string/jumbo v0, "persist.sys.opcd.lite"

    sget-boolean v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->LITE:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->LITE:Z

    .line 83
    const-string/jumbo v0, "persist.sys.opcd.mdm"

    sget-boolean v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->MDM:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->MDM:Z

    .line 84
    const-string/jumbo v0, "persist.sys.opcd.disk"

    sget-boolean v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DISK:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DISK:Z

    .line 85
    sget-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->ENABLE:Z

    if-nez v0, :cond_0

    .line 86
    const-string/jumbo v0, "OPCD"

    const-string/jumbo v1, "disabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void

    .line 89
    :cond_0
    const-string/jumbo v0, "OnePlusPowerConsumptionDetector()--constructor"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 90
    sput-object p1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 91
    sput-object p2, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mContext:Landroid/content/Context;

    .line 92
    sput-object p3, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 94
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->init()V

    .line 79
    return-void
.end method

.method public static formatDouble(D)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # D

    .prologue
    .line 304
    const-wide/16 v2, 0x0

    cmpl-double v1, p0, v2

    if-nez v1, :cond_0

    const-string/jumbo v1, "0"

    return-object v1

    .line 308
    :cond_0
    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v1, p0, v2

    if-gez v1, :cond_1

    const-string/jumbo v0, "%.6f"

    .line 316
    .local v0, "format":Ljava/lang/String;
    :goto_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 309
    .end local v0    # "format":Ljava/lang/String;
    :cond_1
    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v1, p0, v2

    if-gez v1, :cond_2

    const-string/jumbo v0, "%.5f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_0

    .line 310
    .end local v0    # "format":Ljava/lang/String;
    :cond_2
    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpg-double v1, p0, v2

    if-gez v1, :cond_3

    const-string/jumbo v0, "%.4f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_0

    .line 311
    .end local v0    # "format":Ljava/lang/String;
    :cond_3
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, p0, v2

    if-gez v1, :cond_4

    const-string/jumbo v0, "%.3f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_0

    .line 312
    .end local v0    # "format":Ljava/lang/String;
    :cond_4
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    cmpg-double v1, p0, v2

    if-gez v1, :cond_5

    const-string/jumbo v0, "%.2f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_0

    .line 313
    .end local v0    # "format":Ljava/lang/String;
    :cond_5
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    cmpg-double v1, p0, v2

    if-gez v1, :cond_6

    const-string/jumbo v0, "%.1f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_0

    .line 314
    .end local v0    # "format":Ljava/lang/String;
    :cond_6
    const-string/jumbo v0, "%.0f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_0
.end method

.method private static formatTime(J)Ljava/lang/String;
    .locals 8
    .param p0, "time"    # J

    .prologue
    const-wide/16 v6, 0x3c

    .line 290
    rem-long v4, p0, v6

    long-to-int v2, v4

    .line 291
    .local v2, "s":I
    div-long v4, p0, v6

    rem-long/2addr v4, v6

    long-to-int v1, v4

    .line 292
    .local v1, "m":I
    const-wide/16 v4, 0xe10

    div-long v4, p0, v4

    long-to-int v0, v4

    .line 293
    .local v0, "h":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 295
    const-string/jumbo v4, "h:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 297
    const-string/jumbo v4, "m:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 299
    const-string/jumbo v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static getDrainTypeByFakeUid(I)Ljava/lang/String;
    .locals 1
    .param p0, "fakeUid"    # I

    .prologue
    .line 381
    packed-switch p0, :pswitch_data_0

    .line 422
    const-string/jumbo v0, "unknown"

    .line 426
    .local v0, "retType":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 383
    .end local v0    # "retType":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v0, "idle"

    .restart local v0    # "retType":Ljava/lang/String;
    goto :goto_0

    .line 386
    .end local v0    # "retType":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "cell"

    .restart local v0    # "retType":Ljava/lang/String;
    goto :goto_0

    .line 389
    .end local v0    # "retType":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "phone"

    .restart local v0    # "retType":Ljava/lang/String;
    goto :goto_0

    .line 392
    .end local v0    # "retType":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v0, "wifi"

    .restart local v0    # "retType":Ljava/lang/String;
    goto :goto_0

    .line 395
    .end local v0    # "retType":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v0, "bluetooth"

    .restart local v0    # "retType":Ljava/lang/String;
    goto :goto_0

    .line 398
    .end local v0    # "retType":Ljava/lang/String;
    :pswitch_5
    const-string/jumbo v0, "screen"

    .restart local v0    # "retType":Ljava/lang/String;
    goto :goto_0

    .line 401
    .end local v0    # "retType":Ljava/lang/String;
    :pswitch_6
    const-string/jumbo v0, "flashlight"

    .restart local v0    # "retType":Ljava/lang/String;
    goto :goto_0

    .line 404
    .end local v0    # "retType":Ljava/lang/String;
    :pswitch_7
    const-string/jumbo v0, "app"

    .restart local v0    # "retType":Ljava/lang/String;
    goto :goto_0

    .line 407
    .end local v0    # "retType":Ljava/lang/String;
    :pswitch_8
    const-string/jumbo v0, "user"

    .restart local v0    # "retType":Ljava/lang/String;
    goto :goto_0

    .line 410
    .end local v0    # "retType":Ljava/lang/String;
    :pswitch_9
    const-string/jumbo v0, "unaccounted"

    .restart local v0    # "retType":Ljava/lang/String;
    goto :goto_0

    .line 413
    .end local v0    # "retType":Ljava/lang/String;
    :pswitch_a
    const-string/jumbo v0, "overcounted"

    .restart local v0    # "retType":Ljava/lang/String;
    goto :goto_0

    .line 416
    .end local v0    # "retType":Ljava/lang/String;
    :pswitch_b
    const-string/jumbo v0, "camera"

    .restart local v0    # "retType":Ljava/lang/String;
    goto :goto_0

    .line 419
    .end local v0    # "retType":Ljava/lang/String;
    :pswitch_c
    const-string/jumbo v0, "default"

    .restart local v0    # "retType":Ljava/lang/String;
    goto :goto_0

    .line 381
    nop

    :pswitch_data_0
    .packed-switch -0x63
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
        :pswitch_c
    .end packed-switch
.end method

.method private static getFakeUidByDrainType(Lcom/android/internal/os/BatterySipper$DrainType;)I
    .locals 3
    .param p0, "drainType"    # Lcom/android/internal/os/BatterySipper$DrainType;

    .prologue
    .line 430
    const/16 v0, -0x57

    .line 432
    .local v0, "retUid":I
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-getcom-android-internal-os-BatterySipper$DrainTypeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 470
    const/16 v0, -0x57

    .line 474
    :goto_0
    return v0

    .line 434
    :pswitch_0
    const/16 v0, -0x63

    .line 435
    goto :goto_0

    .line 437
    :pswitch_1
    const/16 v0, -0x62

    .line 438
    goto :goto_0

    .line 440
    :pswitch_2
    const/16 v0, -0x61

    .line 441
    goto :goto_0

    .line 443
    :pswitch_3
    const/16 v0, -0x60

    .line 444
    goto :goto_0

    .line 446
    :pswitch_4
    const/16 v0, -0x5f

    .line 447
    goto :goto_0

    .line 449
    :pswitch_5
    const/16 v0, -0x5e

    .line 450
    goto :goto_0

    .line 452
    :pswitch_6
    const/16 v0, -0x5d

    .line 453
    goto :goto_0

    .line 455
    :pswitch_7
    const/16 v0, -0x5c

    .line 456
    goto :goto_0

    .line 458
    :pswitch_8
    const/16 v0, -0x5b

    .line 459
    goto :goto_0

    .line 461
    :pswitch_9
    const/16 v0, -0x5a

    .line 462
    goto :goto_0

    .line 464
    :pswitch_a
    const/16 v0, -0x59

    .line 465
    goto :goto_0

    .line 467
    :pswitch_b
    const/16 v0, -0x58

    .line 468
    goto :goto_0

    .line 432
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

.method private static getHighSipperFromCumulativeDrain(D)Ljava/util/List;
    .locals 22
    .param p0, "percentThreshold"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    sget-boolean v19, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DEBUG:Z

    if-eqz v19, :cond_0

    .line 213
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "#getHighSipperFromCumulativeDrain # percentThreshold="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 214
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v8, "highSipperList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;>;"
    new-instance v7, Lcom/android/internal/os/BatteryStatsHelper;

    sget-object v19, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mContext:Landroid/content/Context;

    const/16 v20, 0x0

    .line 217
    const/16 v21, 0x0

    .line 216
    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v7, v0, v1, v2}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;ZZ)V

    .line 218
    .local v7, "helper":Lcom/android/internal/os/BatteryStatsHelper;
    sget-object v19, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v16

    .line 219
    .local v16, "stats":Lcom/android/internal/os/BatteryStatsImpl;
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    .line 220
    const/16 v19, 0x0

    .line 221
    const/16 v20, -0x1

    .line 220
    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    .line 222
    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v15

    .line 223
    .local v15, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    if-eqz v15, :cond_5

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_5

    .line 225
    const-wide/16 v4, 0x0

    .line 226
    .local v4, "allPower":D
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_3

    .line 227
    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BatterySipper;

    .line 228
    .local v6, "bs":Lcom/android/internal/os/BatterySipper;
    sget-boolean v19, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DEBUG:Z

    if-eqz v19, :cond_1

    .line 229
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " # bs # drainType="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v6, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 230
    const-string/jumbo v20, ", uid="

    .line 229
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 230
    iget-object v0, v6, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    iget-object v0, v6, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v19

    .line 229
    :goto_1
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 231
    const-string/jumbo v20, ", totalPowerMah="

    .line 229
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 231
    iget-wide v0, v6, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v20, v0

    .line 229
    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 232
    const-string/jumbo v20, ", bs.sumPower()="

    .line 229
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 232
    invoke-virtual {v6}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    move-result-wide v20

    .line 229
    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 234
    :cond_1
    iget-wide v0, v6, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v20, v0

    add-double v4, v4, v20

    .line 226
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 230
    :cond_2
    const/16 v19, -0x1

    goto :goto_1

    .line 237
    .end local v6    # "bs":Lcom/android/internal/os/BatterySipper;
    :cond_3
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    cmpl-double v19, v4, v20

    if-lez v19, :cond_5

    .line 239
    const/4 v9, 0x0

    :goto_2
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_5

    .line 240
    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BatterySipper;

    .line 241
    .restart local v6    # "bs":Lcom/android/internal/os/BatterySipper;
    iget-wide v0, v6, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v20, v0

    div-double v12, v20, v4

    .line 242
    .local v12, "percent":D
    cmpl-double v19, v12, p0

    if-ltz v19, :cond_4

    .line 244
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-getcom-android-internal-os-BatterySipper$DrainTypeSwitchesValues()[I

    move-result-object v19

    iget-object v0, v6, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v20

    aget v19, v19, v20

    packed-switch v19, :pswitch_data_0

    .line 249
    new-instance v10, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;

    iget-object v0, v6, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->getFakeUidByDrainType(Lcom/android/internal/os/BatterySipper$DrainType;)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;-><init>(Ljava/lang/Integer;)V

    .line 253
    .local v10, "pcs":Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;
    :goto_3
    iput-wide v12, v10, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->percent:D

    .line 254
    invoke-virtual {v10, v6}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->updatePowerItems(Lcom/android/internal/os/BatterySipper;)V

    .line 255
    invoke-virtual {v10}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->initPkgNameByUid()V

    .line 256
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    sget-boolean v19, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DEBUG:Z

    if-eqz v19, :cond_4

    .line 258
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "getHighSipperFromCumulativeDrain # pcs="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 239
    .end local v10    # "pcs":Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 246
    :pswitch_0
    new-instance v10, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;

    iget-object v0, v6, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;-><init>(Ljava/lang/Integer;)V

    .line 247
    .restart local v10    # "pcs":Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;
    goto :goto_3

    .line 264
    .end local v4    # "allPower":D
    .end local v6    # "bs":Lcom/android/internal/os/BatterySipper;
    .end local v9    # "i":I
    .end local v10    # "pcs":Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;
    .end local v12    # "percent":D
    :cond_5
    if-eqz v8, :cond_9

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_9

    .line 265
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    .local v18, "trackData":Ljava/lang/StringBuilder;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .local v14, "persistData":Ljava/lang/StringBuilder;
    sget-object v19, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sTraceDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v20, Ljava/util/Date;

    invoke-direct/range {v20 .. v20}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v19 .. v20}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v17

    .line 268
    .local v17, "tagTime":Ljava/lang/String;
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "pcs$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;

    .line 269
    .restart local v10    # "pcs":Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;
    sget-boolean v19, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->MDM:Z

    if-eqz v19, :cond_7

    .line 270
    const-string/jumbo v19, "OPCD"

    const-string/jumbo v20, "app"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v10}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->trackPowerData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 272
    :cond_7
    sget-boolean v19, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DISK:Z

    if-eqz v19, :cond_6

    .line 273
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    const-string/jumbo v19, " "

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    const-string/jumbo v19, "app"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    const-string/jumbo v19, " "

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v10}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    const-string/jumbo v19, "\n"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 282
    .end local v10    # "pcs":Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;
    :cond_8
    sget-boolean v19, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DISK:Z

    if-eqz v19, :cond_9

    .line 283
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->persistToDisk(Ljava/lang/String;)Z

    .line 286
    .end local v11    # "pcs$iterator":Ljava/util/Iterator;
    .end local v14    # "persistData":Ljava/lang/StringBuilder;
    .end local v17    # "tagTime":Ljava/lang/String;
    .end local v18    # "trackData":Ljava/lang/StringBuilder;
    :cond_9
    return-object v8

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static myLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 73
    sget-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 74
    const-string/jumbo v0, "OPCD"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    return-void
.end method

.method private static persistToDisk(Ljava/lang/String;)Z
    .locals 14
    .param p0, "record"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 726
    sget-boolean v7, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DISK:Z

    if-nez v7, :cond_0

    .line 727
    return v12

    .line 729
    :cond_0
    if-nez p0, :cond_1

    .line 730
    return v12

    .line 732
    :cond_1
    const-string/jumbo v5, "/data/system/opcd.log"

    .line 733
    .local v5, "logName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 734
    .local v4, "logFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 735
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 736
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 738
    :cond_2
    const/4 v3, 0x0

    .line 741
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/32 v10, 0x200000

    cmp-long v7, v8, v10

    if-gez v7, :cond_4

    .line 742
    new-instance v3, Ljava/io/FileOutputStream;

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    const/4 v7, 0x1

    invoke-direct {v3, v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 760
    .local v3, "fos":Ljava/io/FileOutputStream;
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 766
    if-eqz v3, :cond_3

    .line 768
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 773
    :goto_1
    const/4 v3, 0x0

    .line 776
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_3
    return v13

    .line 744
    .local v3, "fos":Ljava/io/FileOutputStream;
    :cond_4
    :try_start_3
    new-instance v6, Ljava/io/File;

    const-string/jumbo v7, "/data/system/opcd.log.old"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 745
    .local v6, "oldFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 746
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 747
    invoke-virtual {v4, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 749
    :cond_5
    new-instance v3, Ljava/io/FileOutputStream;

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .local v3, "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 752
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "oldFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 754
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 755
    const/4 v3, 0x0

    .line 756
    .local v3, "fos":Ljava/io/FileOutputStream;
    return v12

    .line 769
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .local v3, "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 771
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 761
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 763
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 766
    if-eqz v3, :cond_6

    .line 768
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 773
    :goto_2
    const/4 v3, 0x0

    .line 764
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_6
    return v12

    .line 769
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v2

    .line 771
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 765
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 766
    if-eqz v3, :cond_7

    .line 768
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 773
    :goto_3
    const/4 v3, 0x0

    .line 765
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_7
    throw v7

    .line 769
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v2

    .line 771
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method private registerBatteryReceiver()V
    .locals 3

    .prologue
    .line 105
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 106
    .local v0, "pkgFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    const-string/jumbo v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    const-string/jumbo v1, "action.opcd.test"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    sget-object v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/OnePlusPowerConsumptionDetector$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$1;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionDetector;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 104
    return-void
.end method

.method private responseBroadcast(Landroid/content/Intent;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v12, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x1

    .line 123
    sget-boolean v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "# onReceive # enter action="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 125
    :cond_0
    const-string/jumbo v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 126
    sput-boolean v10, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mCharging:Z

    .line 127
    sget-boolean v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mScreenOn:Z

    if-eqz v1, :cond_1

    .line 128
    sget-wide v4, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mTotalScreenOnTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-wide v8, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mScreenOnTriggerTime:J

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    sput-wide v4, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mTotalScreenOnTime:J

    .line 130
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mchargingRecord:Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;

    invoke-virtual {v1, v10}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->updateRecord(I)V

    .line 131
    sput-wide v12, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mTotalScreenOnTime:J

    .line 197
    :cond_2
    :goto_0
    sget-boolean v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "# onReceive # exit action="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "# onReceive # exit mCharging="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v4, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mCharging:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", mScreenOn="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v4, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mScreenOn:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "# onReceive # exit mDischargeTriggerTime="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v4, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mDischargeTriggerTime:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 201
    const-string/jumbo v4, " -> "

    .line 200
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 201
    sget-object v4, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sTraceDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    sget-wide v6, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mDischargeTriggerTime:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 200
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "# onReceive # exit mScreenOnTriggerTime="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v4, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mScreenOnTriggerTime:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 203
    const-string/jumbo v4, " -> "

    .line 202
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 203
    sget-object v4, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sTraceDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    sget-wide v6, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mScreenOnTriggerTime:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 202
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "# onReceive # exit mScreenOffTriggerTime="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v4, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mScreenOffTriggerTime:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 205
    const-string/jumbo v4, " -> "

    .line 204
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 205
    sget-object v4, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sTraceDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    sget-wide v6, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mScreenOffTriggerTime:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 204
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "# onReceive # exit mTotalScreenOnTime="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v4, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mTotalScreenOnTime:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 122
    :cond_3
    return-void

    .line 132
    :cond_4
    const-string/jumbo v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 133
    sput-boolean v5, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mCharging:Z

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mDischargeTriggerTime:J

    .line 135
    sget-wide v4, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mDischargeTriggerTime:J

    sput-wide v4, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mScreenOffTriggerTime:J

    sput-wide v4, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mScreenOnTriggerTime:J

    .line 136
    sput-wide v12, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mTotalScreenOnTime:J

    .line 137
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mchargingRecord:Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->updateRecord(I)V

    goto/16 :goto_0

    .line 138
    :cond_5
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 140
    .local v2, "curTime":J
    sget-boolean v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mScreenOn:Z

    if-eqz v1, :cond_6

    .line 141
    const-string/jumbo v1, "# onReceive # Exception: already screen on..."

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 142
    sget-wide v4, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mScreenOnTriggerTime:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_6

    .line 143
    sget-wide v4, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mTotalScreenOnTime:J

    sget-wide v6, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mScreenOnTriggerTime:J

    sub-long v6, v2, v6

    add-long/2addr v4, v6

    sput-wide v4, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mTotalScreenOnTime:J

    .line 146
    :cond_6
    sput-wide v2, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mScreenOnTriggerTime:J

    .line 147
    sput-boolean v10, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mScreenOn:Z

    goto/16 :goto_0

    .line 148
    .end local v2    # "curTime":J
    :cond_7
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 149
    sput-boolean v5, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mScreenOn:Z

    .line 150
    sget-boolean v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mCharging:Z

    if-nez v1, :cond_2

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mScreenOffTriggerTime:J

    .line 152
    sget-wide v4, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mScreenOffTriggerTime:J

    sget-wide v6, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mScreenOnTriggerTime:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_2

    .line 153
    sget-wide v4, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mTotalScreenOnTime:J

    sget-wide v6, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mScreenOffTriggerTime:J

    sget-wide v8, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mScreenOnTriggerTime:J

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    sput-wide v4, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mTotalScreenOnTime:J

    goto/16 :goto_0

    .line 156
    :cond_8
    const-string/jumbo v1, "action.opcd.test"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 157
    const-string/jumbo v1, "code"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "code":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "# onReceive # code = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 159
    const-string/jumbo v1, "dump"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 165
    const-string/jumbo v1, "prop_using_on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 166
    sput-boolean v10, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->ENABLE:Z

    .line 167
    const-string/jumbo v1, "persist.sys.opcd.enable"

    const-string/jumbo v4, "true"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 168
    :cond_9
    const-string/jumbo v1, "prop_using_off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 169
    sput-boolean v5, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->ENABLE:Z

    .line 170
    const-string/jumbo v1, "persist.sys.opcd.enable"

    const-string/jumbo v4, "false"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 171
    :cond_a
    const-string/jumbo v1, "prop_debug_on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 172
    sput-boolean v10, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DEBUG:Z

    .line 173
    const-string/jumbo v1, "persist.sys.opcd.debug"

    const-string/jumbo v4, "true"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 174
    :cond_b
    const-string/jumbo v1, "prop_debug_off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 175
    sput-boolean v5, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DEBUG:Z

    .line 176
    const-string/jumbo v1, "persist.sys.opcd.debug"

    const-string/jumbo v4, "false"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 177
    :cond_c
    const-string/jumbo v1, "prop_lite_on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 178
    sput-boolean v10, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->LITE:Z

    .line 179
    const-string/jumbo v1, "persist.sys.opcd.lite"

    const-string/jumbo v4, "true"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 180
    :cond_d
    const-string/jumbo v1, "prop_lite_off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 181
    sput-boolean v5, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->LITE:Z

    .line 182
    const-string/jumbo v1, "persist.sys.opcd.lite"

    const-string/jumbo v4, "false"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 183
    :cond_e
    const-string/jumbo v1, "prop_mdm_on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 184
    sput-boolean v10, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->MDM:Z

    .line 185
    const-string/jumbo v1, "persist.sys.opcd.mdm"

    const-string/jumbo v4, "true"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 186
    :cond_f
    const-string/jumbo v1, "prop_mdm_off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 187
    sput-boolean v5, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->MDM:Z

    .line 188
    const-string/jumbo v1, "persist.sys.opcd.mdm"

    const-string/jumbo v4, "false"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 189
    :cond_10
    const-string/jumbo v1, "prop_disk_on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 190
    sput-boolean v10, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DISK:Z

    .line 191
    const-string/jumbo v1, "persist.sys.opcd.disk"

    const-string/jumbo v4, "true"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 192
    :cond_11
    const-string/jumbo v1, "prop_disk_off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 193
    sput-boolean v5, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DISK:Z

    .line 194
    const-string/jumbo v1, "persist.sys.opcd.disk"

    const-string/jumbo v4, "false"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static trackPowerData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 10
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const-wide/16 v8, 0x64

    .line 323
    sget-boolean v3, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->MDM:Z

    if-nez v3, :cond_0

    .line 324
    return-void

    .line 326
    :cond_0
    if-nez p2, :cond_1

    .line 327
    return-void

    .line 330
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 331
    .local v0, "mdmData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "total"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v2, p2

    .line 332
    check-cast v2, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;

    .line 333
    .local v2, "ri":Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;
    const-string/jumbo v3, "Power"

    iget v4, v2, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->diffLevel:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    const-string/jumbo v3, "Time"

    iget-wide v4, v2, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->diffTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    const-string/jumbo v3, "TotalRate"

    iget-wide v4, v2, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->diffTime:J

    mul-long/2addr v4, v8

    iget v6, v2, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->diffLevel:I

    int-to-long v6, v6

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    const-string/jumbo v3, "ScnOnTime"

    iget-wide v4, v2, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->screenOnTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    const-string/jumbo v3, "ScnOnRate"

    iget-wide v4, v2, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->screenOnTime:J

    mul-long/2addr v4, v8

    iget v6, v2, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->diffLevel:I

    int-to-long v6, v6

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    .end local v2    # "ri":Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->trackPowerData(Ljava/lang/String;Ljava/util/Map;)V

    .line 322
    return-void

    .line 340
    :cond_2
    const-string/jumbo v3, "app"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v1, p2

    .line 341
    check-cast v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;

    .line 343
    .local v1, "pcs":Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;
    const-string/jumbo v3, "pkg"

    iget-object v4, v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->pkgName:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    const-string/jumbo v3, "Power"

    iget-wide v4, v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->percent:D

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    double-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 346
    .end local v1    # "pcs":Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;
    :cond_3
    return-void
.end method

.method private static trackPowerData(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 352
    .local p1, "mdmData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-boolean v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->MDM:Z

    if-nez v1, :cond_0

    .line 353
    return-void

    .line 355
    :cond_0
    new-instance v0, Lnet/oneplus/odm/insight/tracker/OSTracker;

    sget-object v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lnet/oneplus/odm/insight/tracker/OSTracker;-><init>(Landroid/content/Context;)V

    .line 357
    .local v0, "tracker":Lnet/oneplus/odm/insight/tracker/OSTracker;
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 358
    invoke-virtual {v0, p0, p1}, Lnet/oneplus/odm/insight/tracker/OSTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 351
    :cond_1
    return-void
.end method


# virtual methods
.method init()V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->registerBatteryReceiver()V

    .line 99
    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;

    invoke-direct {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mchargingRecord:Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;

    .line 97
    return-void
.end method
