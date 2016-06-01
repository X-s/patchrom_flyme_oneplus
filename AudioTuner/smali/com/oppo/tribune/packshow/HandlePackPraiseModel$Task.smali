.class Lcom/oppo/tribune/packshow/HandlePackPraiseModel$Task;
.super Landroid/os/AsyncTask;
.source "HandlePackPraiseModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/packshow/HandlePackPraiseModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mConfigId:J

.field private mDescription:Ljava/lang/String;

.field private mIsCancel:Z

.field private mIsRunning:Z

.field private mMsgcode:I

.field final synthetic this$0:Lcom/oppo/tribune/packshow/HandlePackPraiseModel;


# direct methods
.method public constructor <init>(Lcom/oppo/tribune/packshow/HandlePackPraiseModel;J)V
    .locals 4
    .param p2, "configId"    # J

    .prologue
    const/4 v2, 0x0

    .line 53
    iput-object p1, p0, Lcom/oppo/tribune/packshow/HandlePackPraiseModel$Task;->this$0:Lcom/oppo/tribune/packshow/HandlePackPraiseModel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 47
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oppo/tribune/packshow/HandlePackPraiseModel$Task;->mConfigId:J

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/tribune/packshow/HandlePackPraiseModel$Task;->mMsgcode:I

    .line 50
    iput-boolean v2, p0, Lcom/oppo/tribune/packshow/HandlePackPraiseModel$Task;->mIsCancel:Z

    .line 51
    iput-boolean v2, p0, Lcom/oppo/tribune/packshow/HandlePackPraiseModel$Task;->mIsRunning:Z

    .line 54
    iput-wide p2, p0, Lcom/oppo/tribune/packshow/HandlePackPraiseModel$Task;->mConfigId:J

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/tribune/packshow/HandlePackPraiseModel$Task;->mIsRunning:Z

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/tribune/packshow/HandlePackPraiseModel$Task;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/packshow/HandlePackPraiseModel$Task;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/oppo/tribune/packshow/HandlePackPraiseModel$Task;->mIsRunning:Z

    return v0
.end method


