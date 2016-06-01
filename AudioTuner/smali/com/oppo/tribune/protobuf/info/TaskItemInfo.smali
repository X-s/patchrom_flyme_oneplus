.class public Lcom/oppo/tribune/protobuf/info/TaskItemInfo;
.super Ljava/lang/Object;
.source "TaskItemInfo.java"


# instance fields
.field private id:I

.field private reward:Ljava/lang/String;

.field private sate:I

.field private summary:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "summary"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/info/TaskItemInfo;->title:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/oppo/tribune/protobuf/info/TaskItemInfo;->summary:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/info/TaskItemInfo;
    .locals 3
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 81
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/oppo/tribune/protobuf/info/TaskItemInfo;

    invoke-virtual {v1, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/tribune/protobuf/info/TaskItemInfo;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-object v1

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Lcom/google/gson/JsonSyntaxException;
    invoke-virtual {v0}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    .line 85
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static toJson(Lcom/oppo/tribune/protobuf/info/TaskItemInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "info"    # Lcom/oppo/tribune/protobuf/info/TaskItemInfo;

    .prologue
    .line 94
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/TaskItemInfo;->id:I

    return v0
.end method

.method public getReward()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/info/TaskItemInfo;->reward:Ljava/lang/String;

    return-object v0
.end method

.method public getSate()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/TaskItemInfo;->sate:I

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/info/TaskItemInfo;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/info/TaskItemInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/info/TaskItemInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/TaskItemInfo;->id:I

    .line 37
    return-void
.end method

.method public setReward(Ljava/lang/String;)V
    .locals 0
    .param p1, "reward"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/info/TaskItemInfo;->reward:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setSate(I)V
    .locals 0
    .param p1, "sate"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/TaskItemInfo;->sate:I

    .line 69
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/info/TaskItemInfo;->summary:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/info/TaskItemInfo;->title:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/info/TaskItemInfo;->url:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/info/TaskItemInfo;->toJson(Lcom/oppo/tribune/protobuf/info/TaskItemInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
