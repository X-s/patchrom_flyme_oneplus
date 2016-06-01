.class public Lcom/oppo/tribune/parse/UserThread;
.super Lcom/oppo/tribune/parse/LocalThread;
.source "UserThread.java"


# instance fields
.field private notified:I

.field private uid:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/oppo/tribune/parse/LocalThread;-><init>()V

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/parse/UserThread;->uid:J

    .line 27
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "uid"    # J

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/oppo/tribune/parse/LocalThread;-><init>()V

    .line 31
    iput-wide p1, p0, Lcom/oppo/tribune/parse/UserThread;->uid:J

    .line 32
    return-void
.end method


# virtual methods
.method public getNotified()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/oppo/tribune/parse/UserThread;->notified:I

    return v0
.end method

.method public getUid()J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/oppo/tribune/parse/UserThread;->uid:J

    return-wide v0
.end method

.method public setNotified(I)V
    .locals 0
    .param p1, "notified"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/oppo/tribune/parse/UserThread;->notified:I

    .line 48
    return-void
.end method

.method public setUid(J)V
    .locals 1
    .param p1, "uid"    # J

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/oppo/tribune/parse/UserThread;->uid:J

    .line 40
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    invoke-static {p0}, Lcom/oppo/tribune/util/Utils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
