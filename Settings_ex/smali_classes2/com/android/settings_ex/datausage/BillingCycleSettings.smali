.class public Lcom/android/settings_ex/datausage/BillingCycleSettings;
.super Lcom/android/settings_ex/datausage/DataUsageBase;
.source "BillingCycleSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings_ex/datausage/DataUsageEditController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/datausage/BillingCycleSettings$BytesEditorFragment;,
        Lcom/android/settings_ex/datausage/BillingCycleSettings$ConfirmLimitFragment;,
        Lcom/android/settings_ex/datausage/BillingCycleSettings$CycleEditorFragment;
    }
.end annotation


# static fields
.field private static final KEY_BILLING_CYCLE:Ljava/lang/String; = "billing_cycle"

.field private static final KEY_DATA_LIMIT:Ljava/lang/String; = "data_limit"

.field private static final KEY_DATA_WARNING:Ljava/lang/String; = "data_warning"

.field private static final KEY_SET_DATA_LIMIT:Ljava/lang/String; = "set_data_limit"

.field private static final KEY_SET_DATA_TIME_RANGE:Ljava/lang/String; = "set_data_time_range"

.field private static final KEY_SET_DATA_WARNING:Ljava/lang/String; = "set_data_warning"

.field private static final LOGD:Z = false

.field public static final PREF_FILE:Ljava/lang/String; = "data_usage"

.field public static final PREF_SHOW_DATA_USAGE:Ljava/lang/String; = "show_data_usage"

.field private static final TAG:Ljava/lang/String; = "BillingCycleSettings"

.field private static final TAG_CONFIRM_LIMIT:Ljava/lang/String; = "confirmLimit"

.field private static final TAG_CYCLE_EDITOR:Ljava/lang/String; = "cycleEditor"

.field private static final TAG_WARNING_EDITOR:Ljava/lang/String; = "warningEditor"


# instance fields
.field private mBillingCycle:Landroid/support/v7/preference/Preference;

.field private mDataLimit:Landroid/support/v7/preference/Preference;

.field private mDataUsageController:Lcom/android/settings_exlib/net/DataUsageController;

.field private mDataWarning:Landroid/support/v7/preference/Preference;

.field private mEnableDataLimit:Landroid/support/v14/preference/SwitchPreference;

.field private mEnableDataTimeRange:Landroid/support/v14/preference/SwitchPreference;

.field private mEnableDataWarning:Landroid/support/v14/preference/SwitchPreference;

.field private mNetworkTemplate:Landroid/net/NetworkTemplate;

.field private mShowDataUsage:Z


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/datausage/BillingCycleSettings;)Landroid/net/NetworkTemplate;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/datausage/BillingCycleSettings;J)V
    .locals 1
    .param p1, "limitBytes"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/datausage/BillingCycleSettings;->setPolicyLimitBytes(J)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings_ex/datausage/DataUsageBase;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings;->mShowDataUsage:Z

    .line 49
    return-void
.end method

