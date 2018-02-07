.class Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$1;
.super Landroid/os/Handler;
.source "OPFingerPrintEditFragments.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$1;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 97
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 98
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 95
    :goto_0
    :pswitch_0
    return-void

    .line 101
    :pswitch_1
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 102
    const v1, 0x7f0e01e2

    .line 101
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 104
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$1;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->finish()V

    goto :goto_0

    .line 116
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$1;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-static {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->-get5(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Lcom/oneplus/settings/ui/OPProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$1;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-virtual {v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 117
    const v2, 0x7f0e01e1

    .line 116
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$1;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-static {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->-get5(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Lcom/oneplus/settings/ui/OPProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPProgressDialog;->show()V

    goto :goto_0

    .line 121
    :pswitch_3
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$1;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v1, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->showWarnigDialog(Landroid/hardware/fingerprint/Fingerprint;)V

    goto :goto_0

    .line 124
    :pswitch_4
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$1;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-static {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->-get5(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Lcom/oneplus/settings/ui/OPProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPProgressDialog;->dismiss()V

    .line 125
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 126
    const v1, 0x7f0e01e3

    .line 125
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 130
    :pswitch_5
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$1;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->showRenameDialog()V

    goto :goto_0

    .line 133
    :pswitch_6
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$1;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v1, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->showDeleteDialog(Landroid/hardware/fingerprint/Fingerprint;)V

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method
