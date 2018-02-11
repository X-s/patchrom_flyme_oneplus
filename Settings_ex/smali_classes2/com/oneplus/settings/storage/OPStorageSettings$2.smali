.class Lcom/oneplus/settings/storage/OPStorageSettings$2;
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
    .param p1, "this$0"    # Lcom/oneplus/settings/storage/OPStorageSettings;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/oneplus/settings/storage/OPStorageSettings$2;->this$0:Lcom/oneplus/settings/storage/OPStorageSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 107
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 118
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 106
    return-void

    .line 109
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/settings/storage/OPStorageSettings$2;->this$0:Lcom/oneplus/settings/storage/OPStorageSettings;

    invoke-static {v0}, Lcom/oneplus/settings/storage/OPStorageSettings;->-get1(Lcom/oneplus/settings/storage/OPStorageSettings;)Z

    move-result v0

    .line 110
    const-string/jumbo v1, "persist.sys.oem.otg_support"

    const-string/jumbo v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/oneplus/settings/storage/OPStorageSettings$2;->this$0:Lcom/oneplus/settings/storage/OPStorageSettings;

    iget-object v1, p0, Lcom/oneplus/settings/storage/OPStorageSettings$2;->this$0:Lcom/oneplus/settings/storage/OPStorageSettings;

    invoke-static {v1}, Lcom/oneplus/settings/storage/OPStorageSettings;->-get1(Lcom/oneplus/settings/storage/OPStorageSettings;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/oneplus/settings/storage/OPStorageSettings;->-wrap0(Lcom/oneplus/settings/storage/OPStorageSettings;Z)V

    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/storage/OPStorageSettings$2;->this$0:Lcom/oneplus/settings/storage/OPStorageSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/settings/storage/OPStorageSettings;->-set0(Lcom/oneplus/settings/storage/OPStorageSettings;Z)Z

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x2704
        :pswitch_0
    .end packed-switch
.end method
