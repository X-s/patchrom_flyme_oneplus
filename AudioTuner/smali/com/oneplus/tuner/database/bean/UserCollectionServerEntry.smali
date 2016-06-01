.class public Lcom/oneplus/tuner/database/bean/UserCollectionServerEntry;
.super Ljava/lang/Object;
.source "UserCollectionServerEntry.java"


# instance fields
.field configId_:J

.field status_:I

.field updateTime_:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneplus/tuner/database/bean/UserCollectionServerEntry;->configId_:J

    .line 6
    iput v2, p0, Lcom/oneplus/tuner/database/bean/UserCollectionServerEntry;->status_:I

    .line 7
    iput v2, p0, Lcom/oneplus/tuner/database/bean/UserCollectionServerEntry;->updateTime_:I

    return-void
.end method


# virtual methods
.method public getConfigId_()J
    .locals 2

    .prologue
    .line 10
    iget-wide v0, p0, Lcom/oneplus/tuner/database/bean/UserCollectionServerEntry;->configId_:J

    return-wide v0
.end method

.method public getStatus_()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/oneplus/tuner/database/bean/UserCollectionServerEntry;->status_:I

    return v0
.end method

.method public getUpdateTime_()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/oneplus/tuner/database/bean/UserCollectionServerEntry;->updateTime_:I

    return v0
.end method

.method public setConfigId_(J)V
    .locals 1
    .param p1, "configId_"    # J

    .prologue
    .line 14
    iput-wide p1, p0, Lcom/oneplus/tuner/database/bean/UserCollectionServerEntry;->configId_:J

    .line 15
    return-void
.end method

.method public setStatus_(I)V
    .locals 0
    .param p1, "status_"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/oneplus/tuner/database/bean/UserCollectionServerEntry;->status_:I

    .line 23
    return-void
.end method

.method public setUpdateTime_(I)V
    .locals 0
    .param p1, "updateTime_"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/oneplus/tuner/database/bean/UserCollectionServerEntry;->updateTime_:I

    .line 31
    return-void
.end method
