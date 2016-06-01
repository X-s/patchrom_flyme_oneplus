.class Lcom/oppo/tribune/util/NetCheckService$3;
.super Ljava/lang/Object;
.source "NetCheckService.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 281
    iput-object p1, p0, Lcom/oppo/tribune/util/NetCheckService$3;->this$0:Lcom/oppo/tribune/util/NetCheckService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 288
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oppo/tribune/util/NetCheckService$3$1;

    invoke-direct {v1, p0}, Lcom/oppo/tribune/util/NetCheckService$3$1;-><init>(Lcom/oppo/tribune/util/NetCheckService$3;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 326
    iget-object v0, p0, Lcom/oppo/tribune/util/NetCheckService$3;->this$0:Lcom/oppo/tribune/util/NetCheckService;

    # getter for: Lcom/oppo/tribune/util/NetCheckService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/oppo/tribune/util/NetCheckService;->access$400(Lcom/oppo/tribune/util/NetCheckService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/tribune/util/NetCheckService$3;->this$0:Lcom/oppo/tribune/util/NetCheckService;

    # getter for: Lcom/oppo/tribune/util/NetCheckService;->mSignInTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/oppo/tribune/util/NetCheckService;->access$300(Lcom/oppo/tribune/util/NetCheckService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 327
    iget-object v0, p0, Lcom/oppo/tribune/util/NetCheckService$3;->this$0:Lcom/oppo/tribune/util/NetCheckService;

    # getter for: Lcom/oppo/tribune/util/NetCheckService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/oppo/tribune/util/NetCheckService;->access$400(Lcom/oppo/tribune/util/NetCheckService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/tribune/util/NetCheckService$3;->this$0:Lcom/oppo/tribune/util/NetCheckService;

    # getter for: Lcom/oppo/tribune/util/NetCheckService;->mSignInTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/oppo/tribune/util/NetCheckService;->access$300(Lcom/oppo/tribune/util/NetCheckService;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/32 v2, 0xa4cb80

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 328
    return-void
.end method
