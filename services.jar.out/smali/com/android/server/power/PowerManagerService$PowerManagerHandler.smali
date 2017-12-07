.class final Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
.super Landroid/os/Handler;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PowerManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 4137
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 4138
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 4137
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, -0x1

    .line 4143
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 4142
    :cond_0
    :goto_0
    return-void

    .line 4145
    :sswitch_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-wrap18(Lcom/android/server/power/PowerManagerService;)V

    goto :goto_0

    .line 4148
    :sswitch_1
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-wrap15(Lcom/android/server/power/PowerManagerService;)V

    goto :goto_0

    .line 4151
    :sswitch_2
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-wrap16(Lcom/android/server/power/PowerManagerService;)V

    goto :goto_0

    .line 4154
    :sswitch_3
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService;->checkForLongWakeLocks()V

    goto :goto_0

    .line 4159
    :sswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 4160
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get2(Lcom/android/server/power/PowerManagerService;)Landroid/app/ActivityManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/app/ActivityManager;->forceStopPackageAsUser(Ljava/lang/String;I)V

    goto :goto_0

    .line 4163
    .end local v1    # "packageName":Ljava/lang/String;
    :sswitch_5
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get3(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->-get1()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4164
    .local v0, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/PowerManagerService;->-wrap25(Lcom/android/server/power/PowerManagerService;Lorg/json/JSONArray;)V

    goto :goto_0

    .line 4172
    .end local v0    # "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    :sswitch_6
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-get4(Lcom/android/server/power/PowerManagerService;)I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 4173
    const-string/jumbo v2, "PowerManagerService"

    const-string/jumbo v3, "MESSAGE_RAISE_PRIORITY_TIMEOUT_MS"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4174
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-wrap8(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/power/PowerManagerService;->-set1(Lcom/android/server/power/PowerManagerService;I)I

    .line 4176
    :cond_1
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get4(Lcom/android/server/power/PowerManagerService;)I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 4177
    iget v2, p1, Landroid/os/Message;->arg2:I

    int-to-long v2, v2

    const/16 v4, 0x33

    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 4184
    :sswitch_7
    const-string/jumbo v2, "PowerManagerService"

    const-string/jumbo v3, "MESSAGE_TIMER_RAISE_PRIORITY"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4185
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get4(Lcom/android/server/power/PowerManagerService;)I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 4186
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->-wrap7()I

    .line 4187
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, v4}, Lcom/android/server/power/PowerManagerService;->-set1(Lcom/android/server/power/PowerManagerService;I)I

    goto/16 :goto_0

    .line 4143
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x7 -> :sswitch_5
        0x32 -> :sswitch_6
        0x33 -> :sswitch_7
    .end sparse-switch
.end method
