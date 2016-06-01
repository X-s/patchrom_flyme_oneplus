.class Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler$1$3;
.super Ljava/lang/Object;
.source "TribunePostItemLoadAndUseClkHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler$1;


# direct methods
.method constructor <init>(Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler$1;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler$1$3;->this$1:Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 67
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 68
    iget-object v1, p0, Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler$1$3;->this$1:Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler$1;

    iget-object v1, v1, Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler$1;->val$entity:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    if-nez v1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    new-instance v0, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;

    iget-object v1, p0, Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler$1$3;->this$1:Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler$1;

    iget-object v1, v1, Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler$1;->this$0:Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler;

    iget-object v1, v1, Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;-><init>(Landroid/content/Context;)V

    .line 73
    .local v0, "model":Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    :cond_2
    iget-object v1, p0, Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler$1$3;->this$1:Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler$1;

    iget-object v1, v1, Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler$1;->val$entity:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;->startLoad(Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)V

    .line 78
    iget-object v1, p0, Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler$1$3;->this$1:Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler$1;

    iget-object v1, v1, Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler$1;->this$0:Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler;

    # getter for: Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler;->mDownloadAndUseListener:Lcom/oneplus/tuner/listener/DownloadAndUseListener;
    invoke-static {v1}, Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler;->access$000(Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler;)Lcom/oneplus/tuner/listener/DownloadAndUseListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler$1$3;->this$1:Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler$1;

    iget-object v1, v1, Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler$1;->this$0:Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler;

    # getter for: Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler;->mDownloadAndUseListener:Lcom/oneplus/tuner/listener/DownloadAndUseListener;
    invoke-static {v1}, Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler;->access$000(Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler;)Lcom/oneplus/tuner/listener/DownloadAndUseListener;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler$1$3;->this$1:Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler$1;

    iget-object v2, v2, Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler$1;->val$entity:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    invoke-interface {v1, v2}, Lcom/oneplus/tuner/listener/DownloadAndUseListener;->onDownloadAndUse(Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)V

    goto :goto_0
.end method
