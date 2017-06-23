.class public Lcom/android/server/am/OnePlusAppStartInfo;
.super Ljava/lang/Object;
.source "OnePlusAppStartInfo.java"


# instance fields
.field mCrashCount:I

.field mCurStartTime:J

.field mFirstStartTime:J

.field mIsThird:Z

.field mPkgName:Ljava/lang/String;

.field mProcessName:Ljava/lang/String;

.field mStartCount:I

.field mStartTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v1, p0, Lcom/android/server/am/OnePlusAppStartInfo;->mStartCount:I

    .line 31
    iput-wide v2, p0, Lcom/android/server/am/OnePlusAppStartInfo;->mFirstStartTime:J

    .line 32
    iput-wide v2, p0, Lcom/android/server/am/OnePlusAppStartInfo;->mCurStartTime:J

    .line 34
    iput-boolean v1, p0, Lcom/android/server/am/OnePlusAppStartInfo;->mIsThird:Z

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppStartInfo;->mPkgName:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppStartInfo;->mProcessName:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppStartInfo;->mStartTypeMap:Ljava/util/HashMap;

    .line 39
    iput v1, p0, Lcom/android/server/am/OnePlusAppStartInfo;->mCrashCount:I

    .line 42
    return-void
.end method

.method static builder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/server/am/OnePlusAppStartInfo;
    .locals 4
    .param p0, "processName"    # Ljava/lang/String;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "startType"    # Ljava/lang/String;
    .param p3, "isThird"    # Z

    .prologue
    .line 45
    new-instance v0, Lcom/android/server/am/OnePlusAppStartInfo;

    invoke-direct {v0}, Lcom/android/server/am/OnePlusAppStartInfo;-><init>()V

    .line 46
    .local v0, "appStartInfo":Lcom/android/server/am/OnePlusAppStartInfo;
    invoke-virtual {v0, p0}, Lcom/android/server/am/OnePlusAppStartInfo;->setProcessName(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0, p1}, Lcom/android/server/am/OnePlusAppStartInfo;->setPkgName(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0, p3}, Lcom/android/server/am/OnePlusAppStartInfo;->setIsThird(Z)V

    .line 49
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 50
    .local v2, "time":J
    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/OnePlusAppStartInfo;->setFirstStartTime(J)V

    .line 51
    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/OnePlusAppStartInfo;->setCurStartTime(J)V

    .line 52
    invoke-virtual {v0, p2}, Lcom/android/server/am/OnePlusAppStartInfo;->increaseStartCount(Ljava/lang/String;)V

    .line 54
    return-object v0
.end method


# virtual methods
.method public cleanStartCount()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/OnePlusAppStartInfo;->mStartCount:I

    .line 122
    return-void
.end method

.method public cleanup()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 125
    iput v0, p0, Lcom/android/server/am/OnePlusAppStartInfo;->mStartCount:I

    .line 126
    iput-wide v2, p0, Lcom/android/server/am/OnePlusAppStartInfo;->mFirstStartTime:J

    .line 127
    iput-wide v2, p0, Lcom/android/server/am/OnePlusAppStartInfo;->mCurStartTime:J

    .line 128
    iput-boolean v0, p0, Lcom/android/server/am/OnePlusAppStartInfo;->mIsThird:Z

    .line 129
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppStartInfo;->mPkgName:Ljava/lang/String;

    .line 130
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppStartInfo;->mProcessName:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppStartInfo;->mStartTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 132
    return-void
.end method

.method public dumpInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "abnormalType"    # Ljava/lang/String;

    .prologue
    .line 136
    return-void
.end method

.method public getCrashCount()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/android/server/am/OnePlusAppStartInfo;->mCrashCount:I

    return v0
.end method

.method public getCurStartTime()J
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/android/server/am/OnePlusAppStartInfo;->mCurStartTime:J

    return-wide v0
.end method

.method public getFirstStartTime()J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/android/server/am/OnePlusAppStartInfo;->mFirstStartTime:J

    return-wide v0
.end method

.method public getIsThird()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusAppStartInfo;->mIsThird:Z

    return v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppStartInfo;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppStartInfo;->mProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public getStartCount()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/android/server/am/OnePlusAppStartInfo;->mStartCount:I

    return v0
.end method

.method public increaseStartCount(Ljava/lang/String;)V
    .locals 3
    .param p1, "startType"    # Ljava/lang/String;

    .prologue
    .line 110
    iget v1, p0, Lcom/android/server/am/OnePlusAppStartInfo;->mStartCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/am/OnePlusAppStartInfo;->mStartCount:I

    .line 111
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppStartInfo;->mStartTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppStartInfo;->mStartTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 113
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppStartInfo;->mStartTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppStartInfo;->mStartTypeMap:Ljava/util/HashMap;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .end local v0    # "count":I
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppStartInfo;->mStartTypeMap:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public infoToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "abnormalType"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0xa

    .line 139
    const-string v3, ""

    .line 141
    .local v3, "str":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x100

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 142
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v4, "[ "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/am/OnePlusAppStartInfo;->getPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ]    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/am/OnePlusAppStartInfo;->getProcessName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/am/OnePlusAppStartInfo;->getStartCount()I

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppStartInfo;->mStartTypeMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 153
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 154
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 155
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 161
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 163
    return-object v3
.end method

.method public setCrashCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/android/server/am/OnePlusAppStartInfo;->mCrashCount:I

    .line 103
    return-void
.end method

.method public setCurStartTime(J)V
    .locals 1
    .param p1, "curStartTime"    # J

    .prologue
    .line 86
    iput-wide p1, p0, Lcom/android/server/am/OnePlusAppStartInfo;->mCurStartTime:J

    .line 87
    return-void
.end method

.method public setFirstStartTime(J)V
    .locals 1
    .param p1, "firstStartTime"    # J

    .prologue
    .line 78
    iput-wide p1, p0, Lcom/android/server/am/OnePlusAppStartInfo;->mFirstStartTime:J

    .line 79
    return-void
.end method

.method public setIsThird(Z)V
    .locals 0
    .param p1, "isThird"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/server/am/OnePlusAppStartInfo;->mIsThird:Z

    .line 95
    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/server/am/OnePlusAppStartInfo;->mPkgName:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setProcessName(Ljava/lang/String;)V
    .locals 0
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/server/am/OnePlusAppStartInfo;->mProcessName:Ljava/lang/String;

    .line 63
    return-void
.end method
