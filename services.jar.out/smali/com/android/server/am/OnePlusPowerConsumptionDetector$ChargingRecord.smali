.class Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;
.super Ljava/lang/Object;
.source "OnePlusPowerConsumptionDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusPowerConsumptionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChargingRecord"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord$RecordItem;
    }
.end annotation


# static fields
.field static final DiffLevelThreshold:I

.field public static final TYPE_CONNECTED:I = 0x1

.field public static final TYPE_DISCONNECTED:I = 0x2

.field static sTraceDateFormat:Ljava/text/SimpleDateFormat;


# instance fields
.field connectedBatLevel:I

.field connectedDate:Ljava/lang/String;

.field connectedTime:J

.field disconnectedBatLevel:I

.field disconnectedDate:Ljava/lang/String;

.field disconnectedTime:J

.field private mRecordItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord$RecordItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 562
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd_HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->sTraceDateFormat:Ljava/text/SimpleDateFormat;

    .line 572
    const-string v0, "persist.sys.opcd.threshold"

    const/16 v1, 0x32

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->DiffLevelThreshold:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/16 v0, -0x64

    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 565
    iput-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->disconnectedTime:J

    .line 566
    iput v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->disconnectedBatLevel:I

    .line 569
    iput-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->connectedTime:J

    .line 570
    iput v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->connectedBatLevel:I

    .line 574
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->mRecordItemList:Ljava/util/ArrayList;

    .line 608
    return-void
.end method


# virtual methods
.method public updateRecord(I)V
    .locals 18
    .param p1, "type"    # I

    .prologue
    .line 611
    sget-boolean v3, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DEBUG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateRecord # type="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 612
    :cond_0
    const/4 v3, 0x2

    move/from16 v0, p1

    if-ne v0, v3, :cond_2

    .line 613
    sget-object v3, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->sTraceDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->disconnectedDate:Ljava/lang/String;

    .line 614
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->disconnectedTime:J

    .line 615
    # getter for: Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$400()Lcom/android/server/am/BatteryStatsService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v14

    .line 616
    .local v14, "stats":Lcom/android/internal/os/BatteryStatsImpl;
    invoke-virtual {v14}, Lcom/android/internal/os/BatteryStatsImpl;->getDischargeCurrentLevelLocked()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->disconnectedBatLevel:I

    .line 617
    sget-boolean v3, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "OPCD"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateRecord # disconnectedBatLevel="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->disconnectedBatLevel:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    .end local v14    # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    :cond_1
    :goto_0
    return-void

    .line 618
    :cond_2
    const/4 v3, 0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_1

    .line 619
    sget-object v3, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->sTraceDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->connectedDate:Ljava/lang/String;

    .line 620
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->connectedTime:J

    .line 623
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->disconnectedTime:J

    const-wide/16 v16, 0x0

    cmp-long v3, v8, v16

    if-lez v3, :cond_1

    .line 624
    # getter for: Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$400()Lcom/android/server/am/BatteryStatsService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v14

    .line 625
    .restart local v14    # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    invoke-virtual {v14}, Lcom/android/internal/os/BatteryStatsImpl;->getDischargeCurrentLevelLocked()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->connectedBatLevel:I

    .line 626
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->connectedTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->disconnectedTime:J

    move-wide/from16 v16, v0

    sub-long v4, v8, v16

    .line 627
    .local v4, "diffTime":J
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->disconnectedBatLevel:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->connectedBatLevel:I

    sub-int v6, v3, v7

    .line 629
    .local v6, "diffLevel":I
    sget-boolean v3, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "OPCD"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateRecord # connectedBatLevel="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->connectedBatLevel:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :cond_3
    sget-boolean v3, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "OPCD"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateRecord # diffLevel="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", diffTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_4
    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-lez v3, :cond_1

    sget v3, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->DiffLevelThreshold:I

    if-lt v6, v3, :cond_1

    .line 632
    new-instance v2, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord$RecordItem;

    # getter for: Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mTotalScreenOnTime:J
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$500()J

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->disconnectedDate:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->connectedDate:Ljava/lang/String;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord$RecordItem;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;JIJLjava/lang/String;Ljava/lang/String;)V

    .line 633
    .local v2, "ri":Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord$RecordItem;
    const-wide/16 v8, 0x0

    # setter for: Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mTotalScreenOnTime:J
    invoke-static {v8, v9}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$502(J)J

    .line 634
    sget-boolean v3, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->MDM:Z

    if-eqz v3, :cond_5

    .line 635
    const-string v3, "OPCD"

    const-string v7, "DrainToCharge"

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord$RecordItem;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionDetector;->trackPowerData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v7, v8}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$600(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    :cond_5
    sget-boolean v3, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DISK:Z

    if-eqz v3, :cond_6

    .line 638
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 639
    .local v13, "persistData":Ljava/lang/StringBuilder;
    sget-object v3, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->sTraceDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    .line 640
    .local v15, "tagTime":Ljava/lang/String;
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    const-string v3, " "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    const-string v3, "DrainToCharge"

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    const-string v3, " "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    invoke-virtual {v2}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord$RecordItem;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    const-string v3, "\n"

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionDetector;->persistToDisk(Ljava/lang/String;)Z
    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$700(Ljava/lang/String;)Z

    .line 648
    .end local v13    # "persistData":Ljava/lang/StringBuilder;
    .end local v15    # "tagTime":Ljava/lang/String;
    :cond_6
    sget-boolean v3, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DEBUG:Z

    if-eqz v3, :cond_8

    .line 649
    invoke-virtual {v2}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord$RecordItem;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 650
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->mRecordItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->mRecordItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v7, 0x5

    if-le v3, v7, :cond_8

    .line 652
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->mRecordItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord$RecordItem;

    .line 653
    .local v12, "item":Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord$RecordItem;
    invoke-virtual {v12}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord$RecordItem;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    goto :goto_1

    .line 655
    .end local v12    # "item":Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord$RecordItem;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->mRecordItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 658
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_8
    const-wide v8, 0x3fb999999999999aL    # 0.1

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionDetector;->getHighSipperFromCumulativeDrain(D)Ljava/util/List;
    invoke-static {v8, v9}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$800(D)Ljava/util/List;

    goto/16 :goto_0
.end method