.method public static isDataSelectionEnable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 443
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isShowDataUsage(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 438
    const-string/jumbo v1, "data_usage"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 439
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "show_data_usage"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private setPolicyLimitBytes(J)V
    .locals 3
    .param p1, "limitBytes"    # J

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings;->services:Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settings_exlib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settings_exlib/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    .line 188
    invoke-direct {p0}, Lcom/android/settings_ex/datausage/BillingCycleSettings;->updatePrefs()V

    .line 185
    return-void
.end method

.method private setPolicyWarningBytes(J)V
    .locals 3
    .param p1, "warningBytes"    # J

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings;->services:Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settings_exlib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settings_exlib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    .line 194
    invoke-direct {p0}, Lcom/android/settings_ex/datausage/BillingCycleSettings;->updatePrefs()V

    .line 191
    return-void
.end method

.method private updatePrefs()V
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 112
    iget-object v1, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings;->services:Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settings_exlib/NetworkPolicyEditor;

    iget-object v3, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v1, v3}, Lcom/android/settings_exlib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 113
    .local v0, "policy":Landroid/net/NetworkPolicy;
    iget-object v3, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings;->mBillingCycle:Landroid/support/v7/preference/Preference;

    new-array v4, v2, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 114
    iget v1, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    .line 113
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v6

    const v1, 0x7f0e0fe6

    invoke-virtual {p0, v1, v4}, Lcom/android/settings_ex/datausage/BillingCycleSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 115
    if-eqz v0, :cond_1

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v1, v4, v8

    if-eqz v1, :cond_1

    .line 116
    iget-object v1, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings;->mDataWarning:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/BillingCycleSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v1, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings;->mDataWarning:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 118
    iget-object v1, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings;->mEnableDataWarning:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 124
    :goto_1
    if-eqz v0, :cond_2

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v1, v4, v8

    if-eqz v1, :cond_2

    .line 125
    iget-object v1, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings;->mDataLimit:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/BillingCycleSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v1, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings;->mDataLimit:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 127
    iget-object v1, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 133
    :goto_2
    iget-object v1, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings;->mEnableDataTimeRange:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean v2, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings;->mShowDataUsage:Z

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 111
    return-void

    :cond_0
    move v1, v2

    .line 114
    goto :goto_0

    .line 120
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings;->mDataWarning:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v1, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings;->mDataWarning:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 122
    iget-object v1, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings;->mEnableDataWarning:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v6}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 129
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings;->mDataLimit:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v1, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings;->mDataLimit:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 131
    iget-object v1, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v6}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_2
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 182
    const/16 v0, 0x156

    return v0
.end method

.method public getNetworkPolicyEditor()Lcom/android/settings_exlib/NetworkPolicyEditor;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings;->services:Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settings_exlib/NetworkPolicyEditor;

    return-object v0
.end method

