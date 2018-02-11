.class Lcom/android/settings_ex/ResetNetworkConfirm$1;
.super Landroid/os/Handler;
.source "ResetNetworkConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ResetNetworkConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ResetNetworkConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ResetNetworkConfirm;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/ResetNetworkConfirm;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/settings_ex/ResetNetworkConfirm$1;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 77
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 79
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ex/ResetNetworkConfirm$1;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    invoke-static {v1}, Lcom/android/settings_ex/ResetNetworkConfirm;->-get0(Lcom/android/settings_ex/ResetNetworkConfirm;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/ResetNetworkConfirm$1;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    invoke-static {v1}, Lcom/android/settings_ex/ResetNetworkConfirm;->-wrap0(Lcom/android/settings_ex/ResetNetworkConfirm;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/android/settings_ex/ResetNetworkConfirm$1;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    invoke-static {v1}, Lcom/android/settings_ex/ResetNetworkConfirm;->-get0(Lcom/android/settings_ex/ResetNetworkConfirm;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    .line 84
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings_ex/ResetNetworkConfirm$1;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    invoke-static {v1}, Lcom/android/settings_ex/ResetNetworkConfirm;->-get0(Lcom/android/settings_ex/ResetNetworkConfirm;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/ResetNetworkConfirm$1;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    invoke-static {v1}, Lcom/android/settings_ex/ResetNetworkConfirm;->-wrap0(Lcom/android/settings_ex/ResetNetworkConfirm;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    iget-object v1, p0, Lcom/android/settings_ex/ResetNetworkConfirm$1;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    invoke-static {v1}, Lcom/android/settings_ex/ResetNetworkConfirm;->-get0(Lcom/android/settings_ex/ResetNetworkConfirm;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/ResetNetworkConfirm$1;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    invoke-virtual {v1}, Lcom/android/settings_ex/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 88
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    const v1, 0x7f0e0942

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
