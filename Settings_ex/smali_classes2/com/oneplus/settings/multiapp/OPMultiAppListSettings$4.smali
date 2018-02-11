.class Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4;
.super Landroid/os/Handler;
.source "OPMultiAppListSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 156
    iget-object v3, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v3}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->-get1(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/widget/ListView;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v3}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->-get8(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;

    move-result-object v3

    if-nez v3, :cond_1

    .line 157
    :cond_0
    return-void

    .line 156
    :cond_1
    iget-object v3, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v3}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->-get2(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/app/AppOpsManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 159
    iget-object v3, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v3}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->-get5(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Lcom/oneplus/lib/util/loading/LoadingHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/lib/util/loading/LoadingHelper;->beginShowProgress()V

    .line 160
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 161
    .local v1, "position":I
    iget-object v3, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v3}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->-get1(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/better/OPAppModel;

    .line 162
    .local v0, "model":Lcom/oneplus/settings/better/OPAppModel;
    iget-object v3, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-virtual {v0}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->-wrap2(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;Ljava/lang/String;Lcom/oneplus/settings/better/OPAppModel;)V

    .line 163
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 164
    .local v2, "remsg":Landroid/os/Message;
    const/16 v3, 0x58

    iput v3, v2, Landroid/os/Message;->what:I

    .line 165
    iput v1, v2, Landroid/os/Message;->arg1:I

    .line 166
    iget-object v3, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v3}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->-get10(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 153
    return-void
.end method
