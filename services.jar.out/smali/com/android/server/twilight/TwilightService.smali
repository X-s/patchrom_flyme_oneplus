.class public final Lcom/android/server/twilight/TwilightService;
.super Lcom/android/server/SystemService;
.source "TwilightService.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;
.implements Landroid/os/Handler$Callback;
.implements Landroid/location/LocationListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final MSG_START_LISTENING:I = 0x1

.field private static final MSG_STOP_LISTENING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TwilightService"

.field private static mContext:Landroid/content/Context; = null

.field private static final mFourHourMillis:J = 0x1499700L

.field private static final mSixHourMillis:J = 0x1499700L

.field private static final mTwuentyHourMillis:J = 0x3dcc500L


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mBootCompleted:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHasListeners:Z

.field private mIsGetLocation:Ljava/lang/Boolean;

.field private mLastLocation:Landroid/location/Location;

.field private mLastTwilightState:Lcom/android/server/twilight/TwilightState;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mListeners"
    .end annotation
.end field

.field private final mListeners:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mListeners"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/android/server/twilight/TwilightListener;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationManager:Landroid/location/LocationManager;

.field private mPreIsNight:Ljava/lang/Boolean;

.field private mTimeChangedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/server/twilight/TwilightService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/twilight/TwilightService;)Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLastLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/twilight/TwilightService;)Lcom/android/server/twilight/TwilightState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLastTwilightState:Lcom/android/server/twilight/TwilightState;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/twilight/TwilightService;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mPreIsNight:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/twilight/TwilightService;Lcom/android/server/twilight/TwilightState;)Lcom/android/server/twilight/TwilightState;
    .locals 0

    iput-object p1, p0, Lcom/android/server/twilight/TwilightService;->mLastTwilightState:Lcom/android/server/twilight/TwilightState;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/twilight/TwilightService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/android/server/twilight/TwilightService;->mPreIsNight:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/location/Location;J)Lcom/android/server/twilight/TwilightState;
    .locals 1
    .param p0, "location"    # Landroid/location/Location;
    .param p1, "timeMillis"    # J

    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/server/twilight/TwilightService;->calculateTwilightState(Landroid/location/Location;J)Lcom/android/server/twilight/TwilightState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/twilight/TwilightService;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isCallByOnLocationChange"    # Ljava/lang/Boolean;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/twilight/TwilightService;->updateTwilightState(Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    .line 80
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mIsGetLocation:Ljava/lang/Boolean;

    .line 81
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mPreIsNight:Ljava/lang/Boolean;

    .line 90
    sput-object p1, Lcom/android/server/twilight/TwilightService;->mContext:Landroid/content/Context;

    .line 92
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mHandler:Landroid/os/Handler;

    .line 86
    return-void
.end method

