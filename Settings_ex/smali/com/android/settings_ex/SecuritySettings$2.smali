.class Lcom/android/settings_ex/SecuritySettings$2;
.super Landroid/os/Handler;
.source "SecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/SecuritySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/SecuritySettings;)V
    .locals 0

    .prologue
    .line 941
    iput-object p1, p0, Lcom/android/settings_ex/SecuritySettings$2;->this$0:Lcom/android/settings_ex/SecuritySettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 944
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 965
    :goto_0
    :pswitch_0
    return-void

    .line 947
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings$2;->this$0:Lcom/android/settings_ex/SecuritySettings;

    # invokes: Lcom/android/settings_ex/SecuritySettings;->updateAddPreference()V
    invoke-static {v0}, Lcom/android/settings_ex/SecuritySettings;->access$000(Lcom/android/settings_ex/SecuritySettings;)V

    goto :goto_0

    .line 950
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings$2;->this$0:Lcom/android/settings_ex/SecuritySettings;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings_ex/SecuritySettings;->mFingerprintCancel:Landroid/os/CancellationSignal;
    invoke-static {v0, v1}, Lcom/android/settings_ex/SecuritySettings;->access$102(Lcom/android/settings_ex/SecuritySettings;Landroid/os/CancellationSignal;)Landroid/os/CancellationSignal;

    goto :goto_0

    .line 944
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
