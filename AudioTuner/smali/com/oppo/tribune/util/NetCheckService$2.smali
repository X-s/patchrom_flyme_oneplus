.class Lcom/oppo/tribune/util/NetCheckService$2;
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
    .line 267
    iput-object p1, p0, Lcom/oppo/tribune/util/NetCheckService$2;->this$0:Lcom/oppo/tribune/util/NetCheckService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 271
    invoke-static {}, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->getInstant()Lcom/oppo/tribune/usercenter/login/RomAccountUtils;

    move-result-object v0

    .line 272
    .local v0, "colorAccountUtils":Lcom/oppo/tribune/usercenter/login/RomAccountUtils;
    iget-object v1, p0, Lcom/oppo/tribune/util/NetCheckService$2;->this$0:Lcom/oppo/tribune/util/NetCheckService;

    # getter for: Lcom/oppo/tribune/util/NetCheckService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/oppo/tribune/util/NetCheckService;->access$800(Lcom/oppo/tribune/util/NetCheckService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->isLogin(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    new-instance v1, Lcom/oppo/tribune/usercenter/login/TokenSignInRunnable;

    iget-object v2, p0, Lcom/oppo/tribune/util/NetCheckService$2;->this$0:Lcom/oppo/tribune/util/NetCheckService;

    # getter for: Lcom/oppo/tribune/util/NetCheckService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/oppo/tribune/util/NetCheckService;->access$800(Lcom/oppo/tribune/util/NetCheckService;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/oppo/tribune/usercenter/login/TokenSignInRunnable;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/oppo/tribune/util/ThreadUtils;->startThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    .line 275
    :cond_0
    return-void
.end method
