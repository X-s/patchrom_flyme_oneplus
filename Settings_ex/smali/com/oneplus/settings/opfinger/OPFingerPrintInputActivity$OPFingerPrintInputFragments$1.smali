.class Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments$1;
.super Landroid/os/Handler;
.source "OPFingerPrintInputActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments$1;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 129
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 131
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments$1;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;

    # getter for: Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->access$000(Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments$1;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;

    invoke-virtual {v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090078

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments$1;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;

    # getter for: Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->access$000(Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    .line 135
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments$1;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;

    # getter for: Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->access$000(Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 139
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments$1;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;

    # getter for: Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->access$000(Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments$1;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;

    invoke-virtual {v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090079

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments$1;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;

    # getter for: Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->access$000(Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    .line 143
    :pswitch_3
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments$1;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;

    # getter for: Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->access$000(Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 146
    :pswitch_4
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments$1;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;

    # getter for: Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mOPFingerPrintInputViewCategory:Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;
    invoke-static {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->access$100(Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;)Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments$1;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;

    # getter for: Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mOPFingerPrintInputViewCategory:Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;
    invoke-static {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->access$100(Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;)Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->setTipsStatusContent(I)V

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
