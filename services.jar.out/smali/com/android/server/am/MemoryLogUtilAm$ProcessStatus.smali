.class Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;
.super Ljava/lang/Object;
.source "MemoryLogUtilAm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MemoryLogUtilAm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProcessStatus"
.end annotation


# instance fields
.field private mPid:I

.field private mProcessName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "process"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .prologue
    .line 912
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 913
    iput-object p1, p0, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;->mProcessName:Ljava/lang/String;

    .line 914
    iput p2, p0, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;->mPid:I

    .line 912
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "others"    # Ljava/lang/Object;

    .prologue
    .line 932
    iget-object v1, p0, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;->mProcessName:Ljava/lang/String;

    move-object v0, p1

    check-cast v0, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;

    invoke-virtual {v0}, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;->getProcessName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 933
    iget v0, p0, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;->mPid:I

    check-cast p1, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;

    .end local p1    # "others":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;->getPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 934
    const/4 v0, 0x1

    return v0

    .line 935
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPid()I
    .locals 1

    .prologue
    .line 922
    iget v0, p0, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;->mPid:I

    return v0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;->mProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 927
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
