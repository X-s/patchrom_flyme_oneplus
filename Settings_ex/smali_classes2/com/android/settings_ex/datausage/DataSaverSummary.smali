.class public Lcom/android/settings_ex/datausage/DataSaverSummary;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "DataSaverSummary.java"

# interfaces
.implements Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcom/android/settings_ex/datausage/DataSaverBackend$Listener;
.implements Lcom/android/settings_ex/applications/AppStateBaseBridge$Callback;
.implements Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;


# static fields
.field private static final KEY_UNRESTRICTED_ACCESS:Ljava/lang/String; = "unrestricted_access"


# instance fields
.field private mApplicationsState:Lcom/android/settings_exlib/applications/ApplicationsState;

.field private mDataSaverBackend:Lcom/android/settings_ex/datausage/DataSaverBackend;

.field private mDataUsageBridge:Lcom/android/settings_ex/datausage/AppStateDataUsageBridge;

.field private mSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

.field private mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

.field private mSwitching:Z

.field private mUnrestrictedAccess:Landroid/support/v7/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 109
    const v0, 0x7f0e0d77

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 104
    const/16 v0, 0x15c

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/DataSaverSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsActivity;->getSwitchBar()Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/datausage/DataSaverSummary;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataSaverSummary;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->show()V

    .line 70
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataSaverSummary;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 66
    return-void
.end method

.method public onAllSizesComputed()V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method public onBlacklistStatusChanged(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "isBlacklisted"    # Z

    .prologue
    .line 125
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v0, 0x7f08001c

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/datausage/DataSaverSummary;->addPreferencesFromResource(I)V

    .line 57
    const-string/jumbo v0, "unrestricted_access"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/datausage/DataSaverSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/datausage/DataSaverSummary;->mUnrestrictedAccess:Landroid/support/v7/preference/Preference;

    .line 59
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/DataSaverSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 58
    invoke-static {v0}, Lcom/android/settings_exlib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settings_exlib/applications/ApplicationsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/datausage/DataSaverSummary;->mApplicationsState:Lcom/android/settings_exlib/applications/ApplicationsState;

    .line 60
    new-instance v0, Lcom/android/settings_ex/datausage/DataSaverBackend;

    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/DataSaverSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/datausage/DataSaverSummary;->mDataSaverBackend:Lcom/android/settings_ex/datausage/DataSaverBackend;

    .line 61
    new-instance v0, Lcom/android/settings_ex/datausage/AppStateDataUsageBridge;

    iget-object v1, p0, Lcom/android/settings_ex/datausage/DataSaverSummary;->mApplicationsState:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v2, p0, Lcom/android/settings_ex/datausage/DataSaverSummary;->mDataSaverBackend:Lcom/android/settings_ex/datausage/DataSaverBackend;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/settings_ex/datausage/AppStateDataUsageBridge;-><init>(Lcom/android/settings_exlib/applications/ApplicationsState;Lcom/android/settings_ex/applications/AppStateBaseBridge$Callback;Lcom/android/settings_ex/datausage/DataSaverBackend;)V

    iput-object v0, p0, Lcom/android/settings_ex/datausage/DataSaverSummary;->mDataUsageBridge:Lcom/android/settings_ex/datausage/AppStateDataUsageBridge;

    .line 62
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataSaverSummary;->mApplicationsState:Lcom/android/settings_exlib/applications/ApplicationsState;

    invoke-virtual {v0, p0}, Lcom/android/settings_exlib/applications/ApplicationsState;->newSession(Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;)Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/datausage/DataSaverSummary;->mSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    .line 53
    return-void
.end method

.method public onDataSaverChanged(Z)V
    .locals 1
    .param p1, "isDataSaving"    # Z

    .prologue
    .line 114
    monitor-enter p0

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataSaverSummary;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/datausage/DataSaverSummary;->mSwitching:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 113
    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onExtraInfoUpdated()V
    .locals 10

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/DataSaverSummary;->isAdded()Z

    move-result v5

    if-nez v5, :cond_0

    .line 131
    return-void

    .line 133
    :cond_0
    const/4 v2, 0x0

    .line 134
    .local v2, "count":I
    iget-object v5, p0, Lcom/android/settings_ex/datausage/DataSaverSummary;->mSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    invoke-virtual {v5}, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v1

    .line 135
    .local v1, "allApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 136
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_3

    .line 137
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .line 138
    .local v3, "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    sget-object v5, Lcom/android/settings_exlib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    invoke-interface {v5, v3}, Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;->filterApp(Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 136
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 141
    :cond_2
    iget-object v5, v3, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-eqz v5, :cond_1

    .line 142
    iget-object v5, v3, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    .line 141
    check-cast v5, Lcom/android/settings_ex/datausage/AppStateDataUsageBridge$DataUsageState;

    iget-boolean v5, v5, Lcom/android/settings_ex/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverWhitelisted:Z

    if-eqz v5, :cond_1

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 146
    .end local v3    # "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    :cond_3
    iget-object v5, p0, Lcom/android/settings_ex/datausage/DataSaverSummary;->mUnrestrictedAccess:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/DataSaverSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 147
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const v8, 0x7f130022

    .line 146
    invoke-virtual {v6, v8, v2, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 129
    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 171
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 86
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataSaverSummary;->mDataSaverBackend:Lcom/android/settings_ex/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/datausage/DataSaverBackend;->remListener(Lcom/android/settings_ex/datausage/DataSaverBackend$Listener;)V

    .line 87
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataSaverSummary;->mDataUsageBridge:Lcom/android/settings_ex/datausage/AppStateDataUsageBridge;

    invoke-virtual {v0}, Lcom/android/settings_ex/datausage/AppStateDataUsageBridge;->pause()V

    .line 88
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataSaverSummary;->mSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->pause()V

    .line 84
    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
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
    .line 161
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 76
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataSaverSummary;->mDataSaverBackend:Lcom/android/settings_ex/datausage/DataSaverBackend;

    invoke-virtual {v0}, Lcom/android/settings_ex/datausage/DataSaverBackend;->refreshWhitelist()V

    .line 77
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataSaverSummary;->mDataSaverBackend:Lcom/android/settings_ex/datausage/DataSaverBackend;

    invoke-virtual {v0}, Lcom/android/settings_ex/datausage/DataSaverBackend;->refreshBlacklist()V

    .line 78
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataSaverSummary;->mDataSaverBackend:Lcom/android/settings_ex/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/datausage/DataSaverBackend;->addListener(Lcom/android/settings_ex/datausage/DataSaverBackend$Listener;)V

    .line 79
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataSaverSummary;->mSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->resume()V

    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataSaverSummary;->mDataUsageBridge:Lcom/android/settings_ex/datausage/AppStateDataUsageBridge;

    invoke-virtual {v0}, Lcom/android/settings_ex/datausage/AppStateDataUsageBridge;->resume()V

    .line 74
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0
    .param p1, "running"    # Z

    .prologue
    .line 151
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 93
    monitor-enter p0

    .line 94
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings_ex/datausage/DataSaverSummary;->mSwitching:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    .line 95
    return-void

    .line 97
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/settings_ex/datausage/DataSaverSummary;->mSwitching:Z

    .line 98
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataSaverSummary;->mDataSaverBackend:Lcom/android/settings_ex/datausage/DataSaverBackend;

    invoke-virtual {v0, p2}, Lcom/android/settings_ex/datausage/DataSaverBackend;->setDataSaverEnabled(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 92
    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onWhitelistStatusChanged(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "isWhitelisted"    # Z

    .prologue
    .line 121
    return-void
.end method
