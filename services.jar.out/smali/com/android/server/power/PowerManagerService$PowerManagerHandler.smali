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
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 3259
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 3260
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 3261
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3265
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 3280
    :goto_0
    :pswitch_0
    return-void

    .line 3267
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->handleUserActivityTimeout()V
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$2600(Lcom/android/server/power/PowerManagerService;)V

    goto :goto_0

    .line 3270
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->handleSandman()V
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$2700(Lcom/android/server/power/PowerManagerService;)V

    goto :goto_0

    .line 3273
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->handleScreenBrightnessBoostTimeout()V
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$2800(Lcom/android/server/power/PowerManagerService;)V

    goto :goto_0

    .line 3276
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 3277
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mActivityManager:Landroid/app/ActivityManager;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$2900(Lcom/android/server/power/PowerManagerService;)Landroid/app/ActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/ActivityManager;->forceStopPackageAsUser(Ljava/lang/String;I)V

    goto :goto_0

    .line 3265
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
