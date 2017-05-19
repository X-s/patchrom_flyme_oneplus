.class Lcom/android/server/OemExService$1;
.super Landroid/os/Handler;
.source "OemExService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemExService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemExService;


# direct methods
.method constructor <init>(Lcom/android/server/OemExService;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;
    .param p3, "x1"    # Landroid/os/Handler$Callback;
    .param p4, "x2"    # Z

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/server/OemExService$1;->this$0:Lcom/android/server/OemExService;

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 95
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 96
    .local v0, "newState":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 98
    .local v1, "oldState":I
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 100
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/OemExService$1;->this$0:Lcom/android/server/OemExService;

    # invokes: Lcom/android/server/OemExService;->onSystemReady()V
    invoke-static {v4}, Lcom/android/server/OemExService;->access$000(Lcom/android/server/OemExService;)V

    .line 101
    iget-object v4, p0, Lcom/android/server/OemExService$1;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v4}, Lcom/android/server/OemExService;->access$100(Lcom/android/server/OemExService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 102
    iget-object v4, p0, Lcom/android/server/OemExService$1;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v4}, Lcom/android/server/OemExService;->access$100(Lcom/android/server/OemExService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 106
    :pswitch_1
    if-eq v0, v1, :cond_1

    .line 107
    # setter for: Lcom/android/server/OemExService;->sBackcoverState:I
    invoke-static {v0}, Lcom/android/server/OemExService;->access$202(I)I

    .line 108
    iget-object v4, p0, Lcom/android/server/OemExService$1;->this$0:Lcom/android/server/OemExService;

    # invokes: Lcom/android/server/OemExService;->sendBroadcastForChangeTheme(I)V
    invoke-static {v4, v0}, Lcom/android/server/OemExService;->access$300(Lcom/android/server/OemExService;I)V

    .line 110
    :cond_1
    iget-object v4, p0, Lcom/android/server/OemExService$1;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v4}, Lcom/android/server/OemExService;->access$100(Lcom/android/server/OemExService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 111
    iget-object v4, p0, Lcom/android/server/OemExService$1;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v4}, Lcom/android/server/OemExService;->access$100(Lcom/android/server/OemExService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 117
    :pswitch_2
    iget v4, p1, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 118
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/OemExService$1;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/OemExService;->access$400(Lcom/android/server/OemExService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "in_app_installed"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, "strAppInstalled":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 122
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 126
    :goto_1
    iget-object v4, p0, Lcom/android/server/OemExService$1;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/OemExService;->access$400(Lcom/android/server/OemExService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "in_app_installed"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 127
    const-string v4, "OemExService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] has been installed."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    # operator-- for: Lcom/android/server/OemExService;->mPackageInstallState:I
    invoke-static {}, Lcom/android/server/OemExService;->access$510()I

    .line 129
    sget-boolean v4, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v4, :cond_2

    const-string v4, "OemExService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "done: mPackageInstallState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/server/OemExService;->mPackageInstallState:I
    invoke-static {}, Lcom/android/server/OemExService;->access$500()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "strAppInstalled":Ljava/lang/String;
    :cond_2
    # getter for: Lcom/android/server/OemExService;->mPackageInstallState:I
    invoke-static {}, Lcom/android/server/OemExService;->access$500()I

    move-result v4

    if-nez v4, :cond_0

    .line 133
    iget-object v4, p0, Lcom/android/server/OemExService$1;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/OemExService;->access$400(Lcom/android/server/OemExService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "package_verifier_enable"

    # getter for: Lcom/android/server/OemExService;->mPackageVerifierEnable:I
    invoke-static {}, Lcom/android/server/OemExService;->access$600()I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 134
    sget-boolean v4, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v4, :cond_0

    const-string v4, "OemExService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "All Done : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/OemExService$1;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/OemExService;->access$400(Lcom/android/server/OemExService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "in_app_installed"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 124
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v3    # "strAppInstalled":Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
