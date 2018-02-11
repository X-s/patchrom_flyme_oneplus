.class Lcom/oneplus/settings/laboratory/OPLabFeatureActivity$1;
.super Landroid/os/Handler;
.source "OPLabFeatureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity$1;->this$0:Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 49
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 51
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity$1;->this$0:Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;

    invoke-static {v1}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->-get1(Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;)Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v0, "pluginData":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/laboratory/OPLabPluginModel;>;"
    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity$1;->this$0:Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;

    invoke-static {v1}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->-get0(Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 54
    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity$1;->this$0:Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;

    invoke-static {v1}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->-get1(Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;)Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;->setData(Ljava/util/List;)V

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
