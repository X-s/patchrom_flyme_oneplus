.class Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;
.super Landroid/os/Handler;
.source "OemPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OemPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PolicyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/OemPhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/OemPhoneWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 531
    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/OemPhoneWindowManager;Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 534
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 533
    :goto_0
    return-void

    .line 538
    :pswitch_0
    :try_start_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    .line 539
    .local v1, "im":Landroid/hardware/input/InputManager;
    sget-boolean v3, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "OemPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setIgnoreHardwareKey: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_0
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v6, :cond_1

    .line 541
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/hardware/input/InputManager;->setIgnoreHardwareKey(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 545
    .end local v1    # "im":Landroid/hardware/input/InputManager;
    :catch_0
    move-exception v0

    .line 549
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "OemPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Native input serivce is not ready, try again: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v3}, Lcom/android/server/policy/OemPhoneWindowManager;->-get5(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v6, v4, v7}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 551
    .local v2, "message":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v3}, Lcom/android/server/policy/OemPhoneWindowManager;->-get5(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeMessages(I)V

    .line 552
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v3}, Lcom/android/server/policy/OemPhoneWindowManager;->-get5(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-result-object v3

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 543
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .end local v2    # "message":Landroid/os/Message;
    .restart local v1    # "im":Landroid/hardware/input/InputManager;
    :cond_1
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {v1, v3}, Landroid/hardware/input/InputManager;->setIgnoreHardwareKey(Z)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 534
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
