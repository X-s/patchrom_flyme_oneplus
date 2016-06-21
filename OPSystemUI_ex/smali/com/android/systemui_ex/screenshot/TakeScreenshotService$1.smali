.class Lcom/android/systemui_ex/screenshot/TakeScreenshotService$1;
.super Landroid/os/Handler;
.source "TakeScreenshotService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/screenshot/TakeScreenshotService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/screenshot/TakeScreenshotService;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/screenshot/TakeScreenshotService;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/systemui_ex/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui_ex/screenshot/TakeScreenshotService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 37
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 68
    :goto_0
    return-void

    .line 39
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 40
    .local v0, "callback":Landroid/os/Messenger;
    # getter for: Lcom/android/systemui_ex/screenshot/TakeScreenshotService;->mScreenshot:Lcom/android/systemui_ex/screenshot/GlobalScreenshot;
    invoke-static {}, Lcom/android/systemui_ex/screenshot/TakeScreenshotService;->access$000()Lcom/android/systemui_ex/screenshot/GlobalScreenshot;

    move-result-object v2

    if-nez v2, :cond_0

    .line 41
    new-instance v2, Lcom/android/systemui_ex/screenshot/GlobalScreenshot;

    iget-object v5, p0, Lcom/android/systemui_ex/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui_ex/screenshot/TakeScreenshotService;

    invoke-direct {v2, v5}, Lcom/android/systemui_ex/screenshot/GlobalScreenshot;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/systemui_ex/screenshot/TakeScreenshotService;->mScreenshot:Lcom/android/systemui_ex/screenshot/GlobalScreenshot;
    invoke-static {v2}, Lcom/android/systemui_ex/screenshot/TakeScreenshotService;->access$002(Lcom/android/systemui_ex/screenshot/GlobalScreenshot;)Lcom/android/systemui_ex/screenshot/GlobalScreenshot;

    .line 45
    :cond_0
    # getter for: Lcom/android/systemui_ex/screenshot/TakeScreenshotService;->sCanDo:Z
    invoke-static {}, Lcom/android/systemui_ex/screenshot/TakeScreenshotService;->access$100()Z

    move-result v2

    if-nez v2, :cond_1

    .line 46
    const-string v2, "TakeScreenshotService"

    const-string v4, "Do screenshot too fast, skip this one"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/4 v2, 0x0

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 49
    .local v1, "reply":Landroid/os/Message;
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v2

    goto :goto_0

    .line 55
    .end local v1    # "reply":Landroid/os/Message;
    :cond_1
    # setter for: Lcom/android/systemui_ex/screenshot/TakeScreenshotService;->sCanDo:Z
    invoke-static {v4}, Lcom/android/systemui_ex/screenshot/TakeScreenshotService;->access$102(Z)Z

    .line 57
    # getter for: Lcom/android/systemui_ex/screenshot/TakeScreenshotService;->mScreenshot:Lcom/android/systemui_ex/screenshot/GlobalScreenshot;
    invoke-static {}, Lcom/android/systemui_ex/screenshot/TakeScreenshotService;->access$000()Lcom/android/systemui_ex/screenshot/GlobalScreenshot;

    move-result-object v5

    new-instance v6, Lcom/android/systemui_ex/screenshot/TakeScreenshotService$1$1;

    invoke-direct {v6, p0, v0}, Lcom/android/systemui_ex/screenshot/TakeScreenshotService$1$1;-><init>(Lcom/android/systemui_ex/screenshot/TakeScreenshotService$1;Landroid/os/Messenger;)V

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-lez v2, :cond_2

    move v2, v3

    :goto_1
    iget v7, p1, Landroid/os/Message;->arg2:I

    if-lez v7, :cond_3

    :goto_2
    invoke-virtual {v5, v6, v2, v3}, Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->takeScreenshot(Ljava/lang/Runnable;ZZ)V

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_2

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
