.class public Landroid/app/usage/NetworkStatsManager;
.super Ljava/lang/Object;
.source "NetworkStatsManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkStatsManager"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Landroid/app/usage/NetworkStatsManager;->mContext:Landroid/content/Context;

    .line 72
    return-void
.end method

.method private static createTemplate(ILjava/lang/String;)Landroid/net/NetworkTemplate;
    .locals 4
    .param p0, "networkType"    # I
    .param p1, "subscriberId"    # Ljava/lang/String;

    .prologue
    .line 239
    const/4 v0, 0x0

    .line 240
    .local v0, "template":Landroid/net/NetworkTemplate;
    packed-switch p0, :pswitch_data_0

    .line 248
    const-string v1, "NetworkStatsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot create template for network type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", subscriberId \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :goto_0
    return-object v0

    .line 242
    :pswitch_0
    invoke-static {p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    .line 243
    goto :goto_0

    .line 245
    :pswitch_1
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    .line 246
    goto :goto_0

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public queryDetails(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats;
    .locals 9
    .param p1, "networkType"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;
    .param p3, "startTime"    # J
    .param p5, "endTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 228
    invoke-static {p1, p2}, Landroid/app/usage/NetworkStatsManager;->createTemplate(ILjava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    .line 229
    .local v3, "template":Landroid/net/NetworkTemplate;
    if-nez v3, :cond_0

    .line 230
    const/4 v1, 0x0

    .line 235
    :goto_0
    return-object v1

    .line 233
    :cond_0
    new-instance v1, Landroid/app/usage/NetworkStats;

    iget-object v2, p0, Landroid/app/usage/NetworkStatsManager;->mContext:Landroid/content/Context;

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Landroid/app/usage/NetworkStats;-><init>(Landroid/content/Context;Landroid/net/NetworkTemplate;JJ)V

    .line 234
    .local v1, "result":Landroid/app/usage/NetworkStats;
    invoke-virtual {v1}, Landroid/app/usage/NetworkStats;->startUserUidEnumeration()V

    goto :goto_0
.end method

.method public queryDetailsForUid(ILjava/lang/String;JJI)Landroid/app/usage/NetworkStats;
    .locals 11
    .param p1, "networkType"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;
    .param p3, "startTime"    # J
    .param p5, "endTime"    # J
    .param p7, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 194
    invoke-static {p1, p2}, Landroid/app/usage/NetworkStatsManager;->createTemplate(ILjava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    .line 195
    .local v5, "template":Landroid/net/NetworkTemplate;
    if-nez v5, :cond_0

    .line 196
    const/4 v3, 0x0

    .line 203
    :goto_0
    return-object v3

    .line 200
    :cond_0
    new-instance v3, Landroid/app/usage/NetworkStats;

    iget-object v4, p0, Landroid/app/usage/NetworkStatsManager;->mContext:Landroid/content/Context;

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v3 .. v9}, Landroid/app/usage/NetworkStats;-><init>(Landroid/content/Context;Landroid/net/NetworkTemplate;JJ)V

    .line 201
    .local v3, "result":Landroid/app/usage/NetworkStats;
    move/from16 v0, p7

    invoke-virtual {v3, v0}, Landroid/app/usage/NetworkStats;->startHistoryEnumeration(I)V

    goto :goto_0
.end method

.method public querySummary(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats;
    .locals 9
    .param p1, "networkType"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;
    .param p3, "startTime"    # J
    .param p5, "endTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 159
    invoke-static {p1, p2}, Landroid/app/usage/NetworkStatsManager;->createTemplate(ILjava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    .line 160
    .local v3, "template":Landroid/net/NetworkTemplate;
    if-nez v3, :cond_0

    .line 161
    const/4 v1, 0x0

    .line 168
    :goto_0
    return-object v1

    .line 165
    :cond_0
    new-instance v1, Landroid/app/usage/NetworkStats;

    iget-object v2, p0, Landroid/app/usage/NetworkStatsManager;->mContext:Landroid/content/Context;

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Landroid/app/usage/NetworkStats;-><init>(Landroid/content/Context;Landroid/net/NetworkTemplate;JJ)V

    .line 166
    .local v1, "result":Landroid/app/usage/NetworkStats;
    invoke-virtual {v1}, Landroid/app/usage/NetworkStats;->startSummaryEnumeration()V

    goto :goto_0
.end method

.method public querySummaryForDevice(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats$Bucket;
    .locals 9
    .param p1, "networkType"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;
    .param p3, "startTime"    # J
    .param p5, "endTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-static {p1, p2}, Landroid/app/usage/NetworkStatsManager;->createTemplate(ILjava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    .line 94
    .local v3, "template":Landroid/net/NetworkTemplate;
    if-nez v3, :cond_0

    .line 95
    const/4 v0, 0x0

    .line 103
    :goto_0
    return-object v0

    .line 98
    :cond_0
    const/4 v0, 0x0

    .line 99
    .local v0, "bucket":Landroid/app/usage/NetworkStats$Bucket;
    new-instance v1, Landroid/app/usage/NetworkStats;

    iget-object v2, p0, Landroid/app/usage/NetworkStatsManager;->mContext:Landroid/content/Context;

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Landroid/app/usage/NetworkStats;-><init>(Landroid/content/Context;Landroid/net/NetworkTemplate;JJ)V

    .line 100
    .local v1, "stats":Landroid/app/usage/NetworkStats;
    invoke-virtual {v1}, Landroid/app/usage/NetworkStats;->getDeviceSummaryForNetwork()Landroid/app/usage/NetworkStats$Bucket;

    move-result-object v0

    .line 102
    invoke-virtual {v1}, Landroid/app/usage/NetworkStats;->close()V

    goto :goto_0
.end method

.method public querySummaryForUser(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats$Bucket;
    .locals 9
    .param p1, "networkType"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;
    .param p3, "startTime"    # J
    .param p5, "endTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-static {p1, p2}, Landroid/app/usage/NetworkStatsManager;->createTemplate(ILjava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    .line 127
    .local v3, "template":Landroid/net/NetworkTemplate;
    if-nez v3, :cond_0

    .line 128
    const/4 v0, 0x0

    .line 136
    :goto_0
    return-object v0

    .line 132
    :cond_0
    new-instance v1, Landroid/app/usage/NetworkStats;

    iget-object v2, p0, Landroid/app/usage/NetworkStatsManager;->mContext:Landroid/content/Context;

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Landroid/app/usage/NetworkStats;-><init>(Landroid/content/Context;Landroid/net/NetworkTemplate;JJ)V

    .line 133
    .local v1, "stats":Landroid/app/usage/NetworkStats;
    invoke-virtual {v1}, Landroid/app/usage/NetworkStats;->startSummaryEnumeration()V

    .line 135
    invoke-virtual {v1}, Landroid/app/usage/NetworkStats;->close()V

    .line 136
    invoke-virtual {v1}, Landroid/app/usage/NetworkStats;->getSummaryAggregate()Landroid/app/usage/NetworkStats$Bucket;

    move-result-object v0

    goto :goto_0
.end method
