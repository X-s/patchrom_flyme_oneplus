.class Lcom/oneplus/settings/storage/OPStorageSettings$1;
.super Landroid/os/Handler;
.source "OPStorageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/storage/OPStorageSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/storage/OPStorageSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/storage/OPStorageSettings;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/oneplus/settings/storage/OPStorageSettings$1;->this$0:Lcom/oneplus/settings/storage/OPStorageSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 88
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 99
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 100
    return-void

    .line 90
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/settings/storage/OPStorageSettings$1;->this$0:Lcom/oneplus/settings/storage/OPStorageSettings;

    # getter for: Lcom/oneplus/settings/storage/OPStorageSettings;->isOtgSupport:Z
    invoke-static {v0}, Lcom/oneplus/settings/storage/OPStorageSettings;->access$000(Lcom/oneplus/settings/storage/OPStorageSettings;)Z

    move-result v0

    const-string v1, "persist.sys.oem.otg_support"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/oneplus/settings/storage/OPStorageSettings$1;->this$0:Lcom/oneplus/settings/storage/OPStorageSettings;

    iget-object v1, p0, Lcom/oneplus/settings/storage/OPStorageSettings$1;->this$0:Lcom/oneplus/settings/storage/OPStorageSettings;

    # getter for: Lcom/oneplus/settings/storage/OPStorageSettings;->isOtgSupport:Z
    invoke-static {v1}, Lcom/oneplus/settings/storage/OPStorageSettings;->access$000(Lcom/oneplus/settings/storage/OPStorageSettings;)Z

    move-result v1

    # invokes: Lcom/oneplus/settings/storage/OPStorageSettings;->handleOTGStatus(Z)V
    invoke-static {v0, v1}, Lcom/oneplus/settings/storage/OPStorageSettings;->access$100(Lcom/oneplus/settings/storage/OPStorageSettings;Z)V

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/storage/OPStorageSettings$1;->this$0:Lcom/oneplus/settings/storage/OPStorageSettings;

    const/4 v1, 0x0

    # setter for: Lcom/oneplus/settings/storage/OPStorageSettings;->isOtgRunning:Z
    invoke-static {v0, v1}, Lcom/oneplus/settings/storage/OPStorageSettings;->access$202(Lcom/oneplus/settings/storage/OPStorageSettings;Z)Z

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x2704
        :pswitch_0
    .end packed-switch
.end method
