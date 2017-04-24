.class Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord$RecordItem;
.super Ljava/lang/Object;
.source "OnePlusPowerConsumptionDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecordItem"
.end annotation


# instance fields
.field public connectedDate:Ljava/lang/String;

.field public diffLevel:I

.field public diffTime:J

.field public disconnectedDate:Ljava/lang/String;

.field public screenOnTime:J

.field final synthetic this$0:Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;JIJLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "diffTime"    # J
    .param p4, "diffLevel"    # I
    .param p5, "screenOnTime"    # J
    .param p7, "disconnectedDate"    # Ljava/lang/String;
    .param p8, "connectedDate"    # Ljava/lang/String;

    .prologue
    .line 582
    iput-object p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord$RecordItem;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 583
    iput-wide p2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord$RecordItem;->diffTime:J

    .line 584
    iput p4, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord$RecordItem;->diffLevel:I

    .line 585
    iput-wide p5, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord$RecordItem;->screenOnTime:J

    .line 586
    iput-object p7, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord$RecordItem;->disconnectedDate:Ljava/lang/String;

    .line 587
    iput-object p8, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord$RecordItem;->connectedDate:Ljava/lang/String;

    .line 588
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 592
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "RecordItem{start:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord$RecordItem;->disconnectedDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    const-string v1, ",end:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord$RecordItem;->connectedDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    const-string v1, ",drained:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    iget v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord$RecordItem;->diffLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 598
    const-string v1, "%,kept:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord$RecordItem;->diffTime:J

    div-long/2addr v2, v4

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionDetector;->formatTime(J)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$300(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    const-string v1, ",screenon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord$RecordItem;->screenOnTime:J

    div-long/2addr v2, v4

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionDetector;->formatTime(J)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$300(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