.method private static calculateTwilightState(Landroid/location/Location;J)Lcom/android/server/twilight/TwilightState;
    .locals 33
    .param p0, "location"    # Landroid/location/Location;
    .param p1, "timeMillis"    # J

    .prologue
    .line 421
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v20

    .line 422
    .local v20, "noon":Landroid/icu/util/Calendar;
    move-object/from16 v0, v20

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 423
    const/16 v28, 0xb

    const/16 v29, 0xc

    move-object/from16 v0, v20

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->set(II)V

    .line 424
    const/16 v28, 0xc

    const/16 v29, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->set(II)V

    .line 425
    const/16 v28, 0xd

    const/16 v29, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->set(II)V

    .line 426
    const/16 v28, 0xe

    const/16 v29, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->set(II)V

    .line 427
    const/4 v9, 0x0

    .line 428
    .local v9, "isDefaultLocation":Z
    const/16 v17, 0x0

    .line 429
    .local v17, "lon":I
    const/16 v16, 0x0

    .line 430
    .local v16, "lat":I
    const-wide/16 v12, 0x0

    .line 431
    .local v12, "dlon":D
    const-wide/16 v10, 0x0

    .line 432
    .local v10, "dlat":D
    const/16 v28, 0x0

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    .line 433
    .local v14, "isLastLocationUsed":Ljava/lang/Boolean;
    if-eqz p0, :cond_0

    .line 434
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v12

    .line 435
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    .line 436
    double-to-int v0, v12

    move/from16 v28, v0

    mul-int/lit8 v17, v28, 0x64

    .line 437
    double-to-int v0, v10

    move/from16 v28, v0

    mul-int/lit8 v16, v28, 0x64

    .line 438
    const/16 v28, 0x283c

    move/from16 v0, v17

    move/from16 v1, v28

    if-ne v0, v1, :cond_7

    const/16 v28, 0xbb8

    move/from16 v0, v16

    move/from16 v1, v28

    if-ne v0, v1, :cond_7

    const/4 v9, 0x1

    .line 440
    :goto_0
    const-string/jumbo v28, "TwilightService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "isDefaultLocation:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_0
    if-eqz p0, :cond_1

    if-eqz v9, :cond_2

    .line 443
    :cond_1
    sget-object v28, Lcom/android/server/twilight/TwilightService;->mContext:Landroid/content/Context;

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string/jumbo v29, "twils-lon"

    const/16 v30, 0x0

    const/16 v31, -0x2

    invoke-static/range {v28 .. v31}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    .line 444
    sget-object v28, Lcom/android/server/twilight/TwilightService;->mContext:Landroid/content/Context;

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string/jumbo v29, "twils-lat"

    const/16 v30, 0x0

    const/16 v31, -0x2

    invoke-static/range {v28 .. v31}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v16

    .line 445
    if-eqz v17, :cond_2

    if-eqz v16, :cond_2

    .line 446
    const-string/jumbo v28, "TwilightService"

    const-string/jumbo v29, "used SAVED"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v28, v0

    const-wide v30, 0x408f400000000000L    # 1000.0

    div-double v12, v28, v30

    .line 448
    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v28, v0

    const-wide v30, 0x408f400000000000L    # 1000.0

    div-double v10, v28, v30

    .line 449
    const/16 v28, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    .line 457
    :cond_2
    if-eqz p0, :cond_3

    if-eqz v9, :cond_4

    :cond_3
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    if-eqz v28, :cond_9

    .line 473
    :cond_4
    const/4 v15, 0x0

    .line 474
    .local v15, "isTimeZoneError":Z
    const-wide v28, 0x408f400000000000L    # 1000.0

    mul-double v28, v28, v12

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v17, v0

    .line 475
    const-wide v28, 0x408f400000000000L    # 1000.0

    mul-double v28, v28, v10

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v16, v0

    .line 476
    sget-object v28, Lcom/android/server/twilight/TwilightService;->mContext:Landroid/content/Context;

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string/jumbo v29, "twils-lon"

    const/16 v30, -0x2

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move/from16 v2, v17

    move/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 477
    sget-object v28, Lcom/android/server/twilight/TwilightService;->mContext:Landroid/content/Context;

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string/jumbo v29, "twils-lat"

    const/16 v30, -0x2

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move/from16 v2, v16

    move/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 478
    const-string/jumbo v28, "TwilightService"

    const-string/jumbo v29, "Save loc!"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    new-instance v6, Landroid/icu/impl/CalendarAstronomer;

    invoke-direct {v6, v12, v13, v10, v11}, Landroid/icu/impl/CalendarAstronomer;-><init>(DD)V

    .line 480
    .local v6, "ca":Landroid/icu/impl/CalendarAstronomer;
    invoke-virtual/range {v20 .. v20}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v28

    move-wide/from16 v0, v28

    invoke-virtual {v6, v0, v1}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    .line 481
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    move-result-wide v22

    .line 482
    .local v22, "sunriseTimeMillis":J
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    move-result-wide v26

    .line 483
    .local v26, "sunsetTimeMillis":J
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v7

    .line 484
    .local v7, "csunrise":Landroid/icu/util/Calendar;
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v8

    .line 485
    .local v8, "csunset":Landroid/icu/util/Calendar;
    move-wide/from16 v0, v22

    invoke-virtual {v7, v0, v1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 486
    move-wide/from16 v0, v26

    invoke-virtual {v8, v0, v1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 491
    const/16 v28, 0x5

    move/from16 v0, v28

    invoke-virtual {v7, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v28

    const/16 v29, 0x5

    move/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_b

    .line 492
    const/4 v15, 0x1

    .line 493
    const-string/jumbo v28, "TwilightService"

    const-string/jumbo v29, "Time zone error 0"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_5
    :goto_1
    new-instance v21, Lcom/android/server/twilight/TwilightState;

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    move-wide/from16 v3, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/twilight/TwilightState;-><init>(JJ)V

    .line 514
    .local v21, "ts":Lcom/android/server/twilight/TwilightState;
    const-string/jumbo v28, "TwilightService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "ts:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    if-eqz v15, :cond_6

    .line 516
    invoke-virtual/range {v20 .. v20}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v18

    .line 517
    .local v18, "moonMillis":J
    const-wide/32 v28, 0x1499700

    sub-long v22, v18, v28

    .line 518
    const-wide/32 v28, 0x3dcc500

    add-long v24, v18, v28

    .line 519
    .local v24, "sunriseTimeMillis2":J
    const-wide/32 v28, 0x1499700

    add-long v26, v18, v28

    .line 520
    cmp-long v28, p1, v22

    if-gez v28, :cond_d

    .line 521
    new-instance v21, Lcom/android/server/twilight/TwilightState;

    .end local v21    # "ts":Lcom/android/server/twilight/TwilightState;
    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    move-wide/from16 v3, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/twilight/TwilightState;-><init>(JJ)V

    .line 526
    .restart local v21    # "ts":Lcom/android/server/twilight/TwilightState;
    :goto_2
    const-string/jumbo v28, "TwilightService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "Time zone maybe error,Time-fixed:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    .end local v18    # "moonMillis":J
    .end local v24    # "sunriseTimeMillis2":J
    :cond_6
    return-object v21

    .line 439
    .end local v6    # "ca":Landroid/icu/impl/CalendarAstronomer;
    .end local v7    # "csunrise":Landroid/icu/util/Calendar;
    .end local v8    # "csunset":Landroid/icu/util/Calendar;
    .end local v15    # "isTimeZoneError":Z
    .end local v21    # "ts":Lcom/android/server/twilight/TwilightState;
    .end local v22    # "sunriseTimeMillis":J
    .end local v26    # "sunsetTimeMillis":J
    :cond_7
    if-nez v17, :cond_8

    if-nez v16, :cond_8

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 458
    :cond_9
    invoke-virtual/range {v20 .. v20}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v18

    .line 459
    .restart local v18    # "moonMillis":J
    const-wide/32 v28, 0x1499700

    sub-long v22, v18, v28

    .line 460
    .restart local v22    # "sunriseTimeMillis":J
    const-wide/32 v28, 0x3dcc500

    add-long v24, v18, v28

    .line 461
    .restart local v24    # "sunriseTimeMillis2":J
    const-wide/32 v28, 0x1499700

    add-long v26, v18, v28

    .line 462
    .restart local v26    # "sunsetTimeMillis":J
    cmp-long v28, p1, v22

    if-gez v28, :cond_a

    .line 463
    new-instance v21, Lcom/android/server/twilight/TwilightState;

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    move-wide/from16 v3, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/twilight/TwilightState;-><init>(JJ)V

    .line 468
    .restart local v21    # "ts":Lcom/android/server/twilight/TwilightState;
    :goto_3
    const-string/jumbo v28, "TwilightService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "isDefaultLocation:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " Time-fixed:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    return-object v21

    .line 466
    .end local v21    # "ts":Lcom/android/server/twilight/TwilightState;
    :cond_a
    new-instance v21, Lcom/android/server/twilight/TwilightState;

    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    move-wide/from16 v3, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/twilight/TwilightState;-><init>(JJ)V

    .restart local v21    # "ts":Lcom/android/server/twilight/TwilightState;
    goto :goto_3

    .line 495
    .end local v18    # "moonMillis":J
    .end local v21    # "ts":Lcom/android/server/twilight/TwilightState;
    .end local v24    # "sunriseTimeMillis2":J
    .restart local v6    # "ca":Landroid/icu/impl/CalendarAstronomer;
    .restart local v7    # "csunrise":Landroid/icu/util/Calendar;
    .restart local v8    # "csunset":Landroid/icu/util/Calendar;
    .restart local v15    # "isTimeZoneError":Z
    :cond_b
    cmp-long v28, v26, p1

    if-gez v28, :cond_c

    .line 496
    const/16 v28, 0x5

    const/16 v29, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->add(II)V

    .line 497
    invoke-virtual/range {v20 .. v20}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v28

    move-wide/from16 v0, v28

    invoke-virtual {v6, v0, v1}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    .line 498
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    move-result-wide v22

    .line 499
    cmp-long v28, v22, p1

    if-gez v28, :cond_5

    .line 500
    const/4 v15, 0x1

    .line 501
    const-string/jumbo v28, "TwilightService"

    const-string/jumbo v29, "Time zone error 1"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 503
    :cond_c
    cmp-long v28, v22, p1

    if-lez v28, :cond_5

    .line 504
    const/16 v28, 0x5

    const/16 v29, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->add(II)V

    .line 505
    invoke-virtual/range {v20 .. v20}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v28

    move-wide/from16 v0, v28

    invoke-virtual {v6, v0, v1}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    .line 506
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    move-result-wide v26

    .line 507
    cmp-long v28, v26, p1

    if-lez v28, :cond_5

    .line 508
    const/4 v15, 0x1

    .line 509
    const-string/jumbo v28, "TwilightService"

    const-string/jumbo v29, "Time zone error 2"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 524
    .restart local v18    # "moonMillis":J
    .restart local v21    # "ts":Lcom/android/server/twilight/TwilightState;
    .restart local v24    # "sunriseTimeMillis2":J
    :cond_d
    new-instance v21, Lcom/android/server/twilight/TwilightState;

    .end local v21    # "ts":Lcom/android/server/twilight/TwilightState;
    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    move-wide/from16 v3, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/twilight/TwilightState;-><init>(JJ)V

    .restart local v21    # "ts":Lcom/android/server/twilight/TwilightState;
    goto/16 :goto_2
.end method

.method private startListening()V
    .locals 7

    .prologue
    .line 185
    const-string/jumbo v0, "TwilightService"

    const-string/jumbo v1, "startListening"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 219
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 220
    new-instance v0, Lcom/android/server/twilight/TwilightService$2;

    invoke-direct {v0, p0}, Lcom/android/server/twilight/TwilightService$2;-><init>(Lcom/android/server/twilight/TwilightService;)V

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 228
    new-instance v6, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.intent.action.TIME_SET"

    invoke-direct {v6, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 229
    .local v6, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 234
    .end local v6    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/twilight/TwilightService;->updateTwilightState(Ljava/lang/Boolean;)V

    .line 184
    return-void
.end method

.method private stopListening()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 238
    const-string/jumbo v0, "TwilightService"

    const-string/jumbo v1, "stopListening"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 242
    iput-object v2, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLastTwilightState:Lcom/android/server/twilight/TwilightState;

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 250
    iput-object v2, p0, Lcom/android/server/twilight/TwilightService;->mLastLocation:Landroid/location/Location;

    .line 237
    return-void
.end method

.method private updateTwilightState(Ljava/lang/Boolean;)V
    .locals 22
    .param p1, "isCallByOnLocationChange"    # Ljava/lang/Boolean;

    .prologue
    .line 255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 260
    .local v10, "currentTimeMillis":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v3, "network"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v3, "network"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/twilight/TwilightService;->mLastLocation:Landroid/location/Location;

    .line 281
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/twilight/TwilightService;->mLastLocation:Landroid/location/Location;

    invoke-static {v2, v10, v11}, Lcom/android/server/twilight/TwilightService;->calculateTwilightState(Landroid/location/Location;J)Lcom/android/server/twilight/TwilightState;

    move-result-object v15

    .line 289
    .local v15, "state":Lcom/android/server/twilight/TwilightState;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/twilight/TwilightService;->mLastTwilightState:Lcom/android/server/twilight/TwilightState;

    if-nez v2, :cond_1

    .line 290
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/twilight/TwilightService;->mLastTwilightState:Lcom/android/server/twilight/TwilightState;

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/twilight/TwilightService;->mLastTwilightState:Lcom/android/server/twilight/TwilightState;

    invoke-virtual {v2}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/twilight/TwilightService;->mPreIsNight:Ljava/lang/Boolean;

    .line 293
    :cond_1
    const-string/jumbo v2, "TwilightService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "1 updateTwilightState: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const-string/jumbo v2, "TwilightService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "2 updateTwilightState: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/twilight/TwilightService;->mLastTwilightState:Lcom/android/server/twilight/TwilightState;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/twilight/TwilightService;->mPreIsNight:Ljava/lang/Boolean;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 296
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/twilight/TwilightService;->mPreIsNight:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v15}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v6

    if-eq v2, v6, :cond_3

    .line 297
    :cond_2
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/twilight/TwilightService;->mLastTwilightState:Lcom/android/server/twilight/TwilightState;

    .line 298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/twilight/TwilightService;->mLastTwilightState:Lcom/android/server/twilight/TwilightState;

    invoke-virtual {v2}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/twilight/TwilightService;->mPreIsNight:Ljava/lang/Boolean;

    .line 299
    const-string/jumbo v2, "TwilightService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateTwilightState:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v15}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v12, v2, -0x1

    .local v12, "i":I
    :goto_0
    if-ltz v12, :cond_3

    .line 301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/twilight/TwilightListener;

    .line 302
    .local v13, "listener":Lcom/android/server/twilight/TwilightListener;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Handler;

    .line 303
    .local v9, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/android/server/twilight/TwilightService$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v13, v15}, Lcom/android/server/twilight/TwilightService$3;-><init>(Lcom/android/server/twilight/TwilightService;Lcom/android/server/twilight/TwilightListener;Lcom/android/server/twilight/TwilightState;)V

    invoke-virtual {v9, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    add-int/lit8 v12, v12, -0x1

    goto :goto_0

    .end local v9    # "handler":Landroid/os/Handler;
    .end local v12    # "i":I
    .end local v13    # "listener":Lcom/android/server/twilight/TwilightListener;
    :cond_3
    monitor-exit v3

    .line 315
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/twilight/TwilightService;->mLastTwilightState:Lcom/android/server/twilight/TwilightState;

    .line 316
    if-eqz v15, :cond_4

    .line 317
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v14

    .line 318
    .local v14, "now":Landroid/icu/util/Calendar;
    invoke-virtual {v14}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    .line 319
    .local v16, "nowMillis":J
    invoke-virtual {v15}, Lcom/android/server/twilight/TwilightState;->sunriseTimeMillis()J

    move-result-wide v18

    .line 320
    .local v18, "sunriseMillis":J
    invoke-virtual {v15}, Lcom/android/server/twilight/TwilightState;->sunsetTimeMillis()J

    move-result-wide v20

    .line 322
    .local v20, "sunsetMillis":J
    cmp-long v2, v18, v20

    if-gez v2, :cond_6

    .line 323
    cmp-long v2, v16, v18

    if-gez v2, :cond_5

    .line 325
    move-wide/from16 v4, v18

    .line 326
    .local v4, "triggerAtMillis":J
    const-string/jumbo v2, "TwilightService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "1 trigger time sunrise:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 348
    cmp-long v2, v4, v16

    if-gez v2, :cond_8

    .line 349
    const-string/jumbo v2, "TwilightService"

    const-string/jumbo v3, "time zone maybe error,triggerAtMillis < nowMillis!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .end local v4    # "triggerAtMillis":J
    .end local v14    # "now":Landroid/icu/util/Calendar;
    .end local v16    # "nowMillis":J
    .end local v18    # "sunriseMillis":J
    .end local v20    # "sunsetMillis":J
    :cond_4
    :goto_2
    return-void

    .line 295
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 329
    .restart local v14    # "now":Landroid/icu/util/Calendar;
    .restart local v16    # "nowMillis":J
    .restart local v18    # "sunriseMillis":J
    .restart local v20    # "sunsetMillis":J
    :cond_5
    move-wide/from16 v4, v20

    .line 330
    .restart local v4    # "triggerAtMillis":J
    const-string/jumbo v2, "TwilightService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "2 trigger time sunset:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 333
    .end local v4    # "triggerAtMillis":J
    :cond_6
    cmp-long v2, v16, v20

    if-gez v2, :cond_7

    .line 335
    move-wide/from16 v4, v20

    .line 336
    .restart local v4    # "triggerAtMillis":J
    const-string/jumbo v2, "TwilightService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "3 trigger time sunset:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 339
    .end local v4    # "triggerAtMillis":J
    :cond_7
    move-wide/from16 v4, v18

    .line 340
    .restart local v4    # "triggerAtMillis":J
    const-string/jumbo v2, "TwilightService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "4 trigger time sunrise:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 351
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    const-string/jumbo v6, "TwilightService"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/twilight/TwilightService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    move-object/from16 v7, p0

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    goto :goto_2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 163
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 181
    return v2

    .line 165
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    if-nez v0, :cond_0

    .line 166
    iput-boolean v1, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    .line 167
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService;->mBootCompleted:Z

    if-eqz v0, :cond_0

    .line 168
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->startListening()V

    .line 171
    :cond_0
    return v1

    .line 173
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    if-eqz v0, :cond_1

    .line 174
    iput-boolean v2, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    .line 175
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService;->mBootCompleted:Z

    if-eqz v0, :cond_1

    .line 176
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->stopListening()V

    .line 179
    :cond_1
    return v1

    .line 163
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onAlarm()V
    .locals 2

    .prologue
    .line 357
    const-string/jumbo v0, "TwilightService"

    const-string/jumbo v1, "onAlarm"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/twilight/TwilightService;->updateTwilightState(Ljava/lang/Boolean;)V

    .line 356
    return-void
.end method

.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .prologue
    .line 149
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 151
    .local v0, "c":Landroid/content/Context;
    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 152
    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    .line 154
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/twilight/TwilightService;->mBootCompleted:Z

    .line 155
    iget-boolean v1, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    if-eqz v1, :cond_0

    .line 156
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->startListening()V

    .line 148
    .end local v0    # "c":Landroid/content/Context;
    :cond_0
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 11
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const-wide/32 v2, 0x36ee80

    const v4, 0x47c35000    # 100000.0f

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 363
    if-eqz p1, :cond_1

    .line 366
    const/4 v6, 0x0

    .line 367
    .local v6, "isDefaultLocation":Z
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    double-to-int v0, v0

    mul-int/lit8 v8, v0, 0x64

    .line 368
    .local v8, "lon":I
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    double-to-int v0, v0

    mul-int/lit8 v7, v0, 0x64

    .line 370
    .local v7, "lat":I
    const/16 v0, 0x283c

    if-ne v8, v0, :cond_2

    const/16 v0, 0xbb8

    if-ne v7, v0, :cond_2

    move v6, v9

    .line 372
    .local v6, "isDefaultLocation":Z
    :goto_0
    if-eqz v6, :cond_4

    .line 373
    const-string/jumbo v0, "TwilightService"

    const-string/jumbo v1, "#1 startListening"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 375
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 378
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mIsGetLocation:Ljava/lang/Boolean;

    .line 390
    :cond_0
    :goto_1
    const-string/jumbo v0, "TwilightService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLocationChanged: provider="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 391
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    .line 390
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 392
    const-string/jumbo v2, " accuracy="

    .line 390
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 392
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    .line 390
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 393
    const-string/jumbo v2, " time="

    .line 390
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 393
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    .line 390
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iput-object p1, p0, Lcom/android/server/twilight/TwilightService;->mLastLocation:Landroid/location/Location;

    .line 395
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/twilight/TwilightService;->updateTwilightState(Ljava/lang/Boolean;)V

    .line 362
    .end local v6    # "isDefaultLocation":Z
    .end local v7    # "lat":I
    .end local v8    # "lon":I
    :cond_1
    return-void

    .line 371
    .local v6, "isDefaultLocation":Z
    .restart local v7    # "lat":I
    .restart local v8    # "lon":I
    :cond_2
    if-nez v8, :cond_3

    if-nez v7, :cond_3

    move v6, v9

    goto :goto_0

    :cond_3
    move v6, v10

    goto :goto_0

    .line 380
    .local v6, "isDefaultLocation":Z
    :cond_4
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mIsGetLocation:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    const-string/jumbo v0, "TwilightService"

    const-string/jumbo v1, "#2 startListening"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 383
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 385
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mIsGetLocation:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 408
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 404
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 97
    const-class v0, Lcom/android/server/twilight/TwilightManager;

    new-instance v1, Lcom/android/server/twilight/TwilightService$1;

    invoke-direct {v1, p0}, Lcom/android/server/twilight/TwilightService$1;-><init>(Lcom/android/server/twilight/TwilightService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/twilight/TwilightService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 96
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 400
    return-void
.end method
