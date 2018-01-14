.class final Lcom/android/server/am/ReceiverRecord$BroadcastAppHandler;
.super Landroid/os/Handler;
.source "ReceiverRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ReceiverRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BroadcastAppHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ReceiverRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ReceiverRecord;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/am/ReceiverRecord;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/server/am/ReceiverRecord$BroadcastAppHandler;->this$0:Lcom/android/server/am/ReceiverRecord;

    .line 33
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 32
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 38
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 37
    :goto_0
    return-void

    .line 40
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/ReceiverRecord$BroadcastAppHandler;->this$0:Lcom/android/server/am/ReceiverRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ReceiverRecord;->broadcastTimeoutLocked(Z)V

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
