.class final Lcom/android/server/DeviceIdleController$Constants;
.super Landroid/database/ContentObserver;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Constants"
.end annotation


# static fields
.field public static final AGGRESSIVE_POLICY:I = 0x1

.field public static final DEFAULT_POLICY:I = 0x0

.field private static final KEY_IDLE_AFTER_INACTIVE_TIMEOUT:Ljava/lang/String; = "idle_after_inactive_to"

.field private static final KEY_IDLE_FACTOR:Ljava/lang/String; = "idle_factor"

.field private static final KEY_IDLE_PENDING_FACTOR:Ljava/lang/String; = "idle_pending_factor"

.field private static final KEY_IDLE_PENDING_TIMEOUT:Ljava/lang/String; = "idle_pending_to"

.field private static final KEY_IDLE_TIMEOUT:Ljava/lang/String; = "idle_to"

.field private static final KEY_INACTIVE_TIMEOUT:Ljava/lang/String; = "inactive_to"

.field private static final KEY_LOCATING_TIMEOUT:Ljava/lang/String; = "locating_to"

.field private static final KEY_LOCATION_ACCURACY:Ljava/lang/String; = "location_accuracy"

.field private static final KEY_MAX_IDLE_PENDING_TIMEOUT:Ljava/lang/String; = "max_idle_pending_to"

.field private static final KEY_MAX_IDLE_TIMEOUT:Ljava/lang/String; = "max_idle_to"

.field private static final KEY_MAX_TEMP_APP_WHITELIST_DURATION:Ljava/lang/String; = "max_temp_app_whitelist_duration"

.field private static final KEY_MIN_TIME_TO_ALARM:Ljava/lang/String; = "min_time_to_alarm"

.field private static final KEY_MMS_TEMP_APP_WHITELIST_DURATION:Ljava/lang/String; = "mms_temp_app_whitelist_duration"

.field private static final KEY_MOTION_INACTIVE_TIMEOUT:Ljava/lang/String; = "motion_inactive_to"

.field private static final KEY_SENSING_TIMEOUT:Ljava/lang/String; = "sensing_to"

.field private static final KEY_SMS_TEMP_APP_WHITELIST_DURATION:Ljava/lang/String; = "sms_temp_app_whitelist_duration"

.field public static final MAX_POLICY:I = 0x2


# instance fields
.field public IDLE_AFTER_INACTIVE_TIMEOUT:J

.field public IDLE_FACTOR:F

.field public IDLE_PENDING_FACTOR:F

.field public IDLE_PENDING_TIMEOUT:J

.field public IDLE_TIMEOUT:J

.field public INACTIVE_TIMEOUT:J

.field public LOCATING_TIMEOUT:J

.field public LOCATION_ACCURACY:F

.field public MAX_IDLE_PENDING_TIMEOUT:J

.field public MAX_IDLE_TIMEOUT:J

.field public MAX_TEMP_APP_WHITELIST_DURATION:J

.field public MIN_TIME_TO_ALARM:J

.field public MMS_TEMP_APP_WHITELIST_DURATION:J

.field public MOTION_INACTIVE_TIMEOUT:J

.field public SENSING_TIMEOUT:J

.field public SMS_TEMP_APP_WHITELIST_DURATION:J

.field private final mParser:Landroid/util/KeyValueListParser;

.field private mPolicy:I

