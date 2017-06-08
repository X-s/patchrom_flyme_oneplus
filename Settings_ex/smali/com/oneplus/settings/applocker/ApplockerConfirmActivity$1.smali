.class Lcom/oneplus/settings/applocker/ApplockerConfirmActivity$1;
.super Landroid/os/Handler;
.source "ApplockerConfirmActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->startHandlderThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity$1;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 170
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 179
    :goto_0
    return-void

    .line 172
    :pswitch_0
    const-string v1, "ApplockerActivity"

    const-string v2, "NONUI_MSG_GET_BITMAP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity$1;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;

    # invokes: Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->getBitmap()Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->access$000(Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 174
    .local v0, "b":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity$1;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;

    # getter for: Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->access$100(Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 175
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 176
    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity$1;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;

    # getter for: Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->access$100(Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
