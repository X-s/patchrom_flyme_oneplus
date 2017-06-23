.class final Lcom/android/server/input/InputManagerService$InputManagerHandler;
.super Landroid/os/Handler;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1741
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    .line 1742
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1743
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1747
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 1770
    :goto_0
    return-void

    .line 1749
    :pswitch_0
    iget-object v5, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [Landroid/view/InputDevice;

    check-cast v4, [Landroid/view/InputDevice;

    # invokes: Lcom/android/server/input/InputManagerService;->deliverInputDevicesChanged([Landroid/view/InputDevice;)V
    invoke-static {v5, v4}, Lcom/android/server/input/InputManagerService;->access$400(Lcom/android/server/input/InputManagerService;[Landroid/view/InputDevice;)V

    goto :goto_0

    .line 1752
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/input/InputManagerService;->handleSwitchKeyboardLayout(II)V
    invoke-static {v4, v5, v6}, Lcom/android/server/input/InputManagerService;->access$500(Lcom/android/server/input/InputManagerService;II)V

    goto :goto_0

    .line 1755
    :pswitch_2
    iget-object v4, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->reloadKeyboardLayouts()V
    invoke-static {v4}, Lcom/android/server/input/InputManagerService;->access$600(Lcom/android/server/input/InputManagerService;)V

    goto :goto_0

    .line 1758
    :pswitch_3
    iget-object v4, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->updateKeyboardLayouts()V
    invoke-static {v4}, Lcom/android/server/input/InputManagerService;->access$100(Lcom/android/server/input/InputManagerService;)V

    goto :goto_0

    .line 1761
    :pswitch_4
    iget-object v4, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->reloadDeviceAliases()V
    invoke-static {v4}, Lcom/android/server/input/InputManagerService;->access$200(Lcom/android/server/input/InputManagerService;)V

    goto :goto_0

    .line 1764
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 1765
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    iget v6, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    int-to-long v6, v6

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long v2, v4, v6

    .line 1766
    .local v2, "whenNanos":J
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1767
    .local v1, "inTabletMode":Z
    iget-object v4, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->deliverTabletModeChanged(JZ)V
    invoke-static {v4, v2, v3, v1}, Lcom/android/server/input/InputManagerService;->access$700(Lcom/android/server/input/InputManagerService;JZ)V

    goto :goto_0

    .line 1747
    nop

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
