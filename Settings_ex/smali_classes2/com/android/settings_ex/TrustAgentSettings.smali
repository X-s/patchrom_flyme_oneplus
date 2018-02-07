.class public Lcom/android/settings_ex/TrustAgentSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "TrustAgentSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/TrustAgentSettings$AgentInfo;
    }
.end annotation


# static fields
.field private static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.trust.TrustAgentService"


# instance fields
.field private final mActiveAgents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mAvailableAgents:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/settings_ex/TrustAgentSettings$AgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 50
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/TrustAgentSettings;->mActiveAgents:Landroid/util/ArraySet;

    .line 45
    return-void
.end method

.method private loadActiveAgents()V
    .locals 3

    .prologue
    .line 132
    iget-object v1, p0, Lcom/android/settings_ex/TrustAgentSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 133
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 132
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v0

    .line 134
    .local v0, "activeTrustAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v0, :cond_0

    .line 135
    iget-object v1, p0, Lcom/android/settings_ex/TrustAgentSettings;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 131
    :cond_0
    return-void
.end method

.method private saveActiveAgents()V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/settings_ex/TrustAgentSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings_ex/TrustAgentSettings;->mActiveAgents:Landroid/util/ArraySet;

    .line 141
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 140
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setEnabledTrustAgents(Ljava/util/Collection;I)V

    .line 139
    return-void
.end method

.method private updateAgents()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 92
    invoke-virtual {p0}, Lcom/android/settings_ex/TrustAgentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 93
    .local v3, "context":Landroid/content/Context;
    iget-object v7, p0, Lcom/android/settings_ex/TrustAgentSettings;->mAvailableAgents:Landroid/util/ArrayMap;

    if-nez v7, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/android/settings_ex/TrustAgentSettings;->findAvailableTrustAgents()Landroid/util/ArrayMap;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/TrustAgentSettings;->mAvailableAgents:Landroid/util/ArrayMap;

    .line 96
    :cond_0
    iget-object v7, p0, Lcom/android/settings_ex/TrustAgentSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v7, :cond_1

    .line 97
    new-instance v7, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/TrustAgentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/settings_ex/TrustAgentSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 99
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/TrustAgentSettings;->loadActiveAgents()V

    .line 101
    invoke-virtual {p0}, Lcom/android/settings_ex/TrustAgentSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v7

    const-string/jumbo v8, "trust_agents"

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/PreferenceGroup;

    .line 102
    .local v2, "category":Landroid/support/v7/preference/PreferenceGroup;
    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    .line 105
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    const/16 v8, 0x10

    .line 104
    invoke-static {v3, v8, v7}, Lcom/android/settings_exlib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 107
    .local v0, "admin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    iget-object v7, p0, Lcom/android/settings_ex/TrustAgentSettings;->mAvailableAgents:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 108
    .local v4, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_3

    .line 109
    iget-object v7, p0, Lcom/android/settings_ex/TrustAgentSettings;->mAvailableAgents:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/TrustAgentSettings$AgentInfo;

    .line 111
    .local v1, "agent":Lcom/android/settings_ex/TrustAgentSettings$AgentInfo;
    new-instance v6, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/TrustAgentSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 112
    .local v6, "preference":Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->useAdminDisabledSummary(Z)V

    .line 113
    iput-object v6, v1, Lcom/android/settings_ex/TrustAgentSettings$AgentInfo;->preference:Landroid/support/v14/preference/SwitchPreference;

    .line 114
    invoke-virtual {v6, v10}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setPersistent(Z)V

    .line 115
    iget-object v7, v1, Lcom/android/settings_ex/TrustAgentSettings$AgentInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v7, v1, Lcom/android/settings_ex/TrustAgentSettings$AgentInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 117
    invoke-virtual {v6, v10}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setPersistent(Z)V

    .line 118
    invoke-virtual {v6, p0}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 119
    iget-object v7, p0, Lcom/android/settings_ex/TrustAgentSettings;->mActiveAgents:Landroid/util/ArraySet;

    iget-object v8, v1, Lcom/android/settings_ex/TrustAgentSettings$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setChecked(Z)V

    .line 121
    if-eqz v0, :cond_2

    .line 122
    iget-object v7, p0, Lcom/android/settings_ex/TrustAgentSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v8, v1, Lcom/android/settings_ex/TrustAgentSettings$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v7, v9, v8}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_2

    .line 123
    invoke-virtual {v6, v10}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setChecked(Z)V

    .line 124
    invoke-virtual {v6, v0}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 127
    :cond_2
    iget-object v7, v1, Lcom/android/settings_ex/TrustAgentSettings$AgentInfo;->preference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v7}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 108
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 91
    .end local v1    # "agent":Lcom/android/settings_ex/TrustAgentSettings$AgentInfo;
    .end local v6    # "preference":Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;
    :cond_3
    return-void
