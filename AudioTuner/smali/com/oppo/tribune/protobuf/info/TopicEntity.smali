.class public Lcom/oppo/tribune/protobuf/info/TopicEntity;
.super Ljava/lang/Object;
.source "TopicEntity.java"


# instance fields
.field private desc:Ljava/lang/String;

.field private id:J

.field private page:I

.field private pic:Ljava/lang/String;

.field private pic1:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/info/TopicEntity;->id:J

    .line 34
    iput-object p3, p0, Lcom/oppo/tribune/protobuf/info/TopicEntity;->title:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/info/TopicEntity;
    .locals 3
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 92
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/oppo/tribune/protobuf/info/TopicEntity;

    invoke-virtual {v1, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/tribune/protobuf/info/TopicEntity;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-object v1

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Lcom/google/gson/JsonSyntaxException;
    invoke-virtual {v0}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    .line 96
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static toJson(Lcom/oppo/tribune/protobuf/info/TopicEntity;)Ljava/lang/String;
    .locals 1
    .param p0, "obj"    # Lcom/oppo/tribune/protobuf/info/TopicEntity;

    .prologue
    .line 86
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/info/TopicEntity;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/info/TopicEntity;->id:J

    return-wide v0
.end method

.method public getPage()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/TopicEntity;->page:I

    return v0
.end method

.method public getPic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/info/TopicEntity;->pic:Ljava/lang/String;

    return-object v0
.end method

.method public getPic1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/info/TopicEntity;->pic1:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/info/TopicEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/info/TopicEntity;->desc:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/info/TopicEntity;->id:J

    .line 43
    return-void
.end method

.method public setPage(I)V
    .locals 0
    .param p1, "page"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/TopicEntity;->page:I

    .line 83
    return-void
.end method

.method public setPic(Ljava/lang/String;)V
    .locals 0
    .param p1, "pic"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/info/TopicEntity;->pic:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setPic1(Ljava/lang/String;)V
    .locals 0
    .param p1, "pic"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/info/TopicEntity;->pic1:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/info/TopicEntity;->title:Ljava/lang/String;

    .line 51
    return-void
.end method
