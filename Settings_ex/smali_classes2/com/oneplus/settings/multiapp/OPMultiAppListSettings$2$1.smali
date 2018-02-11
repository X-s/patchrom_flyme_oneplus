.class Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$2$1;
.super Ljava/lang/Object;
.source "OPMultiAppListSettings.java"

# interfaces
.implements Lcom/oneplus/lib/util/loading/LoadingHelper$FinishShowCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$2;

.field final synthetic val$model:Lcom/oneplus/settings/better/OPAppModel;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$2;Lcom/oneplus/settings/better/OPAppModel;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$2;
    .param p2, "val$model"    # Lcom/oneplus/settings/better/OPAppModel;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$2$1;->this$1:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$2;

    iput-object p2, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$2$1;->val$model:Lcom/oneplus/settings/better/OPAppModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(Z)V
    .locals 3
    .param p1, "shown"    # Z

    .prologue
    .line 131
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$2$1;->this$1:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$2;

    iget-object v0, v0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$2;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->-get3(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$2$1;->this$1:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$2;

    iget-object v1, v1, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$2;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    iget-object v2, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$2$1;->val$model:Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->getEnabledString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 129
    return-void
.end method
