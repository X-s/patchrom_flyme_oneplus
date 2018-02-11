.class public Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "UnrestrictedDataAccess.java"

# interfaces
.implements Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;
.implements Lcom/android/settings_ex/applications/AppStateBaseBridge$Callback;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;
    }
.end annotation


# static fields
.field private static final EXTRA_SHOW_SYSTEM:Ljava/lang/String; = "show_system"

.field private static final MENU_SHOW_SYSTEM:I = 0x2b


# instance fields
.field private mApplicationsState:Lcom/android/settings_exlib/applications/ApplicationsState;

.field private mDataSaverBackend:Lcom/android/settings_ex/datausage/DataSaverBackend;

.field private mDataUsageBridge:Lcom/android/settings_ex/datausage/AppStateDataUsageBridge;

.field private mExtraLoaded:Z

.field private mFilter:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

.field private mSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

.field private mShowSystem:Z


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;)Lcom/android/settings_exlib/applications/ApplicationsState;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;->mApplicationsState:Lcom/android/settings_exlib/applications/ApplicationsState;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;)Lcom/android/settings_ex/datausage/DataSaverBackend;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;->mDataSaverBackend:Lcom/android/settings_ex/datausage/DataSaverBackend;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private rebuild()V
    .locals 4

    .prologue
    .line 142
    iget-object v1, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;->mSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    iget-object v2, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;->mFilter:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    sget-object v3, Lcom/android/settings_exlib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->rebuild(Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 143
    .local v0, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;->onRebuildComplete(Ljava/util/ArrayList;)V

    .line 141
    :cond_0
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 138
    const v0, 0x7f0e0da6

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 208
    const/16 v0, 0x15d

    return v0
.end method

.method public onAllSizesComputed()V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 60
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;->setAnimationAllowed(Z)V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 63
    invoke-static {v0}, Lcom/android/settings_exlib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settings_exlib/applications/ApplicationsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;->mApplicationsState:Lcom/android/settings_exlib/applications/ApplicationsState;

    .line 65
    new-instance v0, Lcom/android/settings_ex/datausage/DataSaverBackend;

    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;->mDataSaverBackend:Lcom/android/settings_ex/datausage/DataSaverBackend;

    .line 66
    new-instance v0, Lcom/android/settings_ex/datausage/AppStateDataUsageBridge;

    iget-object v1, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;->mApplicationsState:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v2, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;->mDataSaverBackend:Lcom/android/settings_ex/datausage/DataSaverBackend;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/settings_ex/datausage/AppStateDataUsageBridge;-><init>(Lcom/android/settings_exlib/applications/ApplicationsState;Lcom/android/settings_ex/applications/AppStateBaseBridge$Callback;Lcom/android/settings_ex/datausage/DataSaverBackend;)V

    iput-object v0, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;->mDataUsageBridge:Lcom/android/settings_ex/datausage/AppStateDataUsageBridge;

    .line 67
    iget-object v0, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;->mApplicationsState:Lcom/android/settings_exlib/applications/ApplicationsState;

    invoke-virtual {v0, p0}, Lcom/android/settings_exlib/applications/ApplicationsState;->newSession(Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;)Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;->mSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    .line 68
    if-eqz p1, :cond_0

    const-string/jumbo v0, "show_system"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    .line 69
    iget-boolean v0, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings_exlib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    :goto_1
    iput-object v0, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;->mFilter:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .line 71
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;->setHasOptionsMenu(Z)V

    .line 59
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 70
    :cond_1
    sget-object v0, Lcom/android/settings_exlib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 77
    iget-boolean v0, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0e0bda

    .line 76
    :goto_0
    const/16 v1, 0x2b

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 78
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 75
    return-void

    .line 77
    :cond_0
    const v0, 0x7f0e0bd9

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 126
    iget-object v0, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;->mSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->release()V

    .line 127
    iget-object v0, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;->mDataUsageBridge:Lcom/android/settings_ex/datausage/AppStateDataUsageBridge;

    invoke-virtual {v0}, Lcom/android/settings_ex/datausage/AppStateDataUsageBridge;->release()V

    .line 124
    return-void
.end method

.method public onExtraInfoUpdated()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;->mExtraLoaded:Z

    .line 133
    invoke-direct {p0}, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;->rebuild()V

    .line 131
    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    .prologue
    .line 202
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 83
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 94
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 85
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    .line 86
    iget-boolean v0, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0e0bda

    :goto_2
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 87
    iget-boolean v0, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/settings_exlib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    :goto_3
    iput-object v0, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;->mFilter:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .line 89
    iget-boolean v0, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;->mExtraLoaded:Z

    if-eqz v0, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;->rebuild()V

    goto :goto_0

    .line 85
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 86
    :cond_2
    const v0, 0x7f0e0bd9

    goto :goto_2

    .line 88
    :cond_3
    sget-object v0, Lcom/android/settings_exlib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    goto :goto_3

    .line 83
    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_0
    .end packed-switch
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 182
    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 187
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 119
    iget-object v0, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;->mDataUsageBridge:Lcom/android/settings_ex/datausage/AppStateDataUsageBridge;

    invoke-virtual {v0}, Lcom/android/settings_ex/datausage/AppStateDataUsageBridge;->pause()V

    .line 120
    iget-object v0, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;->mSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->pause()V

    .line 117
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 213
    instance-of v2, p1, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 214
    check-cast v0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;

    .line 215
    .local v0, "accessPreference":Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p2, v2, :cond_1

    const/4 v1, 0x1

    .line 217
    .local v1, "whitelisted":Z
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;->mDataSaverBackend:Lcom/android/settings_ex/datausage/DataSaverBackend;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;->-get1(Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;)Lcom/android/settings_ex/datausage/AppStateDataUsageBridge$DataUsageState;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 218
    iget-object v2, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;->mDataSaverBackend:Lcom/android/settings_ex/datausage/DataSaverBackend;

    invoke-static {v0}, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;->-get0(Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;)Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    move-result-object v3

    iget-object v3, v3, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 219
    invoke-static {v0}, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;->-get0(Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;)Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    move-result-object v4

    iget-object v4, v4, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 218
    invoke-virtual {v2, v3, v4, v1}, Lcom/android/settings_ex/datausage/DataSaverBackend;->setIsWhitelisted(ILjava/lang/String;Z)V

    .line 220
    invoke-static {v0}, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;->-get1(Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;)Lcom/android/settings_ex/datausage/AppStateDataUsageBridge$DataUsageState;

    move-result-object v2

    iput-boolean v1, v2, Lcom/android/settings_ex/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverWhitelisted:Z

    .line 222
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 215
    .end local v1    # "whitelisted":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "whitelisted":Z
    goto :goto_0

    .line 224
    .end local v0    # "accessPreference":Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;
    .end local v1    # "whitelisted":Z
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 7
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
    .line 160
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;->getContext()Landroid/content/Context;

    move-result-object v5

    if-nez v5, :cond_0

    return-void

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;->cacheRemoveAllPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 162
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 163
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 164
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .line 165
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

    .line 166
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;->getCachedPreference(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;

    .line 167
    .local v4, "preference":Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;
    if-nez v4, :cond_1

    .line 168
    new-instance v4, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;

    .end local v4    # "preference":Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, p0, v5, v1}, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;-><init>(Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;Landroid/content/Context;Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;)V

    .line 169
    .restart local v4    # "preference":Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;
    invoke-virtual {v4, v3}, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;->setKey(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v4, p0}, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 171
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 175
    :goto_1
    invoke-virtual {v4, v2}, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;->setOrder(I)V

    .line 163
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 173
    :cond_1
    invoke-virtual {v4}, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;->reuse()V

    goto :goto_1

    .line 177
    .end local v1    # "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "preference":Lcom/android/settings_ex/datausage/UnrestrictedDataAccess$AccessPreference;
    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;->setLoading(ZZ)V

    .line 178
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;->removeCachedPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 159
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 112
    iget-object v0, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;->mSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->resume()V

    .line 113
    iget-object v0, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;->mDataUsageBridge:Lcom/android/settings_ex/datausage/AppStateDataUsageBridge;

    invoke-virtual {v0}, Lcom/android/settings_ex/datausage/AppStateDataUsageBridge;->resume()V

    .line 110
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0
    .param p1, "running"    # Z

    .prologue
    .line 149
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 100
    const-string/jumbo v0, "show_system"

    iget-boolean v1, p0, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 98
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 106
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/datausage/UnrestrictedDataAccess;->setLoading(ZZ)V

    .line 104
    return-void
.end method
