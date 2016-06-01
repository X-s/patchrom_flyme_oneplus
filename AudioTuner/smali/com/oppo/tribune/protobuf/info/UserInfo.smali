.class public Lcom/oppo/tribune/protobuf/info/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"


# static fields
.field public static final FOLLOWED_FOLLOW_ME:I = 0x2

.field public static final FOLLOWED_FOLLOW_TA:I = 0x1

.field public static final FOLLOWED_MUTUAL:I = 0x3

.field public static final FOLLOWED_NON:I = 0x0

.field public static final FOLLOWING_OR_UNFOLLOWING:I = 0x5

.field public static final GENDER_BOY:I = 0x1

.field public static final GENDER_GIRL:I = 0x2


# instance fields
.field private address:Ljava/lang/String;

.field private age:I

.field private bgType:I

.field private bgUrl:Ljava/lang/String;

.field private birthday:I

.field private birthmonth:I

.field private birthyear:I

.field private bloodtype:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private constellation:Ljava/lang/String;

.field private credits:I

.field private dateline:I

.field private followed:I

.field private follower:I

.field private following:I

.field private gender:I

.field private headurl:Ljava/lang/String;

.field private height:Ljava/lang/String;

.field private id:J

.field private level:I

.field private levelname:Ljava/lang/String;

.field private likednum:I

.field private likesnum:I

.field private mobile:Ljava/lang/String;

.field private mood:Ljava/lang/String;

.field private nickname:Ljava/lang/String;

.field private page:I

.field private realname:Ljava/lang/String;

.field private regtime:I

.field private sharenum:I

.field private status:I

.field private telphone:Ljava/lang/String;

.field private username:Ljava/lang/String;

.field private weight:Ljava/lang/String;

