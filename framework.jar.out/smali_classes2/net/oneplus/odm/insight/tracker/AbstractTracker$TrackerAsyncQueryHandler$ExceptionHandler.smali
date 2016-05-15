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
    .line 80
    iput-object p1, p0, Lnet/oneplus/odm/insight/tracker/AbstractTracker$TrackerAsyncQueryHandler$ExceptionHandler;->this$1:Lnet/oneplus/odm/insight/tracker/AbstractTracker$TrackerAsyncQueryHandler;

    .line 81
    invoke-direct {p0, p1, p2}, Landroid/content/AsyncQueryHandler$WorkerHandler;-><init>(Landroid/content/AsyncQueryHandler;Landroid/os/Looper;)V

    .line 82
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 85
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/AsyncQueryHandler$WorkerArgs;

    .line 86
    .local v0, "args":Landroid/content/AsyncQueryHandler$WorkerArgs;
    iget-object v4, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 88
    .local v2, "reply":Landroid/os/Message;
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/AsyncQueryHandler$WorkerHandler;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 98
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v3

    .line 90
    .local v3, "x":Ljava/lang/IllegalArgumentException;
    iput-object v3, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    .line 91
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 92
    iget v4, p1, Landroid/os/Message;->arg1:I

    iput v4, v2, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 93
    .end local v3    # "x":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 94
    .local v1, "e":Ljava/lang/RuntimeException;
    iput-object v1, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    .line 95
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 96
    iget v4, p1, Landroid/os/Message;->arg1:I

    iput v4, v2, Landroid/os/Message;->arg1:I

    goto :goto_0
.end method
