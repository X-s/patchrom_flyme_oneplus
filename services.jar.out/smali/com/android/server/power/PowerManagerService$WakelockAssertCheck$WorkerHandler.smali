.class Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;
.super Landroid/os/Handler;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 3932
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;->this$1:Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;

    .line 3933
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3934
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3938
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 3956
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 3940
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;->this$1:Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->isInteractiveInternal()Z
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$4700(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3944
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;->this$1:Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;

    # invokes: Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->assertCheck()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->access$6600(Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;)V

    .line 3945
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;->this$1:Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;

    # getter for: Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mHandlerCheck:Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->access$6700(Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;)Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;->this$1:Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;

    # getter for: Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mHandlerCheck:Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->access$6700(Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;)Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x927c0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 3950
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;->this$1:Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;

    # getter for: Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mReportList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->access$6800(Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3951
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;->this$1:Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;

    # getter for: Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mReportHistoryList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->access$6900(Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3953
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;->this$1:Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;

    # invokes: Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->restampWakeLock()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->access$7000(Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;)V

    goto :goto_0

    .line 3938
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
