.class Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;
.super Ljava/lang/Object;
.source "OnePlusPowerConsumptionDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusPowerConsumptionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RecordItem"
.end annotation


# instance fields
.field public connectedBatLevel:I

.field public connectedWallTime:J

.field public diffLevel:I

.field public diffTime:J

.field public disconnectedBatLevel:I

.field public disconnectedWallTime:J

.field public screenOnTime:J


# direct methods
.method constructor <init>(JJJJII)V
    .locals 1
    .param p1, "diffTime"    # J
    .param p3, "screenOnTime"    # J
    .param p5, "disconnectedWallTime"    # J
    .param p7, "connectedWallTime"    # J
    .param p9, "disconnectedBatLevel"    # I
    .param p10, "connectedBatLevel"    # I

    .prologue
    .line 615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 617
    iput-wide p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->diffTime:J

    .line 618
    iput p9, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->disconnectedBatLevel:I

    .line 619
    iput p10, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->connectedBatLevel:I

    .line 620
    sub-int v0, p9, p10

    iput v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->diffLevel:I

    .line 621
    iput-wide p3, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->screenOnTime:J

    .line 622
    iput-wide p5, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->disconnectedWallTime:J

    .line 623
    iput-wide p7, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->connectedWallTime:J

    .line 616
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 628
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "RecordItem{start:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    sget-object v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sTraceDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->disconnectedWallTime:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    const-string/jumbo v1, ",end:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    sget-object v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sTraceDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->connectedWallTime:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    const-string/jumbo v1, ",drained:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    iget v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->disconnectedBatLevel:I

    iget v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->connectedBatLevel:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 634
    const-string/jumbo v1, "%,kept:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->connectedWallTime:J

    iget-wide v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->disconnectedWallTime:J

    sub-long/2addr v2, v4

    div-long/2addr v2, v6

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-wrap1(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    const-string/jumbo v1, ",screenon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->screenOnTime:J

    div-long/2addr v2, v6

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-wrap1(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
