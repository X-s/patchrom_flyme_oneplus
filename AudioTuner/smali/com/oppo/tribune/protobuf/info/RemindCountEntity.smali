.class public Lcom/oppo/tribune/protobuf/info/RemindCountEntity;
.super Ljava/lang/Object;
.source "RemindCountEntity.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private coll_count:I

.field private flag:J

.field private followers:I

.field private followfeed:I

.field private followings:I

.field private friend:I

.field private isSign:I

.field private oubi:I

.field private pack_remind:I

.field private pack_reply:I

.field private reply_count:I

.field private signDays:I

.field private signLasted:I

.field private square_remind:I

.field private visitor:I

.field private yinfu:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 166
    const/4 v2, 0x0

    .line 168
    .local v2, "newObject":Lcom/oppo/tribune/protobuf/info/RemindCountEntity;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    return-object v2

    .line 169
    :catch_0
    move-exception v1

    .line 170
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public getCollCount()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->coll_count:I

    return v0
.end method

.method public getFlag()J
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->flag:J

    return-wide v0
.end method

.method public getFollowFeed()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->followfeed:I

    return v0
.end method

.method public getFollowers()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->followers:I

    return v0
.end method

.method public getFollowings()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->followings:I

    return v0
.end method

.method public getFriend()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->friend:I

    return v0
.end method

.method public getIsSign()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->isSign:I

    return v0
.end method

.method public getOuBi()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->oubi:I

    return v0
.end method

.method public getPackRemind()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->pack_remind:I

    return v0
.end method

.method public getPackReply()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->pack_reply:I

    return v0
.end method

.method public getReplyCount()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->reply_count:I

    return v0
.end method

.method public getSignDays()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->signDays:I

    return v0
.end method

.method public getSignLasted()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->signLasted:I

    return v0
.end method

.method public getSquareRemind()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->square_remind:I

    return v0
.end method

.method public getVisitor()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->visitor:I

    return v0
.end method

.method public getYinfu()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->yinfu:I

    return v0
.end method

.method public setCollCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->coll_count:I

    .line 91
    return-void
.end method

.method public setFlag(J)V
    .locals 1
    .param p1, "flag"    # J

    .prologue
    .line 106
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->flag:J

    .line 107
    return-void
.end method

.method public setFollowFeed(I)V
    .locals 0
    .param p1, "feed"    # I

    .prologue
    .line 114
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->followfeed:I

    .line 115
    return-void
.end method

.method public setFollowers(I)V
    .locals 0
    .param p1, "followers"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->followers:I

    .line 123
    return-void
.end method

.method public setFollowings(I)V
    .locals 0
    .param p1, "followings"    # I

    .prologue
    .line 130
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->followings:I

    .line 131
    return-void
.end method

.method public setFriend(I)V
    .locals 0
    .param p1, "friend"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->friend:I

    .line 43
    return-void
.end method

.method public setIsSign(I)V
    .locals 0
    .param p1, "isSign"    # I

    .prologue
    .line 162
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->isSign:I

    .line 163
    return-void
.end method

.method public setOuBi(I)V
    .locals 0
    .param p1, "oubi"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->oubi:I

    .line 99
    return-void
.end method

.method public setPackRemind(I)V
    .locals 0
    .param p1, "remind"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->pack_remind:I

    .line 67
    return-void
.end method

.method public setPackReply(I)V
    .locals 0
    .param p1, "reply"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->pack_reply:I

    .line 75
    return-void
.end method

.method public setReplyCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->reply_count:I

    .line 83
    return-void
.end method

.method public setSignDays(I)V
    .locals 0
    .param p1, "signDays"    # I

    .prologue
    .line 146
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->signDays:I

    .line 147
    return-void
.end method

.method public setSignLasted(I)V
    .locals 0
    .param p1, "signLasted"    # I

    .prologue
    .line 154
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->signLasted:I

    .line 155
    return-void
.end method

.method public setSquareRemind(I)V
    .locals 0
    .param p1, "remind"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->square_remind:I

    .line 59
    return-void
.end method

.method public setVisitor(I)V
    .locals 0
    .param p1, "visitor"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->visitor:I

    .line 51
    return-void
.end method

.method public setYinfu(I)V
    .locals 0
    .param p1, "yinfu"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/RemindCountEntity;->yinfu:I

    .line 139
    return-void
.end method
