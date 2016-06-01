.class Lcom/oppo/music/manager/AsyncRequestManager$1;
.super Ljava/lang/Object;
.source "AsyncRequestManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/music/manager/AsyncRequestManager;->request(Lcom/oppo/music/manager/Request;Lcom/oppo/music/manager/AsyncRequestManager$AsyncRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/music/manager/AsyncRequestManager;

.field final synthetic val$listener:Lcom/oppo/music/manager/AsyncRequestManager$AsyncRequestListener;

.field final synthetic val$request:Lcom/oppo/music/manager/Request;


# direct methods
.method constructor <init>(Lcom/oppo/music/manager/AsyncRequestManager;Lcom/oppo/music/manager/Request;Lcom/oppo/music/manager/AsyncRequestManager$AsyncRequestListener;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/oppo/music/manager/AsyncRequestManager$1;->this$0:Lcom/oppo/music/manager/AsyncRequestManager;

    iput-object p2, p0, Lcom/oppo/music/manager/AsyncRequestManager$1;->val$request:Lcom/oppo/music/manager/Request;

    iput-object p3, p0, Lcom/oppo/music/manager/AsyncRequestManager$1;->val$listener:Lcom/oppo/music/manager/AsyncRequestManager$AsyncRequestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 99
    iget-object v3, p0, Lcom/oppo/music/manager/AsyncRequestManager$1;->val$request:Lcom/oppo/music/manager/Request;

    invoke-virtual {v3}, Lcom/oppo/music/manager/Request;->execute()V

    .line 100
    iget-object v3, p0, Lcom/oppo/music/manager/AsyncRequestManager$1;->this$0:Lcom/oppo/music/manager/AsyncRequestManager;

    # getter for: Lcom/oppo/music/manager/AsyncRequestManager;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/oppo/music/manager/AsyncRequestManager;->access$100(Lcom/oppo/music/manager/AsyncRequestManager;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 101
    :try_start_0
    iget-object v3, p0, Lcom/oppo/music/manager/AsyncRequestManager$1;->this$0:Lcom/oppo/music/manager/AsyncRequestManager;

    # getter for: Lcom/oppo/music/manager/AsyncRequestManager;->mBlocked:Z
    invoke-static {v3}, Lcom/oppo/music/manager/AsyncRequestManager;->access$200(Lcom/oppo/music/manager/AsyncRequestManager;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    :try_start_1
    iget-object v3, p0, Lcom/oppo/music/manager/AsyncRequestManager$1;->this$0:Lcom/oppo/music/manager/AsyncRequestManager;

    # getter for: Lcom/oppo/music/manager/AsyncRequestManager;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/oppo/music/manager/AsyncRequestManager;->access$100(Lcom/oppo/music/manager/AsyncRequestManager;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    new-instance v2, Lcom/oppo/music/manager/AsyncRequestManager$RequestWrap;

    iget-object v3, p0, Lcom/oppo/music/manager/AsyncRequestManager$1;->this$0:Lcom/oppo/music/manager/AsyncRequestManager;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/oppo/music/manager/AsyncRequestManager$RequestWrap;-><init>(Lcom/oppo/music/manager/AsyncRequestManager;Lcom/oppo/music/manager/AsyncRequestManager$1;)V

    .line 112
    .local v2, "wrap":Lcom/oppo/music/manager/AsyncRequestManager$RequestWrap;
    iget-object v3, p0, Lcom/oppo/music/manager/AsyncRequestManager$1;->val$request:Lcom/oppo/music/manager/Request;

    iput-object v3, v2, Lcom/oppo/music/manager/AsyncRequestManager$RequestWrap;->mRequest:Lcom/oppo/music/manager/Request;

    .line 113
    iget-object v3, p0, Lcom/oppo/music/manager/AsyncRequestManager$1;->val$listener:Lcom/oppo/music/manager/AsyncRequestManager$AsyncRequestListener;

    iput-object v3, v2, Lcom/oppo/music/manager/AsyncRequestManager$RequestWrap;->mListener:Lcom/oppo/music/manager/AsyncRequestManager$AsyncRequestListener;

    .line 114
    iget-object v3, p0, Lcom/oppo/music/manager/AsyncRequestManager$1;->this$0:Lcom/oppo/music/manager/AsyncRequestManager;

    # getter for: Lcom/oppo/music/manager/AsyncRequestManager;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/oppo/music/manager/AsyncRequestManager;->access$400(Lcom/oppo/music/manager/AsyncRequestManager;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 115
    .local v1, "msg":Landroid/os/Message;
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 116
    iget-object v3, p0, Lcom/oppo/music/manager/AsyncRequestManager$1;->this$0:Lcom/oppo/music/manager/AsyncRequestManager;

    # getter for: Lcom/oppo/music/manager/AsyncRequestManager;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/oppo/music/manager/AsyncRequestManager;->access$400(Lcom/oppo/music/manager/AsyncRequestManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 117
    return-void

    .line 104
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "wrap":Lcom/oppo/music/manager/AsyncRequestManager$RequestWrap;
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "AsyncRequestManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "request() has been interrupted! thread="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/oppo/music/utils/MyLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 109
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method
