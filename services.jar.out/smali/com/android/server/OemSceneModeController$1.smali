.class Lcom/android/server/OemSceneModeController$1;
.super Landroid/os/Handler;
.source "OemSceneModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemSceneModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemSceneModeController;


# direct methods
.method constructor <init>(Lcom/android/server/OemSceneModeController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OemSceneModeController;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/server/OemSceneModeController$1;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 212
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 242
    :goto_0
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$1;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v0}, Lcom/android/server/OemSceneModeController;->-wrap5(Lcom/android/server/OemSceneModeController;)V

    .line 211
    return-void

    .line 214
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$1;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v0}, Lcom/android/server/OemSceneModeController;->-wrap4(Lcom/android/server/OemSceneModeController;)V

    goto :goto_0

    .line 217
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$1;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v0}, Lcom/android/server/OemSceneModeController;->-wrap3(Lcom/android/server/OemSceneModeController;)V

    goto :goto_0

    .line 220
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$1;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v0}, Lcom/android/server/OemSceneModeController;->-wrap2(Lcom/android/server/OemSceneModeController;)V

    goto :goto_0

    .line 223
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$1;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v0}, Lcom/android/server/OemSceneModeController;->-wrap1(Lcom/android/server/OemSceneModeController;)V

    goto :goto_0

    .line 226
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$1;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-virtual {v0}, Lcom/android/server/OemSceneModeController;->handleStartMonitor()V

    goto :goto_0

    .line 229
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$1;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-virtual {v0}, Lcom/android/server/OemSceneModeController;->handleStopMonitor()V

    goto :goto_0

    .line 232
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$1;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-virtual {v0}, Lcom/android/server/OemSceneModeController;->handleStopMonitorPassive()V

    goto :goto_0

    .line 235
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$1;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-virtual {v0}, Lcom/android/server/OemSceneModeController;->handleStartMonitorPassive()V

    goto :goto_0

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
