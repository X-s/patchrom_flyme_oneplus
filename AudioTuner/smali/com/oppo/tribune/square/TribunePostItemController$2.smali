.class Lcom/oppo/tribune/square/TribunePostItemController$2;
.super Ljava/lang/Object;
.source "TribunePostItemController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/tribune/square/TribunePostItemController;->getUseBtnClkLsn2(Landroid/content/Context;Landroid/os/Handler;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/tribune/square/TribunePostItemController;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$mHandler:Landroid/os/Handler;

.field final synthetic val$simpleThreadInfo:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;


# direct methods
.method constructor <init>(Lcom/oppo/tribune/square/TribunePostItemController;Landroid/content/Context;Landroid/os/Handler;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/oppo/tribune/square/TribunePostItemController$2;->this$0:Lcom/oppo/tribune/square/TribunePostItemController;

    iput-object p2, p0, Lcom/oppo/tribune/square/TribunePostItemController$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/oppo/tribune/square/TribunePostItemController$2;->val$mHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/oppo/tribune/square/TribunePostItemController$2;->val$simpleThreadInfo:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 57
    const-string v1, "shuqi"

    const-string v2, "UseBtnClk"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v0, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;

    iget-object v1, p0, Lcom/oppo/tribune/square/TribunePostItemController$2;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;-><init>(Landroid/content/Context;)V

    .line 59
    .local v0, "model":Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/oppo/tribune/square/TribunePostItemController$2;->val$mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oppo/tribune/square/TribunePostItemController$2;->val$simpleThreadInfo:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    invoke-virtual {v0, v1, v2}, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;->startLoad(Landroid/os/Handler;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)V

    goto :goto_0
.end method
