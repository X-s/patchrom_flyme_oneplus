.class Lcom/oneplus/settings/notification/OPNotificationAppList$1;
.super Landroid/os/Handler;
.source "OPNotificationAppList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/notification/OPNotificationAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/notification/OPNotificationAppList;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$1;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 133
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$1;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-virtual {v1}, Lcom/oneplus/settings/notification/OPNotificationAppList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 134
    .local v0, "activity":Landroid/app/Activity;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 136
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$1;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->mProgressDialog:Lcom/oneplus/app/OPProgressDialog;
    invoke-static {v1}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$000(Lcom/oneplus/settings/notification/OPNotificationAppList;)Lcom/oneplus/app/OPProgressDialog;

    move-result-object v1

    if-nez v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$1;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    new-instance v2, Lcom/oneplus/app/OPProgressDialog;

    iget-object v3, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$1;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$100(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/oneplus/app/OPProgressDialog;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->mProgressDialog:Lcom/oneplus/app/OPProgressDialog;
    invoke-static {v1, v2}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$002(Lcom/oneplus/settings/notification/OPNotificationAppList;Lcom/oneplus/app/OPProgressDialog;)Lcom/oneplus/app/OPProgressDialog;

    .line 139
    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$1;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->mProgressDialog:Lcom/oneplus/app/OPProgressDialog;
    invoke-static {v1}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$000(Lcom/oneplus/settings/notification/OPNotificationAppList;)Lcom/oneplus/app/OPProgressDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$1;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-virtual {v2}, Lcom/oneplus/settings/notification/OPNotificationAppList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0280

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/app/OPProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$1;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->mProgressDialog:Lcom/oneplus/app/OPProgressDialog;
    invoke-static {v1}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$000(Lcom/oneplus/settings/notification/OPNotificationAppList;)Lcom/oneplus/app/OPProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/app/OPProgressDialog;->show()V

    goto :goto_0

    .line 146
    :pswitch_1
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$1;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->mProgressDialog:Lcom/oneplus/app/OPProgressDialog;
    invoke-static {v1}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$000(Lcom/oneplus/settings/notification/OPNotificationAppList;)Lcom/oneplus/app/OPProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$1;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->mProgressDialog:Lcom/oneplus/app/OPProgressDialog;
    invoke-static {v1}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$000(Lcom/oneplus/settings/notification/OPNotificationAppList;)Lcom/oneplus/app/OPProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/app/OPProgressDialog;->dismiss()V

    goto :goto_0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
