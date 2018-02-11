.class Lcom/oneplus/settings/OPOnlineConfigManager$1;
.super Landroid/os/Handler;
.source "OPOnlineConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/OPOnlineConfigManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPOnlineConfigManager;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPOnlineConfigManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/OPOnlineConfigManager;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/oneplus/settings/OPOnlineConfigManager$1;->this$0:Lcom/oneplus/settings/OPOnlineConfigManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 49
    invoke-static {}, Lcom/oneplus/settings/OPOnlineConfigManager;->-get1()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "settings handleMessage...."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 48
    :goto_0
    return-void

    .line 52
    :pswitch_0
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v2, p0, Lcom/oneplus/settings/OPOnlineConfigManager$1;->this$0:Lcom/oneplus/settings/OPOnlineConfigManager;

    invoke-static {v2}, Lcom/oneplus/settings/OPOnlineConfigManager;->-get2(Lcom/oneplus/settings/OPOnlineConfigManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/OPOnlineConfigManager$1;->this$0:Lcom/oneplus/settings/OPOnlineConfigManager;

    invoke-static {v3}, Lcom/oneplus/settings/OPOnlineConfigManager;->-get0(Lcom/oneplus/settings/OPOnlineConfigManager;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    .local v0, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v1

    .line 54
    .local v1, "jsonArr":Lorg/json/JSONArray;
    iget-object v2, p0, Lcom/oneplus/settings/OPOnlineConfigManager$1;->this$0:Lcom/oneplus/settings/OPOnlineConfigManager;

    invoke-static {v2, v1}, Lcom/oneplus/settings/OPOnlineConfigManager;->-wrap0(Lcom/oneplus/settings/OPOnlineConfigManager;Lorg/json/JSONArray;)V

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
