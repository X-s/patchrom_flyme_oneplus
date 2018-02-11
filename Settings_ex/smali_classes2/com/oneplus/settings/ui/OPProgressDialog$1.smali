.class Lcom/oneplus/settings/ui/OPProgressDialog$1;
.super Landroid/os/Handler;
.source "OPProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ui/OPProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPProgressDialog;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ui/OPProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/ui/OPProgressDialog;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPProgressDialog$1;->this$0:Lcom/oneplus/settings/ui/OPProgressDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 30
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 29
    :cond_0
    :goto_0
    return-void

    .line 32
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/settings/ui/OPProgressDialog;

    .line 33
    .local v0, "dlg":Lcom/oneplus/settings/ui/OPProgressDialog;
    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPProgressDialog;->show()V

    goto :goto_0

    .line 36
    .end local v0    # "dlg":Lcom/oneplus/settings/ui/OPProgressDialog;
    :pswitch_1
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPProgressDialog$1;->this$0:Lcom/oneplus/settings/ui/OPProgressDialog;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPProgressDialog;->-get1(Lcom/oneplus/settings/ui/OPProgressDialog;)Lcom/oneplus/settings/ui/OPProgressDialog$OnTimeOutListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPProgressDialog$1;->this$0:Lcom/oneplus/settings/ui/OPProgressDialog;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPProgressDialog;->-get1(Lcom/oneplus/settings/ui/OPProgressDialog;)Lcom/oneplus/settings/ui/OPProgressDialog$OnTimeOutListener;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPProgressDialog$1;->this$0:Lcom/oneplus/settings/ui/OPProgressDialog;

    invoke-interface {v1, v2}, Lcom/oneplus/settings/ui/OPProgressDialog$OnTimeOutListener;->onTimeOut(Lcom/oneplus/settings/ui/OPProgressDialog;)V

    .line 38
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPProgressDialog$1;->this$0:Lcom/oneplus/settings/ui/OPProgressDialog;

    invoke-virtual {v1}, Lcom/oneplus/settings/ui/OPProgressDialog;->dismiss()V

    goto :goto_0

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
