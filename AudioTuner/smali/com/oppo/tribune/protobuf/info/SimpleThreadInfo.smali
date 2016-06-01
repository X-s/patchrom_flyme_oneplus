.class public Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;
.super Ljava/lang/Object;
.source "SimpleThreadInfo.java"


# static fields
.field public static final CLIENT_FOLLOWED_SUCCESS:I = 0x4

.field public static final FID_TYPE_SQUARE_TOPLINE:J = -0x1L

.field public static final FOLLOWED_FOLLOWED_TA:I = 0x1

.field public static final FOLLOWED_NOT_FOLLOWED_TA:I = 0x0

.field public static final FOLLOWING_OR_UNFOLLOWING:I = 0x5

.field public static final LIKE_ALREADY:I = 0x1

.field public static final TYPE_FORUM_DATELINE:I = 0x3

.field public static final TYPE_FORUM_LASTPOST:I = 0x4

.field public static final TYPE_FORUM_TOPLINE:I = 0x2

.field public static final TYPE_POST_COLLECTION:I = 0xa

.field public static final TYPE_SQUARE_TOPLINE:I = 0x1


# instance fields
.field private attachment:J

.field private author:Ljava/lang/String;

.field private authorid:J

.field private categoryId:I

.field private commonForumName:Ljava/lang/String;

.field private commonPicUrl:Ljava/lang/String;

.field private dateline:J

.field private datelineString:Ljava/lang/String;

.field private downloadNum:I

.field private fid:J

.field private fidType:J

.field private groupid:J

.field private imgInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isFollowing:I

.field private isLike:I

.field private local:I

.field private page:I

.field private praise:J

.field private praisesString:Ljava/lang/String;

.field private replies:J

.field private repliesString:Ljava/lang/String;

.field private sourceType:I

.field private subject:Ljava/lang/String;

.field private subjectCharSequence:Ljava/lang/CharSequence;

.field private summary:Ljava/lang/String;

.field private tid:J

.field private views:J

