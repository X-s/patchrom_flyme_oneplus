.class public Lcom/oppo/tribune/parse/LocalThread;
.super Ljava/lang/Object;
.source "LocalThread.java"


# instance fields
.field private aid:J

.field private androidSubject:Ljava/lang/String;

.field private androidSummary:Ljava/lang/String;

.field private attachment:I

.field private author:Ljava/lang/String;

.field private authorId:J

.field private cid:I

.field private comment:Ljava/lang/String;

.field private dateline:Ljava/lang/String;

.field private displayOrder:I

.field private fid:J

.field private fidType:I

.field private forumName:Ljava/lang/String;

.field private groupId:I

.field private hot:I

.field private id:I

.field private image:Ljava/lang/String;

.field private invisibile:I

.field private lastpost:Ljava/lang/String;

.field private lastposter:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private oriImgUrl:Ljava/lang/String;

.field private page:I

.field private pid:I

.field private position:I

.field private read:I

.field private recommmended:I

.field private replies:I

.field private subject:Ljava/lang/String;

.field private summary:Ljava/lang/String;

.field private tid:J

.field private typeName:Ljava/lang/String;

.field private typeid:I

.field private views:I

.field private visibility:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    return-void
.end method


# virtual methods
.method public getAid()J
    .locals 2

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/oppo/tribune/parse/LocalThread;->aid:J

    return-wide v0
.end method

.method public getAndroidSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/oppo/tribune/parse/LocalThread;->androidSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getAndroidSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/oppo/tribune/parse/LocalThread;->androidSummary:Ljava/lang/String;

    return-object v0
.end method

.method public getAttachment()I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/oppo/tribune/parse/LocalThread;->attachment:I

    return v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/oppo/tribune/parse/LocalThread;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorId()J
    .locals 2

    .prologue
    .line 183
    iget-wide v0, p0, Lcom/oppo/tribune/parse/LocalThread;->authorId:J

    return-wide v0
.end method

.method public getCid()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/oppo/tribune/parse/LocalThread;->cid:I

    return v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/oppo/tribune/parse/LocalThread;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getDateline()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/oppo/tribune/parse/LocalThread;->dateline:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayOrder()I
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Lcom/oppo/tribune/parse/LocalThread;->displayOrder:I

    return v0
.end method

.method public getFid()J
    .locals 2

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/oppo/tribune/parse/LocalThread;->fid:J

    return-wide v0
.end method

.method public getFidType()I
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Lcom/oppo/tribune/parse/LocalThread;->fidType:I

    return v0
.end method

.method public getForumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/oppo/tribune/parse/LocalThread;->forumName:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/oppo/tribune/parse/LocalThread;->groupId:I

    return v0
.end method

.method public getHot()I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/oppo/tribune/parse/LocalThread;->hot:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/oppo/tribune/parse/LocalThread;->id:I

    return v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/oppo/tribune/parse/LocalThread;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getInvisibile()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcom/oppo/tribune/parse/LocalThread;->invisibile:I

    return v0
.end method

.method public getLastpost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/oppo/tribune/parse/LocalThread;->lastpost:Ljava/lang/String;

    return-object v0
.end method

.method public getLastposter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/oppo/tribune/parse/LocalThread;->lastposter:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/oppo/tribune/parse/LocalThread;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/oppo/tribune/parse/LocalThread;->oriImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPage()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/oppo/tribune/parse/LocalThread;->page:I

    return v0
.end method

.method public getPid()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/oppo/tribune/parse/LocalThread;->pid:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 351
    iget v0, p0, Lcom/oppo/tribune/parse/LocalThread;->position:I

    return v0
.end method

.method public getRead()I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lcom/oppo/tribune/parse/LocalThread;->read:I

    return v0
.end method

.method public getRecommmended()I
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Lcom/oppo/tribune/parse/LocalThread;->recommmended:I

    return v0
.end method

.method public getReplies()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/oppo/tribune/parse/LocalThread;->replies:I

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/oppo/tribune/parse/LocalThread;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/oppo/tribune/parse/LocalThread;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getTid()J
    .locals 2

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/oppo/tribune/parse/LocalThread;->tid:J

    return-wide v0
.end method

.method public getTypeId()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/oppo/tribune/parse/LocalThread;->typeid:I

    return v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/oppo/tribune/parse/LocalThread;->typeName:Ljava/lang/String;

    return-object v0
.end method

.method public getViews()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/oppo/tribune/parse/LocalThread;->views:I

    return v0
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lcom/oppo/tribune/parse/LocalThread;->visibility:I

    return v0
.end method

.method public setAid(J)V
    .locals 1
    .param p1, "aid"    # J

    .prologue
    .line 107
    iput-wide p1, p0, Lcom/oppo/tribune/parse/LocalThread;->aid:J

    .line 108
    return-void
.end method

