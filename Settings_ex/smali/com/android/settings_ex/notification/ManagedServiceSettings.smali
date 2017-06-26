.class public abstract Lcom/android/settings_ex/notification/ManagedServiceSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "ManagedServiceSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/notification/ManagedServiceSettings$Config;,
        Lcom/android/settings_ex/notification/ManagedServiceSettings$ScaryWarningDialogFragment;
    }
.end annotation


# instance fields
.field private final mConfig:Lcom/android/settings_ex/notification/ManagedServiceSettings$Config;

.field private mContext:Landroid/content/Context;

.field private mEmpty:Landroid/widget/TextView;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mServiceListing:Lcom/android/settings_ex/notification/ServiceListing;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 57
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ManagedServiceSettings;->getConfig()Lcom/android/settings_ex/notification/ManagedServiceSettings$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/ManagedServiceSettings;->mConfig:Lcom/android/settings_ex/notification/ManagedServiceSettings$Config;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/notification/ManagedServiceSettings;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/ManagedServiceSettings;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings_ex/notification/ManagedServiceSettings;->updateList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/notification/ManagedServiceSettings;Landroid/content/ComponentName;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/ManagedServiceSettings;
    .param p1, "x1"    # Landroid/content/ComponentName;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/notification/ManagedServiceSettings;->setEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/notification/ManagedServiceSettings;)Lcom/android/settings_ex/notification/ManagedServiceSettings$Config;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/ManagedServiceSettings;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings_ex/notification/ManagedServiceSettings;->mConfig:Lcom/android/settings_ex/notification/ManagedServiceSettings$Config;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/notification/ManagedServiceSettings;)Lcom/android/settings_ex/notification/ServiceListing;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/ManagedServiceSettings;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings_ex/notification/ManagedServiceSettings;->mServiceListing:Lcom/android/settings_ex/notification/ServiceListing;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/notification/ManagedServiceSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/ManagedServiceSettings;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings_ex/notification/ManagedServiceSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private setEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 123
    if-nez p3, :cond_1

    .line 125
    iget-object v2, p0, Lcom/android/settings_ex/notification/ManagedServiceSettings;->mServiceListing:Lcom/android/settings_ex/notification/ServiceListing;

    invoke-virtual {v2, p1, v1}, Lcom/android/settings_ex/notification/ServiceListing;->setEnabled(Landroid/content/ComponentName;Z)V

    .line 135
    :cond_0
    :goto_0
    return v0

    .line 128
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/notification/ManagedServiceSettings;->mServiceListing:Lcom/android/settings_ex/notification/ServiceListing;

    invoke-virtual {v2, p1}, Lcom/android/settings_ex/notification/ServiceListing;->isEnabled(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 132
    new-instance v0, Lcom/android/settings_ex/notification/ManagedServiceSettings$ScaryWarningDialogFragment;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/notification/ManagedServiceSettings$ScaryWarningDialogFragment;-><init>(Lcom/android/settings_ex/notification/ManagedServiceSettings;)V

    invoke-virtual {v0, p1, p2}, Lcom/android/settings_ex/notification/ManagedServiceSettings$ScaryWarningDialogFragment;->setServiceInfo(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/android/settings_ex/notification/ManagedServiceSettings$ScaryWarningDialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ManagedServiceSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog"

    invoke-virtual {v0, v2, v3}, Lcom/android/settings_ex/notification/ManagedServiceSettings$ScaryWarningDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    move v0, v1

    .line 135
    goto :goto_0
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
    .line 100
    .local p1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ServiceInfo;>;"
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ManagedServiceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 101
    .local v3, "screen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 102
    new-instance v6, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;

    iget-object v7, p0, Lcom/android/settings_ex/notification/ManagedServiceSettings;->mPM:Landroid/content/pm/PackageManager;

    invoke-direct {v6, v7}, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {p1, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 103
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ServiceInfo;

    .line 104
    .local v4, "service":Landroid/content/pm/ServiceInfo;
    new-instance v0, Landroid/content/ComponentName;

    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .local v0, "cn":Landroid/content/ComponentName;
    iget-object v6, p0, Lcom/android/settings_ex/notification/ManagedServiceSettings;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v6}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 106
    .local v5, "title":Ljava/lang/String;
    new-instance v2, Landroid/preference/SwitchPreference;

    iget-object v6, p0, Lcom/android/settings_ex/notification/ManagedServiceSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 107
    .local v2, "pref":Landroid/preference/SwitchPreference;
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 108
    iget-object v6, p0, Lcom/android/settings_ex/notification/ManagedServiceSettings;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v6}, Landroid/content/pm/ServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/preference/SwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 109
    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v6, p0, Lcom/android/settings_ex/notification/ManagedServiceSettings;->mServiceListing:Lcom/android/settings_ex/notification/ServiceListing;

    invoke-virtual {v6, v0}, Lcom/android/settings_ex/notification/ServiceListing;->isEnabled(Landroid/content/ComponentName;)Z

    move-result v6

    invoke-virtual {v2, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 111
    new-instance v6, Lcom/android/settings_ex/notification/ManagedServiceSettings$2;

    invoke-direct {v6, p0, v0, v5}, Lcom/android/settings_ex/notification/ManagedServiceSettings$2;-><init>(Lcom/android/settings_ex/notification/ManagedServiceSettings;Landroid/content/ComponentName;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 118
    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 120
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "pref":Landroid/preference/SwitchPreference;
    .end local v4    # "service":Landroid/content/pm/ServiceInfo;
    .end local v5    # "title":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract getConfig()Lcom/android/settings_ex/notification/ManagedServiceSettings$Config;
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ManagedServiceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/ManagedServiceSettings;->mContext:Landroid/content/Context;

    .line 65
    iget-object v0, p0, Lcom/android/settings_ex/notification/ManagedServiceSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/ManagedServiceSettings;->mPM:Landroid/content/pm/PackageManager;

    .line 66
    new-instance v0, Lcom/android/settings_ex/notification/ServiceListing;

    iget-object v1, p0, Lcom/android/settings_ex/notification/ManagedServiceSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/notification/ManagedServiceSettings;->mConfig:Lcom/android/settings_ex/notification/ManagedServiceSettings$Config;

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/notification/ServiceListing;-><init>(Landroid/content/Context;Lcom/android/settings_ex/notification/ManagedServiceSettings$Config;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/ManagedServiceSettings;->mServiceListing:Lcom/android/settings_ex/notification/ServiceListing;

    .line 67
    iget-object v0, p0, Lcom/android/settings_ex/notification/ManagedServiceSettings;->mServiceListing:Lcom/android/settings_ex/notification/ServiceListing;

    new-instance v1, Lcom/android/settings_ex/notification/ManagedServiceSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/notification/ManagedServiceSettings$1;-><init>(Lcom/android/settings_ex/notification/ManagedServiceSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/ServiceListing;->addCallback(Lcom/android/settings_ex/notification/ServiceListing$Callback;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ManagedServiceSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/notification/ManagedServiceSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notification/ManagedServiceSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 74
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    const v1, 0x7f040078

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 80
    .local v0, "v":Landroid/view/View;
    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/notification/ManagedServiceSettings;->mEmpty:Landroid/widget/TextView;

    .line 81
    iget-object v1, p0, Lcom/android/settings_ex/notification/ManagedServiceSettings;->mEmpty:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/notification/ManagedServiceSettings;->mConfig:Lcom/android/settings_ex/notification/ManagedServiceSettings$Config;

    iget v2, v2, Lcom/android/settings_ex/notification/ManagedServiceSettings$Config;->emptyText:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 82
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings_ex/notification/ManagedServiceSettings;->mEmpty:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 83
    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 95
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 96
    iget-object v0, p0, Lcom/android/settings_ex/notification/ManagedServiceSettings;->mServiceListing:Lcom/android/settings_ex/notification/ServiceListing;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/ServiceListing;->setListening(Z)V

    .line 97
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 89
    iget-object v0, p0, Lcom/android/settings_ex/notification/ManagedServiceSettings;->mServiceListing:Lcom/android/settings_ex/notification/ServiceListing;

    invoke-virtual {v0}, Lcom/android/settings_ex/notification/ServiceListing;->reload()Ljava/util/List;

    .line 90
    iget-object v0, p0, Lcom/android/settings_ex/notification/ManagedServiceSettings;->mServiceListing:Lcom/android/settings_ex/notification/ServiceListing;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/ServiceListing;->setListening(Z)V

    .line 91
    return-void
.end method
