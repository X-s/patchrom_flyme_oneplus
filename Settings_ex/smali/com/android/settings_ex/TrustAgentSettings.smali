.class public Lcom/android/settings_ex/TrustAgentSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "TrustAgentSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


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
    .line 40
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 45
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/TrustAgentSettings;->mActiveAgents:Landroid/util/ArraySet;

    .line 49
    return-void
.end method

.method private loadActiveAgents()V
    .locals 3

    .prologue
    .line 126
    iget-object v1, p0, Lcom/android/settings_ex/TrustAgentSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v0

    .line 128
    .local v0, "activeTrustAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v0, :cond_0

    .line 129
    iget-object v1, p0, Lcom/android/settings_ex/TrustAgentSettings;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 131
    :cond_0
    return-void
.end method

.method private saveActiveAgents()V
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings_ex/TrustAgentSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings_ex/TrustAgentSettings;->mActiveAgents:Landroid/util/ArraySet;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setEnabledTrustAgents(Ljava/util/Collection;I)V

    .line 136
    return-void
.end method

.method private updateAgents()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 87
    invoke-virtual {p0}, Lcom/android/settings_ex/TrustAgentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 88
    .local v2, "context":Landroid/content/Context;
    iget-object v8, p0, Lcom/android/settings_ex/TrustAgentSettings;->mAvailableAgents:Landroid/util/ArrayMap;

    if-nez v8, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/android/settings_ex/TrustAgentSettings;->findAvailableTrustAgents()Landroid/util/ArrayMap;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/TrustAgentSettings;->mAvailableAgents:Landroid/util/ArrayMap;

    .line 91
    :cond_0
    iget-object v8, p0, Lcom/android/settings_ex/TrustAgentSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v8, :cond_1

    .line 92
    new-instance v8, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/TrustAgentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/settings_ex/TrustAgentSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 94
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/TrustAgentSettings;->loadActiveAgents()V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings_ex/TrustAgentSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    const-string v9, "trust_agents"

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 97
    .local v1, "category":Landroid/preference/PreferenceGroup;
    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 99
    iget-object v8, p0, Lcom/android/settings_ex/TrustAgentSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v8, v10}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v8

    and-int/lit8 v8, v8, 0x10

    if-eqz v8, :cond_3

    const/4 v4, 0x1

    .line 102
    .local v4, "disabledByDevicePolicy":Z
    :goto_0
    iget-object v8, p0, Lcom/android/settings_ex/TrustAgentSettings;->mAvailableAgents:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 103
    .local v3, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v3, :cond_4

    .line 104
    iget-object v8, p0, Lcom/android/settings_ex/TrustAgentSettings;->mAvailableAgents:Landroid/util/ArrayMap;

    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/TrustAgentSettings$AgentInfo;

    .line 105
    .local v0, "agent":Lcom/android/settings_ex/TrustAgentSettings$AgentInfo;
    new-instance v6, Landroid/preference/SwitchPreference;

    invoke-direct {v6, v2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 106
    .local v6, "preference":Landroid/preference/SwitchPreference;
    iput-object v6, v0, Lcom/android/settings_ex/TrustAgentSettings$AgentInfo;->preference:Landroid/preference/SwitchPreference;

    .line 107
    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 108
    iget-object v8, v0, Lcom/android/settings_ex/TrustAgentSettings$AgentInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v6, v8}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v8, v0, Lcom/android/settings_ex/TrustAgentSettings$AgentInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v8}, Landroid/preference/SwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 110
    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 111
    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 112
    iget-object v8, p0, Lcom/android/settings_ex/TrustAgentSettings;->mActiveAgents:Landroid/util/ArraySet;

    iget-object v9, v0, Lcom/android/settings_ex/TrustAgentSettings$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v6, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 114
    if-eqz v4, :cond_2

    iget-object v8, p0, Lcom/android/settings_ex/TrustAgentSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v9, v0, Lcom/android/settings_ex/TrustAgentSettings$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v8, v10, v9}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_2

    .line 116
    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 117
    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 118
    const v8, 0x7f0c0d1d

    invoke-virtual {v6, v8}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 121
    :cond_2
    iget-object v8, v0, Lcom/android/settings_ex/TrustAgentSettings$AgentInfo;->preference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v8}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 103
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v0    # "agent":Lcom/android/settings_ex/TrustAgentSettings$AgentInfo;
    .end local v3    # "count":I
    .end local v4    # "disabledByDevicePolicy":Z
    .end local v5    # "i":I
    .end local v6    # "preference":Landroid/preference/SwitchPreference;
    :cond_3
    move v4, v7

    .line 99
    goto :goto_0

    .line 123
    .restart local v3    # "count":I
    .restart local v4    # "disabledByDevicePolicy":Z
    .restart local v5    # "i":I
    :cond_4
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
    .line 139
    invoke-virtual {p0}, Lcom/android/settings_ex/TrustAgentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 140
    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.service.trust.TrustAgentService"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    .local v8, "trustAgentIntent":Landroid/content/Intent;
    const/16 v9, 0x80

    invoke-virtual {v5, v8, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 144
    .local v7, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 145
    .local v1, "agents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/settings_ex/TrustAgentSettings$AgentInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    .line 146
    .local v2, "count":I
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    .line 147
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 148
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 149
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v9, :cond_1

    .line 147
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 150
    :cond_1
    invoke-static {v6, v5}, Lcom/android/settings_ex/TrustAgentUtils;->checkProvidePermission(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 151
    invoke-static {v6}, Lcom/android/settings_ex/TrustAgentUtils;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v4

    .line 152
    .local v4, "name":Landroid/content/ComponentName;
    new-instance v0, Lcom/android/settings_ex/TrustAgentSettings$AgentInfo;

    invoke-direct {v0}, Lcom/android/settings_ex/TrustAgentSettings$AgentInfo;-><init>()V

    .line 153
    .local v0, "agentInfo":Lcom/android/settings_ex/TrustAgentSettings$AgentInfo;
    invoke-virtual {v6, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v0, Lcom/android/settings_ex/TrustAgentSettings$AgentInfo;->label:Ljava/lang/CharSequence;

    .line 154
    invoke-virtual {v6, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, v0, Lcom/android/settings_ex/TrustAgentSettings$AgentInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 155
    iput-object v4, v0, Lcom/android/settings_ex/TrustAgentSettings$AgentInfo;->component:Landroid/content/ComponentName;

    .line 156
    invoke-virtual {v1, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 158
    .end local v0    # "agentInfo":Lcom/android/settings_ex/TrustAgentSettings$AgentInfo;
    .end local v4    # "name":Landroid/content/ComponentName;
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    return-object v1
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 70
    const/16 v0, 0x5b

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings_ex/TrustAgentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings_ex/TrustAgentSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 77
    const v0, 0x7f080076

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/TrustAgentSettings;->addPreferencesFromResource(I)V

    .line 78
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 163
    instance-of v3, p1, Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_3

    .line 164
    iget-object v3, p0, Lcom/android/settings_ex/TrustAgentSettings;->mAvailableAgents:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 165
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 166
    iget-object v3, p0, Lcom/android/settings_ex/TrustAgentSettings;->mAvailableAgents:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/TrustAgentSettings$AgentInfo;

    .line 167
    .local v0, "agent":Lcom/android/settings_ex/TrustAgentSettings$AgentInfo;
    iget-object v3, v0, Lcom/android/settings_ex/TrustAgentSettings$AgentInfo;->preference:Landroid/preference/SwitchPreference;

    if-ne v3, p1, :cond_2

    .line 168
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 169
    iget-object v3, p0, Lcom/android/settings_ex/TrustAgentSettings;->mActiveAgents:Landroid/util/ArraySet;

    iget-object v4, v0, Lcom/android/settings_ex/TrustAgentSettings$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 170
    iget-object v3, p0, Lcom/android/settings_ex/TrustAgentSettings;->mActiveAgents:Landroid/util/ArraySet;

    iget-object v4, v0, Lcom/android/settings_ex/TrustAgentSettings$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/settings_ex/TrustAgentSettings;->saveActiveAgents()V

    .line 176
    const/4 v3, 0x1

    .line 180
    .end local v0    # "agent":Lcom/android/settings_ex/TrustAgentSettings$AgentInfo;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :goto_2
    return v3

    .line 173
    .restart local v0    # "agent":Lcom/android/settings_ex/TrustAgentSettings$AgentInfo;
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/TrustAgentSettings;->mActiveAgents:Landroid/util/ArraySet;

    iget-object v4, v0, Lcom/android/settings_ex/TrustAgentSettings$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 165
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    .end local v0    # "agent":Lcom/android/settings_ex/TrustAgentSettings$AgentInfo;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_3
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 82
    const-string v0, "dummy_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/TrustAgentSettings;->removePreference(Ljava/lang/String;)V

    .line 83
    invoke-direct {p0}, Lcom/android/settings_ex/TrustAgentSettings;->updateAgents()V

    .line 84
    return-void
.end method
