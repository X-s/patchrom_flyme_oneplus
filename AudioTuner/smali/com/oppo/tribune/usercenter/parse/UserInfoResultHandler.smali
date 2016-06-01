.class public Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;
.super Ljava/lang/Object;
.source "UserInfoResultHandler.java"

# interfaces
.implements Lcom/oppo/tribune/util/WriteDatabase;


# instance fields
.field private mUid:J

.field private mUserInfoProto:Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->mUid:J

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->mUid:J

    .line 39
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;)V
    .locals 2
    .param p1, "pbProto"    # Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->mUid:J

    .line 34
    iput-object p1, p0, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->mUserInfoProto:Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    .line 35
    return-void
.end method

.method private static getOthersUrl(J)Ljava/lang/String;
    .locals 2
    .param p0, "uid"    # J

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://ddinterface2.oneplus.cn:8000/user/info"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Landroid/content/Context;)Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    new-instance v2, Lcom/oppo/tribune/util/connection/GetMethod;

    const-string v3, "http://ddinterface2.oneplus.cn:8000/user/info"

    invoke-direct {v2, p0, v3}, Lcom/oppo/tribune/util/connection/GetMethod;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 65
    .local v2, "method":Lcom/oppo/tribune/util/connection/GetMethod;
    invoke-virtual {v2}, Lcom/oppo/tribune/util/connection/GetMethod;->execute()[B

    move-result-object v0

    .line 66
    .local v0, "buf":[B
    invoke-virtual {v2}, Lcom/oppo/tribune/util/connection/GetMethod;->hasNoContent()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    new-instance v3, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;

    invoke-direct {v3}, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;-><init>()V

    .line 76
    :goto_0
    return-object v3

    .line 68
    :cond_0
    invoke-static {v0}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty([B)Z

    move-result v3

    if-nez v3, :cond_1

    .line 70
    :try_start_0
    new-instance v3, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;

    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->parseFrom([B)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;-><init>(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->printStackTrace()V

    .line 76
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static parse(Landroid/content/Context;J)Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # J

    .prologue
    .line 47
    invoke-static {p1, p2}, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->getOthersUrl(J)Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "url":Ljava/lang/String;
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v4}, Lcom/oppo/tribune/util/HttpUtils;->parseConnection(Landroid/content/Context;Ljava/lang/String;ZZ)[B

    move-result-object v0

    .line 49
    .local v0, "buf":[B
    invoke-static {v0}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty([B)Z

    move-result v3

    if-nez v3, :cond_0

    .line 51
    :try_start_0
    new-instance v3, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;

    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->parseFrom([B)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;-><init>(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-object v3

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->printStackTrace()V

    .line 58
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static parse(Landroid/content/Context;Ljava/lang/String;Z)Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    const/4 v5, 0x0

    .line 82
    invoke-static {p1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-object v5

    .line 86
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "*&wa@lle?^sa!e%v5e(]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/oppo/tribune/util/MD5Sign;->hexDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, "sign":Ljava/lang/String;
    :try_start_0
    const-string v6, "UTF-8"

    invoke-static {p1, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 93
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "http://ddinterface2.oneplus.cn:8000/user/info"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .local v1, "builder":Ljava/lang/StringBuilder;
    const-string v6, "?token="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string v6, "&sign="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    new-instance v3, Lcom/oppo/tribune/util/connection/GetMethod;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, p0, v6, p2, p2}, Lcom/oppo/tribune/util/connection/GetMethod;-><init>(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 99
    .local v3, "method":Lcom/oppo/tribune/util/connection/GetMethod;
    invoke-virtual {v3}, Lcom/oppo/tribune/util/connection/GetMethod;->execute()[B

    move-result-object v0

    .line 101
    .local v0, "buf":[B
    invoke-virtual {v3}, Lcom/oppo/tribune/util/connection/GetMethod;->hasNoContent()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 102
    new-instance v5, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;

    invoke-direct {v5}, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;-><init>()V

    goto :goto_0

    .line 89
    .end local v0    # "buf":[B
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "method":Lcom/oppo/tribune/util/connection/GetMethod;
    :catch_0
    move-exception v2

    .line 90
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 103
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "buf":[B
    .restart local v1    # "builder":Ljava/lang/StringBuilder;
    .restart local v3    # "method":Lcom/oppo/tribune/util/connection/GetMethod;
    :cond_2
    invoke-static {v0}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty([B)Z

    move-result v6

    if-nez v6, :cond_0

    .line 105
    :try_start_1
    new-instance v6, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;

    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->parseFrom([B)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;-><init>(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;)V
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v6

    goto :goto_0

    .line 107
    :catch_1
    move-exception v2

    .line 108
    .local v2, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getPbUser()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->mUserInfoProto:Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    return-object v0
.end method

.method public getUid()J
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->mUserInfoProto:Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->mUid:J

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->mUserInfoProto:Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getUserInfoEntity()Lcom/oppo/tribune/protobuf/info/UserInfo;
    .locals 4

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, "entity":Lcom/oppo/tribune/protobuf/info/UserInfo;
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->mUserInfoProto:Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    if-eqz v1, :cond_0

    .line 130
    new-instance v0, Lcom/oppo/tribune/protobuf/info/UserInfo;

    .end local v0    # "entity":Lcom/oppo/tribune/protobuf/info/UserInfo;
    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/info/UserInfo;-><init>()V

    .line 131
    .restart local v0    # "entity":Lcom/oppo/tribune/protobuf/info/UserInfo;
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->mUserInfoProto:Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    invoke-virtual {v1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setAddress(Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->mUserInfoProto:Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    invoke-virtual {v1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getAge()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setAge(I)V

    .line 133
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->mUserInfoProto:Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    invoke-virtual {v1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getBloodtype()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setBloodtype(Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->mUserInfoProto:Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    invoke-virtual {v1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getBirthyear()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setBirthyear(I)V

    .line 135
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->mUserInfoProto:Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    invoke-virtual {v1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getBirthmonth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setBirthmonth(I)V

    .line 136
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->mUserInfoProto:Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    invoke-virtual {v1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getBirthday()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setBirthday(I)V

    .line 137
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->mUserInfoProto:Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    invoke-virtual {v1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setCity(Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->mUserInfoProto:Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    invoke-virtual {v1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getConstellation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setConstellation(Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->mUserInfoProto:Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    invoke-virtual {v1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getCredits()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setCredits(I)V

    .line 140
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->mUserInfoProto:Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    invoke-virtual {v1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getFollowed()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setFollowed(I)V

    .line 141
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->mUserInfoProto:Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    invoke-virtual {v1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getFollower()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setFollower(I)V

    .line 142
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->mUserInfoProto:Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    invoke-virtual {v1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getFollowing()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setFollowing(I)V

    .line 143
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->mUserInfoProto:Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    invoke-virtual {v1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getGender()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setGender(I)V

    .line 144
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->mUserInfoProto:Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    invoke-virtual {v1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getHeadurl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setHeadurl(Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->mUserInfoProto:Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    invoke-virtual {v1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getHeight()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setHeight(Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->mUserInfoProto:Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    invoke-virtual {v1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setId(J)V

    .line 147
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->mUserInfoProto:Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    invoke-virtual {v1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setLevel(I)V

    .line 148
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->mUserInfoProto:Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    invoke-virtual {v1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getLevelname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setLevelname(Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->mUserInfoProto:Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    invoke-virtual {v1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getMobile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setMobile(Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->mUserInfoProto:Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    invoke-virtual {v1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setNickname(Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->mUserInfoProto:Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    invoke-virtual {v1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getRealname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setRealname(Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->mUserInfoProto:Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    invoke-virtual {v1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getRegtime()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setRegtime(I)V

    .line 153
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->mUserInfoProto:Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    invoke-virtual {v1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setStatus(I)V

    .line 154
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->mUserInfoProto:Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    invoke-virtual {v1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getTelphone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setTelphone(Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->mUserInfoProto:Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    invoke-virtual {v1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setUsername(Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->mUserInfoProto:Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    invoke-virtual {v1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getWeight()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setWeight(Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->mUserInfoProto:Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    invoke-virtual {v1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getZodiac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setZodiac(Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->mUserInfoProto:Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    invoke-virtual {v1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getBgType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setBgType(I)V

    .line 159
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->mUserInfoProto:Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    invoke-virtual {v1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getBackground()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setBgUrl(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->mUserInfoProto:Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    invoke-virtual {v1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getMood()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setMood(Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->mUserInfoProto:Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    invoke-virtual {v1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getLikedNum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setLikednum(I)V

    .line 163
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->mUserInfoProto:Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    invoke-virtual {v1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getLikesNum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setLikesnum(I)V

    .line 164
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->mUserInfoProto:Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    invoke-virtual {v1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getShareNum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setSharenum(I)V

    .line 167
    :cond_0
    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->mUserInfoProto:Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->mUserInfoProto:Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getUsername()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToDatabase(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, 0x0

    .line 172
    invoke-virtual {p0}, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->getUserInfoEntity()Lcom/oppo/tribune/protobuf/info/UserInfo;

    move-result-object v1

    .line 173
    .local v1, "entity":Lcom/oppo/tribune/protobuf/info/UserInfo;
    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->mUid:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 174
    const/4 v2, 0x0

    .line 180
    :goto_0
    return v2

    .line 175
    :cond_0
    iget-wide v2, p0, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->mUid:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 176
    const/4 v2, 0x1

    goto :goto_0

    .line 179
    :cond_1
    new-instance v0, Lcom/oppo/tribune/provider/forum/dao/SignInUserDao;

    invoke-direct {v0, p1}, Lcom/oppo/tribune/provider/forum/dao/SignInUserDao;-><init>(Landroid/content/Context;)V

    .line 180
    .local v0, "dao":Lcom/oppo/tribune/provider/forum/dao/SignInUserDao;
    invoke-virtual {v0, v1}, Lcom/oppo/tribune/provider/forum/dao/SignInUserDao;->insert(Lcom/oppo/tribune/protobuf/info/UserInfo;)Z

    move-result v2

    goto :goto_0
.end method
