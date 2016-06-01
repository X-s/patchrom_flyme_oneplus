.class public Lcom/oppo/tribune/packshow/parse/LastestPraiseResult;
.super Ljava/lang/Object;
.source "LastestPraiseResult.java"


# static fields
.field private static final FEW_LIST_SIZE:I = 0xc

.field private static final MAX_LIST_SIZE:I = 0x1e


# instance fields
.field private mUserRecord:Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;


# direct methods
.method public constructor <init>(Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;)V
    .locals 0
    .param p1, "userrecord"    # Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/oppo/tribune/packshow/parse/LastestPraiseResult;->mUserRecord:Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    .line 31
    return-void
.end method

.method private static getServerUrl(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "feedid"    # J
    .param p3, "perpage"    # I

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "http://ddinterface2.oneplus.cn:8000/like/feedLikeList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?feedId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&page=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&perpage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static parse(Landroid/content/Context;JI)Lcom/oppo/tribune/packshow/parse/LastestPraiseResult;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "feedid"    # J
    .param p3, "perpage"    # I

    .prologue
    const/4 v3, 0x0

    .line 43
    invoke-static {p0, p1, p2, p3}, Lcom/oppo/tribune/packshow/parse/LastestPraiseResult;->getServerUrl(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "url":Ljava/lang/String;
    invoke-static {v2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-object v3

    .line 47
    :cond_1
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {p0, v2, v4, v5}, Lcom/oppo/tribune/util/HttpUtils;->parseConnection(Landroid/content/Context;Ljava/lang/String;ZZ)[B

    move-result-object v0

    .line 48
    .local v0, "buf":[B
    invoke-static {v0}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty([B)Z

    move-result v4

    if-nez v4, :cond_0

    .line 50
    :try_start_0
    new-instance v4, Lcom/oppo/tribune/packshow/parse/LastestPraiseResult;

    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->parseFrom([B)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/oppo/tribune/packshow/parse/LastestPraiseResult;-><init>(Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    goto :goto_0

    .line 51
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->printStackTrace()V

    goto :goto_0
.end method

.method public static parseForFew(Landroid/content/Context;J)Lcom/oppo/tribune/packshow/parse/LastestPraiseResult;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "feedid"    # J

    .prologue
    .line 38
    const/16 v0, 0xc

    invoke-static {p0, p1, p2, v0}, Lcom/oppo/tribune/packshow/parse/LastestPraiseResult;->parse(Landroid/content/Context;JI)Lcom/oppo/tribune/packshow/parse/LastestPraiseResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseForMost(Landroid/content/Context;J)Lcom/oppo/tribune/packshow/parse/LastestPraiseResult;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "feedid"    # J

    .prologue
    .line 34
    const/16 v0, 0x1e

    invoke-static {p0, p1, p2, v0}, Lcom/oppo/tribune/packshow/parse/LastestPraiseResult;->parse(Landroid/content/Context;JI)Lcom/oppo/tribune/packshow/parse/LastestPraiseResult;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getUserList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/16 v6, 0x1e

    .line 60
    iget-object v5, p0, Lcom/oppo/tribune/packshow/parse/LastestPraiseResult;->mUserRecord:Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    if-nez v5, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-object v3

    .line 64
    :cond_1
    iget-object v5, p0, Lcom/oppo/tribune/packshow/parse/LastestPraiseResult;->mUserRecord:Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    invoke-virtual {v5}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->getUserlistList()Ljava/util/List;

    move-result-object v4

    .line 65
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;>;"
    invoke-static {v4}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 68
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 69
    .local v3, "userInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    .line 70
    .local v2, "pbUser":Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    new-instance v0, Lcom/oppo/tribune/protobuf/info/UserInfo;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/info/UserInfo;-><init>()V

    .line 71
    .local v0, "entity":Lcom/oppo/tribune/protobuf/info/UserInfo;
    invoke-static {v2}, Lcom/oppo/tribune/protobuf/info/UserInfoUtil;->getUserInfo(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;)Lcom/oppo/tribune/protobuf/info/UserInfo;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_2

    .line 73
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 77
    .end local v0    # "entity":Lcom/oppo/tribune/protobuf/info/UserInfo;
    .end local v2    # "pbUser":Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    :cond_3
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v6, :cond_0

    .line 78
    const/4 v5, 0x0

    invoke-interface {v3, v5, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    goto :goto_0
.end method
