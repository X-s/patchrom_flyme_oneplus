.class Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;
.super Landroid/os/Handler;
.source "UsbDebuggingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDebuggingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UsbDebuggingHandler"
.end annotation


# static fields
.field private static final MESSAGE_ADB_ALLOW:I = 0x3

.field private static final MESSAGE_ADB_CLEAR:I = 0x6

.field private static final MESSAGE_ADB_CONFIRM:I = 0x5

.field private static final MESSAGE_ADB_DENY:I = 0x4

.field private static final MESSAGE_ADB_DISABLED:I = 0x2

.field private static final MESSAGE_ADB_ENABLED:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbDebuggingManager;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbDebuggingManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    .line 154
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 155
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 158
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 160
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    # getter for: Lcom/android/server/usb/UsbDebuggingManager;->mAdbEnabled:Z
    invoke-static {v3}, Lcom/android/server/usb/UsbDebuggingManager;->access$000(Lcom/android/server/usb/UsbDebuggingManager;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 163
    iget-object v3, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    # setter for: Lcom/android/server/usb/UsbDebuggingManager;->mAdbEnabled:Z
    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDebuggingManager;->access$002(Lcom/android/server/usb/UsbDebuggingManager;Z)Z

    .line 165
    iget-object v3, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    new-instance v4, Ljava/lang/Thread;

    iget-object v5, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    const-string v6, "UsbDebuggingManager"

    invoke-direct {v4, v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    # setter for: Lcom/android/server/usb/UsbDebuggingManager;->mThread:Ljava/lang/Thread;
    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDebuggingManager;->access$102(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 166
    iget-object v3, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    # getter for: Lcom/android/server/usb/UsbDebuggingManager;->mThread:Ljava/lang/Thread;
    invoke-static {v3}, Lcom/android/server/usb/UsbDebuggingManager;->access$100(Lcom/android/server/usb/UsbDebuggingManager;)Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 171
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    # getter for: Lcom/android/server/usb/UsbDebuggingManager;->mAdbEnabled:Z
    invoke-static {v3}, Lcom/android/server/usb/UsbDebuggingManager;->access$000(Lcom/android/server/usb/UsbDebuggingManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 174
    iget-object v3, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/usb/UsbDebuggingManager;->mAdbEnabled:Z
    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDebuggingManager;->access$002(Lcom/android/server/usb/UsbDebuggingManager;Z)Z

    .line 175
    iget-object v3, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    # invokes: Lcom/android/server/usb/UsbDebuggingManager;->closeSocket()V
    invoke-static {v3}, Lcom/android/server/usb/UsbDebuggingManager;->access$200(Lcom/android/server/usb/UsbDebuggingManager;)V

    .line 178
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    # getter for: Lcom/android/server/usb/UsbDebuggingManager;->mThread:Ljava/lang/Thread;
    invoke-static {v3}, Lcom/android/server/usb/UsbDebuggingManager;->access$100(Lcom/android/server/usb/UsbDebuggingManager;)Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_1
    iget-object v3, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    # setter for: Lcom/android/server/usb/UsbDebuggingManager;->mThread:Ljava/lang/Thread;
    invoke-static {v3, v5}, Lcom/android/server/usb/UsbDebuggingManager;->access$102(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 183
    iget-object v3, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    # setter for: Lcom/android/server/usb/UsbDebuggingManager;->mOutputStream:Ljava/io/OutputStream;
    invoke-static {v3, v5}, Lcom/android/server/usb/UsbDebuggingManager;->access$302(Lcom/android/server/usb/UsbDebuggingManager;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 184
    iget-object v3, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    # setter for: Lcom/android/server/usb/UsbDebuggingManager;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v3, v5}, Lcom/android/server/usb/UsbDebuggingManager;->access$402(Lcom/android/server/usb/UsbDebuggingManager;Landroid/net/LocalSocket;)Landroid/net/LocalSocket;

    goto :goto_0

    .line 188
    :pswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 189
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    # invokes: Lcom/android/server/usb/UsbDebuggingManager;->getFingerprints(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/android/server/usb/UsbDebuggingManager;->access$500(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "fingerprints":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    # getter for: Lcom/android/server/usb/UsbDebuggingManager;->mFingerprints:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/usb/UsbDebuggingManager;->access$600(Lcom/android/server/usb/UsbDebuggingManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 192
    const-string v3, "UsbDebuggingManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fingerprints do not match. Got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    # getter for: Lcom/android/server/usb/UsbDebuggingManager;->mFingerprints:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/usb/UsbDebuggingManager;->access$600(Lcom/android/server/usb/UsbDebuggingManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 197
    :cond_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_2

    .line 198
    iget-object v3, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    # invokes: Lcom/android/server/usb/UsbDebuggingManager;->writeKey(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/android/server/usb/UsbDebuggingManager;->access$700(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/String;)V

    .line 201
    :cond_2
    iget-object v3, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    const-string v4, "OK"

    # invokes: Lcom/android/server/usb/UsbDebuggingManager;->sendResponse(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDebuggingManager;->access$800(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 206
    .end local v1    # "fingerprints":Ljava/lang/String;
    .end local v2    # "key":Ljava/lang/String;
    :pswitch_3
    iget-object v3, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    const-string v4, "NO"

    # invokes: Lcom/android/server/usb/UsbDebuggingManager;->sendResponse(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDebuggingManager;->access$800(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 210
    :pswitch_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 211
    .restart local v2    # "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    # invokes: Lcom/android/server/usb/UsbDebuggingManager;->getFingerprints(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/android/server/usb/UsbDebuggingManager;->access$500(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 212
    .restart local v1    # "fingerprints":Ljava/lang/String;
    const-string v3, "persist.sys.allcommode"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "allcommode":Ljava/lang/String;
    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 214
    iget-object v3, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    const-string v4, "OK"

    # invokes: Lcom/android/server/usb/UsbDebuggingManager;->sendResponse(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDebuggingManager;->access$800(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 217
    :cond_3
    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 218
    iget-object v3, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    const-string v4, "NO"

    # invokes: Lcom/android/server/usb/UsbDebuggingManager;->sendResponse(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDebuggingManager;->access$800(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 221
    :cond_4
    iget-object v3, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    # setter for: Lcom/android/server/usb/UsbDebuggingManager;->mFingerprints:Ljava/lang/String;
    invoke-static {v3, v1}, Lcom/android/server/usb/UsbDebuggingManager;->access$602(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;

    .line 222
    iget-object v3, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    iget-object v4, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    # getter for: Lcom/android/server/usb/UsbDebuggingManager;->mFingerprints:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/usb/UsbDebuggingManager;->access$600(Lcom/android/server/usb/UsbDebuggingManager;)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/usb/UsbDebuggingManager;->startConfirmation(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v2, v4}, Lcom/android/server/usb/UsbDebuggingManager;->access$900(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 227
    .end local v0    # "allcommode":Ljava/lang/String;
    .end local v1    # "fingerprints":Ljava/lang/String;
    .end local v2    # "key":Ljava/lang/String;
    :pswitch_5
    iget-object v3, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    # invokes: Lcom/android/server/usb/UsbDebuggingManager;->deleteKeyFile()V
    invoke-static {v3}, Lcom/android/server/usb/UsbDebuggingManager;->access$1000(Lcom/android/server/usb/UsbDebuggingManager;)V

    goto/16 :goto_0

    .line 179
    :catch_0
    move-exception v3

    goto/16 :goto_1

    .line 158
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
