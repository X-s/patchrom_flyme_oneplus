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


# static fields
.field static final DiffLevelThreshold:I

.field public static final TYPE_CONNECTED:I = 0x1

.field public static final TYPE_DISCONNECTED:I = 0x2


# instance fields
.field connectedBatLevel:I

.field connectedDate:Ljava/lang/String;

.field connectedTime:J

.field connectedWallTime:J

.field disconnectedBatLevel:I

.field disconnectedDate:Ljava/lang/String;

.field disconnectedTime:J

.field disconnectedWallTime:J

.field private mRecordItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 658
    const-string/jumbo v0, "persist.sys.opcd.threshold"

    const/16 v1, 0x32

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->DiffLevelThreshold:I

    .line 643
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, -0x64

    const-wide/16 v0, 0x0

    .line 662
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 649
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->disconnectedTime:J

    .line 650
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->disconnectedWallTime:J

    .line 651
    iput v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->disconnectedBatLevel:I

    .line 654
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->connectedTime:J

    .line 655
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->connectedWallTime:J

    .line 656
    iput v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->connectedBatLevel:I

    .line 660
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->mRecordItemList:Ljava/util/ArrayList;

    .line 662
    return-void
.end method


# virtual methods
.method public updateRecord(I)V
    .locals 19
    .param p1, "type"    # I

    .prologue
    .line 666
    sget-boolean v6, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DEBUG:Z

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateRecord # type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 667
    :cond_0
    const/4 v6, 0x2

    move/from16 v0, p1

    if-ne v0, v6, :cond_2

    .line 668
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->disconnectedTime:J

    .line 669
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->disconnectedWallTime:J

    .line 670
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get0()Lcom/android/server/am/BatteryStatsService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v17

    .line 671
    .local v17, "stats":Lcom/android/internal/os/BatteryStatsImpl;
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/os/BatteryStatsImpl;->getDischargeCurrentLevelLocked()I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->disconnectedBatLevel:I

    .line 672
    sget-boolean v6, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string/jumbo v6, "OPCD"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateRecord # disconnectedBatLevel="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->disconnectedBatLevel:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", timestamp="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->disconnectedWallTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    .end local v17    # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    :cond_1
    :goto_0
    return-void

    .line 673
    :cond_2
    const/4 v6, 0x1

    move/from16 v0, p1

    if-ne v0, v6, :cond_1

    .line 674
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->connectedTime:J

    .line 675
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->connectedWallTime:J

    .line 678
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->disconnectedTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 679
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get0()Lcom/android/server/am/BatteryStatsService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v17

    .line 680
    .restart local v17    # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/os/BatteryStatsImpl;->getDischargeCurrentLevelLocked()I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->connectedBatLevel:I

    .line 681
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->connectedTime:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->disconnectedTime:J

    sub-long v4, v6, v8

    .line 682
    .local v4, "diffTime":J
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->disconnectedBatLevel:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->connectedBatLevel:I

    sub-int v2, v6, v7

    .line 684
    .local v2, "diffLevel":I
    sget-boolean v6, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DEBUG:Z

    if-eqz v6, :cond_3

    const-string/jumbo v6, "OPCD"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateRecord # connectedBatLevel="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->connectedBatLevel:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", timestamp="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->disconnectedWallTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_3
    sget-boolean v6, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DEBUG:Z

    if-eqz v6, :cond_4

    const-string/jumbo v6, "OPCD"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateRecord # diffLevel="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", diffTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_4
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_1

    sget v6, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->DiffLevelThreshold:I

    if-lt v2, v6, :cond_1

    .line 687
    new-instance v3, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get2()J

    move-result-wide v6

    .line 688
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->disconnectedWallTime:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->connectedWallTime:J

    .line 689
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->disconnectedBatLevel:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->connectedBatLevel:I

    .line 687
    invoke-direct/range {v3 .. v13}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;-><init>(JJJJII)V

    .line 690
    .local v3, "ri":Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;
    sget-boolean v6, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DEBUG:Z

    if-eqz v6, :cond_5

    const-string/jumbo v6, "OPCD"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateRecord # bingo # mTotalScreenOnTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get2()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :cond_5
    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-set0(J)J

    .line 692
    sget-boolean v6, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->MDM:Z

    if-eqz v6, :cond_6

    .line 693
    const-string/jumbo v6, "OPCD"

    const-string/jumbo v7, "total"

    invoke-static {v6, v7, v3}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-wrap5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 695
    :cond_6
    sget-boolean v6, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DISK:Z

    if-eqz v6, :cond_7

    .line 696
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 697
    .local v16, "persistData":Ljava/lang/StringBuilder;
    sget-object v6, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sTraceDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v18

    .line 698
    .local v18, "tagTime":Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    const-string/jumbo v6, " "

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    const-string/jumbo v6, "total"

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    const-string/jumbo v6, " "

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    invoke-virtual {v3}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    const-string/jumbo v6, "\n"

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-wrap0(Ljava/lang/String;)Z

    .line 706
    .end local v16    # "persistData":Ljava/lang/StringBuilder;
    .end local v18    # "tagTime":Ljava/lang/String;
    :cond_7
    sget-boolean v6, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DEBUG:Z

    if-eqz v6, :cond_9

    .line 707
    invoke-virtual {v3}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 708
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->mRecordItemList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->mRecordItemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x5

    if-le v6, v7, :cond_9

    .line 710
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->mRecordItemList:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "item$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;

    .line 711
    .local v14, "item":Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;
    invoke-virtual {v14}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    goto :goto_1

    .line 713
    .end local v14    # "item":Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;
    :cond_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->mRecordItemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 716
    .end local v15    # "item$iterator":Ljava/util/Iterator;
    :cond_9
    const-wide v6, 0x3fb999999999999aL    # 0.1

    invoke-static {v6, v7}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-wrap3(D)Ljava/util/List;

    goto/16 :goto_0
.end method
