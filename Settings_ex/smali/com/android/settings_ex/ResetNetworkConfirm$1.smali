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
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/settings_ex/ResetNetworkConfirm$1;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 73
    iget-object v1, p0, Lcom/android/settings_ex/ResetNetworkConfirm$1;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    invoke-virtual {v1}, Lcom/android/settings_ex/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 74
    .local v0, "activity":Landroid/app/Activity;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 76
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ex/ResetNetworkConfirm$1;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    # getter for: Lcom/android/settings_ex/ResetNetworkConfirm;->mProgressDialog:Lcom/oneplus/app/OPProgressDialog;
    invoke-static {v1}, Lcom/android/settings_ex/ResetNetworkConfirm;->access$000(Lcom/android/settings_ex/ResetNetworkConfirm;)Lcom/oneplus/app/OPProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/android/settings_ex/ResetNetworkConfirm$1;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    # getter for: Lcom/android/settings_ex/ResetNetworkConfirm;->mProgressDialog:Lcom/oneplus/app/OPProgressDialog;
    invoke-static {v1}, Lcom/android/settings_ex/ResetNetworkConfirm;->access$000(Lcom/android/settings_ex/ResetNetworkConfirm;)Lcom/oneplus/app/OPProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/app/OPProgressDialog;->show()V

    goto :goto_0

    .line 81
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings_ex/ResetNetworkConfirm$1;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    # getter for: Lcom/android/settings_ex/ResetNetworkConfirm;->mProgressDialog:Lcom/oneplus/app/OPProgressDialog;
    invoke-static {v1}, Lcom/android/settings_ex/ResetNetworkConfirm;->access$000(Lcom/android/settings_ex/ResetNetworkConfirm;)Lcom/oneplus/app/OPProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/android/settings_ex/ResetNetworkConfirm$1;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    # getter for: Lcom/android/settings_ex/ResetNetworkConfirm;->mProgressDialog:Lcom/oneplus/app/OPProgressDialog;
    invoke-static {v1}, Lcom/android/settings_ex/ResetNetworkConfirm;->access$000(Lcom/android/settings_ex/ResetNetworkConfirm;)Lcom/oneplus/app/OPProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/app/OPProgressDialog;->dismiss()V

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/ResetNetworkConfirm$1;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    invoke-virtual {v1}, Lcom/android/settings_ex/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c06e7

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