.method public getNetworkTemplate()Landroid/net/NetworkTemplate;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/android/settings_ex/datausage/DataUsageBase;->onCreate(Landroid/os/Bundle;)V

    .line 84
    new-instance v2, Lcom/android/settings_exlib/net/DataUsageController;

    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/BillingCycleSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings_exlib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings;->mDataUsageController:Lcom/android/settings_exlib/net/DataUsageController;

    .line 86
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/BillingCycleSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 87
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "network_template"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkTemplate;

    iput-object v2, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    .line 89
    const v2, 0x7f080016

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/datausage/BillingCycleSettings;->addPreferencesFromResource(I)V

    .line 90
    const-string/jumbo v2, "billing_cycle"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/datausage/BillingCycleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings;->mBillingCycle:Landroid/support/v7/preference/Preference;

    .line 91
    const-string/jumbo v2, "set_data_warning"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/datausage/BillingCycleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings;->mEnableDataWarning:Landroid/support/v14/preference/SwitchPreference;

    .line 92
    iget-object v2, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings;->mEnableDataWarning:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 93
    const-string/jumbo v2, "data_warning"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/datausage/BillingCycleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings;->mDataWarning:Landroid/support/v7/preference/Preference;

    .line 94
    const-string/jumbo v2, "set_data_limit"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/datausage/BillingCycleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/support/v14/preference/SwitchPreference;

    .line 95
    iget-object v2, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 96
    const-string/jumbo v2, "data_limit"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/datausage/BillingCycleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings;->mDataLimit:Landroid/support/v7/preference/Preference;

    .line 97
    const-string/jumbo v2, "set_data_time_range"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/datausage/BillingCycleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings;->mEnableDataTimeRange:Landroid/support/v14/preference/SwitchPreference;

    .line 98
    iget-object v2, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings;->mEnableDataTimeRange:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/BillingCycleSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 101
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/datausage/BillingCycleSettings;->isShowDataUsage(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings;->mShowDataUsage:Z

    .line 102
    iget-object v2, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings;->mEnableDataTimeRange:Landroid/support/v14/preference/SwitchPreference;

    invoke-static {v1}, Lcom/android/settings_ex/datausage/BillingCycleSettings;->isDataSelectionEnable(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setVisible(Z)V

    .line 81
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const-wide/16 v6, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 153
    iget-object v2, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/support/v14/preference/SwitchPreference;

    if-ne v2, p1, :cond_1

    .line 154
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 155
    .local v0, "enabled":Z
    if-eqz v0, :cond_0

    .line 156
    invoke-static {p0}, Lcom/android/settings_ex/datausage/BillingCycleSettings$ConfirmLimitFragment;->show(Lcom/android/settings_ex/datausage/BillingCycleSettings;)V

    .line 160
    :goto_0
    return v4

    .line 158
    :cond_0
    invoke-direct {p0, v6, v7}, Lcom/android/settings_ex/datausage/BillingCycleSettings;->setPolicyLimitBytes(J)V

    goto :goto_0

    .line 161
    .end local v0    # "enabled":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings;->mEnableDataTimeRange:Landroid/support/v14/preference/SwitchPreference;

    if-ne v2, p1, :cond_3

    .line 162
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 163
    .restart local v0    # "enabled":Z
    iget-boolean v2, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings;->mShowDataUsage:Z

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings;->mShowDataUsage:Z

    .line 164
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/BillingCycleSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v5, "data_usage"

    invoke-virtual {v2, v5, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 166
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "show_data_usage"

    iget-boolean v5, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings;->mShowDataUsage:Z

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 167
    return v4

    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_2
    move v2, v4

    .line 163
    goto :goto_1

    .line 168
    .end local v0    # "enabled":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings;->mEnableDataWarning:Landroid/support/v14/preference/SwitchPreference;

    if-ne v2, p1, :cond_5

    .line 169
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 170
    .restart local v0    # "enabled":Z
    if-eqz v0, :cond_4

    .line 171
    iget-object v2, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings;->mDataUsageController:Lcom/android/settings_exlib/net/DataUsageController;

    invoke-virtual {v2}, Lcom/android/settings_exlib/net/DataUsageController;->getDefaultWarningLevel()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/datausage/BillingCycleSettings;->setPolicyWarningBytes(J)V

    .line 175
    :goto_2
    return v4

    .line 173
    :cond_4
    invoke-direct {p0, v6, v7}, Lcom/android/settings_ex/datausage/BillingCycleSettings;->setPolicyWarningBytes(J)V

    goto :goto_2

    .line 177
    .end local v0    # "enabled":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_5
    return v3
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v1, 0x1

    .line 138
    iget-object v0, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings;->mBillingCycle:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 139
    invoke-static {p0}, Lcom/android/settings_ex/datausage/BillingCycleSettings$CycleEditorFragment;->show(Lcom/android/settings_ex/datausage/BillingCycleSettings;)V

    .line 140
    return v1

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings;->mDataWarning:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_1

    .line 142
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/settings_ex/datausage/BillingCycleSettings$BytesEditorFragment;->show(Lcom/android/settings_ex/datausage/DataUsageEditController;Z)V

    .line 143
    return v1

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings;->mDataLimit:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_2

    .line 145
    invoke-static {p0, v1}, Lcom/android/settings_ex/datausage/BillingCycleSettings$BytesEditorFragment;->show(Lcom/android/settings_ex/datausage/DataUsageEditController;Z)V

    .line 146
    return v1

    .line 148
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings_ex/datausage/DataUsageBase;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 107
    invoke-super {p0}, Lcom/android/settings_ex/datausage/DataUsageBase;->onResume()V

    .line 108
    invoke-direct {p0}, Lcom/android/settings_ex/datausage/BillingCycleSettings;->updatePrefs()V

    .line 106
    return-void
.end method

.method public updateDataUsage()V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/settings_ex/datausage/BillingCycleSettings;->updatePrefs()V

    .line 208
    return-void
.end method
