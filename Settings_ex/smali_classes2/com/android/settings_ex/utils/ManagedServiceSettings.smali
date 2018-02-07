.class public abstract Lcom/android/settings_ex/utils/ManagedServiceSettings;
.super Lcom/android/settings_ex/notification/EmptyTextSettings;
.source "ManagedServiceSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/utils/ManagedServiceSettings$Config;,
        Lcom/android/settings_ex/utils/ManagedServiceSettings$ScaryWarningDialogFragment;
    }
.end annotation


# instance fields
.field private final mConfig:Lcom/android/settings_ex/utils/ManagedServiceSettings$Config;

.field protected mContext:Landroid/content/Context;

.field private mEmpty:Landroid/widget/TextView;

.field private mPM:Landroid/content/pm/PackageManager;

.field protected mServiceListing:Lcom/android/settings_ex/utils/ServiceListing;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/utils/ManagedServiceSettings;)Lcom/android/settings_ex/utils/ManagedServiceSettings$Config;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/utils/ManagedServiceSettings;->mConfig:Lcom/android/settings_ex/utils/ManagedServiceSettings$Config;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/utils/ManagedServiceSettings;Ljava/util/List;)V
    .locals 0
    .param p1, "services"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/utils/ManagedServiceSettings;->updateList(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings_ex/notification/EmptyTextSettings;-><init>()V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings_ex/utils/ManagedServiceSettings;->getConfig()Lcom/android/settings_ex/utils/ManagedServiceSettings$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/utils/ManagedServiceSettings;->mConfig:Lcom/android/settings_ex/utils/ManagedServiceSettings$Config;

    .line 52
    return-void
.end method

.method private updateList(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ServiceInfo;>;"
    invoke-virtual {p0}, Lcom/android/settings_ex/utils/ManagedServiceSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    .line 93
    .local v2, "screen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 94
    new-instance v6, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;

    iget-object v7, p0, Lcom/android/settings_ex/utils/ManagedServiceSettings;->mPM:Landroid/content/pm/PackageManager;

    invoke-direct {v6, v7}, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {p1, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 95
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "service$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ServiceInfo;

    .line 96
    .local v3, "service":Landroid/content/pm/ServiceInfo;
    new-instance v0, Landroid/content/ComponentName;

    iget-object v6, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .local v0, "cn":Landroid/content/ComponentName;
    iget-object v6, p0, Lcom/android/settings_ex/utils/ManagedServiceSettings;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v6}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 98
    .local v5, "title":Ljava/lang/String;
    new-instance v1, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/utils/ManagedServiceSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 99
    .local v1, "pref":Landroid/support/v14/preference/SwitchPreference;
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/support/v14/preference/SwitchPreference;->setPersistent(Z)V

    .line 100
    iget-object v6, p0, Lcom/android/settings_ex/utils/ManagedServiceSettings;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v6}, Landroid/content/pm/ServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/support/v14/preference/SwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 101
    invoke-virtual {v1, v5}, Landroid/support/v14/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v6, p0, Lcom/android/settings_ex/utils/ManagedServiceSettings;->mServiceListing:Lcom/android/settings_ex/utils/ServiceListing;

    invoke-virtual {v6, v0}, Lcom/android/settings_ex/utils/ServiceListing;->isEnabled(Landroid/content/ComponentName;)Z

    move-result v6

    invoke-virtual {v1, v6}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 103
    new-instance v6, Lcom/android/settings_ex/utils/ManagedServiceSettings$2;

    invoke-direct {v6, p0, v0, v5}, Lcom/android/settings_ex/utils/ManagedServiceSettings$2;-><init>(Lcom/android/settings_ex/utils/ManagedServiceSettings;Landroid/content/ComponentName;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 110
    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 91
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "pref":Landroid/support/v14/preference/SwitchPreference;
    .end local v3    # "service":Landroid/content/pm/ServiceInfo;
    .end local v5    # "title":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract getConfig()Lcom/android/settings_ex/utils/ManagedServiceSettings$Config;
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/android/settings_ex/notification/EmptyTextSettings;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/settings_ex/utils/ManagedServiceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/utils/ManagedServiceSettings;->mContext:Landroid/content/Context;

    .line 61
    iget-object v0, p0, Lcom/android/settings_ex/utils/ManagedServiceSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/utils/ManagedServiceSettings;->mPM:Landroid/content/pm/PackageManager;

    .line 62
    new-instance v0, Lcom/android/settings_ex/utils/ServiceListing;

    iget-object v1, p0, Lcom/android/settings_ex/utils/ManagedServiceSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/utils/ManagedServiceSettings;->mConfig:Lcom/android/settings_ex/utils/ManagedServiceSettings$Config;

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/utils/ServiceListing;-><init>(Landroid/content/Context;Lcom/android/settings_ex/utils/ManagedServiceSettings$Config;)V

    iput-object v0, p0, Lcom/android/settings_ex/utils/ManagedServiceSettings;->mServiceListing:Lcom/android/settings_ex/utils/ServiceListing;

    .line 63
    iget-object v0, p0, Lcom/android/settings_ex/utils/ManagedServiceSettings;->mServiceListing:Lcom/android/settings_ex/utils/ServiceListing;

    new-instance v1, Lcom/android/settings_ex/utils/ManagedServiceSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/utils/ManagedServiceSettings$1;-><init>(Lcom/android/settings_ex/utils/ManagedServiceSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/utils/ServiceListing;->addCallback(Lcom/android/settings_ex/utils/ServiceListing$Callback;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings_ex/utils/ManagedServiceSettings;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/utils/ManagedServiceSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/utils/ManagedServiceSettings;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 57
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0}, Lcom/android/settings_ex/notification/EmptyTextSettings;->onPause()V

    .line 88
    iget-object v0, p0, Lcom/android/settings_ex/utils/ManagedServiceSettings;->mServiceListing:Lcom/android/settings_ex/utils/ServiceListing;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/utils/ServiceListing;->setListening(Z)V

    .line 86
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0}, Lcom/android/settings_ex/notification/EmptyTextSettings;->onResume()V

    .line 81
    iget-object v0, p0, Lcom/android/settings_ex/utils/ManagedServiceSettings;->mServiceListing:Lcom/android/settings_ex/utils/ServiceListing;

    invoke-virtual {v0}, Lcom/android/settings_ex/utils/ServiceListing;->reload()Ljava/util/List;

    .line 82
    iget-object v0, p0, Lcom/android/settings_ex/utils/ManagedServiceSettings;->mServiceListing:Lcom/android/settings_ex/utils/ServiceListing;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/utils/ServiceListing;->setListening(Z)V

    .line 79
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/notification/EmptyTextSettings;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 75
    iget-object v0, p0, Lcom/android/settings_ex/utils/ManagedServiceSettings;->mConfig:Lcom/android/settings_ex/utils/ManagedServiceSettings$Config;

    iget v0, v0, Lcom/android/settings_ex/utils/ManagedServiceSettings$Config;->emptyText:I

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/utils/ManagedServiceSettings;->setEmptyText(I)V

    .line 73
    return-void
.end method

.method protected setEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 115
    if-nez p3, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/settings_ex/utils/ManagedServiceSettings;->mServiceListing:Lcom/android/settings_ex/utils/ServiceListing;

    invoke-virtual {v0, p1, v3}, Lcom/android/settings_ex/utils/ServiceListing;->setEnabled(Landroid/content/ComponentName;Z)V

    .line 118
    return v1

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/utils/ManagedServiceSettings;->mServiceListing:Lcom/android/settings_ex/utils/ServiceListing;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/utils/ServiceListing;->isEnabled(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    return v1

    .line 124
    :cond_1
    new-instance v0, Lcom/android/settings_ex/utils/ManagedServiceSettings$ScaryWarningDialogFragment;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/utils/ManagedServiceSettings$ScaryWarningDialogFragment;-><init>(Lcom/android/settings_ex/utils/ManagedServiceSettings;)V

    invoke-virtual {v0, p1, p2}, Lcom/android/settings_ex/utils/ManagedServiceSettings$ScaryWarningDialogFragment;->setServiceInfo(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/android/settings_ex/utils/ManagedServiceSettings$ScaryWarningDialogFragment;

    move-result-object v0

    .line 126
    invoke-virtual {p0}, Lcom/android/settings_ex/utils/ManagedServiceSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "dialog"

    .line 124
    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/utils/ManagedServiceSettings$ScaryWarningDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 127
    return v3
.end method
