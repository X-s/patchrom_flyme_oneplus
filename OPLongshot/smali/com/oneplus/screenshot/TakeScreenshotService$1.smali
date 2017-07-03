.class Lcom/oneplus/screenshot/TakeScreenshotService$1;
.super Landroid/os/Handler;
.source "TakeScreenshotService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/TakeScreenshotService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/TakeScreenshotService;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/TakeScreenshotService;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/oneplus/screenshot/TakeScreenshotService$1;->this$0:Lcom/oneplus/screenshot/TakeScreenshotService;

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

    .line 38
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 60
    :goto_0
    return-void

    .line 40
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 41
    .local v1, "callback":Landroid/os/Messenger;
    # getter for: Lcom/oneplus/screenshot/TakeScreenshotService;->mScreenshot:Lcom/oneplus/screenshot/GlobalScreenshot;
    invoke-static {}, Lcom/oneplus/screenshot/TakeScreenshotService;->access$000()Lcom/oneplus/screenshot/GlobalScreenshot;

    move-result-object v2

    if-nez v2, :cond_0

    .line 42
    new-instance v2, Lcom/oneplus/screenshot/GlobalScreenshot;

    iget-object v5, p0, Lcom/oneplus/screenshot/TakeScreenshotService$1;->this$0:Lcom/oneplus/screenshot/TakeScreenshotService;

    invoke-direct {v2, v5}, Lcom/oneplus/screenshot/GlobalScreenshot;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/oneplus/screenshot/TakeScreenshotService;->mScreenshot:Lcom/oneplus/screenshot/GlobalScreenshot;
    invoke-static {v2}, Lcom/oneplus/screenshot/TakeScreenshotService;->access$002(Lcom/oneplus/screenshot/GlobalScreenshot;)Lcom/oneplus/screenshot/GlobalScreenshot;

    .line 45
    :cond_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 46
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 47
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "focusWindow"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/oneplus/screenshot/longshot/util/Configs;->mTopFocusWindow:Ljava/lang/String;

    .line 49
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    # getter for: Lcom/oneplus/screenshot/TakeScreenshotService;->mScreenshot:Lcom/oneplus/screenshot/GlobalScreenshot;
    invoke-static {}, Lcom/oneplus/screenshot/TakeScreenshotService;->access$000()Lcom/oneplus/screenshot/GlobalScreenshot;

    move-result-object v5

    new-instance v6, Lcom/oneplus/screenshot/TakeScreenshotService$1$1;

    invoke-direct {v6, p0, v1}, Lcom/oneplus/screenshot/TakeScreenshotService$1$1;-><init>(Lcom/oneplus/screenshot/TakeScreenshotService$1;Landroid/os/Messenger;)V

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-lez v2, :cond_2

    move v2, v3

    :goto_1
    iget v7, p1, Landroid/os/Message;->arg2:I

    if-lez v7, :cond_3

    :goto_2
    invoke-virtual {v5, v6, v2, v3}, Lcom/oneplus/screenshot/GlobalScreenshot;->takeScreenshot(Ljava/lang/Runnable;ZZ)V

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_2

    .line 38
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