.field private final mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method public constructor <init>(Lcom/android/server/DeviceIdleController;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 4
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v3, 0x0

    .line 509
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$Constants;->this$0:Lcom/android/server/DeviceIdleController;

    .line 510
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 499
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    .line 507
    iput v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mPolicy:I

    .line 511
    iput-object p3, p0, Lcom/android/server/DeviceIdleController$Constants;->mResolver:Landroid/content/ContentResolver;

    .line 512
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "doze_mode_policy"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 514
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "device_idle_constants"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 516
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "doze_mode_policy"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mPolicy:I

    .line 517
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController$Constants;->updateConstants()V

    .line 518
    return-void
.end method

.method private updateConstants()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 543
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$Constants;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v2

    .line 545
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    iget-object v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "device_idle_constants"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    :goto_0
    :try_start_1
    iget v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mPolicy:I

    if-ne v1, v5, :cond_3

    .line 554
    const-string v1, "DeviceIdleController"

    const-string v3, "Use aggressive doze constants by default"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "sensing_to"

    const-wide/32 v4, 0xea60

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->SENSING_TIMEOUT:J

    .line 557
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "locating_to"

    const-wide/32 v4, 0xea60

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->LOCATING_TIMEOUT:J

    .line 559
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "location_accuracy"

    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {v1, v3, v4}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    .line 560
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "motion_inactive_to"

    const-wide/32 v4, 0xea60

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    .line 562
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "idle_after_inactive_to"

    const-wide/32 v4, 0x2bf20

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    .line 565
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput v4, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 567
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "inactive_to"

    const-wide/32 v4, 0x927c0

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    .line 569
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "idle_pending_to"

    const-wide/32 v4, 0xea60

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    .line 571
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "max_idle_pending_to"

    const-wide/32 v4, 0x1d4c0

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    .line 573
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "idle_to"

    const-wide/32 v4, 0x1b7740

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    .line 575
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "max_idle_to"

    const-wide/32 v4, 0x1b77400

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    .line 577
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "idle_factor"

    const/high16 v4, 0x40400000    # 3.0f

    invoke-virtual {v1, v3, v4}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    .line 597
    :goto_1
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "idle_pending_factor"

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v1, v3, v4}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_FACTOR:F

    .line 599
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "min_time_to_alarm"

    const-wide/32 v4, 0xea60

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    .line 601
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "max_temp_app_whitelist_duration"

    const-wide/32 v4, 0x493e0

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_WHITELIST_DURATION:J

    .line 603
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "mms_temp_app_whitelist_duration"

    const-wide/32 v4, 0xea60

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->MMS_TEMP_APP_WHITELIST_DURATION:J

    .line 605
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "sms_temp_app_whitelist_duration"

    const-wide/16 v4, 0x4e20

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->SMS_TEMP_APP_WHITELIST_DURATION:J

    .line 607
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;
    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->access$000(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 608
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;
    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->access$000(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/PowerManagerInternal;->setDeviceIdleAggressive(Z)V

    .line 610
    :cond_0
    sget-boolean v1, Lcom/android/server/DeviceIdleController;->isDozeChangeSupport:Z

    if-eqz v1, :cond_1

    .line 611
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/DeviceIdleController;->mChange:Z

    .line 653
    :cond_1
    :goto_2
    monitor-exit v2

    .line 654
    return-void

    .line 547
    :catch_0
    move-exception v0

    .line 550
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "DeviceIdleController"

    const-string v3, "Bad device idle settings"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 653
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 581
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "locating_to"

    const-wide/16 v4, 0x3a98

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->LOCATING_TIMEOUT:J

    .line 583
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "inactive_to"

    const-wide/32 v4, 0x2bf20

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    .line 585
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "idle_pending_to"

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    .line 587
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "max_idle_pending_to"

    const-wide/16 v4, 0x4e20

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    .line 589
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "idle_to"

    const-wide/32 v4, 0x1499700

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    .line 591
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "max_idle_to"

    const-wide/32 v4, 0x5265c00

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    .line 593
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "idle_factor"

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v1, v3, v4}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    goto/16 :goto_1

    .line 614
    :cond_3
    const-string v1, "DeviceIdleController"

    const-string v3, "Use original doze constants by default"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "inactive_to"

    const-wide/32 v4, 0x1b7740

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    .line 617
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "sensing_to"

    const-wide/32 v4, 0xea60

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->SENSING_TIMEOUT:J

    .line 619
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "locating_to"

    const-wide/16 v4, 0x3a98

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->LOCATING_TIMEOUT:J

    .line 621
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "location_accuracy"

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v1, v3, v4}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    .line 622
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "motion_inactive_to"

    const-wide/32 v4, 0x927c0

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    .line 624
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "idle_after_inactive_to"

    const-wide/32 v4, 0x1b7740

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    .line 626
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "idle_pending_to"

    const-wide/32 v4, 0x493e0

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    .line 628
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "max_idle_pending_to"

    const-wide/32 v4, 0x927c0

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    .line 630
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "idle_pending_factor"

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v1, v3, v4}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_FACTOR:F

    .line 632
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "idle_to"

    const-wide/32 v4, 0x36ee80

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    .line 634
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "max_idle_to"

    const-wide/32 v4, 0x1499700

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    .line 636
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "idle_factor"

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v1, v3, v4}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    .line 638
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "min_time_to_alarm"

    const-wide/32 v4, 0x36ee80

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    .line 640
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "max_temp_app_whitelist_duration"

    const-wide/32 v4, 0x493e0

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_WHITELIST_DURATION:J

    .line 642
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "mms_temp_app_whitelist_duration"

    const-wide/32 v4, 0xea60

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->MMS_TEMP_APP_WHITELIST_DURATION:J

    .line 644
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "sms_temp_app_whitelist_duration"

    const-wide/16 v4, 0x4e20

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->SMS_TEMP_APP_WHITELIST_DURATION:J

    .line 646
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;
    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->access$000(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 647
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;
    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->access$000(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/PowerManagerInternal;->setDeviceIdleAggressive(Z)V

    .line 649
    :cond_4
    sget-boolean v1, Lcom/android/server/DeviceIdleController;->isDozeChangeSupport:Z

    if-eqz v1, :cond_1

    .line 650
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/DeviceIdleController;->mChange:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 657
    const-string v0, "  Settings:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 659
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "inactive_to"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 660
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 661
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 663
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "sensing_to"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 664
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->SENSING_TIMEOUT:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 665
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 667
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "locating_to"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 668
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LOCATING_TIMEOUT:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 669
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 671
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "location_accuracy"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 672
    iget v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, "m"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 673
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 675
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "motion_inactive_to"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 676
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 677
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 679
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "idle_after_inactive_to"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 680
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 681
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 683
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "idle_pending_to"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 684
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 685
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 687
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "max_idle_pending_to"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 688
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 689
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 691
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "idle_pending_factor"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 692
    iget v0, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_FACTOR:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 694
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "idle_to"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 695
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 696
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 698
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "max_idle_to"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 699
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 700
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 702
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "idle_factor"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 703
    iget v0, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 705
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "min_time_to_alarm"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 706
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 707
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 709
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "max_temp_app_whitelist_duration"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 710
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_WHITELIST_DURATION:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 711
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 713
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mms_temp_app_whitelist_duration"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 714
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MMS_TEMP_APP_WHITELIST_DURATION:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 715
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 717
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "sms_temp_app_whitelist_duration"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 718
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->SMS_TEMP_APP_WHITELIST_DURATION:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 719
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 720
    return-void
.end method

.method public getPolicy()I
    .locals 1

    .prologue
    .line 531
    iget v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mPolicy:I

    return v0
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 522
    const-string v0, "doze_mode_policy"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "doze_mode_policy"

    invoke-static {v0, v1, v2, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mPolicy:I

    .line 524
    const-string v0, "DeviceIdleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doze policy is set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mPolicy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_0
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController$Constants;->updateConstants()V

    .line 528
    return-void
.end method

.method public setPolicy(I)V
    .locals 0
    .param p1, "policy"    # I

    .prologue
    .line 538
    iput p1, p0, Lcom/android/server/DeviceIdleController$Constants;->mPolicy:I

    .line 539
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController$Constants;->updateConstants()V

    .line 540
    return-void
.end method
