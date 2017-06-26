.class Lcom/android/settings_ex/DataUsageSummary$6;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 1286
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$6;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1289
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary$6;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mBinding:Z
    invoke-static {v4}, Lcom/android/settings_ex/DataUsageSummary;->access$400(Lcom/android/settings_ex/DataUsageSummary;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1305
    :goto_0
    return-void

    .line 1291
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary$6;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;
    invoke-static {v4}, Lcom/android/settings_ex/DataUsageSummary;->access$500(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Switch;->isChecked()Z

    move-result v4

    if-nez v4, :cond_2

    move v1, v2

    .line 1292
    .local v1, "enabled":Z
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary$6;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings_ex/DataUsageSummary;->access$600(Lcom/android/settings_ex/DataUsageSummary;)Ljava/lang/String;

    move-result-object v0

    .line 1293
    .local v0, "currentTab":Ljava/lang/String;
    # invokes: Lcom/android/settings_ex/DataUsageSummary;->isMobileTab(Ljava/lang/String;)Z
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$700(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1294
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary$6;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-virtual {v4}, Lcom/android/settings_ex/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0xb2

    invoke-static {v4, v5, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 1295
    if-eqz v1, :cond_3

    .line 1296
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary$6;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary$6;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->getSubId(Ljava/lang/String;)I
    invoke-static {v5, v0}, Lcom/android/settings_ex/DataUsageSummary;->access$800(Lcom/android/settings_ex/DataUsageSummary;Ljava/lang/String;)I

    move-result v5

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->setMobileDataEnabled(IZ)V
    invoke-static {v4, v5, v2}, Lcom/android/settings_ex/DataUsageSummary;->access$900(Lcom/android/settings_ex/DataUsageSummary;IZ)V

    .line 1304
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$6;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v2, v3}, Lcom/android/settings_ex/DataUsageSummary;->access$1000(Lcom/android/settings_ex/DataUsageSummary;Z)V

    goto :goto_0

    .end local v0    # "currentTab":Ljava/lang/String;
    .end local v1    # "enabled":Z
    :cond_2
    move v1, v3

    .line 1291
    goto :goto_1

    .line 1300
    .restart local v0    # "currentTab":Ljava/lang/String;
    .restart local v1    # "enabled":Z
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$6;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary$6;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary$6;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/settings_ex/DataUsageSummary;->access$600(Lcom/android/settings_ex/DataUsageSummary;)Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->getSubId(Ljava/lang/String;)I
    invoke-static {v4, v5}, Lcom/android/settings_ex/DataUsageSummary;->access$800(Lcom/android/settings_ex/DataUsageSummary;Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v4}, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;->show(Lcom/android/settings_ex/DataUsageSummary;I)V

    goto :goto_2
.end method
