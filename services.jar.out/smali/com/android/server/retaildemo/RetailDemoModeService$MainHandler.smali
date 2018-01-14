.class final Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;
.super Landroid/os/Handler;
.source "RetailDemoModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/retaildemo/RetailDemoModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/retaildemo/RetailDemoModeService;


# direct methods
.method constructor <init>(Lcom/android/server/retaildemo/RetailDemoModeService;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/retaildemo/RetailDemoModeService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    .line 156
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 155
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 161
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 163
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    invoke-static {v1}, Lcom/android/server/retaildemo/RetailDemoModeService;->-get2(Lcom/android/server/retaildemo/RetailDemoModeService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    invoke-static {v1}, Lcom/android/server/retaildemo/RetailDemoModeService;->-get2(Lcom/android/server/retaildemo/RetailDemoModeService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 166
    :cond_1
    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    invoke-static {v1}, Lcom/android/server/retaildemo/RetailDemoModeService;->-get2(Lcom/android/server/retaildemo/RetailDemoModeService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    .line 169
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    invoke-virtual {v1}, Lcom/android/server/retaildemo/RetailDemoModeService;->isDemoLauncherDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    invoke-static {}, Lcom/android/server/retaildemo/RetailDemoModeService;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "User inactivity timeout reached"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    invoke-static {v1}, Lcom/android/server/retaildemo/RetailDemoModeService;->-wrap6(Lcom/android/server/retaildemo/RetailDemoModeService;)V

    goto :goto_0

    .line 178
    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->removeMessages(I)V

    .line 179
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->removeMessages(I)V

    .line 180
    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    iget v1, v1, Lcom/android/server/retaildemo/RetailDemoModeService;->mCurrentUserId:I

    if-eqz v1, :cond_2

    .line 181
    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    invoke-virtual {v1}, Lcom/android/server/retaildemo/RetailDemoModeService;->logSessionDuration()V

    .line 183
    :cond_2
    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    invoke-static {v1}, Lcom/android/server/retaildemo/RetailDemoModeService;->-wrap0(Lcom/android/server/retaildemo/RetailDemoModeService;)Landroid/os/UserManager;

    move-result-object v1

    const-string/jumbo v2, "Demo"

    .line 184
    const/16 v3, 0x300

    .line 183
    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 185
    .local v0, "demoUser":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    .line 186
    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    invoke-static {v1, v0}, Lcom/android/server/retaildemo/RetailDemoModeService;->-wrap5(Lcom/android/server/retaildemo/RetailDemoModeService;Landroid/content/pm/UserInfo;)V

    .line 187
    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    invoke-static {v1}, Lcom/android/server/retaildemo/RetailDemoModeService;->-wrap3(Lcom/android/server/retaildemo/RetailDemoModeService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->switchUser(I)Z

    goto :goto_0

    .line 161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
