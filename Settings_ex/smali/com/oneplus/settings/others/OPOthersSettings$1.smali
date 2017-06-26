.class Lcom/oneplus/settings/others/OPOthersSettings$1;
.super Landroid/os/Handler;
.source "OPOthersSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/others/OPOthersSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/others/OPOthersSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/others/OPOthersSettings;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/oneplus/settings/others/OPOthersSettings$1;->this$0:Lcom/oneplus/settings/others/OPOthersSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 100
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 111
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 112
    return-void

    .line 102
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/settings/others/OPOthersSettings$1;->this$0:Lcom/oneplus/settings/others/OPOthersSettings;

    # getter for: Lcom/oneplus/settings/others/OPOthersSettings;->isOtgSupport:Z
    invoke-static {v0}, Lcom/oneplus/settings/others/OPOthersSettings;->access$000(Lcom/oneplus/settings/others/OPOthersSettings;)Z

    move-result v0

    const-string v1, "persist.sys.oem.otg_support"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/oneplus/settings/others/OPOthersSettings$1;->this$0:Lcom/oneplus/settings/others/OPOthersSettings;

    iget-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings$1;->this$0:Lcom/oneplus/settings/others/OPOthersSettings;

    # getter for: Lcom/oneplus/settings/others/OPOthersSettings;->isOtgSupport:Z
    invoke-static {v1}, Lcom/oneplus/settings/others/OPOthersSettings;->access$000(Lcom/oneplus/settings/others/OPOthersSettings;)Z

    move-result v1

    # invokes: Lcom/oneplus/settings/others/OPOthersSettings;->handleOTGStatus(Z)V
    invoke-static {v0, v1}, Lcom/oneplus/settings/others/OPOthersSettings;->access$100(Lcom/oneplus/settings/others/OPOthersSettings;Z)V

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/others/OPOthersSettings$1;->this$0:Lcom/oneplus/settings/others/OPOthersSettings;

    const/4 v1, 0x0

    # setter for: Lcom/oneplus/settings/others/OPOthersSettings;->isOtgRunning:Z
    invoke-static {v0, v1}, Lcom/oneplus/settings/others/OPOthersSettings;->access$202(Lcom/oneplus/settings/others/OPOthersSettings;Z)Z

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x2704
        :pswitch_0
    .end packed-switch
.end method
