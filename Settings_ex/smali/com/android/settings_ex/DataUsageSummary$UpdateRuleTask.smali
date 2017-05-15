.class Lcom/android/settings_ex/DataUsageSummary$UpdateRuleTask;
.super Landroid/os/AsyncTask;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateRuleTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final TYPE_MOBILE:I = 0x0

.field public static final TYPE_WLAN:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field progressDialog:Lcom/oneplus/settings/ui/OPProgressDialog;

.field private state:Z

.field final synthetic this$0:Lcom/android/settings_ex/DataUsageSummary;

.field private type:I

.field private uid:I


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/DataUsageSummary;Landroid/content/Context;IZI)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "uid"    # I
    .param p4, "mobileState"    # Z
    .param p5, "type"    # I

    .prologue
    .line 1547
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$UpdateRuleTask;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1548
    iput-object p2, p0, Lcom/android/settings_ex/DataUsageSummary$UpdateRuleTask;->mContext:Landroid/content/Context;

    .line 1549
    iput p3, p0, Lcom/android/settings_ex/DataUsageSummary$UpdateRuleTask;->uid:I

    .line 1550
    iput-boolean p4, p0, Lcom/android/settings_ex/DataUsageSummary$UpdateRuleTask;->state:Z

    .line 1551
    iput p5, p0, Lcom/android/settings_ex/DataUsageSummary$UpdateRuleTask;->type:I

    .line 1552
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 11
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1570
    iget-object v8, p0, Lcom/android/settings_ex/DataUsageSummary$UpdateRuleTask;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings_ex/net/UidDetailProvider;
    invoke-static {v8}, Lcom/android/settings_ex/DataUsageSummary;->access$1800(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/net/UidDetailProvider;

    move-result-object v8

    iget v9, p0, Lcom/android/settings_ex/DataUsageSummary$UpdateRuleTask;->uid:I

    invoke-virtual {v8, v9}, Lcom/android/settings_ex/net/UidDetailProvider;->getApplicationInfoByUid(I)Ljava/util/List;

    move-result-object v1

    .line 1571
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 1572
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 1575
    iget v8, p0, Lcom/android/settings_ex/DataUsageSummary$UpdateRuleTask;->type:I

    if-nez v8, :cond_2

    .line 1576
    iget-boolean v8, p0, Lcom/android/settings_ex/DataUsageSummary$UpdateRuleTask;->state:Z

    if-eqz v8, :cond_1

    move v3, v6

    .line 1577
    .local v3, "mobile":I
    :goto_1
    new-instance v4, Lcom/oneplus/settings/utils/OPFirewallRule;

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v4, v8, v10, v9}, Lcom/oneplus/settings/utils/OPFirewallRule;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 1578
    .local v4, "rule":Lcom/oneplus/settings/utils/OPFirewallRule;
    iget-object v8, p0, Lcom/android/settings_ex/DataUsageSummary$UpdateRuleTask;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-virtual {v8}, Lcom/android/settings_ex/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v4}, Lcom/oneplus/settings/utils/OPFirewallUtils;->addOrUpdateRole(Landroid/content/Context;Lcom/oneplus/settings/utils/OPFirewallRule;)V

    goto :goto_0

    .end local v3    # "mobile":I
    .end local v4    # "rule":Lcom/oneplus/settings/utils/OPFirewallRule;
    :cond_1
    move v3, v7

    .line 1576
    goto :goto_1

    .line 1580
    :cond_2
    iget-boolean v8, p0, Lcom/android/settings_ex/DataUsageSummary$UpdateRuleTask;->state:Z

    if-eqz v8, :cond_3

    move v5, v6

    .line 1581
    .local v5, "wlan":I
    :goto_2
    new-instance v4, Lcom/oneplus/settings/utils/OPFirewallRule;

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v4, v8, v9, v10}, Lcom/oneplus/settings/utils/OPFirewallRule;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 1582
    .restart local v4    # "rule":Lcom/oneplus/settings/utils/OPFirewallRule;
    iget-object v8, p0, Lcom/android/settings_ex/DataUsageSummary$UpdateRuleTask;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-virtual {v8}, Lcom/android/settings_ex/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v4}, Lcom/oneplus/settings/utils/OPFirewallUtils;->addOrUpdateRole(Landroid/content/Context;Lcom/oneplus/settings/utils/OPFirewallRule;)V

    goto :goto_0

    .end local v4    # "rule":Lcom/oneplus/settings/utils/OPFirewallRule;
    .end local v5    # "wlan":I
    :cond_3
    move v5, v7

    .line 1580
    goto :goto_2

    .line 1585
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    return-object v6
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1538
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DataUsageSummary$UpdateRuleTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 1590
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1591
    iget v0, p0, Lcom/android/settings_ex/DataUsageSummary$UpdateRuleTask;->type:I

    if-nez v0, :cond_1

    .line 1592
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$UpdateRuleTask;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mDataUsageRestrict:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$1700(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings_ex/DataUsageSummary$UpdateRuleTask;->state:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1596
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$UpdateRuleTask;->progressDialog:Lcom/oneplus/settings/ui/OPProgressDialog;

    if-eqz v0, :cond_0

    .line 1597
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$UpdateRuleTask;->progressDialog:Lcom/oneplus/settings/ui/OPProgressDialog;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPProgressDialog;->dismiss()V

    .line 1599
    :cond_0
    return-void

    .line 1594
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$UpdateRuleTask;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mWifiRestrict:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$1600(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings_ex/DataUsageSummary$UpdateRuleTask;->state:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1538
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DataUsageSummary$UpdateRuleTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 1556
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1557
    new-instance v0, Lcom/oneplus/settings/ui/OPProgressDialog;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$UpdateRuleTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oneplus/settings/ui/OPProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$UpdateRuleTask;->progressDialog:Lcom/oneplus/settings/ui/OPProgressDialog;

    .line 1558
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$UpdateRuleTask;->progressDialog:Lcom/oneplus/settings/ui/OPProgressDialog;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$UpdateRuleTask;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0726

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1559
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$UpdateRuleTask;->progressDialog:Lcom/oneplus/settings/ui/OPProgressDialog;

    const-wide/16 v2, 0x1388

    new-instance v1, Lcom/android/settings_ex/DataUsageSummary$UpdateRuleTask$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/DataUsageSummary$UpdateRuleTask$1;-><init>(Lcom/android/settings_ex/DataUsageSummary$UpdateRuleTask;)V

    invoke-virtual {v0, v2, v3, v1}, Lcom/oneplus/settings/ui/OPProgressDialog;->setTimeOut(JLcom/oneplus/settings/ui/OPProgressDialog$OnTimeOutListener;)V

    .line 1565
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$UpdateRuleTask;->progressDialog:Lcom/oneplus/settings/ui/OPProgressDialog;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/settings/ui/OPProgressDialog;->showDelay(J)V

    .line 1566
    return-void
.end method
