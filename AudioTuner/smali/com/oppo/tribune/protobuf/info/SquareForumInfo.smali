.class public Lcom/oppo/tribune/protobuf/info/SquareForumInfo;
.super Ljava/lang/Object;
.source "SquareForumInfo.java"


# static fields
.field public static final FORUM_TYPE_OTHER:I = 0x0

.field public static final FORUM_TYPE_PHONEOTHER:I = 0x3

.field public static final FORUM_TYPE_PHONETYPE:I = 0x2

.field public static final FORUM_TYPE_TOPICS:I = 0x1


# instance fields
.field private desc:Ljava/lang/String;

.field private id:I

.field private ispost:Z

.field private mobile:Ljava/lang/String;

.field private pic:Ljava/lang/String;

.field private position:I

.field private rid:J

.field private title:Ljava/lang/String;

.field private topic:Ljava/lang/String;

.field private topicid:I

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/info/SquareForumInfo;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/SquareForumInfo;->id:I

    return v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/info/SquareForumInfo;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getPic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/info/SquareForumInfo;->pic:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/SquareForumInfo;->position:I

    return v0
.end method

.method public getRid()J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/info/SquareForumInfo;->rid:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/info/SquareForumInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/info/SquareForumInfo;->topic:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicid()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/SquareForumInfo;->topicid:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/SquareForumInfo;->type:I

    return v0
.end method

.method public isIspost()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/oppo/tribune/protobuf/info/SquareForumInfo;->ispost:Z

    return v0
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/info/SquareForumInfo;->desc:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/SquareForumInfo;->id:I

    .line 39
    return-void
.end method

.method public setIspost(Z)V
    .locals 0
    .param p1, "ispost"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/oppo/tribune/protobuf/info/SquareForumInfo;->ispost:Z

    .line 103
    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0
    .param p1, "mobile"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/info/SquareForumInfo;->mobile:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setPic(Ljava/lang/String;)V
    .locals 0
    .param p1, "pic"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/info/SquareForumInfo;->pic:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/SquareForumInfo;->position:I

    .line 117
    return-void
.end method

.method public setRid(J)V
    .locals 1
    .param p1, "rid"    # J

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/info/SquareForumInfo;->rid:J

    .line 47
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/info/SquareForumInfo;->title:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setTopic(Ljava/lang/String;)V
    .locals 0
    .param p1, "topic"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/info/SquareForumInfo;->topic:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setTopicid(I)V
    .locals 0
    .param p1, "topicid"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/SquareForumInfo;->topicid:I

    .line 63
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/SquareForumInfo;->type:I

    .line 55
    return-void
.end method