# virtual methods
.method public cancelTask()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 92
    iput-boolean v1, p0, Lcom/oppo/tribune/packshow/HandlePackPraiseModel$Task;->mIsCancel:Z

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/tribune/packshow/HandlePackPraiseModel$Task;->mIsRunning:Z

    .line 94
    invoke-virtual {p0, v1}, Lcom/oppo/tribune/packshow/HandlePackPraiseModel$Task;->cancel(Z)Z

    .line 95
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 46
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/packshow/HandlePackPraiseModel$Task;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "result":Lcom/oppo/tribune/packshow/parse/HandlePackPraiseResult;
    iget-boolean v1, p0, Lcom/oppo/tribune/packshow/HandlePackPraiseModel$Task;->mIsCancel:Z

    if-nez v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/oppo/tribune/packshow/HandlePackPraiseModel$Task;->this$0:Lcom/oppo/tribune/packshow/HandlePackPraiseModel;

    # getter for: Lcom/oppo/tribune/packshow/HandlePackPraiseModel;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/oppo/tribune/packshow/HandlePackPraiseModel;->access$200(Lcom/oppo/tribune/packshow/HandlePackPraiseModel;)Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p0, Lcom/oppo/tribune/packshow/HandlePackPraiseModel$Task;->mConfigId:J

    invoke-static {v1, v2, v3}, Lcom/oppo/tribune/packshow/parse/HandlePackPraiseResult;->parse(Landroid/content/Context;J)Lcom/oppo/tribune/packshow/parse/HandlePackPraiseResult;

    move-result-object v0

    .line 72
    :cond_0
    if-nez v0, :cond_1

    .line 73
    const/4 v1, -0x1

    iput v1, p0, Lcom/oppo/tribune/packshow/HandlePackPraiseModel$Task;->mMsgcode:I

    .line 74
    const-string v1, "HandlePraiseResult.praise.error"

    iput-object v1, p0, Lcom/oppo/tribune/packshow/HandlePackPraiseModel$Task;->mDescription:Ljava/lang/String;

    .line 79
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 76
    :cond_1
    invoke-virtual {v0}, Lcom/oppo/tribune/packshow/parse/HandlePackPraiseResult;->getMsgcode()I

    move-result v1

    iput v1, p0, Lcom/oppo/tribune/packshow/HandlePackPraiseModel$Task;->mMsgcode:I

    .line 77
    invoke-virtual {v0}, Lcom/oppo/tribune/packshow/parse/HandlePackPraiseResult;->getDescription()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/tribune/packshow/HandlePackPraiseModel$Task;->mDescription:Ljava/lang/String;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 46
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/packshow/HandlePackPraiseModel$Task;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/tribune/packshow/HandlePackPraiseModel$Task;->mIsRunning:Z

    .line 86
    iget-object v0, p0, Lcom/oppo/tribune/packshow/HandlePackPraiseModel$Task;->this$0:Lcom/oppo/tribune/packshow/HandlePackPraiseModel;

    # getter for: Lcom/oppo/tribune/packshow/HandlePackPraiseModel;->mPraiseListener:Lcom/oppo/tribune/packshow/HandlePraiseModel$OnPraiseFinishListener;
    invoke-static {v0}, Lcom/oppo/tribune/packshow/HandlePackPraiseModel;->access$100(Lcom/oppo/tribune/packshow/HandlePackPraiseModel;)Lcom/oppo/tribune/packshow/HandlePraiseModel$OnPraiseFinishListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/tribune/packshow/HandlePackPraiseModel$Task;->mIsCancel:Z

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/oppo/tribune/packshow/HandlePackPraiseModel$Task;->this$0:Lcom/oppo/tribune/packshow/HandlePackPraiseModel;

    iget v1, p0, Lcom/oppo/tribune/packshow/HandlePackPraiseModel$Task;->mMsgcode:I

    iget-object v2, p0, Lcom/oppo/tribune/packshow/HandlePackPraiseModel$Task;->mDescription:Ljava/lang/String;

    # invokes: Lcom/oppo/tribune/packshow/HandlePackPraiseModel;->onFinishPraise(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/oppo/tribune/packshow/HandlePackPraiseModel;->access$300(Lcom/oppo/tribune/packshow/HandlePackPraiseModel;ILjava/lang/String;)V

    .line 89
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 61
    iget-boolean v0, p0, Lcom/oppo/tribune/packshow/HandlePackPraiseModel$Task;->mIsCancel:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/tribune/packshow/HandlePackPraiseModel$Task;->this$0:Lcom/oppo/tribune/packshow/HandlePackPraiseModel;

    # getter for: Lcom/oppo/tribune/packshow/HandlePackPraiseModel;->mPraiseListener:Lcom/oppo/tribune/packshow/HandlePraiseModel$OnPraiseFinishListener;
    invoke-static {v0}, Lcom/oppo/tribune/packshow/HandlePackPraiseModel;->access$100(Lcom/oppo/tribune/packshow/HandlePackPraiseModel;)Lcom/oppo/tribune/packshow/HandlePraiseModel$OnPraiseFinishListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/oppo/tribune/packshow/HandlePackPraiseModel$Task;->this$0:Lcom/oppo/tribune/packshow/HandlePackPraiseModel;

    # getter for: Lcom/oppo/tribune/packshow/HandlePackPraiseModel;->mPraiseListener:Lcom/oppo/tribune/packshow/HandlePraiseModel$OnPraiseFinishListener;
    invoke-static {v0}, Lcom/oppo/tribune/packshow/HandlePackPraiseModel;->access$100(Lcom/oppo/tribune/packshow/HandlePackPraiseModel;)Lcom/oppo/tribune/packshow/HandlePraiseModel$OnPraiseFinishListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/tribune/packshow/HandlePraiseModel$OnPraiseFinishListener;->onStartPraise()V

    .line 64
    :cond_0
    return-void
.end method