.field private zodiac:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/info/UserInfo;
    .locals 3
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 393
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/oppo/tribune/protobuf/info/UserInfo;

    invoke-virtual {v1, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/tribune/protobuf/info/UserInfo;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    :goto_0
    return-object v1

    .line 394
    :catch_0
    move-exception v0

    .line 395
    .local v0, "e":Lcom/google/gson/JsonSyntaxException;
    invoke-virtual {v0}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    .line 397
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isFollowedTa(I)Z
    .locals 1
    .param p0, "follow"    # I

    .prologue
    .line 358
    const/4 v0, 0x0

    .line 359
    .local v0, "b":Z
    packed-switch p0, :pswitch_data_0

    .line 373
    const/4 v0, 0x0

    .line 376
    :goto_0
    return v0

    .line 361
    :pswitch_0
    const/4 v0, 0x0

    .line 362
    goto :goto_0

    .line 364
    :pswitch_1
    const/4 v0, 0x1

    .line 365
    goto :goto_0

    .line 367
    :pswitch_2
    const/4 v0, 0x0

    .line 368
    goto :goto_0

    .line 370
    :pswitch_3
    const/4 v0, 0x1

    .line 371
    goto :goto_0

    .line 359
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static toJson(Lcom/oppo/tribune/protobuf/info/UserInfo;)Ljava/lang/String;
    .locals 2
    .param p0, "obj"    # Lcom/oppo/tribune/protobuf/info/UserInfo;

    .prologue
    .line 384
    const/4 v0, 0x0

    .line 385
    .local v0, "result":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 386
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 388
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getAge()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->age:I

    return v0
.end method

.method public getBgType()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->bgType:I

    return v0
.end method

.method public getBgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->bgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->birthday:I

    return v0
.end method

.method public getBirthmonth()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->birthmonth:I

    return v0
.end method

.method public getBirthyear()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->birthyear:I

    return v0
.end method

.method public getBloodtype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->bloodtype:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getConstellation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->constellation:Ljava/lang/String;

    return-object v0
.end method

.method public getCredits()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->credits:I

    return v0
.end method

.method public getDateline()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->dateline:I

    return v0
.end method

.method public getFollowed()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->followed:I

    return v0
.end method

.method public getFollower()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->follower:I

    return v0
.end method

.method public getFollowing()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->following:I

    return v0
.end method

.method public getGender()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->gender:I

    return v0
.end method

.method public getHeadurl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->headurl:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->height:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->id:J

    return-wide v0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->level:I

    return v0
.end method

.method public getLevelname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->levelname:Ljava/lang/String;

    return-object v0
.end method

.method public getLikednum()I
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->likednum:I

    return v0
.end method

.method public getLikesnum()I
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->likesnum:I

    return v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getMood()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->mood:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getPage()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->page:I

    return v0
.end method

.method public getRealname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->realname:Ljava/lang/String;

    return-object v0
.end method

.method public getRegtime()I
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->regtime:I

    return v0
.end method

.method public getSharenum()I
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->sharenum:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->status:I

    return v0
.end method

.method public getTelphone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->telphone:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->username:Ljava/lang/String;

    return-object v0
.end method

.method public getWeight()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->weight:Ljava/lang/String;

    return-object v0
.end method

.method public getZodiac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->zodiac:Ljava/lang/String;

    return-object v0
.end method

.method public isFollowedTa()Z
    .locals 1

    .prologue
    .line 354
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->followed:I

    invoke-static {v0}, Lcom/oppo/tribune/protobuf/info/UserInfo;->isFollowedTa(I)Z

    move-result v0

    return v0
.end method

.method public isFollowingOrUnfollowingTa()Z
    .locals 2

    .prologue
    .line 380
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->followed:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->address:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public setAge(I)V
    .locals 0
    .param p1, "age"    # I

    .prologue
    .line 151
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->age:I

    .line 152
    return-void
.end method

.method public setBgType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 303
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->bgType:I

    .line 304
    return-void
.end method

.method public setBgUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->bgUrl:Ljava/lang/String;

    .line 312
    return-void
.end method

.method public setBirthday(I)V
    .locals 0
    .param p1, "birthday"    # I

    .prologue
    .line 175
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->birthday:I

    .line 176
    return-void
.end method

.method public setBirthmonth(I)V
    .locals 0
    .param p1, "birthmonth"    # I

    .prologue
    .line 167
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->birthmonth:I

    .line 168
    return-void
.end method

.method public setBirthyear(I)V
    .locals 0
    .param p1, "birthyear"    # I

    .prologue
    .line 159
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->birthyear:I

    .line 160
    return-void
.end method

.method public setBloodtype(Ljava/lang/String;)V
    .locals 0
    .param p1, "bloodtype"    # Ljava/lang/String;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->bloodtype:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->city:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public setConstellation(Ljava/lang/String;)V
    .locals 0
    .param p1, "constellation"    # Ljava/lang/String;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->constellation:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setCredits(I)V
    .locals 0
    .param p1, "credits"    # I

    .prologue
    .line 135
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->credits:I

    .line 136
    return-void
.end method

.method public setDateline(I)V
    .locals 0
    .param p1, "dateline"    # I

    .prologue
    .line 287
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->dateline:I

    .line 288
    return-void
.end method

.method public setFollowed(I)V
    .locals 0
    .param p1, "followed"    # I

    .prologue
    .line 111
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->followed:I

    .line 112
    return-void
.end method

.method public setFollower(I)V
    .locals 0
    .param p1, "follower"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->follower:I

    .line 128
    return-void
.end method

.method public setFollowing(I)V
    .locals 0
    .param p1, "following"    # I

    .prologue
    .line 119
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->following:I

    .line 120
    return-void
.end method

.method public setGender(I)V
    .locals 0
    .param p1, "gender"    # I

    .prologue
    .line 143
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->gender:I

    .line 144
    return-void
.end method

.method public setHeadurl(Ljava/lang/String;)V
    .locals 0
    .param p1, "headurl"    # Ljava/lang/String;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->headurl:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setHeight(Ljava/lang/String;)V
    .locals 0
    .param p1, "height"    # Ljava/lang/String;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->height:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 71
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->id:J

    .line 72
    return-void
.end method

.method public setLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 263
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->level:I

    .line 264
    return-void
.end method

.method public setLevelname(Ljava/lang/String;)V
    .locals 0
    .param p1, "levelname"    # Ljava/lang/String;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->levelname:Ljava/lang/String;

    .line 272
    return-void
.end method

.method public setLikednum(I)V
    .locals 0
    .param p1, "likednum"    # I

    .prologue
    .line 337
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->likednum:I

    .line 338
    return-void
.end method

.method public setLikesnum(I)V
    .locals 0
    .param p1, "likesnum"    # I

    .prologue
    .line 345
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->likesnum:I

    .line 346
    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0
    .param p1, "mobile"    # Ljava/lang/String;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->mobile:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setMood(Ljava/lang/String;)V
    .locals 0
    .param p1, "mood"    # Ljava/lang/String;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->mood:Ljava/lang/String;

    .line 320
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0
    .param p1, "nickname"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->nickname:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setPage(I)V
    .locals 0
    .param p1, "page"    # I

    .prologue
    .line 295
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->page:I

    .line 296
    return-void
.end method

.method public setRealname(Ljava/lang/String;)V
    .locals 0
    .param p1, "realname"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->realname:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setRegtime(I)V
    .locals 0
    .param p1, "regtime"    # I

    .prologue
    .line 279
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->regtime:I

    .line 280
    return-void
.end method

.method public setSharenum(I)V
    .locals 0
    .param p1, "sharenum"    # I

    .prologue
    .line 329
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->sharenum:I

    .line 330
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->status:I

    .line 80
    return-void
.end method

.method public setTelphone(Ljava/lang/String;)V
    .locals 0
    .param p1, "telphone"    # Ljava/lang/String;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->telphone:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->username:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setWeight(Ljava/lang/String;)V
    .locals 0
    .param p1, "weight"    # Ljava/lang/String;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->weight:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public setZodiac(Ljava/lang/String;)V
    .locals 0
    .param p1, "zodiac"    # Ljava/lang/String;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/info/UserInfo;->zodiac:Ljava/lang/String;

    .line 200
    return-void
.end method
