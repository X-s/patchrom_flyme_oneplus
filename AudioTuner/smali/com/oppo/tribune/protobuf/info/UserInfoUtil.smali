.class public Lcom/oppo/tribune/protobuf/info/UserInfoUtil;
.super Ljava/lang/Object;
.source "UserInfoUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUserFromMap(JLjava/util/HashMap;)Lcom/oppo/tribune/protobuf/info/UserInfo;
    .locals 2
    .param p0, "uid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/oppo/tribune/protobuf/info/UserInfo;",
            ">;)",
            "Lcom/oppo/tribune/protobuf/info/UserInfo;"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/oppo/tribune/protobuf/info/UserInfo;>;"
    const/4 v0, 0x0

    .line 21
    .local v0, "user":Lcom/oppo/tribune/protobuf/info/UserInfo;
    if-eqz p2, :cond_0

    .line 22
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "user":Lcom/oppo/tribune/protobuf/info/UserInfo;
    check-cast v0, Lcom/oppo/tribune/protobuf/info/UserInfo;

    .line 24
    .restart local v0    # "user":Lcom/oppo/tribune/protobuf/info/UserInfo;
    :cond_0
    return-object v0
.end method

.method public static getUserInfo(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;)Lcom/oppo/tribune/protobuf/info/UserInfo;
    .locals 4
    .param p0, "netEntity"    # Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    .prologue
    .line 45
    if-nez p0, :cond_0

    .line 46
    const/4 v0, 0x0

    .line 77
    :goto_0
    return-object v0

    .line 49
    :cond_0
    new-instance v0, Lcom/oppo/tribune/protobuf/info/UserInfo;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/info/UserInfo;-><init>()V

    .line 51
    .local v0, "entity":Lcom/oppo/tribune/protobuf/info/UserInfo;
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setAddress(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getAge()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setAge(I)V

    .line 53
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getBloodtype()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setBloodtype(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setCity(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getConstellation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setConstellation(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getCredits()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setCredits(I)V

    .line 57
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getDateline()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setDateline(I)V

    .line 58
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getFollowed()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setFollowed(I)V

    .line 59
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getFollower()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setFollower(I)V

    .line 60
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getFollowing()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setFollowing(I)V

    .line 61
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getGender()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setGender(I)V

    .line 62
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getHeadurl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setHeadurl(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getHeight()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setHeight(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setId(J)V

    .line 65
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setLevel(I)V

    .line 66
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getLevelname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setLevelname(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getMobile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setMobile(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setNickname(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getRealname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setRealname(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getRegtime()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setRegtime(I)V

    .line 71
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setStatus(I)V

    .line 72
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getTelphone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setTelphone(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setUsername(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getWeight()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setWeight(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getZodiac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setZodiac(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static getUserMap(Ljava/util/List;)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/oppo/tribune/protobuf/info/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "netUserList":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 32
    .local v3, "userInfoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/oppo/tribune/protobuf/info/UserInfo;>;"
    invoke-static {p0}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 33
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    .line 35
    .local v2, "netEntity":Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    invoke-static {v2}, Lcom/oppo/tribune/protobuf/info/UserInfoUtil;->getUserInfo(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;)Lcom/oppo/tribune/protobuf/info/UserInfo;

    move-result-object v0

    .line 36
    .local v0, "entity":Lcom/oppo/tribune/protobuf/info/UserInfo;
    invoke-virtual {v2}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 40
    .end local v0    # "entity":Lcom/oppo/tribune/protobuf/info/UserInfo;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "netEntity":Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    :cond_0
    return-object v3
.end method