.field private viewsString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/tuner/providers/SoundEffectItem;)V
    .locals 6
    .param p1, "effect"    # Lcom/oneplus/tuner/providers/SoundEffectItem;

    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    iget-object v3, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mEqBand:Lcom/oneplus/tuner/providers/SoundEffectEQBand;

    iget-object v3, v3, Lcom/oneplus/tuner/providers/SoundEffectEQBand;->mEqBpGain:[F

    array-length v1, v3

    .line 309
    .local v1, "len":I
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 310
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 311
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mEqBand:Lcom/oneplus/tuner/providers/SoundEffectEQBand;

    iget-object v4, v4, Lcom/oneplus/tuner/providers/SoundEffectEQBand;->mEqBpGain:[F

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 313
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mVolumeStrengthen:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mSpeakerExpansion:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mVolumeBalance:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mBassBoost:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mTransparentTreble:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mClearVocal:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mChannelEqualization:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 320
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->commonForumName:Ljava/lang/String;

    .line 322
    iget-object v3, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mStyle:Ljava/lang/String;

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->subject:Ljava/lang/String;

    .line 323
    iget-object v3, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mStyle:Ljava/lang/String;

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->subjectCharSequence:Ljava/lang/CharSequence;

    .line 324
    iget-object v3, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUserName:Ljava/lang/String;

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->author:Ljava/lang/String;

    .line 325
    iget-object v3, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mComment:Ljava/lang/String;

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->summary:Ljava/lang/String;

    .line 326
    iget v3, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mCommend:I

    int-to-long v4, v3

    iput-wide v4, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->praise:J

    .line 327
    iget-wide v4, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mTime:J

    iput-wide v4, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->dateline:J

    .line 328
    iget v3, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mShareId:I

    int-to-long v4, v3

    iput-wide v4, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->tid:J

    .line 330
    iget v3, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mCategoryId:I

    iput v3, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->categoryId:I

    .line 331
    iget v3, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mDownloadNum:I

    iput v3, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->downloadNum:I

    .line 332
    iget v3, p1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mLocal:I

    iput v3, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->local:I

    .line 334
    return-void
.end method


# virtual methods
.method public final getAttachment()J
    .locals 2

    .prologue
    .line 191
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->attachment:J

    return-wide v0
.end method

.method public final getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->author:Ljava/lang/String;

    return-object v0
.end method

.method public final getAuthorid()J
    .locals 2

    .prologue
    .line 207
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->authorid:J

    return-wide v0
.end method

.method public getCategoryId()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->categoryId:I

    return v0
.end method

.method public getCommonForumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->commonForumName:Ljava/lang/String;

    return-object v0
.end method

.method public getCommonPicUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->commonPicUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getDateline()J
    .locals 2

    .prologue
    .line 128
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->dateline:J

    return-wide v0
.end method

.method public final getDatelineString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->datelineString:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadNum()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->downloadNum:I

    return v0
.end method

.method public final getFeedImgList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->imgInfoList:Ljava/util/List;

    return-object v0
.end method

.method public final getFid()J
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->fid:J

    return-wide v0
.end method

.method public final getFidType()J
    .locals 2

    .prologue
    .line 255
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->fidType:J

    return-wide v0
.end method

.method public final getGroupid()J
    .locals 2

    .prologue
    .line 215
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->groupid:J

    return-wide v0
.end method

.method public final getIsFollowing()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->isFollowing:I

    return v0
.end method

.method public getIsLike()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->isLike:I

    return v0
.end method

.method public getLocal()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->local:I

    return v0
.end method

.method public final getPage()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->page:I

    return v0
.end method

.method public final getPraise()J
    .locals 2

    .prologue
    .line 169
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->praise:J

    return-wide v0
.end method

.method public final getPraiseString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->praisesString:Ljava/lang/String;

    return-object v0
.end method

.method public final getReplies()J
    .locals 2

    .prologue
    .line 141
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->replies:J

    return-wide v0
.end method

.method public final getReplyliesString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->repliesString:Ljava/lang/String;

    return-object v0
.end method

.method public final getSourceType()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->sourceType:I

    return v0
.end method

.method public final getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public final getSubjectCharSequence()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->subjectCharSequence:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public final getTid()J
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->tid:J

    return-wide v0
.end method

.method public final getViews()J
    .locals 2

    .prologue
    .line 155
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->views:J

    return-wide v0
.end method

.method public final getViewsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->viewsString:Ljava/lang/String;

    return-object v0
.end method

.method public isFollowingOrUnfollowing()Z
    .locals 2

    .prologue
    .line 279
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->isFollowing:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setAttachment(J)V
    .locals 1
    .param p1, "attachment"    # J

    .prologue
    .line 195
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->attachment:J

    .line 196
    return-void
.end method

.method public final setAuthor(Ljava/lang/String;)V
    .locals 0
    .param p1, "author"    # Ljava/lang/String;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->author:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public final setAuthorid(J)V
    .locals 1
    .param p1, "authorid"    # J

    .prologue
    .line 211
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->authorid:J

    .line 212
    return-void
.end method

.method public setCategoryId(I)V
    .locals 0
    .param p1, "categoryId"    # I

    .prologue
    .line 287
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->categoryId:I

    .line 288
    return-void
.end method

.method public setCommonForumName(Ljava/lang/String;)V
    .locals 0
    .param p1, "commonForumName"    # Ljava/lang/String;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->commonForumName:Ljava/lang/String;

    .line 268
    return-void
.end method

.method public setCommonPicUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "commonPicUrl"    # Ljava/lang/String;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->commonPicUrl:Ljava/lang/String;

    .line 276
    return-void
.end method

.method public final setDateline(J)V
    .locals 1
    .param p1, "dateline"    # J

    .prologue
    .line 136
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->dateline:J

    .line 137
    invoke-static {p1, p2}, Lcom/oppo/tribune/tool/TimeUtil;->getTime(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->datelineString:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setDownloadNum(I)V
    .locals 0
    .param p1, "downloadNum"    # I

    .prologue
    .line 295
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->downloadNum:I

    .line 296
    return-void
.end method

.method public final setFeedImgList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 243
    .local p1, "imgInfoList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->imgInfoList:Ljava/util/List;

    .line 244
    return-void
.end method

.method public final setFid(J)V
    .locals 1
    .param p1, "fid"    # J

    .prologue
    .line 96
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->fid:J

    .line 97
    return-void
.end method

.method public final setFidType(J)V
    .locals 1
    .param p1, "fidType"    # J

    .prologue
    .line 259
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->fidType:J

    .line 260
    return-void
.end method

.method public final setGroupid(J)V
    .locals 1
    .param p1, "groupid"    # J

    .prologue
    .line 219
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->groupid:J

    .line 220
    return-void
.end method

.method public final setIsFollowing(I)V
    .locals 0
    .param p1, "following"    # I

    .prologue
    .line 227
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->isFollowing:I

    .line 228
    return-void
.end method

.method public setIsLike(I)V
    .locals 0
    .param p1, "isLike"    # I

    .prologue
    .line 187
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->isLike:I

    .line 188
    return-void
.end method

.method public setLocal(I)V
    .locals 0
    .param p1, "local"    # I

    .prologue
    .line 303
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->local:I

    .line 304
    return-void
.end method

.method public final setPage(I)V
    .locals 0
    .param p1, "page"    # I

    .prologue
    .line 235
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->page:I

    .line 236
    return-void
.end method

.method public final setPraise(J)V
    .locals 1
    .param p1, "praise"    # J

    .prologue
    .line 177
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->praise:J

    .line 178
    invoke-static {}, Lcom/oppo/tribune/CommunityApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/oppo/tribune/util/Utils;->checkNumber(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->praisesString:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public final setReplies(J)V
    .locals 1
    .param p1, "replies"    # J

    .prologue
    .line 149
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->replies:J

    .line 150
    invoke-static {}, Lcom/oppo/tribune/CommunityApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/oppo/tribune/util/Utils;->checkNumber(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->repliesString:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public final setSourceType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 251
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->sourceType:I

    .line 252
    return-void
.end method

.method public final setSubject(Ljava/lang/String;)V
    .locals 1
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-static {p1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->subjectCharSequence:Ljava/lang/CharSequence;

    .line 109
    :goto_0
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->subject:Ljava/lang/String;

    .line 110
    return-void

    .line 107
    :cond_0
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->subjectCharSequence:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public final setSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 121
    if-eqz p1, :cond_0

    .line 122
    invoke-static {p1}, Lcom/oppo/tribune/util/FormatStrings;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 124
    :cond_0
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->summary:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public final setTid(J)V
    .locals 1
    .param p1, "tid"    # J

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->tid:J

    .line 89
    return-void
.end method

.method public final setViews(J)V
    .locals 1
    .param p1, "views"    # J

    .prologue
    .line 163
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->views:J

    .line 164
    invoke-static {}, Lcom/oppo/tribune/CommunityApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/oppo/tribune/util/Utils;->checkNumber(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->viewsString:Ljava/lang/String;

    .line 166
    return-void
.end method
