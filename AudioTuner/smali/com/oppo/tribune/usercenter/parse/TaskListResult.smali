.class public Lcom/oppo/tribune/usercenter/parse/TaskListResult;
.super Ljava/lang/Object;
.source "TaskListResult.java"


# instance fields
.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/TaskItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/TaskItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/TaskItemInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/oppo/tribune/usercenter/parse/TaskListResult;->mList:Ljava/util/List;

    .line 26
    return-void
.end method

.method private static getServerUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public static parse(Landroid/content/Context;)Lcom/oppo/tribune/usercenter/parse/TaskListResult;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    new-instance v0, Lcom/oppo/tribune/usercenter/parse/TaskListResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oppo/tribune/usercenter/parse/TaskListResult;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public getTaskList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/TaskItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/parse/TaskListResult;->mList:Ljava/util/List;

    return-object v0
.end method
