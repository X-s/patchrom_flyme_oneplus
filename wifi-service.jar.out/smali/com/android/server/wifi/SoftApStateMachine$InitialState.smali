.class Lcom/android/server/wifi/SoftApStateMachine$InitialState;
.super Lcom/android/internal/util/State;
.source "SoftApStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SoftApStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InitialState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/SoftApStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/SoftApStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/SoftApStateMachine;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/android/server/wifi/SoftApStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/android/server/wifi/SoftApStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApStateMachine;->-get10(Lcom/android/server/wifi/SoftApStateMachine;)Lcom/android/server/wifi/WifiApConfigStore;

    move-result-object v0

    if-nez v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/android/server/wifi/SoftApStateMachine;

    .line 344
    iget-object v1, p0, Lcom/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/android/server/wifi/SoftApStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApStateMachine;->-get4(Lcom/android/server/wifi/SoftApStateMachine;)Lcom/android/server/wifi/FrameworkFacade;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/android/server/wifi/SoftApStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApStateMachine;->-get2(Lcom/android/server/wifi/SoftApStateMachine;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/android/server/wifi/SoftApStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/SoftApStateMachine;->-get0(Lcom/android/server/wifi/SoftApStateMachine;)Lcom/android/server/wifi/BackupManagerProxy;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wifi/FrameworkFacade;->makeApConfigStore(Landroid/content/Context;Lcom/android/server/wifi/BackupManagerProxy;)Lcom/android/server/wifi/WifiApConfigStore;

    move-result-object v1

    .line 343
    invoke-static {v0, v1}, Lcom/android/server/wifi/SoftApStateMachine;->-set0(Lcom/android/server/wifi/SoftApStateMachine;Lcom/android/server/wifi/WifiApConfigStore;)Lcom/android/server/wifi/WifiApConfigStore;

    .line 341
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 349
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 364
    return v2

    .line 351
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/android/server/wifi/SoftApStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApStateMachine;->-wrap1(Lcom/android/server/wifi/SoftApStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/android/server/wifi/SoftApStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/android/server/wifi/SoftApStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApStateMachine;->-get9(Lcom/android/server/wifi/SoftApStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/SoftApStateMachine;->-wrap4(Lcom/android/server/wifi/SoftApStateMachine;Lcom/android/internal/util/IState;)V

    .line 366
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/android/server/wifi/SoftApStateMachine;

    const/16 v1, 0xe

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/SoftApStateMachine;->-wrap3(Lcom/android/server/wifi/SoftApStateMachine;II)V

    .line 360
    iget-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/android/server/wifi/SoftApStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/android/server/wifi/SoftApStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApStateMachine;->-get5(Lcom/android/server/wifi/SoftApStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/SoftApStateMachine;->-wrap4(Lcom/android/server/wifi/SoftApStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 349
    nop

    :pswitch_data_0
    .packed-switch 0x20015
        :pswitch_0
    .end packed-switch
.end method
