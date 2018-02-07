.class Lcom/android/settings_ex/datausage/AppDataUsage$UpdateRuleTask;
.super Landroid/os/AsyncTask;
.source "AppDataUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/datausage/AppDataUsage;
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

.field final synthetic this$0:Lcom/android/settings_ex/datausage/AppDataUsage;

.field private type:I

.field private uid:I


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/datausage/AppDataUsage;Landroid/content/Context;IZI)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/datausage/AppDataUsage;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "uid"    # I
    .param p4, "disable"    # Z
    .param p5, "type"    # I

    .prologue
    .line 593
    iput-object p1, p0, Lcom/android/settings_ex/datausage/AppDataUsage$UpdateRuleTask;->this$0:Lcom/android/settings_ex/datausage/AppDataUsage;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 594
    iput-object p2, p0, Lcom/android/settings_ex/datausage/AppDataUsage$UpdateRuleTask;->mContext:Landroid/content/Context;

    .line 595
    iput p3, p0, Lcom/android/settings_ex/datausage/AppDataUsage$UpdateRuleTask;->uid:I

    .line 596
    iput-boolean p4, p0, Lcom/android/settings_ex/datausage/AppDataUsage$UpdateRuleTask;->state:Z

    .line 597
    iput p5, p0, Lcom/android/settings_ex/datausage/AppDataUsage$UpdateRuleTask;->type:I

    .line 593
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v8, 0x0

    .line 616
    iget-object v6, p0, Lcom/android/settings_ex/datausage/AppDataUsage$UpdateRuleTask;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/android/settings_ex/datausage/AppDataUsage$UpdateRuleTask;->uid:I

    invoke-static {v6, v7}, Lcom/android/settings_ex/datausage/OPDataUsageUtils;->getApplicationInfoByUid(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    .line 617
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "appInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 618
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 621
    iget v6, p0, Lcom/android/settings_ex/datausage/AppDataUsage$UpdateRuleTask;->type:I

    if-nez v6, :cond_2

    .line 622
    iget-boolean v6, p0, Lcom/android/settings_ex/datausage/AppDataUsage$UpdateRuleTask;->state:Z

    if-eqz v6, :cond_1

    const/4 v3, 0x1

    .line 623
    .local v3, "mobile":I
    :goto_1
    new-instance v4, Lcom/oneplus/settings/utils/OPFirewallRule;

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v4, v6, v8, v7}, Lcom/oneplus/settings/utils/OPFirewallRule;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 624
    .local v4, "rule":Lcom/oneplus/settings/utils/OPFirewallRule;
    iget-object v6, p0, Lcom/android/settings_ex/datausage/AppDataUsage$UpdateRuleTask;->this$0:Lcom/android/settings_ex/datausage/AppDataUsage;

    invoke-virtual {v6}, Lcom/android/settings_ex/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/oneplus/settings/utils/OPFirewallUtils;->addOrUpdateRole(Landroid/content/Context;Lcom/oneplus/settings/utils/OPFirewallRule;)V

    goto :goto_0

    .line 622
    .end local v3    # "mobile":I
    .end local v4    # "rule":Lcom/oneplus/settings/utils/OPFirewallRule;
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "mobile":I
    goto :goto_1

    .line 626
    .end local v3    # "mobile":I
    :cond_2
    iget-boolean v6, p0, Lcom/android/settings_ex/datausage/AppDataUsage$UpdateRuleTask;->state:Z

    if-eqz v6, :cond_3

    const/4 v5, 0x1

    .line 627
    .local v5, "wlan":I
    :goto_2
    new-instance v4, Lcom/oneplus/settings/utils/OPFirewallRule;

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v4, v6, v7, v8}, Lcom/oneplus/settings/utils/OPFirewallRule;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 628
    .restart local v4    # "rule":Lcom/oneplus/settings/utils/OPFirewallRule;
    iget-object v6, p0, Lcom/android/settings_ex/datausage/AppDataUsage$UpdateRuleTask;->this$0:Lcom/android/settings_ex/datausage/AppDataUsage;

    invoke-virtual {v6}, Lcom/android/settings_ex/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/oneplus/settings/utils/OPFirewallUtils;->addOrUpdateRole(Landroid/content/Context;Lcom/oneplus/settings/utils/OPFirewallRule;)V

    goto :goto_0

    .line 626
    .end local v4    # "rule":Lcom/oneplus/settings/utils/OPFirewallRule;
    .end local v5    # "wlan":I
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "wlan":I
    goto :goto_2

    .line 631
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "wlan":I
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    return-object v6
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 615
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/datausage/AppDataUsage$UpdateRuleTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 636
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 637
    iget v0, p0, Lcom/android/settings_ex/datausage/AppDataUsage$UpdateRuleTask;->type:I

    if-nez v0, :cond_1

    .line 638
    iget-object v0, p0, Lcom/android/settings_ex/datausage/AppDataUsage$UpdateRuleTask;->this$0:Lcom/android/settings_ex/datausage/AppDataUsage;

    invoke-static {v0}, Lcom/android/settings_ex/datausage/AppDataUsage;->-get4(Lcom/android/settings_ex/datausage/AppDataUsage;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings_ex/datausage/AppDataUsage$UpdateRuleTask;->state:Z

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 642
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/datausage/AppDataUsage$UpdateRuleTask;->progressDialog:Lcom/oneplus/settings/ui/OPProgressDialog;

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/android/settings_ex/datausage/AppDataUsage$UpdateRuleTask;->progressDialog:Lcom/oneplus/settings/ui/OPProgressDialog;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPProgressDialog;->dismiss()V

    .line 635
    :cond_0
    return-void

    .line 640
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/datausage/AppDataUsage$UpdateRuleTask;->this$0:Lcom/android/settings_ex/datausage/AppDataUsage;

    invoke-static {v0}, Lcom/android/settings_ex/datausage/AppDataUsage;->-get5(Lcom/android/settings_ex/datausage/AppDataUsage;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings_ex/datausage/AppDataUsage$UpdateRuleTask;->state:Z

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 635
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/datausage/AppDataUsage$UpdateRuleTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 602
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 603
    new-instance v0, Lcom/oneplus/settings/ui/OPProgressDialog;

    iget-object v1, p0, Lcom/android/settings_ex/datausage/AppDataUsage$UpdateRuleTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oneplus/settings/ui/OPProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/datausage/AppDataUsage$UpdateRuleTask;->progressDialog:Lcom/oneplus/settings/ui/OPProgressDialog;

    .line 604
    iget-object v0, p0, Lcom/android/settings_ex/datausage/AppDataUsage$UpdateRuleTask;->progressDialog:Lcom/oneplus/settings/ui/OPProgressDialog;

    iget-object v1, p0, Lcom/android/settings_ex/datausage/AppDataUsage$UpdateRuleTask;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0980

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 605
    iget-object v0, p0, Lcom/android/settings_ex/datausage/AppDataUsage$UpdateRuleTask;->progressDialog:Lcom/oneplus/settings/ui/OPProgressDialog;

    const-wide/16 v2, 0x1388

    new-instance v1, Lcom/android/settings_ex/datausage/AppDataUsage$UpdateRuleTask$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/datausage/AppDataUsage$UpdateRuleTask$1;-><init>(Lcom/android/settings_ex/datausage/AppDataUsage$UpdateRuleTask;)V

    invoke-virtual {v0, v2, v3, v1}, Lcom/oneplus/settings/ui/OPProgressDialog;->setTimeOut(JLcom/oneplus/settings/ui/OPProgressDialog$OnTimeOutListener;)V

    .line 611
    iget-object v0, p0, Lcom/android/settings_ex/datausage/AppDataUsage$UpdateRuleTask;->progressDialog:Lcom/oneplus/settings/ui/OPProgressDialog;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/settings/ui/OPProgressDialog;->showDelay(J)V

    .line 601
    return-void
.end method
