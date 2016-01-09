.class Lcom/android/server/am/OnePlusProcessManager$OPPMValue;
.super Ljava/lang/Object;
.source "OnePlusProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OPPMValue"
.end annotation


# instance fields
.field lastResumeTime:J

.field pid:I

.field processName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/OnePlusProcessManager;

.field uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusProcessManager;IILjava/lang/String;J)V
    .locals 3
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "processName"    # Ljava/lang/String;
    .param p5, "lastResumeTime"    # J

    .prologue
    .line 2674
    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager$OPPMValue;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2672
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusProcessManager$OPPMValue;->lastResumeTime:J

    .line 2675
    iput p2, p0, Lcom/android/server/am/OnePlusProcessManager$OPPMValue;->uid:I

    .line 2676
    iput p3, p0, Lcom/android/server/am/OnePlusProcessManager$OPPMValue;->pid:I

    .line 2677
    iput-object p4, p0, Lcom/android/server/am/OnePlusProcessManager$OPPMValue;->processName:Ljava/lang/String;

    .line 2678
    iput-wide p5, p0, Lcom/android/server/am/OnePlusProcessManager$OPPMValue;->lastResumeTime:J

    .line 2679
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2683
    const-string v0, ""

    .line 2684
    .local v0, "ret":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "OPPMValue{uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/OnePlusProcessManager$OPPMValue;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/OnePlusProcessManager$OPPMValue;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", processName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager$OPPMValue;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lastResumeTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/OnePlusProcessManager$OPPMValue;->lastResumeTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2686
    return-object v0
.end method
