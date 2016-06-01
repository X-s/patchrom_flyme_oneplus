.class public Lcom/oppo/tribune/parse/UserCollPost;
.super Ljava/lang/Object;
.source "UserCollPost.java"


# instance fields
.field private dateline:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private dtitle:Ljava/lang/String;

.field private durl:Ljava/lang/String;

.field private page:I

.field private title:Ljava/lang/String;

.field private uid:J

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "uid"    # J

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-wide p1, p0, Lcom/oppo/tribune/parse/UserCollPost;->uid:J

    .line 40
    return-void
.end method


# virtual methods
.method public getDateline()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oppo/tribune/parse/UserCollPost;->dateline:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oppo/tribune/parse/UserCollPost;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/oppo/tribune/parse/UserCollPost;->dtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getDurl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/oppo/tribune/parse/UserCollPost;->durl:Ljava/lang/String;

    return-object v0
.end method

.method public getPage()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/oppo/tribune/parse/UserCollPost;->page:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/oppo/tribune/parse/UserCollPost;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/oppo/tribune/parse/UserCollPost;->uid:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/oppo/tribune/parse/UserCollPost;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setDateline(Ljava/lang/String;)V
    .locals 0
    .param p1, "dateline"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/oppo/tribune/parse/UserCollPost;->dateline:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/oppo/tribune/parse/UserCollPost;->description:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setDtitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "dtitle"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/oppo/tribune/parse/UserCollPost;->dtitle:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setDurl(Ljava/lang/String;)V
    .locals 0
    .param p1, "durl"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/oppo/tribune/parse/UserCollPost;->durl:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setPage(I)V
    .locals 0
    .param p1, "page"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/oppo/tribune/parse/UserCollPost;->page:I

    .line 48
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/oppo/tribune/parse/UserCollPost;->title:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setUid(J)V
    .locals 1
    .param p1, "uid"    # J

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/oppo/tribune/parse/UserCollPost;->uid:J

    .line 56
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/oppo/tribune/parse/UserCollPost;->url:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    invoke-static {p0}, Lcom/oppo/tribune/util/Utils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