.method public setAndroidSubject(Ljava/lang/String;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/oppo/tribune/parse/LocalThread;->androidSubject:Ljava/lang/String;

    .line 340
    return-void
.end method

.method public setAndroidSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "androidSummary"    # Ljava/lang/String;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/oppo/tribune/parse/LocalThread;->androidSummary:Ljava/lang/String;

    .line 348
    return-void
.end method

.method public setAttachment(I)V
    .locals 0
    .param p1, "attachment"    # I

    .prologue
    .line 259
    iput p1, p0, Lcom/oppo/tribune/parse/LocalThread;->attachment:I

    .line 260
    return-void
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0
    .param p1, "author"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/oppo/tribune/parse/LocalThread;->author:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setAuthorId(J)V
    .locals 1
    .param p1, "authorId"    # J

    .prologue
    .line 187
    iput-wide p1, p0, Lcom/oppo/tribune/parse/LocalThread;->authorId:J

    .line 188
    return-void
.end method

.method public setCid(I)V
    .locals 0
    .param p1, "cid"    # I

    .prologue
    .line 131
    iput p1, p0, Lcom/oppo/tribune/parse/LocalThread;->cid:I

    .line 132
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/oppo/tribune/parse/LocalThread;->comment:Ljava/lang/String;

    .line 332
    return-void
.end method

.method public setDateline(Ljava/lang/String;)V
    .locals 0
    .param p1, "dateline"    # Ljava/lang/String;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/oppo/tribune/parse/LocalThread;->dateline:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public setDisplayOrder(I)V
    .locals 0
    .param p1, "displayOrder"    # I

    .prologue
    .line 307
    iput p1, p0, Lcom/oppo/tribune/parse/LocalThread;->displayOrder:I

    .line 308
    return-void
.end method

.method public setFid(I)V
    .locals 2
    .param p1, "fid"    # I

    .prologue
    .line 115
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/oppo/tribune/parse/LocalThread;->fid:J

    .line 116
    return-void
.end method

.method public setFidType(I)V
    .locals 0
    .param p1, "fidType"    # I

    .prologue
    .line 363
    iput p1, p0, Lcom/oppo/tribune/parse/LocalThread;->fidType:I

    .line 364
    return-void
.end method

.method public setForumName(Ljava/lang/String;)V
    .locals 0
    .param p1, "forumName"    # Ljava/lang/String;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/oppo/tribune/parse/LocalThread;->forumName:Ljava/lang/String;

    .line 324
    return-void
.end method

.method public setGroupId(I)V
    .locals 0
    .param p1, "groupId"    # I

    .prologue
    .line 171
    iput p1, p0, Lcom/oppo/tribune/parse/LocalThread;->groupId:I

    .line 172
    return-void
.end method

.method public setHot(I)V
    .locals 0
    .param p1, "hot"    # I

    .prologue
    .line 267
    iput p1, p0, Lcom/oppo/tribune/parse/LocalThread;->hot:I

    .line 268
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 147
    iput p1, p0, Lcom/oppo/tribune/parse/LocalThread;->id:I

    .line 148
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "image"    # Ljava/lang/String;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/oppo/tribune/parse/LocalThread;->image:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public setImgUrls(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "imgThum"    # Ljava/lang/String;
    .param p2, "imgPrev"    # Ljava/lang/String;
    .param p3, "imgOrig"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p3, p0, Lcom/oppo/tribune/parse/LocalThread;->oriImgUrl:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setInvisibile(I)V
    .locals 0
    .param p1, "invisibile"    # I

    .prologue
    .line 275
    iput p1, p0, Lcom/oppo/tribune/parse/LocalThread;->invisibile:I

    .line 276
    return-void
.end method

.method public setLastpost(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastpost"    # Ljava/lang/String;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/oppo/tribune/parse/LocalThread;->lastpost:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public setLastposter(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastposter"    # Ljava/lang/String;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/oppo/tribune/parse/LocalThread;->lastposter:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/oppo/tribune/parse/LocalThread;->message:Ljava/lang/String;

    .line 316
    return-void
.end method

.method public setPage(I)V
    .locals 0
    .param p1, "page"    # I

    .prologue
    .line 99
    iput p1, p0, Lcom/oppo/tribune/parse/LocalThread;->page:I

    .line 100
    return-void
.end method

.method public setPid(I)V
    .locals 0
    .param p1, "pid"    # I

    .prologue
    .line 139
    iput p1, p0, Lcom/oppo/tribune/parse/LocalThread;->pid:I

    .line 140
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 355
    iput p1, p0, Lcom/oppo/tribune/parse/LocalThread;->position:I

    .line 356
    return-void
.end method

.method public setRead(I)V
    .locals 0
    .param p1, "read"    # I

    .prologue
    .line 291
    iput p1, p0, Lcom/oppo/tribune/parse/LocalThread;->read:I

    .line 292
    return-void
.end method

.method public setRecommmended(I)V
    .locals 0
    .param p1, "recommmended"    # I

    .prologue
    .line 299
    iput p1, p0, Lcom/oppo/tribune/parse/LocalThread;->recommmended:I

    .line 300
    return-void
.end method

.method public setReplies(I)V
    .locals 0
    .param p1, "replies"    # I

    .prologue
    .line 251
    iput p1, p0, Lcom/oppo/tribune/parse/LocalThread;->replies:I

    .line 252
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/oppo/tribune/parse/LocalThread;->subject:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/oppo/tribune/parse/LocalThread;->summary:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public setTid(J)V
    .locals 1
    .param p1, "tid"    # J

    .prologue
    .line 123
    iput-wide p1, p0, Lcom/oppo/tribune/parse/LocalThread;->tid:J

    .line 124
    return-void
.end method

.method public setTypeId(I)V
    .locals 0
    .param p1, "typeid"    # I

    .prologue
    .line 155
    iput p1, p0, Lcom/oppo/tribune/parse/LocalThread;->typeid:I

    .line 156
    return-void
.end method

.method public setTypeName(Ljava/lang/String;)V
    .locals 0
    .param p1, "typeName"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/oppo/tribune/parse/LocalThread;->typeName:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setViews(I)V
    .locals 0
    .param p1, "views"    # I

    .prologue
    .line 243
    iput p1, p0, Lcom/oppo/tribune/parse/LocalThread;->views:I

    .line 244
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 283
    iput p1, p0, Lcom/oppo/tribune/parse/LocalThread;->visibility:I

    .line 284
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 368
    invoke-static {p0}, Lcom/oppo/tribune/util/Utils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
