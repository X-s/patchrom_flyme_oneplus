.class public Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity;
.super Lcom/oneplus/settings/BaseActivity;
.source "OPElectronicCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity$ElecEnsurenceTask;
    }
.end annotation


# instance fields
.field card:Lcom/oneplus/settings/electroniccard/OPElectronicCardView;

.field task:Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity$ElecEnsurenceTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    return-void
.end method

.method private findViews()V
    .locals 1

    .prologue
    .line 58
    const v0, 0x7f1101fc

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/electroniccard/OPElectronicCardView;

    iput-object v0, p0, Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity;->card:Lcom/oneplus/settings/electroniccard/OPElectronicCardView;

    .line 57
    return-void
.end method

.method public static launch(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 32
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 33
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v6, -0x1

    .line 38
    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v4, 0x7f0400dd

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity;->setContentView(I)V

    .line 40
    invoke-direct {p0}, Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity;->findViews()V

    .line 41
    iget-object v4, p0, Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity;->card:Lcom/oneplus/settings/electroniccard/OPElectronicCardView;

    invoke-virtual {v4}, Lcom/oneplus/settings/electroniccard/OPElectronicCardView;->getDeviceModelTv()Landroid/widget/TextView;

    move-result-object v4

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->getDeviceModel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v4, p0, Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity;->card:Lcom/oneplus/settings/electroniccard/OPElectronicCardView;

    invoke-virtual {v4}, Lcom/oneplus/settings/electroniccard/OPElectronicCardView;->getDeviceImeiTv()Landroid/widget/TextView;

    move-result-object v4

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    const-string/jumbo v4, "key_warranty_time"

    invoke-static {v4, v6, v7}, Lcom/oneplus/settings/utils/OPPrefUtil;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 44
    .local v2, "warrantyStartTime":J
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "imei":Ljava/lang/String;
    const-string/jumbo v4, "key_imei"

    const-string/jumbo v5, ""

    invoke-static {v4, v5}, Lcom/oneplus/settings/utils/OPPrefUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "lastImei":Ljava/lang/String;
    cmp-long v4, v2, v6

    if-eqz v4, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 51
    iget-object v4, p0, Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity;->card:Lcom/oneplus/settings/electroniccard/OPElectronicCardView;

    invoke-virtual {v4}, Lcom/oneplus/settings/electroniccard/OPElectronicCardView;->getWarrantyExpriedDateTv()Landroid/widget/TextView;

    move-result-object v5

    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-eqz v4, :cond_1

    .line 52
    invoke-static {v2, v3}, Lcom/oneplus/settings/utils/OPTimeUtil;->UnixTimeRead(J)Ljava/lang/String;

    move-result-object v4

    .line 51
    :goto_0
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    :goto_1
    return-void

    .line 47
    :cond_0
    const-string/jumbo v4, "key_imei"

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/settings/utils/OPPrefUtil;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v4, Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity$ElecEnsurenceTask;

    invoke-direct {v4, p0, v0}, Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity$ElecEnsurenceTask;-><init>(Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity;->task:Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity$ElecEnsurenceTask;

    .line 49
    iget-object v4, p0, Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity;->task:Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity$ElecEnsurenceTask;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity$ElecEnsurenceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 52
    :cond_1
    const v4, 0x7f0e0077

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0}, Lcom/oneplus/settings/BaseActivity;->onDestroy()V

    .line 106
    iget-object v0, p0, Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity;->task:Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity$ElecEnsurenceTask;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity;->task:Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity$ElecEnsurenceTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity$ElecEnsurenceTask;->cancel(Z)Z

    .line 104
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 63
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity;->finish()V

    .line 65
    const/4 v0, 0x1

    return v0

    .line 67
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
