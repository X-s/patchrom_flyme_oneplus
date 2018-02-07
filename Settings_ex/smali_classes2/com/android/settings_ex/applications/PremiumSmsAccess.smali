.class public Lcom/android/settings_ex/applications/PremiumSmsAccess;
.super Lcom/android/settings_ex/notification/EmptyTextSettings;
.source "PremiumSmsAccess.java"

# interfaces
.implements Lcom/android/settings_ex/applications/AppStateBaseBridge$Callback;
.implements Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applications/PremiumSmsAccess$PremiumSmsPreference;
    }
.end annotation


# instance fields
.field private mApplicationsState:Lcom/android/settings_exlib/applications/ApplicationsState;

.field private mSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

.field private mSmsBackend:Lcom/android/settings_ex/applications/AppStateSmsPremBridge;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/applications/PremiumSmsAccess;)Lcom/android/settings_exlib/applications/ApplicationsState;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/applications/PremiumSmsAccess;->mApplicationsState:Lcom/android/settings_exlib/applications/ApplicationsState;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings_ex/notification/EmptyTextSettings;-><init>()V

    return-void
.end method

.method private update()V
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/settings_ex/applications/PremiumSmsAccess;->mSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    sget-object v1, Lcom/android/settings_ex/applications/AppStateSmsPremBridge;->FILTER_APP_PREMIUM_SMS:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .line 118
    sget-object v2, Lcom/android/settings_exlib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    .line 117
    invoke-virtual {v0, v1, v2}, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->rebuild(Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/applications/PremiumSmsAccess;->updatePrefs(Ljava/util/ArrayList;)V

    .line 116
    return-void
.end method

.method private updatePrefs(Ljava/util/ArrayList;)V
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
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 92
    if-nez p1, :cond_0

    return-void

    .line 93
    :cond_0
    const v4, 0x7f0e1031

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/applications/PremiumSmsAccess;->setEmptyText(I)V

    .line 94
    invoke-virtual {p0, v6, v7}, Lcom/android/settings_ex/applications/PremiumSmsAccess;->setLoading(ZZ)V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/PremiumSmsAccess;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v4

    .line 96
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/PremiumSmsAccess;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    .line 95
    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    .line 97
    .local v1, "screen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual {v1, v7}, Landroid/support/v7/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 99
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 101
    new-instance v2, Lcom/android/settings_ex/applications/PremiumSmsAccess$PremiumSmsPreference;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/PremiumSmsAccess;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, p0, v4, v5}, Lcom/android/settings_ex/applications/PremiumSmsAccess$PremiumSmsPreference;-><init>(Lcom/android/settings_ex/applications/PremiumSmsAccess;Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;Landroid/content/Context;)V

    .line 102
    .local v2, "smsPreference":Lcom/android/settings_ex/applications/PremiumSmsAccess$PremiumSmsPreference;
    invoke-virtual {v2, p0}, Lcom/android/settings_ex/applications/PremiumSmsAccess$PremiumSmsPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 103
    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    .end local v2    # "smsPreference":Lcom/android/settings_ex/applications/PremiumSmsAccess$PremiumSmsPreference;
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_2

    .line 106
    new-instance v3, Lcom/android/settings_ex/DividerPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/PremiumSmsAccess;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/settings_ex/DividerPreference;-><init>(Landroid/content/Context;)V

    .line 107
    .local v3, "summary":Lcom/android/settings_ex/DividerPreference;
    invoke-virtual {v3, v6}, Lcom/android/settings_ex/DividerPreference;->setSelectable(Z)V

    .line 108
    const v4, 0x7f0e1032

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/DividerPreference;->setSummary(I)V

    .line 109
    invoke-virtual {v3, v7}, Lcom/android/settings_ex/DividerPreference;->setDividerAllowedAbove(Z)V

    .line 110
    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 113
    .end local v3    # "summary":Lcom/android/settings_ex/DividerPreference;
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/PremiumSmsAccess;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 91
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 80
    const/16 v0, 0x184

    return v0