.end method


# virtual methods
.method findAvailableTrustAgents()Landroid/util/ArrayMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/settings_ex/TrustAgentSettings$AgentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/android/settings_ex/TrustAgentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 146
    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v9, "android.service.trust.TrustAgentService"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    .local v8, "trustAgentIntent":Landroid/content/Intent;
    const/16 v9, 0x80

    .line 147
    invoke-virtual {v5, v8, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 150
    .local v7, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 151
    .local v1, "agents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/settings_ex/TrustAgentSettings$AgentInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    .line 152
    .local v2, "count":I
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    .line 153
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 154
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 155
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v9, :cond_1

    .line 153
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 156
    :cond_1
    invoke-static {v6, v5}, Lcom/android/settings_ex/TrustAgentUtils;->checkProvidePermission(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 157
    invoke-static {v6}, Lcom/android/settings_ex/TrustAgentUtils;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v4

    .line 158
    .local v4, "name":Landroid/content/ComponentName;
    new-instance v0, Lcom/android/settings_ex/TrustAgentSettings$AgentInfo;

    invoke-direct {v0}, Lcom/android/settings_ex/TrustAgentSettings$AgentInfo;-><init>()V

    .line 159
    .local v0, "agentInfo":Lcom/android/settings_ex/TrustAgentSettings$AgentInfo;
    invoke-virtual {v6, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v0, Lcom/android/settings_ex/TrustAgentSettings$AgentInfo;->label:Ljava/lang/CharSequence;

    .line 160
    invoke-virtual {v6, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, v0, Lcom/android/settings_ex/TrustAgentSettings$AgentInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 161
    iput-object v4, v0, Lcom/android/settings_ex/TrustAgentSettings$AgentInfo;->component:Landroid/content/ComponentName;

    .line 162
    invoke-virtual {v1, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 164
    .end local v0    # "agentInfo":Lcom/android/settings_ex/TrustAgentSettings$AgentInfo;
    .end local v4    # "name":Landroid/content/ComponentName;
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    return-object v1
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 75
    const/16 v0, 0x5b

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings_ex/TrustAgentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings_ex/TrustAgentSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 82
    const v0, 0x7f080092

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/TrustAgentSettings;->addPreferencesFromResource(I)V

    .line 79
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 169
    instance-of v3, p1, Landroid/support/v14/preference/SwitchPreference;

    if-eqz v3, :cond_3

    .line 170
    iget-object v3, p0, Lcom/android/settings_ex/TrustAgentSettings;->mAvailableAgents:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 171
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 172
    iget-object v3, p0, Lcom/android/settings_ex/TrustAgentSettings;->mAvailableAgents:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/TrustAgentSettings$AgentInfo;

    .line 173
    .local v0, "agent":Lcom/android/settings_ex/TrustAgentSettings$AgentInfo;
    iget-object v3, v0, Lcom/android/settings_ex/TrustAgentSettings$AgentInfo;->preference:Landroid/support/v14/preference/SwitchPreference;

    if-ne v3, p1, :cond_2

    .line 174
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 175
    iget-object v3, p0, Lcom/android/settings_ex/TrustAgentSettings;->mActiveAgents:Landroid/util/ArraySet;

    iget-object v4, v0, Lcom/android/settings_ex/TrustAgentSettings$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 176
    iget-object v3, p0, Lcom/android/settings_ex/TrustAgentSettings;->mActiveAgents:Landroid/util/ArraySet;

    iget-object v4, v0, Lcom/android/settings_ex/TrustAgentSettings$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/settings_ex/TrustAgentSettings;->saveActiveAgents()V

    .line 182
    const/4 v3, 0x1

    return v3

    .line 179
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/TrustAgentSettings;->mActiveAgents:Landroid/util/ArraySet;

    iget-object v4, v0, Lcom/android/settings_ex/TrustAgentSettings$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 171
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 186
    .end local v0    # "agent":Lcom/android/settings_ex/TrustAgentSettings$AgentInfo;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_3
    const/4 v3, 0x0

    return v3
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 87
    const-string/jumbo v0, "dummy_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/TrustAgentSettings;->removePreference(Ljava/lang/String;)V

    .line 88
    invoke-direct {p0}, Lcom/android/settings_ex/TrustAgentSettings;->updateAgents()V

    .line 85
    return-void
.end method
