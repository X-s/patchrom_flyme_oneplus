.class Lcom/android/settings_ex/datausage/DataUsageMeteredSettings$MeteredPreference;
.super Landroid/support/v14/preference/SwitchPreference;
.source "DataUsageMeteredSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/datausage/DataUsageMeteredSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MeteredPreference"
.end annotation


# instance fields
.field private mBinding:Z

.field private final mTemplate:Landroid/net/NetworkTemplate;

.field final synthetic this$0:Lcom/android/settings_ex/datausage/DataUsageMeteredSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/datausage/DataUsageMeteredSettings;Landroid/content/Context;Landroid/net/NetworkTemplate;)V
    .locals 8
    .param p1, "this$0"    # Lcom/android/settings_ex/datausage/DataUsageMeteredSettings;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 134
    iput-object p1, p0, Lcom/android/settings_ex/datausage/DataUsageMeteredSettings$MeteredPreference;->this$0:Lcom/android/settings_ex/datausage/DataUsageMeteredSettings;

    .line 135
    invoke-direct {p0, p2}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 136
    iput-object p3, p0, Lcom/android/settings_ex/datausage/DataUsageMeteredSettings$MeteredPreference;->mTemplate:Landroid/net/NetworkTemplate;

    .line 138
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/datausage/DataUsageMeteredSettings$MeteredPreference;->setPersistent(Z)V

    .line 140
    iput-boolean v7, p0, Lcom/android/settings_ex/datausage/DataUsageMeteredSettings$MeteredPreference;->mBinding:Z

    .line 141
    invoke-static {p1}, Lcom/android/settings_ex/datausage/DataUsageMeteredSettings;->-get0(Lcom/android/settings_ex/datausage/DataUsageMeteredSettings;)Lcom/android/settings_exlib/NetworkPolicyEditor;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/settings_exlib/NetworkPolicyEditor;->getPolicyMaybeUnquoted(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 142
    .local v0, "policy":Landroid/net/NetworkPolicy;
    if-eqz v0, :cond_1

    .line 143
    iget-wide v2, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 144
    invoke-virtual {p0, v7}, Lcom/android/settings_ex/datausage/DataUsageMeteredSettings$MeteredPreference;->setChecked(Z)V

    .line 145
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/datausage/DataUsageMeteredSettings$MeteredPreference;->setEnabled(Z)V

    .line 152
    :goto_0
    iput-boolean v6, p0, Lcom/android/settings_ex/datausage/DataUsageMeteredSettings$MeteredPreference;->mBinding:Z

    .line 134
    return-void

    .line 147
    :cond_0
    iget-boolean v1, v0, Landroid/net/NetworkPolicy;->metered:Z

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/datausage/DataUsageMeteredSettings$MeteredPreference;->setChecked(Z)V

    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/datausage/DataUsageMeteredSettings$MeteredPreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected notifyChanged()V
    .locals 3

    .prologue
    .line 157
    invoke-super {p0}, Landroid/support/v14/preference/SwitchPreference;->notifyChanged()V

    .line 158
    iget-boolean v0, p0, Lcom/android/settings_ex/datausage/DataUsageMeteredSettings$MeteredPreference;->mBinding:Z

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageMeteredSettings$MeteredPreference;->this$0:Lcom/android/settings_ex/datausage/DataUsageMeteredSettings;

    invoke-static {v0}, Lcom/android/settings_ex/datausage/DataUsageMeteredSettings;->-get0(Lcom/android/settings_ex/datausage/DataUsageMeteredSettings;)Lcom/android/settings_exlib/NetworkPolicyEditor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/datausage/DataUsageMeteredSettings$MeteredPreference;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/DataUsageMeteredSettings$MeteredPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_exlib/NetworkPolicyEditor;->setPolicyMetered(Landroid/net/NetworkTemplate;Z)V

    .line 161
    const-string/jumbo v0, "com.android.providers.settings"

    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 156
    :cond_0
    return-void
.end method
