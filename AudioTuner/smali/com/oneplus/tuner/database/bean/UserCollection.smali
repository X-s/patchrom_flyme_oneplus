.class public Lcom/oneplus/tuner/database/bean/UserCollection;
.super Ljava/lang/Object;
.source "UserCollection.java"


# static fields
.field public static final STATUS_CANCEL_COLLECTION:I = 0x0

.field public static final STATUS_COLLECTION:I = 0x1

.field public static final SYNC_AFTER:I = 0x0

.field public static final SYNC_BEFORE:I = 0x1


# instance fields
.field configId:I

.field isDirty:I

.field status:I

.field updateTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfigId()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/oneplus/tuner/database/bean/UserCollection;->configId:I

    return v0
.end method

.method public getIsDirty()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/oneplus/tuner/database/bean/UserCollection;->isDirty:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/oneplus/tuner/database/bean/UserCollection;->status:I

    return v0
.end method

.method public getUpdateTime()J
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/oneplus/tuner/database/bean/UserCollection;->updateTime:J

    return-wide v0
.end method

.method public setConfigId(I)V
    .locals 0
    .param p1, "configId"    # I

    .prologue
    .line 20
    iput p1, p0, Lcom/oneplus/tuner/database/bean/UserCollection;->configId:I

    .line 21
    return-void
.end method

.method public setIsDirty(I)V
    .locals 0
    .param p1, "isDirty"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/oneplus/tuner/database/bean/UserCollection;->isDirty:I

    .line 37
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/oneplus/tuner/database/bean/UserCollection;->status:I

    .line 29
    return-void
.end method

.method public setUpdateTime(J)V
    .locals 1
    .param p1, "updateTime"    # J

    .prologue
    .line 44
    iput-wide p1, p0, Lcom/oneplus/tuner/database/bean/UserCollection;->updateTime:J

    .line 45
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/tuner/database/bean/UserCollection;->configId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/tuner/database/bean/UserCollection;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isDirty = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/tuner/database/bean/UserCollection;->isDirty:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updateTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/oneplus/tuner/database/bean/UserCollection;->updateTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
