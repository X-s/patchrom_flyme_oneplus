.class public Lcom/android/settings_ex/applications/ManageDomainUrls;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "ManageDomainUrls.java"

# interfaces
.implements Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applications/ManageDomainUrls$DomainAppPreference;
    }
.end annotation


# static fields
.field private static final INSTALLED_APP_DETAILS:I = 0x1


# instance fields
.field private mApplicationsState:Lcom/android/settings_exlib/applications/ApplicationsState;

.field private mDomainAppList:Landroid/support/v7/preference/PreferenceGroup;

.field private mSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

.field private mWebAction:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/applications/ManageDomainUrls;)Lcom/android/settings_exlib/applications/ApplicationsState;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageDomainUrls;->mApplicationsState:Lcom/android/settings_exlib/applications/ApplicationsState;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private rebuild()V
    .locals 4

    .prologue
    .line 150
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageDomainUrls;->mSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    .line 151
    sget-object v2, Lcom/android/settings_exlib/applications/ApplicationsState;->FILTER_WITH_DOMAIN_URLS:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    sget-object v3, Lcom/android/settings_exlib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    .line 150
    invoke-virtual {v1, v2, v3}, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->rebuild(Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 152
    .local v0, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ManageDomainUrls;->onRebuildComplete(Ljava/util/ArrayList;)V

    .line 149
    :cond_0
    return-void
.end method

.method private rebuildAppList(Landroid/support/v7/preference/PreferenceGroup;Ljava/util/ArrayList;)V
    .locals 7
    .param p1, "group"    # Landroid/support/v7/preference/PreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/preference/PreferenceGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p2, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/applications/ManageDomainUrls;->cacheRemoveAllPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 159
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 160
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 161
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .line 162
    .local v1, "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 163
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/applications/ManageDomainUrls;->getCachedPreference(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/applications/ManageDomainUrls$DomainAppPreference;

    .line 164
    .local v4, "preference":Lcom/android/settings_ex/applications/ManageDomainUrls$DomainAppPreference;
    if-nez v4, :cond_0

    .line 165
    new-instance v4, Lcom/android/settings_ex/applications/ManageDomainUrls$DomainAppPreference;

    .end local v4    # "preference":Lcom/android/settings_ex/applications/ManageDomainUrls$DomainAppPreference;
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageDomainUrls;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, p0, v5, v1}, Lcom/android/settings_ex/applications/ManageDomainUrls$DomainAppPreference;-><init>(Lcom/android/settings_ex/applications/ManageDomainUrls;Landroid/content/Context;Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;)V

    .line 166
    .restart local v4    # "preference":Lcom/android/settings_ex/applications/ManageDomainUrls$DomainAppPreference;
    invoke-virtual {v4, v3}, Lcom/android/settings_ex/applications/ManageDomainUrls$DomainAppPreference;->setKey(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v4, p0}, Lcom/android/settings_ex/applications/ManageDomainUrls$DomainAppPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 168
    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 172
    :goto_1
    invoke-virtual {v4, v2}, Lcom/android/settings_ex/applications/ManageDomainUrls$DomainAppPreference;->setOrder(I)V

    .line 160
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {v4}, Lcom/android/settings_ex/applications/ManageDomainUrls$DomainAppPreference;->reuse()V

    goto :goto_1

    .line 174
    .end local v1    # "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "preference":Lcom/android/settings_ex/applications/ManageDomainUrls$DomainAppPreference;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/applications/ManageDomainUrls;->removeCachedPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 157
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 200
    const/16 v0, 0x8f

    return v0
.end method

.method public onAllSizesComputed()V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/applications/ManageDomainUrls;->setAnimationAllowed(Z)V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageDomainUrls;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageDomainUrls;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ManageDomainUrls;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageDomainUrls;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 64
    invoke-static {v0}, Lcom/android/settings_exlib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settings_exlib/applications/ApplicationsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageDomainUrls;->mApplicationsState:Lcom/android/settings_exlib/applications/ApplicationsState;

    .line 66
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageDomainUrls;->mApplicationsState:Lcom/android/settings_exlib/applications/ApplicationsState;

    invoke-virtual {v0, p0}, Lcom/android/settings_exlib/applications/ApplicationsState;->newSession(Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;)Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageDomainUrls;->mSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    .line 67
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/applications/ManageDomainUrls;->setHasOptionsMenu(Z)V

    .line 60
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 90
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageDomainUrls;->mSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->release()V

    .line 88
    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    .prologue
    .line 190
    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/android/settings_ex/applications/ManageDomainUrls;->rebuild()V

    .line 194
    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 178
    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 182
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 84
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageDomainUrls;->mSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->pause()V

    .line 82
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 140
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageDomainUrls;->mWebAction:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v1, :cond_1

    .line 141
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 143
    .local v0, "enabled":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageDomainUrls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "web_action_enabled"

    .line 142
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 144
    const/4 v1, 0x1

    return v1

    .line 141
    .end local v0    # "enabled":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enabled":I
    goto :goto_0

    .line 146
    .end local v0    # "enabled":I
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v5, 0x1

    .line 205
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/settings_ex/applications/ManageDomainUrls$DomainAppPreference;

    if-ne v0, v1, :cond_0

    .line 206
    check-cast p1, Lcom/android/settings_ex/applications/ManageDomainUrls$DomainAppPreference;

    .end local p1    # "preference":Landroid/support/v7/preference/Preference;
    invoke-static {p1}, Lcom/android/settings_ex/applications/ManageDomainUrls$DomainAppPreference;->-get0(Lcom/android/settings_ex/applications/ManageDomainUrls$DomainAppPreference;)Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    move-result-object v6

    .line 207
    .local v6, "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    const-class v0, Lcom/android/settings_ex/applications/AppLaunchSettings;

    .line 208
    iget-object v1, v6, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, v6, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 207
    const v1, 0x7f0e09cf

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Lcom/android/settings_ex/applications/AppInfoBase;->startAppInfoFragment(Ljava/lang/Class;ILjava/lang/String;ILandroid/app/Fragment;I)V

    .line 210
    return v5

    .line 212
    .end local v6    # "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .restart local p1    # "preference":Landroid/support/v7/preference/Preference;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 103
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageDomainUrls;->getContext()Landroid/content/Context;

    move-result-object v5

    if-nez v5, :cond_0

    .line 104
    return-void

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageDomainUrls;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 108
    const-string/jumbo v6, "enable_ephemeral_feature"

    .line 107
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_2

    move v0, v3

    .line 109
    .local v0, "disableWebActions":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 110
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageDomainUrls;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/applications/ManageDomainUrls;->mDomainAppList:Landroid/support/v7/preference/PreferenceGroup;

    .line 135
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageDomainUrls;->mDomainAppList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-direct {p0, v3, p1}, Lcom/android/settings_ex/applications/ManageDomainUrls;->rebuildAppList(Landroid/support/v7/preference/PreferenceGroup;Ljava/util/ArrayList;)V

    .line 102
    return-void

    .end local v0    # "disableWebActions":Z
    :cond_2
    move v0, v4

    .line 107
    goto :goto_0

    .line 112
    .restart local v0    # "disableWebActions":Z
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageDomainUrls;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    .line 113
    .local v1, "preferenceScreen":Landroid/support/v7/preference/PreferenceGroup;
    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v5

    if-nez v5, :cond_1

    .line 116
    new-instance v2, Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageDomainUrls;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 117
    .local v2, "webActionCategory":Landroid/support/v7/preference/PreferenceCategory;
    const v5, 0x7f0e10c3

    invoke-virtual {v2, v5}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(I)V

    .line 118
    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 121
    new-instance v5, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageDomainUrls;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings_ex/applications/ManageDomainUrls;->mWebAction:Landroid/support/v14/preference/SwitchPreference;

    .line 122
    iget-object v5, p0, Lcom/android/settings_ex/applications/ManageDomainUrls;->mWebAction:Landroid/support/v14/preference/SwitchPreference;

    const v6, 0x7f0e10c1

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SwitchPreference;->setTitle(I)V

    .line 123
    iget-object v5, p0, Lcom/android/settings_ex/applications/ManageDomainUrls;->mWebAction:Landroid/support/v14/preference/SwitchPreference;

    const v6, 0x7f0e10c2

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 124
    iget-object v5, p0, Lcom/android/settings_ex/applications/ManageDomainUrls;->mWebAction:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageDomainUrls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 125
    const-string/jumbo v7, "web_action_enabled"

    .line 124
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_4

    :goto_2
    invoke-virtual {v5, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 126
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageDomainUrls;->mWebAction:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 127
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageDomainUrls;->mWebAction:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 130
    new-instance v3, Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageDomainUrls;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings_ex/applications/ManageDomainUrls;->mDomainAppList:Landroid/support/v7/preference/PreferenceGroup;

    .line 131
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageDomainUrls;->mDomainAppList:Landroid/support/v7/preference/PreferenceGroup;

    const v4, 0x7f0e10c4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceGroup;->setTitle(I)V

    .line 132
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageDomainUrls;->mDomainAppList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    :cond_4
    move v3, v4

    .line 124
    goto :goto_2
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 78
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageDomainUrls;->mSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->resume()V

    .line 76
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0
    .param p1, "running"    # Z

    .prologue
    .line 94
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 71
    return-void
.end method