.end method

.method public onAllSizesComputed()V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/android/settings_ex/notification/EmptyTextSettings;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/PremiumSmsAccess;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 52
    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/android/settings_exlib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settings_exlib/applications/ApplicationsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/PremiumSmsAccess;->mApplicationsState:Lcom/android/settings_exlib/applications/ApplicationsState;

    .line 54
    iget-object v0, p0, Lcom/android/settings_ex/applications/PremiumSmsAccess;->mApplicationsState:Lcom/android/settings_exlib/applications/ApplicationsState;

    invoke-virtual {v0, p0}, Lcom/android/settings_exlib/applications/ApplicationsState;->newSession(Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;)Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/PremiumSmsAccess;->mSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    .line 55
    new-instance v0, Lcom/android/settings_ex/applications/AppStateSmsPremBridge;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/PremiumSmsAccess;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/applications/PremiumSmsAccess;->mApplicationsState:Lcom/android/settings_exlib/applications/ApplicationsState;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/settings_ex/applications/AppStateSmsPremBridge;-><init>(Landroid/content/Context;Lcom/android/settings_exlib/applications/ApplicationsState;Lcom/android/settings_ex/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/PremiumSmsAccess;->mSmsBackend:Lcom/android/settings_ex/applications/AppStateSmsPremBridge;

    .line 50
    return-void
.end method

.method public onExtraInfoUpdated()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/settings_ex/applications/PremiumSmsAccess;->update()V

    .line 122
    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 147
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings_ex/applications/PremiumSmsAccess;->mSmsBackend:Lcom/android/settings_ex/applications/AppStateSmsPremBridge;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/AppStateSmsPremBridge;->pause()V

    .line 74
    iget-object v0, p0, Lcom/android/settings_ex/applications/PremiumSmsAccess;->mSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->pause()V

    .line 75
    invoke-super {p0}, Lcom/android/settings_ex/notification/EmptyTextSettings;->onPause()V

    .line 72
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    move-object v0, p1

    .line 85
    check-cast v0, Lcom/android/settings_ex/applications/PremiumSmsAccess$PremiumSmsPreference;

    .line 86
    .local v0, "pref":Lcom/android/settings_ex/applications/PremiumSmsAccess$PremiumSmsPreference;
    iget-object v1, p0, Lcom/android/settings_ex/applications/PremiumSmsAccess;->mSmsBackend:Lcom/android/settings_ex/applications/AppStateSmsPremBridge;

    invoke-static {v0}, Lcom/android/settings_ex/applications/PremiumSmsAccess$PremiumSmsPreference;->-get0(Lcom/android/settings_ex/applications/PremiumSmsAccess$PremiumSmsPreference;)Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    move-result-object v2

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 87
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 86
    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/applications/AppStateSmsPremBridge;->setSmsState(Ljava/lang/String;I)V

    .line 88
    const/4 v1, 0x1

    return v1
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
    .line 128
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    invoke-direct {p0, p1}, Lcom/android/settings_ex/applications/PremiumSmsAccess;->updatePrefs(Ljava/util/ArrayList;)V

    .line 127
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/android/settings_ex/notification/EmptyTextSettings;->onResume()V

    .line 67
    iget-object v0, p0, Lcom/android/settings_ex/applications/PremiumSmsAccess;->mSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->resume()V

    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/applications/PremiumSmsAccess;->mSmsBackend:Lcom/android/settings_ex/applications/AppStateSmsPremBridge;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/AppStateSmsPremBridge;->resume()V

    .line 65
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0
    .param p1, "running"    # Z

    .prologue
    .line 132
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/notification/EmptyTextSettings;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 61
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/applications/PremiumSmsAccess;->setLoading(ZZ)V

    .line 59
    return-void
.end method
