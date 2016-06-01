.class public Lcom/oppo/tribune/square/parse/ForumDatelineResult;
.super Lcom/oppo/tribune/square/parse/AbsTopLineResult;
.source "ForumDatelineResult.java"


# direct methods
.method protected constructor <init>(JILcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;)V
    .locals 1
    .param p1, "fidType"    # J
    .param p3, "page"    # I
    .param p4, "pbResult"    # Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oppo/tribune/square/parse/AbsTopLineResult;-><init>(JILcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;)V

    .line 24
    return-void
.end method

.method private static getServerUrl(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fid"    # J
    .param p3, "page"    # I

    .prologue
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://bbs2.wanyol.com/plugin.php?id=nearmesns:api&m=forum&a=display&filter=player&orderby=dateline"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&fid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&page="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 29
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oppo/tribune/util/NearMeSignCheck;->getAppendSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static parse(Landroid/content/Context;JI)Lcom/oppo/tribune/square/parse/ForumDatelineResult;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fid"    # J
    .param p3, "page"    # I

    .prologue
    const/4 v4, 0x0

    .line 34
    invoke-static {p0, p1, p2, p3}, Lcom/oppo/tribune/square/parse/ForumDatelineResult;->getServerUrl(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    .line 35
    .local v3, "url":Ljava/lang/String;
    new-instance v2, Lcom/oppo/tribune/util/connection/GetMethod;

    invoke-direct {v2, p0, v3, v4, v4}, Lcom/oppo/tribune/util/connection/GetMethod;-><init>(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 36
    .local v2, "method":Lcom/oppo/tribune/util/connection/GetMethod;
    invoke-virtual {v2}, Lcom/oppo/tribune/util/connection/GetMethod;->execute()[B

    move-result-object v0

    .line 37
    .local v0, "buf":[B
    invoke-static {v0}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty([B)Z

    move-result v4

    if-nez v4, :cond_0

    .line 39
    :try_start_0
    new-instance v4, Lcom/oppo/tribune/square/parse/ForumDatelineResult;

    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->parseFrom([B)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;

    move-result-object v5

    invoke-direct {v4, p1, p2, p3, v5}, Lcom/oppo/tribune/square/parse/ForumDatelineResult;-><init>(JILcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-object v4

    .line 41
    :catch_0
    move-exception v1

    .line 42
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->printStackTrace()V

    .line 45
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getSoureType()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x3

    return v0
.end method
