.class Lcom/android/settings_ex/DataUsageSummary$9;
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
    .line 1512
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$9;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1515
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$9;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mCurrentApp:Lcom/android/settings_ex/DataUsageSummary$AppItem;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->access$1500(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/DataUsageSummary$AppItem;

    move-result-object v1

    iget v3, v1, Lcom/android/settings_ex/DataUsageSummary$AppItem;->key:I

    .line 1516
    .local v3, "uid":I
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$9;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mWifiRestrict:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->access$1600(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    move v4, v5

    .line 1517
    .local v4, "wlanState":Z
    :goto_0
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$UpdateRuleTask;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$9;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$9;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-virtual {v2}, Lcom/android/settings_ex/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/DataUsageSummary$UpdateRuleTask;-><init>(Lcom/android/settings_ex/DataUsageSummary;Landroid/content/Context;IZI)V

    .line 1518
    .local v0, "ruleTask":Lcom/android/settings_ex/DataUsageSummary$UpdateRuleTask;
    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DataUsageSummary$UpdateRuleTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1519
    return-void

    .end local v0    # "ruleTask":Lcom/android/settings_ex/DataUsageSummary$UpdateRuleTask;
    .end local v4    # "wlanState":Z
    :cond_0
    move v4, v6

    .line 1516
    goto :goto_0
.end method
