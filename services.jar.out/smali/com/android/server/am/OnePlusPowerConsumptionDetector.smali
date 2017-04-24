.class Lcom/android/server/am/OnePlusPowerConsumptionDetector;
.super Ljava/lang/Object;
.source "OnePlusPowerConsumptionDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OnePlusPowerConsumptionDetector$2;,
        Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;,
        Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;
    }
.end annotation


# static fields
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

.field public static final TRACK_KEY_CUMULATIVE_DRAIN:Ljava/lang/String; = "CumulativeDrain"

.field public static final TRACK_KEY_DRAIN_TO_CHARGE:Ljava/lang/String; = "DrainToCharge"

.field public static final TRACK_TAG_OPCD:Ljava/lang/String; = "OPCD"

.field public static final VERSION:I = 0xf5aeed

.field private static mAms:Lcom/android/server/am/ActivityManagerService;

.field private static mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

.field private static mContext:Landroid/content/Context;

.field private static mScreenOffTriggerTime:J

.field private static mScreenOnTriggerTime:J

.field private static mTotalScreenOnTime:J


# instance fields
.field private mchargingRecord:Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
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
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DISK:Z

    .line 62
    sput-wide v2, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mTotalScreenOnTime:J

    .line 63
    sput-wide v2, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mScreenOnTriggerTime:J

    .line 64
    sput-wide v2, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mScreenOffTriggerTime:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/BatteryStatsService;)V
    .locals 2
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "batteryStatsService"    # Lcom/android/server/am/BatteryStatsService;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const-string v0, "persist.sys.opcd.enable"

    sget-boolean v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->ENABLE:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->ENABLE:Z

    .line 77
    const-string v0, "persist.sys.opcd.debug"

    sget-boolean v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DEBUG:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DEBUG:Z

    .line 78
    const-string v0, "persist.sys.opcd.lite"

    sget-boolean v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->LITE:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->LITE:Z

    .line 79
    const-string v0, "persist.sys.opcd.mdm"

    sget-boolean v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->MDM:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->MDM:Z

    .line 80
    const-string v0, "persist.sys.opcd.disk"

    sget-boolean v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DISK:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DISK:Z

    .line 81
    sget-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->ENABLE:Z

    if-nez v0, :cond_0

    .line 82
    const-string v0, "OPCD"

    const-string v1, "disabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :goto_0
    return-void

    .line 85
    :cond_0
    const-string v0, "OnePlusPowerConsumptionDetector()--constructor"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 86
    sput-object p1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 87
    sput-object p2, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mContext:Landroid/content/Context;

    .line 88
    sput-object p3, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 90
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->init()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/am/OnePlusPowerConsumptionDetector;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionDetector;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->responseBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 35
    invoke-static {p0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->getDrainTypeByFakeUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Landroid/content/Context;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(J)Ljava/lang/String;
    .locals 2
    .param p0, "x0"    # J

    .prologue
    .line 35
    invoke-static {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->formatTime(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Lcom/android/server/am/BatteryStatsService;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    return-object v0
.end method

.method static synthetic access$500()J
    .locals 2

    .prologue
    .line 35
    sget-wide v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mTotalScreenOnTime:J

    return-wide v0
.end method

.method static synthetic access$502(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 35
    sput-wide p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mTotalScreenOnTime:J

    return-wide p0
.end method

.method static synthetic access$600(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-static {p0, p1, p2}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->trackPowerData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-static {p0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->persistToDisk(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(D)Ljava/util/List;
    .locals 2
    .param p0, "x0"    # D

    .prologue
    .line 35
    invoke-static {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->getHighSipperFromCumulativeDrain(D)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static formatDouble(D)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # D

    .prologue
    .line 273
    const-wide/16 v2, 0x0

    cmpl-double v1, p0, v2

    if-nez v1, :cond_0

    const-string v1, "0"

    .line 285
    :goto_0
    return-object v1

    .line 277
    :cond_0
    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v1, p0, v2

    if-gez v1, :cond_1

    const-string v0, "%.6f"

    .line 285
    .local v0, "format":Ljava/lang/String;
    :goto_1
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 278
    .end local v0    # "format":Ljava/lang/String;
    :cond_1
    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v1, p0, v2

    if-gez v1, :cond_2

    const-string v0, "%.5f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_1

    .line 279
    .end local v0    # "format":Ljava/lang/String;
    :cond_2
    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpg-double v1, p0, v2

    if-gez v1, :cond_3

    const-string v0, "%.4f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_1

    .line 280
    .end local v0    # "format":Ljava/lang/String;
    :cond_3
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, p0, v2

    if-gez v1, :cond_4

    const-string v0, "%.3f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_1

    .line 281
    .end local v0    # "format":Ljava/lang/String;
    :cond_4
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    cmpg-double v1, p0, v2

    if-gez v1, :cond_5

    const-string v0, "%.2f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_1

    .line 282
    .end local v0    # "format":Ljava/lang/String;
    :cond_5
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    cmpg-double v1, p0, v2

    if-gez v1, :cond_6

    const-string v0, "%.1f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_1

    .line 283
    .end local v0    # "format":Ljava/lang/String;
    :cond_6
    const-string v0, "%.0f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_1
.end method

.method private static formatTime(J)Ljava/lang/String;
    .locals 8
    .param p0, "time"    # J

    .prologue
    const-wide/16 v6, 0x3c

    .line 259
    rem-long v4, p0, v6

    long-to-int v2, v4

    .line 260
    .local v2, "s":I
    div-long v4, p0, v6

    rem-long/2addr v4, v6

    long-to-int v1, v4

    .line 261
    .local v1, "m":I
    const-wide/16 v4, 0xe10

    div-long v4, p0, v4

    long-to-int v0, v4

    .line 262
    .local v0, "h":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 264
    const-string v4, "h:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 266
    const-string v4, "m:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 268
    const-string v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static getDrainTypeByFakeUid(I)Ljava/lang/String;
    .locals 1
    .param p0, "fakeUid"    # I

    .prologue
    .line 333
    packed-switch p0, :pswitch_data_0

    .line 374
    const-string v0, "unknown"

    .line 378
    .local v0, "retType":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 335
    .end local v0    # "retType":Ljava/lang/String;
    :pswitch_0
    const-string v0, "idle"

    .line 336
    .restart local v0    # "retType":Ljava/lang/String;
    goto :goto_0

    .line 338
    .end local v0    # "retType":Ljava/lang/String;
    :pswitch_1
    const-string v0, "cell"

    .line 339
    .restart local v0    # "retType":Ljava/lang/String;
    goto :goto_0

    .line 341
    .end local v0    # "retType":Ljava/lang/String;
    :pswitch_2
    const-string v0, "phone"

    .line 342
    .restart local v0    # "retType":Ljava/lang/String;
    goto :goto_0

    .line 344
    .end local v0    # "retType":Ljava/lang/String;
    :pswitch_3
    const-string v0, "wifi"

    .line 345
    .restart local v0    # "retType":Ljava/lang/String;
    goto :goto_0

    .line 347
    .end local v0    # "retType":Ljava/lang/String;
    :pswitch_4
    const-string v0, "bluetooth"

    .line 348
    .restart local v0    # "retType":Ljava/lang/String;
    goto :goto_0

    .line 350
    .end local v0    # "retType":Ljava/lang/String;
    :pswitch_5
    const-string v0, "screen"

    .line 351
    .restart local v0    # "retType":Ljava/lang/String;
    goto :goto_0

    .line 353
    .end local v0    # "retType":Ljava/lang/String;
    :pswitch_6
    const-string v0, "flashlight"

    .line 354
    .restart local v0    # "retType":Ljava/lang/String;
    goto :goto_0

    .line 356
    .end local v0    # "retType":Ljava/lang/String;
    :pswitch_7
    const-string v0, "app"

    .line 357
    .restart local v0    # "retType":Ljava/lang/String;
    goto :goto_0

    .line 359
    .end local v0    # "retType":Ljava/lang/String;
    :pswitch_8
    const-string v0, "user"

    .line 360
    .restart local v0    # "retType":Ljava/lang/String;
    goto :goto_0

    .line 362
    .end local v0    # "retType":Ljava/lang/String;
    :pswitch_9
    const-string v0, "unaccounted"

    .line 363
    .restart local v0    # "retType":Ljava/lang/String;
    goto :goto_0

    .line 365
    .end local v0    # "retType":Ljava/lang/String;
    :pswitch_a
    const-string v0, "overcounted"

    .line 366
    .restart local v0    # "retType":Ljava/lang/String;
    goto :goto_0

    .line 368
    .end local v0    # "retType":Ljava/lang/String;
    :pswitch_b
    const-string v0, "camera"

    .line 369
    .restart local v0    # "retType":Ljava/lang/String;
    goto :goto_0

    .line 371
    .end local v0    # "retType":Ljava/lang/String;
    :pswitch_c
    const-string v0, "default"

    .line 372
    .restart local v0    # "retType":Ljava/lang/String;
    goto :goto_0

    .line 333
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
    .line 382
    const/16 v0, -0x57

    .line 384
    .local v0, "retUid":I
    sget-object v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector$2;->$SwitchMap$com$android$internal$os$BatterySipper$DrainType:[I

    invoke-virtual {p0}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 422
    const/16 v0, -0x57

    .line 426
    :goto_0
    return v0

    .line 386
    :pswitch_0
    const/16 v0, -0x63

    .line 387
    goto :goto_0

    .line 389
    :pswitch_1
    const/16 v0, -0x62

    .line 390
    goto :goto_0

    .line 392
    :pswitch_2
    const/16 v0, -0x61

    .line 393
    goto :goto_0

    .line 395
    :pswitch_3
    const/16 v0, -0x60

    .line 396
    goto :goto_0

    .line 398
    :pswitch_4
    const/16 v0, -0x5f

    .line 399
    goto :goto_0

    .line 401
    :pswitch_5
    const/16 v0, -0x5e

    .line 402
    goto :goto_0

    .line 404
    :pswitch_6
    const/16 v0, -0x5d

    .line 405
    goto :goto_0

    .line 407
    :pswitch_7
    const/16 v0, -0x5c

    .line 408
    goto :goto_0

    .line 410
    :pswitch_8
    const/16 v0, -0x5b

    .line 411
    goto :goto_0

    .line 413
    :pswitch_9
    const/16 v0, -0x5a

    .line 414
    goto :goto_0

    .line 416
    :pswitch_a
    const/16 v0, -0x59

    .line 417
    goto :goto_0

    .line 419
    :pswitch_b
    const/16 v0, -0x58

    .line 420
    goto :goto_0

    .line 384
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
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
    .line 178
    sget-boolean v19, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DEBUG:Z

    if-eqz v19, :cond_0

    .line 179
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "#getHighSipperFromCumulativeDrain # percentThreshold="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 180
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v8, "highSipperList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;>;"
    new-instance v7, Lcom/android/internal/os/BatteryStatsHelper;

    sget-object v19, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mContext:Landroid/content/Context;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v7, v0, v1, v2}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;ZZ)V

    .line 184
    .local v7, "helper":Lcom/android/internal/os/BatteryStatsHelper;
    sget-object v19, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v16

    .line 185
    .local v16, "stats":Lcom/android/internal/os/BatteryStatsImpl;
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    .line 186
    const/16 v19, 0x0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    .line 188
    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v15

    .line 189
    .local v15, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    if-eqz v15, :cond_5

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_5

    .line 191
    const-wide/16 v4, 0x0

    .line 192
    .local v4, "allPower":D
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_3

    .line 193
    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BatterySipper;

    .line 194
    .local v6, "bs":Lcom/android/internal/os/BatterySipper;
    sget-boolean v19, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DEBUG:Z

    if-eqz v19, :cond_1

    .line 195
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " # bs # drainType="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v6, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", uid="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v6, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    iget-object v0, v6, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v19

    :goto_1
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", totalPowerMah="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v6, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", bs.sumPower()="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 200
    :cond_1
    iget-wide v0, v6, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v20, v0

    add-double v4, v4, v20

    .line 192
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 195
    :cond_2
    const/16 v19, -0x1

    goto :goto_1

    .line 203
    .end local v6    # "bs":Lcom/android/internal/os/BatterySipper;
    :cond_3
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    cmpl-double v19, v4, v20

    if-lez v19, :cond_5

    .line 205
    const/4 v9, 0x0

    :goto_2
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_5

    .line 206
    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BatterySipper;

    .line 207
    .restart local v6    # "bs":Lcom/android/internal/os/BatterySipper;
    iget-wide v0, v6, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v20, v0

    div-double v12, v20, v4

    .line 208
    .local v12, "percent":D
    cmpl-double v19, v12, p0

    if-ltz v19, :cond_4

    .line 210
    sget-object v19, Lcom/android/server/am/OnePlusPowerConsumptionDetector$2;->$SwitchMap$com$android$internal$os$BatterySipper$DrainType:[I

    iget-object v0, v6, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v20

    aget v19, v19, v20

    packed-switch v19, :pswitch_data_0

    .line 215
    new-instance v11, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;

    iget-object v0, v6, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->getFakeUidByDrainType(Lcom/android/internal/os/BatterySipper$DrainType;)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;-><init>(Ljava/lang/Integer;)V

    .line 219
    .local v11, "pcs":Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;
    :goto_3
    iput-wide v12, v11, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->percent:D

    .line 220
    invoke-virtual {v11, v6}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->updatePowerItems(Lcom/android/internal/os/BatterySipper;)V

    .line 221
    invoke-virtual {v11}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->initPkgNameByUid()V

    .line 222
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    sget-boolean v19, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DEBUG:Z

    if-eqz v19, :cond_4

    .line 224
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getHighSipperFromCumulativeDrain # pcs="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 205
    .end local v11    # "pcs":Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 212
    :pswitch_0
    new-instance v11, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;

    iget-object v0, v6, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;-><init>(Ljava/lang/Integer;)V

    .line 213
    .restart local v11    # "pcs":Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;
    goto :goto_3

    .line 230
    .end local v4    # "allPower":D
    .end local v6    # "bs":Lcom/android/internal/os/BatterySipper;
    .end local v9    # "i":I
    .end local v11    # "pcs":Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;
    .end local v12    # "percent":D
    :cond_5
    if-eqz v8, :cond_a

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_a

    .line 231
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .local v18, "trackData":Ljava/lang/StringBuilder;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .local v14, "persistData":Ljava/lang/StringBuilder;
    sget-object v19, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->sTraceDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v20, Ljava/util/Date;

    invoke-direct/range {v20 .. v20}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v19 .. v20}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v17

    .line 234
    .local v17, "tagTime":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;

    .line 235
    .restart local v11    # "pcs":Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;
    sget-boolean v19, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->MDM:Z

    if-eqz v19, :cond_7

    .line 236
    invoke-virtual {v11}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    const-string v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    :cond_7
    sget-boolean v19, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DISK:Z

    if-eqz v19, :cond_6

    .line 240
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    const-string v19, " "

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    const-string v19, "CumulativeDrain"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    const-string v19, " "

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v11}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    const-string v19, "\n"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 248
    .end local v11    # "pcs":Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;
    :cond_8
    sget-boolean v19, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->MDM:Z

    if-eqz v19, :cond_9

    .line 249
    const-string v19, "OPCD"

    const-string v20, "CumulativeDrain"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->trackPowerData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_9
    sget-boolean v19, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DISK:Z

    if-eqz v19, :cond_a

    .line 252
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->persistToDisk(Ljava/lang/String;)Z

    .line 255
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v14    # "persistData":Ljava/lang/StringBuilder;
    .end local v17    # "tagTime":Ljava/lang/String;
    .end local v18    # "trackData":Ljava/lang/StringBuilder;
    :cond_a
    return-object v8

    .line 210
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
    .line 69
    sget-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 70
    const-string v0, "OPCD"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    return-void
.end method

.method private static persistToDisk(Ljava/lang/String;)Z
    .locals 12
    .param p0, "record"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 668
    sget-boolean v8, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DISK:Z

    if-nez v8, :cond_1

    .line 718
    :cond_0
    :goto_0
    return v6

    .line 671
    :cond_1
    if-eqz p0, :cond_0

    .line 674
    const-string v4, "/data/system/opcd.log"

    .line 675
    .local v4, "logName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 676
    .local v3, "logFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 677
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 678
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 680
    :cond_2
    const/4 v2, 0x0

    .line 683
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/32 v10, 0x200000

    cmp-long v8, v8, v10

    if-gez v8, :cond_4

    .line 684
    new-instance v2, Ljava/io/FileOutputStream;

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    const/4 v8, 0x1

    invoke-direct {v2, v3, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 708
    if-eqz v2, :cond_3

    .line 710
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 715
    :goto_2
    const/4 v2, 0x0

    :cond_3
    move v6, v7

    .line 718
    goto :goto_0

    .line 686
    :cond_4
    :try_start_3
    new-instance v5, Ljava/io/File;

    const-string v8, "/data/system/opcd.log.old"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 687
    .local v5, "oldFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 688
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 689
    invoke-virtual {v3, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 691
    :cond_5
    new-instance v2, Ljava/io/FileOutputStream;

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 694
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "oldFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 696
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 697
    const/4 v2, 0x0

    .line 698
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 711
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 713
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 703
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 705
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 708
    if-eqz v2, :cond_0

    .line 710
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 715
    :goto_3
    const/4 v2, 0x0

    goto :goto_0

    .line 711
    :catch_3
    move-exception v1

    .line 713
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 708
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    if-eqz v2, :cond_6

    .line 710
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 715
    :goto_4
    const/4 v2, 0x0

    :cond_6
    throw v6

    .line 711
    :catch_4
    move-exception v1

    .line 713
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method

.method private registerBatteryReceiver()V
    .locals 3

    .prologue
    .line 101
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 102
    .local v0, "pkgFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    const-string v1, "action.opcd.test"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    sget-object v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/OnePlusPowerConsumptionDetector$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$1;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionDetector;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    return-void
.end method

.method private responseBroadcast(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 119
    sget-boolean v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# onReceive # action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 121
    :cond_0
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 122
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mchargingRecord:Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;

    invoke-virtual {v1, v3}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->updateRecord(I)V

    .line 173
    :cond_1
    :goto_0
    return-void

    .line 123
    :cond_2
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 124
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mchargingRecord:Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->updateRecord(I)V

    goto :goto_0

    .line 125
    :cond_3
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 126
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sput-wide v2, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mScreenOnTriggerTime:J

    goto :goto_0

    .line 127
    :cond_4
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 128
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sput-wide v2, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mScreenOffTriggerTime:J

    .line 129
    sget-wide v2, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mScreenOffTriggerTime:J

    sget-wide v4, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mScreenOnTriggerTime:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 130
    sget-wide v2, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mTotalScreenOnTime:J

    sget-wide v4, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mScreenOffTriggerTime:J

    sget-wide v6, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mScreenOnTriggerTime:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    sput-wide v2, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mTotalScreenOnTime:J

    goto :goto_0

    .line 132
    :cond_5
    const-string v1, "action.opcd.test"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    const-string v1, "code"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "code":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# onReceive # code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 135
    const-string v1, "dump"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 141
    const-string v1, "prop_using_on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 142
    sput-boolean v3, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->ENABLE:Z

    .line 143
    const-string v1, "persist.sys.opcd.enable"

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 144
    :cond_6
    const-string v1, "prop_using_off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 145
    sput-boolean v4, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->ENABLE:Z

    .line 146
    const-string v1, "persist.sys.opcd.enable"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 147
    :cond_7
    const-string v1, "prop_debug_on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 148
    sput-boolean v3, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DEBUG:Z

    .line 149
    const-string v1, "persist.sys.opcd.debug"

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 150
    :cond_8
    const-string v1, "prop_debug_off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 151
    sput-boolean v4, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DEBUG:Z

    .line 152
    const-string v1, "persist.sys.opcd.debug"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 153
    :cond_9
    const-string v1, "prop_lite_on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 154
    sput-boolean v3, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->LITE:Z

    .line 155
    const-string v1, "persist.sys.opcd.lite"

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 156
    :cond_a
    const-string v1, "prop_lite_off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 157
    sput-boolean v4, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->LITE:Z

    .line 158
    const-string v1, "persist.sys.opcd.lite"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 159
    :cond_b
    const-string v1, "prop_mdm_on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 160
    sput-boolean v3, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->MDM:Z

    .line 161
    const-string v1, "persist.sys.opcd.mdm"

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 162
    :cond_c
    const-string v1, "prop_mdm_off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 163
    sput-boolean v4, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->MDM:Z

    .line 164
    const-string v1, "persist.sys.opcd.mdm"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 165
    :cond_d
    const-string v1, "prop_disk_on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 166
    sput-boolean v3, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DISK:Z

    .line 167
    const-string v1, "persist.sys.opcd.disk"

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 168
    :cond_e
    const-string v1, "prop_disk_off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    sput-boolean v4, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DISK:Z

    .line 170
    const-string v1, "persist.sys.opcd.disk"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static trackPowerData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 292
    sget-boolean v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->MDM:Z

    if-nez v1, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 299
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 300
    .local v0, "mdmData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    invoke-static {p0, v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->trackPowerData(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
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
    .line 304
    .local p1, "mdmData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-boolean v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->MDM:Z

    if-nez v1, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    new-instance v0, Lnet/oneplus/odm/insight/tracker/OSTracker;

    sget-object v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lnet/oneplus/odm/insight/tracker/OSTracker;-><init>(Landroid/content/Context;)V

    .line 309
    .local v0, "tracker":Lnet/oneplus/odm/insight/tracker/OSTracker;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 310
    invoke-virtual {v0, p0, p1}, Lnet/oneplus/odm/insight/tracker/OSTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method


# virtual methods
.method init()V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->registerBatteryReceiver()V

    .line 95
    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;

    invoke-direct {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mchargingRecord:Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;

    .line 96
    return-void
.end method
