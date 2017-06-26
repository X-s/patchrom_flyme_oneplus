.class Lcom/oneplus/settings/security/OPSecuritySettings$2;
.super Landroid/os/Handler;
.source "OPSecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/security/OPSecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/security/OPSecuritySettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/security/OPSecuritySettings;)V
    .locals 0

    .prologue
    .line 510
    iput-object p1, p0, Lcom/oneplus/settings/security/OPSecuritySettings$2;->this$0:Lcom/oneplus/settings/security/OPSecuritySettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 513
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 534
    :goto_0
    :pswitch_0
    return-void

    .line 516
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/settings/security/OPSecuritySettings$2;->this$0:Lcom/oneplus/settings/security/OPSecuritySettings;

    # invokes: Lcom/oneplus/settings/security/OPSecuritySettings;->updateAddPreference()V
    invoke-static {v0}, Lcom/oneplus/settings/security/OPSecuritySettings;->access$000(Lcom/oneplus/settings/security/OPSecuritySettings;)V

    goto :goto_0

    .line 519
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/settings/security/OPSecuritySettings$2;->this$0:Lcom/oneplus/settings/security/OPSecuritySettings;

    const/4 v1, 0x0

    # setter for: Lcom/oneplus/settings/security/OPSecuritySettings;->mFingerprintCancel:Landroid/os/CancellationSignal;
    invoke-static {v0, v1}, Lcom/oneplus/settings/security/OPSecuritySettings;->access$102(Lcom/oneplus/settings/security/OPSecuritySettings;Landroid/os/CancellationSignal;)Landroid/os/CancellationSignal;

    goto :goto_0

    .line 513
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
