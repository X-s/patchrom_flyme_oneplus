.class Lcom/oneplus/settings/applocker/ApplockerConfirmActivity$2;
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
.method constructor <init>(Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity$2;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 185
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 194
    :goto_0
    return-void

    .line 187
    :sswitch_0
    const-string v0, "ApplockerActivity"

    const-string v1, "UI_MSG_GET_COLOR_AND_SETBACKGROUND"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity$2;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    # invokes: Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->getColorAndSetBackground(Landroid/graphics/Bitmap;)V
    invoke-static {v1, v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->access$200(Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 191
    :sswitch_1
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity$2;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;

    iget-object v0, v0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mFingerprintHelper:Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;

    invoke-virtual {v0}, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;->startListening()V

    goto :goto_0

    .line 185
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method
