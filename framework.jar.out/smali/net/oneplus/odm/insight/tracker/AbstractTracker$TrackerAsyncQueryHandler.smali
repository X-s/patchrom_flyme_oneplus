.class Lnet/oneplus/odm/insight/tracker/AbstractTracker$TrackerAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "AbstractTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/odm/insight/tracker/AbstractTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TrackerAsyncQueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/odm/insight/tracker/AbstractTracker$TrackerAsyncQueryHandler$ExceptionHandler;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/odm/insight/tracker/AbstractTracker;


# direct methods
.method public constructor <init>(Lnet/oneplus/odm/insight/tracker/AbstractTracker;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 109
    iput-object p1, p0, Lnet/oneplus/odm/insight/tracker/AbstractTracker$TrackerAsyncQueryHandler;->this$0:Lnet/oneplus/odm/insight/tracker/AbstractTracker;

    .line 110
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 111
    return-void
.end method


# virtual methods
.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 102
    new-instance v0, Lnet/oneplus/odm/insight/tracker/AbstractTracker$TrackerAsyncQueryHandler$ExceptionHandler;

    invoke-direct {v0, p0, p1}, Lnet/oneplus/odm/insight/tracker/AbstractTracker$TrackerAsyncQueryHandler$ExceptionHandler;-><init>(Lnet/oneplus/odm/insight/tracker/AbstractTracker$TrackerAsyncQueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 120
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/content/AsyncQueryHandler$WorkerArgs;

    if-eqz v1, :cond_0

    .line 121
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/AsyncQueryHandler$WorkerArgs;

    .line 122
    .local v0, "args":Landroid/content/AsyncQueryHandler$WorkerArgs;
    iget-object v1, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/IllegalArgumentException;

    if-eqz v1, :cond_1

    .line 123
    iget v2, p1, Landroid/os/Message;->what:I

    iget-object v3, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v1, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0, v2, v3, v1}, Lnet/oneplus/odm/insight/tracker/AbstractTracker$TrackerAsyncQueryHandler;->onError(ILjava/lang/Object;Ljava/lang/Exception;)V

    .line 128
    .end local v0    # "args":Landroid/content/AsyncQueryHandler$WorkerArgs;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/content/AsyncQueryHandler;->handleMessage(Landroid/os/Message;)V

    .line 129
    return-void

    .line 124
    .restart local v0    # "args":Landroid/content/AsyncQueryHandler$WorkerArgs;
    :cond_1
    iget-object v1, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    .line 125
    iget v2, p1, Landroid/os/Message;->what:I

    iget-object v3, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v1, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/RuntimeException;

    invoke-virtual {p0, v2, v3, v1}, Lnet/oneplus/odm/insight/tracker/AbstractTracker$TrackerAsyncQueryHandler;->onError(ILjava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onError(ILjava/lang/Object;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "error"    # Ljava/lang/Exception;

    .prologue
    .line 106
    # getter for: Lnet/oneplus/odm/insight/tracker/AbstractTracker;->TAG:Ljava/lang/String;
    invoke-static {}, Lnet/oneplus/odm/insight/tracker/AbstractTracker;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 114
    invoke-super {p0, p1, p2, p3}, Landroid/content/AsyncQueryHandler;->onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V

    .line 115
    # getter for: Lnet/oneplus/odm/insight/tracker/AbstractTracker;->TAG:Ljava/lang/String;
    invoke-static {}, Lnet/oneplus/odm/insight/tracker/AbstractTracker;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Event success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
.end method
