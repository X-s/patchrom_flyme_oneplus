.class Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1$1;
.super Ljava/lang/Object;
.source "OPMultiAppListSettings.java"

# interfaces
.implements Lcom/oneplus/lib/util/loading/LoadingHelper$FinishShowCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1;

    .prologue
    .line 439
    iput-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1$1;->this$2:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(Z)V
    .locals 4
    .param p1, "shown"    # Z

    .prologue
    .line 442
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1$1;->this$2:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1;

    iget-object v0, v0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1;->this$1:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;

    iget-object v0, v0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1$1;->this$2:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1;

    iget-object v1, v1, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1;->this$1:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;

    iget-object v1, v1, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->-get4(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->-wrap3(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;I)V

    .line 443
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1$1;->this$2:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1;

    iget-object v0, v0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1;->this$1:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;

    iget-object v0, v0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->-get3(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1$1;->this$2:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1;

    iget-object v1, v1, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1;->this$1:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;

    iget-object v1, v1, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    iget-object v2, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1$1;->this$2:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1;

    iget-object v2, v2, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1;->this$1:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;

    iget-object v2, v2, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    iget-object v3, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1$1;->this$2:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1;

    iget-object v3, v3, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1;->this$1:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;

    iget-object v3, v3, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v3}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->-get4(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->-wrap0(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;I)Lcom/oneplus/settings/better/OPAppModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->getEnabledString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 440
    return-void
.end method
