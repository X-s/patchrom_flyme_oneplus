.class Lcom/oppo/tribune/util/NetCheckService$4$1;
.super Ljava/lang/Object;
.source "NetCheckService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/tribune/util/NetCheckService$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oppo/tribune/util/NetCheckService$4;


# direct methods
.method constructor <init>(Lcom/oppo/tribune/util/NetCheckService$4;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/oppo/tribune/util/NetCheckService$4$1;->this$1:Lcom/oppo/tribune/util/NetCheckService$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 338
    iget-object v2, p0, Lcom/oppo/tribune/util/NetCheckService$4$1;->this$1:Lcom/oppo/tribune/util/NetCheckService$4;

    iget-object v2, v2, Lcom/oppo/tribune/util/NetCheckService$4;->this$0:Lcom/oppo/tribune/util/NetCheckService;

    const/4 v3, 0x1

    # invokes: Lcom/oppo/tribune/util/NetCheckService;->changeLoginState(Z)V
    invoke-static {v2, v3}, Lcom/oppo/tribune/util/NetCheckService;->access$900(Lcom/oppo/tribune/util/NetCheckService;Z)V

    .line 339
    iget-object v2, p0, Lcom/oppo/tribune/util/NetCheckService$4$1;->this$1:Lcom/oppo/tribune/util/NetCheckService$4;

    iget-object v2, v2, Lcom/oppo/tribune/util/NetCheckService$4;->this$0:Lcom/oppo/tribune/util/NetCheckService;

    # getter for: Lcom/oppo/tribune/util/NetCheckService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/oppo/tribune/util/NetCheckService;->access$800(Lcom/oppo/tribune/util/NetCheckService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/oppo/tribune/LoginUtils;->getAutoSignInUserId(Landroid/content/Context;)J

    move-result-wide v0

    .line 341
    .local v0, "userId":J
    cmp-long v2, v0, v6

    if-lez v2, :cond_1

    .line 342
    iget-object v2, p0, Lcom/oppo/tribune/util/NetCheckService$4$1;->this$1:Lcom/oppo/tribune/util/NetCheckService$4;

    iget-object v2, v2, Lcom/oppo/tribune/util/NetCheckService$4;->this$0:Lcom/oppo/tribune/util/NetCheckService;

    # getter for: Lcom/oppo/tribune/util/NetCheckService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/oppo/tribune/util/NetCheckService;->access$800(Lcom/oppo/tribune/util/NetCheckService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/oppo/tribune/LoginUtils;->whenSignInSuccess(Landroid/content/Context;J)V

    .line 350
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/oppo/tribune/util/NetCheckService$4$1;->this$1:Lcom/oppo/tribune/util/NetCheckService$4;

    iget-object v2, v2, Lcom/oppo/tribune/util/NetCheckService$4;->this$0:Lcom/oppo/tribune/util/NetCheckService;

    # setter for: Lcom/oppo/tribune/util/NetCheckService;->mIsFristIn:Z
    invoke-static {v2, v4}, Lcom/oppo/tribune/util/NetCheckService;->access$202(Lcom/oppo/tribune/util/NetCheckService;Z)Z

    .line 351
    iget-object v2, p0, Lcom/oppo/tribune/util/NetCheckService$4$1;->this$1:Lcom/oppo/tribune/util/NetCheckService$4;

    iget-object v2, v2, Lcom/oppo/tribune/util/NetCheckService$4;->this$0:Lcom/oppo/tribune/util/NetCheckService;

    # invokes: Lcom/oppo/tribune/util/NetCheckService;->changeLoginState(Z)V
    invoke-static {v2, v4}, Lcom/oppo/tribune/util/NetCheckService;->access$900(Lcom/oppo/tribune/util/NetCheckService;Z)V

    .line 352
    return-void

    .line 346
    :cond_1
    cmp-long v2, v0, v6

    if-nez v2, :cond_0

    .line 347
    iget-object v2, p0, Lcom/oppo/tribune/util/NetCheckService$4$1;->this$1:Lcom/oppo/tribune/util/NetCheckService$4;

    iget-object v2, v2, Lcom/oppo/tribune/util/NetCheckService$4;->this$0:Lcom/oppo/tribune/util/NetCheckService;

    # getter for: Lcom/oppo/tribune/util/NetCheckService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/oppo/tribune/util/NetCheckService;->access$800(Lcom/oppo/tribune/util/NetCheckService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/oppo/tribune/LoginUtils;->signOutAction(Landroid/content/Context;)V

    goto :goto_0
.end method
