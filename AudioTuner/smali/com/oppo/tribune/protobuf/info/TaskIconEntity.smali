.class public Lcom/oppo/tribune/protobuf/info/TaskIconEntity;
.super Ljava/lang/Object;
.source "TaskIconEntity.java"


# instance fields
.field private iconUrl:Ljava/lang/String;

.field private id:J

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/info/TaskIconEntity;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/info/TaskIconEntity;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/info/TaskIconEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "iconUrl"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/info/TaskIconEntity;->iconUrl:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/info/TaskIconEntity;->id:J

    .line 31
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/info/TaskIconEntity;->name:Ljava/lang/String;

    .line 39
    return-void
.end method
