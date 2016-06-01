.class Lcom/oneplus/tuner/OfficialConfigActivity$2;
.super Ljava/lang/Object;
.source "OfficialConfigActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/OfficialConfigActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/OfficialConfigActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/OfficialConfigActivity;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/oneplus/tuner/OfficialConfigActivity$2;->this$0:Lcom/oneplus/tuner/OfficialConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    sget-boolean v3, Lcom/oneplus/tuner/listener/HeadsetPlugReceiver;->mHeadsetPlugged:Z

    if-nez v3, :cond_0

    .line 99
    iget-object v3, p0, Lcom/oneplus/tuner/OfficialConfigActivity$2;->this$0:Lcom/oneplus/tuner/OfficialConfigActivity;

    const v6, 0x7f0c06ff

    const/4 v7, 0x1

    invoke-static {v3, v6, v7}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 116
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v3, p0, Lcom/oneplus/tuner/OfficialConfigActivity$2;->this$0:Lcom/oneplus/tuner/OfficialConfigActivity;

    # getter for: Lcom/oneplus/tuner/OfficialConfigActivity;->mTypeListAdapter:Lcom/oneplus/tuner/adapter/TypeListAdapter;
    invoke-static {v3}, Lcom/oneplus/tuner/OfficialConfigActivity;->access$300(Lcom/oneplus/tuner/OfficialConfigActivity;)Lcom/oneplus/tuner/adapter/TypeListAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/oneplus/tuner/adapter/TypeListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;

    .line 105
    .local v0, "config":Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;->getType()Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "type":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;->getTypeId()J

    move-result-wide v4

    .line 107
    .local v4, "type_id":J
    invoke-static {v2}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->putEarphoneType(Ljava/lang/String;)V

    .line 108
    invoke-static {v4, v5}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->putEarphoneTypeId(J)V

    .line 110
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 111
    .local v1, "mIntent":Landroid/content/Intent;
    const-string v3, "earphone_type"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const-string v3, "earphone_type_id"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 114
    iget-object v3, p0, Lcom/oneplus/tuner/OfficialConfigActivity$2;->this$0:Lcom/oneplus/tuner/OfficialConfigActivity;

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v1}, Lcom/oneplus/tuner/OfficialConfigActivity;->setResult(ILandroid/content/Intent;)V

    .line 115
    iget-object v3, p0, Lcom/oneplus/tuner/OfficialConfigActivity$2;->this$0:Lcom/oneplus/tuner/OfficialConfigActivity;

    invoke-virtual {v3}, Lcom/oneplus/tuner/OfficialConfigActivity;->finish()V

    goto :goto_0
.end method
