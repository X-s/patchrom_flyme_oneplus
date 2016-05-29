.class Lcom/android/settings_ex/FingerprintAndPWD$1;
.super Landroid/os/Handler;
.source "FingerprintAndPWD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/FingerprintAndPWD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/FingerprintAndPWD;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/FingerprintAndPWD;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/settings_ex/FingerprintAndPWD$1;->this$0:Lcom/android/settings_ex/FingerprintAndPWD;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 165
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 166
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 178
    :goto_0
    return-void

    .line 168
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD$1;->this$0:Lcom/android/settings_ex/FingerprintAndPWD;

    # getter for: Lcom/android/settings_ex/FingerprintAndPWD;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings_ex/FingerprintAndPWD;->access$000(Lcom/android/settings_ex/FingerprintAndPWD;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/FingerprintAndPWD$1;->this$0:Lcom/android/settings_ex/FingerprintAndPWD;

    invoke-virtual {v1}, Lcom/android/settings_ex/FingerprintAndPWD;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090079

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 173
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD$1;->this$0:Lcom/android/settings_ex/FingerprintAndPWD;

    # getter for: Lcom/android/settings_ex/FingerprintAndPWD;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings_ex/FingerprintAndPWD;->access$000(Lcom/android/settings_ex/FingerprintAndPWD;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
