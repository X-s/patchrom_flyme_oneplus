.class Lcom/oneplus/screenshot/longshot/task/CheckThread$1;
.super Ljava/lang/Object;
.source "CheckThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/screenshot/longshot/task/CheckThread;->onRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/task/CheckThread;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/longshot/task/CheckThread;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/task/CheckThread$1;->this$0:Lcom/oneplus/screenshot/longshot/task/CheckThread;

    iput-object p2, p0, Lcom/oneplus/screenshot/longshot/task/CheckThread$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 48
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/CheckThread$1;->this$0:Lcom/oneplus/screenshot/longshot/task/CheckThread;

    # getter for: Lcom/oneplus/screenshot/longshot/task/CheckThread;->mIsStopped:Z
    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/task/CheckThread;->access$000(Lcom/oneplus/screenshot/longshot/task/CheckThread;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/CheckThread$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/CheckThread$1;->val$context:Landroid/content/Context;

    const v2, 0x7f0c000a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1, v3}, Lcom/oneplus/screenshot/longshot/util/Configs;->notifyToast(Landroid/content/Context;ZLjava/lang/String;I)V

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/CheckThread$1;->this$0:Lcom/oneplus/screenshot/longshot/task/CheckThread;

    # setter for: Lcom/oneplus/screenshot/longshot/task/CheckThread;->mIsStopped:Z
    invoke-static {v0, v3}, Lcom/oneplus/screenshot/longshot/task/CheckThread;->access$002(Lcom/oneplus/screenshot/longshot/task/CheckThread;Z)Z

    .line 52
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/CheckThread$1;->this$0:Lcom/oneplus/screenshot/longshot/task/CheckThread;

    # getter for: Lcom/oneplus/screenshot/longshot/task/CheckThread;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;
    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/task/CheckThread;->access$100(Lcom/oneplus/screenshot/longshot/task/CheckThread;)Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->stop()V

    .line 53
    return-void
.end method
