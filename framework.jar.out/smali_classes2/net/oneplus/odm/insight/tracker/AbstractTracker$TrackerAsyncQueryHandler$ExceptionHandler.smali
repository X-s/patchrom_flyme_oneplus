.class public Lnet/oneplus/odm/insight/tracker/AbstractTracker$TrackerAsyncQueryHandler$ExceptionHandler;
.super Landroid/content/AsyncQueryHandler$WorkerHandler;
.source "AbstractTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/odm/insight/tracker/AbstractTracker$TrackerAsyncQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ExceptionHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/odm/insight/tracker/AbstractTracker$TrackerAsyncQueryHandler;


# direct methods
.method public constructor <init>(Lnet/oneplus/odm/insight/tracker/AbstractTracker$TrackerAsyncQueryHandler;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 86
    iput-object p1, p0, Lnet/oneplus/odm/insight/tracker/AbstractTracker$TrackerAsyncQueryHandler$ExceptionHandler;->this$1:Lnet/oneplus/odm/insight/tracker/AbstractTracker$TrackerAsyncQueryHandler;

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/content/AsyncQueryHandler$WorkerHandler;-><init>(Landroid/content/AsyncQueryHandler;Landroid/os/Looper;)V

    .line 88
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 91
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/AsyncQueryHandler$WorkerArgs;

    .line 92
    .local v0, "args":Landroid/content/AsyncQueryHandler$WorkerArgs;
    iget-object v4, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 94
    .local v2, "reply":Landroid/os/Message;
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/AsyncQueryHandler$WorkerHandler;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 100
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v3

    .line 96
    .local v3, "x":Ljava/lang/IllegalArgumentException;
    # getter for: Lnet/oneplus/odm/insight/tracker/AbstractTracker;->TAG:Ljava/lang/String;
    invoke-static {}, Lnet/oneplus/odm/insight/tracker/AbstractTracker;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 97
    .end local v3    # "x":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/RuntimeException;
    # getter for: Lnet/oneplus/odm/insight/tracker/AbstractTracker;->TAG:Ljava/lang/String;
    invoke-static {}, Lnet/oneplus/odm/insight/tracker/AbstractTracker;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
