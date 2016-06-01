.class public Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;
.super Ljava/lang/Object;
.source "HandlePackLoadAndUseModel.java"

# interfaces
.implements Lcom/oppo/tribune/packshow/HandleLoadAndUseModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel$Task;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mTaskLoad:Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel$Task;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method static synthetic access$100(Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public cancelHandle()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;->mTaskLoad:Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel$Task;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;->mTaskLoad:Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel$Task;

    invoke-virtual {v0}, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel$Task;->cancelTask()V

    .line 54
    :cond_0
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;->mTaskLoad:Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel$Task;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;->mTaskLoad:Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel$Task;

    # getter for: Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel$Task;->mIsRunning:Z
    invoke-static {v0}, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel$Task;->access$000(Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel$Task;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startLoad(Landroid/os/Handler;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "entity"    # Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;->mHandler:Landroid/os/Handler;

    .line 46
    new-instance v0, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel$Task;

    invoke-direct {v0, p0, p2}, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel$Task;-><init>(Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)V

    iput-object v0, p0, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;->mTaskLoad:Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel$Task;

    .line 47
    iget-object v0, p0, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;->mTaskLoad:Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel$Task;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel$Task;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 48
    return-void
.end method

.method public startLoad(Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)V
    .locals 2
    .param p1, "entity"    # Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    .prologue
    .line 39
    new-instance v0, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel$Task;

    invoke-direct {v0, p0, p1}, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel$Task;-><init>(Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)V

    iput-object v0, p0, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;->mTaskLoad:Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel$Task;

    .line 40
    iget-object v0, p0, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;->mTaskLoad:Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel$Task;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel$Task;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 41
    return-void
.end method
