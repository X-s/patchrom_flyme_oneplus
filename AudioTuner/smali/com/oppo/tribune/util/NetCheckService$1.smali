.class Lcom/oppo/tribune/util/NetCheckService$1;
.super Landroid/content/BroadcastReceiver;
.source "NetCheckService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/util/NetCheckService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/tribune/util/NetCheckService;


# direct methods
.method constructor <init>(Lcom/oppo/tribune/util/NetCheckService;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/oppo/tribune/util/NetCheckService$1;->this$0:Lcom/oppo/tribune/util/NetCheckService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 183
    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 185
    new-instance v2, Lcom/oppo/tribune/util/NetWorkService;

    invoke-direct {v2, p1}, Lcom/oppo/tribune/util/NetWorkService;-><init>(Landroid/content/Context;)V

    .line 187
    .local v2, "networkService":Lcom/oppo/tribune/util/NetWorkService;
    invoke-virtual {v2}, Lcom/oppo/tribune/util/NetWorkService;->isMobileActive()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 191
    iget-object v5, p0, Lcom/oppo/tribune/util/NetCheckService$1;->this$0:Lcom/oppo/tribune/util/NetCheckService;

    # invokes: Lcom/oppo/tribune/util/NetCheckService;->warnWapNet(Lcom/oppo/tribune/util/NetWorkService;)V
    invoke-static {v5, v2}, Lcom/oppo/tribune/util/NetCheckService;->access$000(Lcom/oppo/tribune/util/NetCheckService;Lcom/oppo/tribune/util/NetWorkService;)V

    .line 196
    iget-object v5, p0, Lcom/oppo/tribune/util/NetCheckService$1;->this$0:Lcom/oppo/tribune/util/NetCheckService;

    # getter for: Lcom/oppo/tribune/util/NetCheckService;->mDao:Lcom/oppo/tribune/provider/forum/dao/UserSignInRecordDao;
    invoke-static {v5}, Lcom/oppo/tribune/util/NetCheckService;->access$100(Lcom/oppo/tribune/util/NetCheckService;)Lcom/oppo/tribune/provider/forum/dao/UserSignInRecordDao;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oppo/tribune/provider/forum/dao/UserSignInRecordDao;->size()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/oppo/tribune/util/NetCheckService$1;->this$0:Lcom/oppo/tribune/util/NetCheckService;

    # getter for: Lcom/oppo/tribune/util/NetCheckService;->mIsFristIn:Z
    invoke-static {v5}, Lcom/oppo/tribune/util/NetCheckService;->access$200(Lcom/oppo/tribune/util/NetCheckService;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 197
    iget-object v5, p0, Lcom/oppo/tribune/util/NetCheckService$1;->this$0:Lcom/oppo/tribune/util/NetCheckService;

    # getter for: Lcom/oppo/tribune/util/NetCheckService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/oppo/tribune/util/NetCheckService;->access$400(Lcom/oppo/tribune/util/NetCheckService;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/oppo/tribune/util/NetCheckService$1;->this$0:Lcom/oppo/tribune/util/NetCheckService;

    # getter for: Lcom/oppo/tribune/util/NetCheckService;->mSignInTask:Ljava/lang/Runnable;
    invoke-static {v6}, Lcom/oppo/tribune/util/NetCheckService;->access$300(Lcom/oppo/tribune/util/NetCheckService;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 198
    iget-object v5, p0, Lcom/oppo/tribune/util/NetCheckService$1;->this$0:Lcom/oppo/tribune/util/NetCheckService;

    # getter for: Lcom/oppo/tribune/util/NetCheckService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/oppo/tribune/util/NetCheckService;->access$400(Lcom/oppo/tribune/util/NetCheckService;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/oppo/tribune/util/NetCheckService$1;->this$0:Lcom/oppo/tribune/util/NetCheckService;

    # getter for: Lcom/oppo/tribune/util/NetCheckService;->mSignInTask:Ljava/lang/Runnable;
    invoke-static {v6}, Lcom/oppo/tribune/util/NetCheckService;->access$300(Lcom/oppo/tribune/util/NetCheckService;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 206
    :cond_0
    :goto_0
    invoke-static {}, Lcom/oppo/tribune/CommunityApplication;->resetStatNetWorkinfo()V

    .line 207
    iget-object v5, p0, Lcom/oppo/tribune/util/NetCheckService$1;->this$0:Lcom/oppo/tribune/util/NetCheckService;

    invoke-static {v5}, Lcom/oppo/tribune/util/HttpUtils;->getHumanNetworkType(Landroid/content/Context;)I

    move-result v4

    .line 209
    .local v4, "type":I
    iget-object v5, p0, Lcom/oppo/tribune/util/NetCheckService$1;->this$0:Lcom/oppo/tribune/util/NetCheckService;

    # invokes: Lcom/oppo/tribune/util/NetCheckService;->trackType(I)V
    invoke-static {v5, v4}, Lcom/oppo/tribune/util/NetCheckService;->access$500(Lcom/oppo/tribune/util/NetCheckService;I)V

    .line 219
    .end local v2    # "networkService":Lcom/oppo/tribune/util/NetWorkService;
    .end local v4    # "type":I
    :cond_1
    :goto_1
    return-void

    .line 204
    .restart local v2    # "networkService":Lcom/oppo/tribune/util/NetWorkService;
    :cond_2
    iget-object v5, p0, Lcom/oppo/tribune/util/NetCheckService$1;->this$0:Lcom/oppo/tribune/util/NetCheckService;

    # getter for: Lcom/oppo/tribune/util/NetCheckService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/oppo/tribune/util/NetCheckService;->access$400(Lcom/oppo/tribune/util/NetCheckService;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/oppo/tribune/util/NetCheckService$1;->this$0:Lcom/oppo/tribune/util/NetCheckService;

    # getter for: Lcom/oppo/tribune/util/NetCheckService;->mSignInTask:Ljava/lang/Runnable;
    invoke-static {v6}, Lcom/oppo/tribune/util/NetCheckService;->access$300(Lcom/oppo/tribune/util/NetCheckService;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 210
    .end local v2    # "networkService":Lcom/oppo/tribune/util/NetWorkService;
    :cond_3
    const-string v5, "com.oppo.usercenter.modify.name"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/oppo/tribune/util/NetCheckService$1;->this$0:Lcom/oppo/tribune/util/NetCheckService;

    # invokes: Lcom/oppo/tribune/util/NetCheckService;->checkIsCurrentUserModified()Z
    invoke-static {v5}, Lcom/oppo/tribune/util/NetCheckService;->access$600(Lcom/oppo/tribune/util/NetCheckService;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 212
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 213
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 214
    const-string v5, "UserName"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "modifiedName":Ljava/lang/String;
    const-string v5, "OldUserName"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, "oldUserName":Ljava/lang/String;
    iget-object v5, p0, Lcom/oppo/tribune/util/NetCheckService$1;->this$0:Lcom/oppo/tribune/util/NetCheckService;

    # invokes: Lcom/oppo/tribune/util/NetCheckService;->doCurrentUserModify(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v1, v3}, Lcom/oppo/tribune/util/NetCheckService;->access$700(Lcom/oppo/tribune/util/NetCheckService;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
