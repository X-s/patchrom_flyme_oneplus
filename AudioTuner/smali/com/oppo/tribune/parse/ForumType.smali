.class public Lcom/oppo/tribune/parse/ForumType;
.super Ljava/lang/Object;
.source "ForumType.java"


# instance fields
.field private mForumId:J

.field private mForumName:Ljava/lang/String;

.field private mGroupId:I

.field private mSubForumId:J

.field private mSubForumName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static available(Lcom/oppo/tribune/parse/ForumType;)Z
    .locals 7
    .param p0, "item"    # Lcom/oppo/tribune/parse/ForumType;

    .prologue
    const/16 v6, 0x81

    const/4 v0, 0x0

    .line 75
    if-nez p0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v0

    .line 87
    :cond_1
    iget v1, p0, Lcom/oppo/tribune/parse/ForumType;->mGroupId:I

    if-ne v1, v6, :cond_2

    iget-wide v2, p0, Lcom/oppo/tribune/parse/ForumType;->mForumId:J

    const-wide/16 v4, 0x75

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 94
    :cond_2
    iget v1, p0, Lcom/oppo/tribune/parse/ForumType;->mGroupId:I

    if-ne v1, v6, :cond_3

    iget-wide v2, p0, Lcom/oppo/tribune/parse/ForumType;->mForumId:J

    const-wide/16 v4, 0x89

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 101
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getForumId()J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/oppo/tribune/parse/ForumType;->mForumId:J

    return-wide v0
.end method

.method public getForumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/oppo/tribune/parse/ForumType;->mForumName:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/oppo/tribune/parse/ForumType;->mGroupId:I

    return v0
.end method

.method public getSubForumId()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/oppo/tribune/parse/ForumType;->mSubForumId:J

    return-wide v0
.end method

.method public getSubForumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/oppo/tribune/parse/ForumType;->mSubForumName:Ljava/lang/String;

    return-object v0
.end method

.method public setForumId(J)V
    .locals 1
    .param p1, "forumId"    # J

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/oppo/tribune/parse/ForumType;->mForumId:J

    .line 43
    return-void
.end method

.method public setForumName(Ljava/lang/String;)V
    .locals 0
    .param p1, "forumName"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/oppo/tribune/parse/ForumType;->mForumName:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setGroupId(I)V
    .locals 0
    .param p1, "groupId"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/oppo/tribune/parse/ForumType;->mGroupId:I

    .line 35
    return-void
.end method

.method public setSubForumId(J)V
    .locals 1
    .param p1, "subForumId"    # J

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/oppo/tribune/parse/ForumType;->mSubForumId:J

    .line 51
    return-void
.end method

.method public setSubForumName(Ljava/lang/String;)V
    .locals 0
    .param p1, "subForumName"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/oppo/tribune/parse/ForumType;->mSubForumName:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
