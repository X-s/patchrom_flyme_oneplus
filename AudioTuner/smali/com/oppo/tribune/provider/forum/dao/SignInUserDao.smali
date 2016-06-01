.class public Lcom/oppo/tribune/provider/forum/dao/SignInUserDao;
.super Lcom/oppo/tribune/provider/forum/dao/TableDao;
.source "SignInUserDao.java"

# interfaces
.implements Lcom/oppo/tribune/provider/forum/Forum2$SignInUserTable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oppo/tribune/provider/forum/dao/TableDao",
        "<",
        "Lcom/oppo/tribune/protobuf/info/UserInfo;",
        ">;",
        "Lcom/oppo/tribune/provider/forum/Forum2$SignInUserTable;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    const-class v0, Lcom/oppo/tribune/provider/forum/dao/SignInUserDao;

    invoke-direct {p0, p1, v0}, Lcom/oppo/tribune/provider/forum/dao/TableDao;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 35
    return-void
.end method


# virtual methods
.method public contentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/oppo/tribune/provider/forum/dao/SignInUserDao;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public insert(Lcom/oppo/tribune/protobuf/info/UserInfo;)Z
    .locals 6
    .param p1, "entity"    # Lcom/oppo/tribune/protobuf/info/UserInfo;

    .prologue
    .line 44
    if-nez p1, :cond_0

    .line 45
    const/4 v3, 0x0

    .line 52
    :goto_0
    return v3

    .line 48
    :cond_0
    new-instance v0, Lcom/oppo/tribune/provider/Condition;

    const-string v3, "uid"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->getId()J

    move-result-wide v4

    invoke-direct {v0, v3, v4, v5}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;J)V

    .line 49
    .local v0, "condition":Lcom/oppo/tribune/provider/Condition;
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "whereClause":Ljava/lang/String;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 51
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/UserInfo;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/oppo/tribune/provider/forum/dao/SignInUserDao;->insert(Ljava/util/List;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    goto :goto_0
.end method

.method protected newInsertValues(Lcom/oppo/tribune/protobuf/info/UserInfo;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "item"    # Lcom/oppo/tribune/protobuf/info/UserInfo;

    .prologue
    .line 119
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 121
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "uid"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 122
    const-string v1, "username"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v1, "realname"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->getRealname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v1, "headurl"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->getHeadurl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v1, "gender"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->getGender()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 126
    const-string v1, "constellation"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->getConstellation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v1, "city"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v1, "birthyear"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->getBirthyear()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 129
    const-string v1, "birthmonth"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->getBirthmonth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 130
    const-string v1, "birthday"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->getBirthday()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 131
    const-string v1, "age"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->getAge()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 132
    const-string v1, "level"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->getLevel()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 133
    const-string v1, "levelname"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->getLevelname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v1, "credit"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->getCredits()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 135
    const-string v1, "follower"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->getFollower()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 136
    const-string v1, "following"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->getFollowing()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 137
    const-string v1, "bg_type"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->getBgType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 138
    const-string v1, "bg_url"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->getBgUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v1, "mood"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->getMood()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v1, "sharenum"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->getSharenum()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 142
    const-string v1, "likednum"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->getLikednum()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 143
    const-string v1, "likesnum"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->getLikesnum()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 144
    return-object v0
.end method

.method protected bridge synthetic newInsertValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p1, Lcom/oppo/tribune/protobuf/info/UserInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/provider/forum/dao/SignInUserDao;->newInsertValues(Lcom/oppo/tribune/protobuf/info/UserInfo;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected newRecord(Landroid/database/Cursor;)Lcom/oppo/tribune/protobuf/info/UserInfo;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 88
    new-instance v0, Lcom/oppo/tribune/protobuf/info/UserInfo;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/info/UserInfo;-><init>()V

    .line 90
    .local v0, "entity":Lcom/oppo/tribune/protobuf/info/UserInfo;
    const-string v1, "uid"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setId(J)V

    .line 91
    const-string v1, "username"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setUsername(Ljava/lang/String;)V

    .line 92
    const-string v1, "realname"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setRealname(Ljava/lang/String;)V

    .line 93
    const-string v1, "headurl"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setHeadurl(Ljava/lang/String;)V

    .line 94
    const-string v1, "gender"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setGender(I)V

    .line 95
    const-string v1, "constellation"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setConstellation(Ljava/lang/String;)V

    .line 96
    const-string v1, "city"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setCity(Ljava/lang/String;)V

    .line 97
    const-string v1, "birthyear"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setBirthyear(I)V

    .line 98
    const-string v1, "birthmonth"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setBirthmonth(I)V

    .line 99
    const-string v1, "birthday"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setBirthday(I)V

    .line 100
    const-string v1, "age"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setAge(I)V

    .line 101
    const-string v1, "level"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setLevel(I)V

    .line 102
    const-string v1, "levelname"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setLevelname(Ljava/lang/String;)V

    .line 103
    const-string v1, "credit"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setCredits(I)V

    .line 104
    const-string v1, "follower"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setFollower(I)V

    .line 105
    const-string v1, "following"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setFollowing(I)V

    .line 106
    const-string v1, "bg_type"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setBgType(I)V

    .line 107
    const-string v1, "bg_url"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setBgUrl(Ljava/lang/String;)V

    .line 108
    const-string v1, "mood"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setMood(Ljava/lang/String;)V

    .line 111
    const-string v1, "sharenum"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setSharenum(I)V

    .line 112
    const-string v1, "likednum"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setLikednum(I)V

    .line 113
    const-string v1, "likesnum"

    invoke-static {p1, v1}, Lcom/oppo/tribune/util/Cursors;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->setLikesnum(I)V

    .line 114
    return-object v0
.end method

.method protected bridge synthetic newRecord(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/database/Cursor;

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/provider/forum/dao/SignInUserDao;->newRecord(Landroid/database/Cursor;)Lcom/oppo/tribune/protobuf/info/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onUpdateRecord(Lcom/oppo/tribune/protobuf/info/UserInfo;Lcom/oppo/tribune/protobuf/info/UserInfo;)V
    .locals 0
    .param p1, "newRecord"    # Lcom/oppo/tribune/protobuf/info/UserInfo;
    .param p2, "oldRecord"    # Lcom/oppo/tribune/protobuf/info/UserInfo;

    .prologue
    .line 156
    return-void
.end method

.method protected bridge synthetic onUpdateRecord(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p1, Lcom/oppo/tribune/protobuf/info/UserInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/oppo/tribune/protobuf/info/UserInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/provider/forum/dao/SignInUserDao;->onUpdateRecord(Lcom/oppo/tribune/protobuf/info/UserInfo;Lcom/oppo/tribune/protobuf/info/UserInfo;)V

    return-void
.end method

.method protected projection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/oppo/tribune/provider/forum/dao/SignInUserDao;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public query(J)Lcom/oppo/tribune/protobuf/info/UserInfo;
    .locals 7
    .param p1, "uid"    # J

    .prologue
    const/4 v5, 0x0

    .line 56
    new-instance v0, Lcom/oppo/tribune/provider/Condition;

    const-string v6, "uid"

    invoke-direct {v0, v6, p1, p2}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;J)V

    .line 57
    .local v0, "condition":Lcom/oppo/tribune/provider/Condition;
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, "whereClause":Ljava/lang/String;
    invoke-virtual {p0, v4, v5}, Lcom/oppo/tribune/provider/forum/dao/SignInUserDao;->query(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 60
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/UserInfo;>;"
    invoke-static {v3}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 61
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/tribune/protobuf/info/UserInfo;

    .line 62
    .local v2, "item":Lcom/oppo/tribune/protobuf/info/UserInfo;
    if-eqz v2, :cond_0

    .line 68
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Lcom/oppo/tribune/protobuf/info/UserInfo;
    :goto_0
    return-object v2

    :cond_1
    move-object v2, v5

    goto :goto_0
.end method

.method protected queryRecordCondition(Lcom/oppo/tribune/protobuf/info/UserInfo;)Ljava/lang/String;
    .locals 4
    .param p1, "newRecord"    # Lcom/oppo/tribune/protobuf/info/UserInfo;

    .prologue
    .line 149
    new-instance v0, Lcom/oppo/tribune/provider/Condition;

    const-string v1, "uid"

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->getId()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;J)V

    .line 150
    .local v0, "condition":Lcom/oppo/tribune/provider/Condition;
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic queryRecordCondition(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p1, Lcom/oppo/tribune/protobuf/info/UserInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/provider/forum/dao/SignInUserDao;->queryRecordCondition(Lcom/oppo/tribune/protobuf/info/UserInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public size(J)I
    .locals 3
    .param p1, "uid"    # J

    .prologue
    .line 38
    new-instance v0, Lcom/oppo/tribune/provider/Condition;

    const-string v2, "uid"

    invoke-direct {v0, v2, p1, p2}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;J)V

    .line 39
    .local v0, "condition":Lcom/oppo/tribune/provider/Condition;
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "whereClause":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/oppo/tribune/provider/forum/dao/SignInUserDao;->size(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method protected sortOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-string v0, "_id ASC"

    return-object v0
.end method
