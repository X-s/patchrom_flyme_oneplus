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
    .line 36
    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity$1;->this$0:Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 41
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 43
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity$1;->this$0:Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;

    invoke-static {v0}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->-get1(Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;)Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity$1;->this$0:Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;

    invoke-static {v0}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->-get1(Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;)Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity$1;->this$0:Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;

    invoke-static {v1}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->-get0(Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;->setData(Ljava/util/List;)V

    goto :goto_0

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
