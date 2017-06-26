.class public Lcom/android/settings_ex/applications/AppLaunchSettings;
.super Lcom/android/settings_ex/applications/AppInfoWithHeader;
.source "AppLaunchSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_APP_LINK_STATE:Ljava/lang/String; = "app_link_state"

.field private static final KEY_CLEAR_DEFAULTS:Ljava/lang/String; = "app_launch_clear_defaults"

.field private static final KEY_SUPPORTED_DOMAIN_URLS:Ljava/lang/String; = "app_launch_supported_domain_urls"

.field private static final TAG:Ljava/lang/String; = "AppLaunchSettings"


# instance fields
.field private mAppDomainUrls:Lcom/android/settings_ex/applications/AppDomainsPreference;

.field private mAppLinkState:Lcom/android/settings_ex/DropDownPreference;

.field private mClearDefaultsPreference:Lcom/android/settings_ex/applications/ClearDefaultsPreference;

.field private mHasDomainUrls:Z

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings_ex/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/applications/AppLaunchSettings;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/AppLaunchSettings;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings_ex/applications/AppLaunchSettings;->updateAppLinkState(I)Z

    move-result v0

    return v0
.end method

.method private buildStateDropDown()V
    .locals 5

    .prologue
    const/4 v2, 0x4

    .line 87
    const-string v1, "app_link_state"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/AppLaunchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/DropDownPreference;

    iput-object v1, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mAppLinkState:Lcom/android/settings_ex/DropDownPreference;

    .line 94
    iget-object v1, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mAppLinkState:Lcom/android/settings_ex/DropDownPreference;

    const v3, 0x7f0c0d2b

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/settings_ex/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 96
    iget-object v1, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mAppLinkState:Lcom/android/settings_ex/DropDownPreference;

    const v3, 0x7f0c0d2c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/settings_ex/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 98
    iget-object v1, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mAppLinkState:Lcom/android/settings_ex/DropDownPreference;

    const v3, 0x7f0c0d2d

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/settings_ex/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 101
    iget-object v1, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mAppLinkState:Lcom/android/settings_ex/DropDownPreference;

    iget-boolean v3, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mHasDomainUrls:Z

    invoke-virtual {v1, v3}, Lcom/android/settings_ex/DropDownPreference;->setEnabled(Z)V

    .line 102
    iget-boolean v1, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mHasDomainUrls:Z

    if-eqz v1, :cond_1

    .line 106
    iget-object v1, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getIntentVerificationStatus(Ljava/lang/String;I)I

    move-result v0

    .line 107
    .local v0, "state":I
    iget-object v1, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mAppLinkState:Lcom/android/settings_ex/DropDownPreference;

    if-nez v0, :cond_0

    move v0, v2

    .end local v0    # "state":I
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    .line 113
    iget-object v1, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mAppLinkState:Lcom/android/settings_ex/DropDownPreference;

    new-instance v2, Lcom/android/settings_ex/applications/AppLaunchSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/applications/AppLaunchSettings$1;-><init>(Lcom/android/settings_ex/applications/AppLaunchSettings;)V

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/DropDownPreference;->setCallback(Lcom/android/settings_ex/DropDownPreference$Callback;)V

    .line 120
    :cond_1
    return-void
.end method

.method private getEntries(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)[Ljava/lang/CharSequence;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/IntentFilterVerificationInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;)[",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .line 143
    .local p2, "iviList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/IntentFilterVerificationInfo;>;"
    .local p3, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    iget-object v1, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {v1, p1}, Lcom/android/settings_ex/Utils;->getHandledDomains(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    .line 144
    .local v0, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    return-object v1
.end method

.method private updateAppLinkState(I)Z
    .locals 7
    .param p1, "newState"    # I

    .prologue
    const/4 v4, 0x0

    .line 123
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 124
    .local v3, "userId":I
    iget-object v5, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v6, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v3}, Landroid/content/pm/PackageManager;->getIntentVerificationStatus(Ljava/lang/String;I)I

    move-result v0

    .line 126
    .local v0, "priorState":I
    if-ne v0, p1, :cond_0

    .line 138
    :goto_0
    return v4

    .line 130
    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v6, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6, p1, v3}, Landroid/content/pm/PackageManager;->updateIntentVerificationStatus(Ljava/lang/String;II)Z

    move-result v1

    .line 131
    .local v1, "success":Z
    if-eqz v1, :cond_2

    .line 133
    iget-object v5, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v6, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v3}, Landroid/content/pm/PackageManager;->getIntentVerificationStatus(Ljava/lang/String;I)I

    move-result v2

    .line 134
    .local v2, "updatedState":I
    if-ne p1, v2, :cond_1

    const/4 v1, 0x1

    .end local v2    # "updatedState":I
    :goto_1
    move v4, v1

    .line 138
    goto :goto_0

    .restart local v2    # "updatedState":I
    :cond_1
    move v1, v4

    .line 134
    goto :goto_1

    .line 136
    .end local v2    # "updatedState":I
    :cond_2
    const-string v4, "AppLaunchSettings"

    const-string v5, "Couldn\'t update intent verification status!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method protected createDialog(II)Lcom/oneplus/app/OPAlertDialog;
    .locals 1
    .param p1, "id"    # I
    .param p2, "errorCode"    # I

    .prologue
    .line 157
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 173
    const/16 v0, 0x11

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 163
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/android/settings_ex/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v3, 0x7f080027

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/applications/AppLaunchSettings;->addPreferencesFromResource(I)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppLaunchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 70
    iget-object v3, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mHasDomainUrls:Z

    .line 72
    iget-object v3, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getIntentFilterVerifications(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 74
    .local v2, "iviList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/IntentFilterVerificationInfo;>;"
    iget-object v3, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getAllIntentFilters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 76
    .local v1, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    const-string v3, "app_launch_supported_domain_urls"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/applications/AppLaunchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/applications/AppDomainsPreference;

    iput-object v3, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mAppDomainUrls:Lcom/android/settings_ex/applications/AppDomainsPreference;

    .line 77
    iget-object v3, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v3, v2, v1}, Lcom/android/settings_ex/applications/AppLaunchSettings;->getEntries(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 78
    .local v0, "entries":[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mAppDomainUrls:Lcom/android/settings_ex/applications/AppDomainsPreference;

    invoke-virtual {v3, v0}, Lcom/android/settings_ex/applications/AppDomainsPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 79
    iget-object v3, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mAppDomainUrls:Lcom/android/settings_ex/applications/AppDomainsPreference;

    array-length v4, v0

    new-array v4, v4, [I

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/applications/AppDomainsPreference;->setValues([I)V

    .line 81
    const-string v3, "app_launch_clear_defaults"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/applications/AppLaunchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/applications/ClearDefaultsPreference;

    iput-object v3, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mClearDefaultsPreference:Lcom/android/settings_ex/applications/ClearDefaultsPreference;

    .line 83
    invoke-direct {p0}, Lcom/android/settings_ex/applications/AppLaunchSettings;->buildStateDropDown()V

    .line 84
    return-void

    .line 70
    .end local v0    # "entries":[Ljava/lang/CharSequence;
    .end local v1    # "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    .end local v2    # "iviList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/IntentFilterVerificationInfo;>;"
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 168
    const/4 v0, 0x1

    return v0
.end method

.method protected refreshUi()Z
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mClearDefaultsPreference:Lcom/android/settings_ex/applications/ClearDefaultsPreference;

    iget-object v1, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/ClearDefaultsPreference;->setPackageName(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mClearDefaultsPreference:Lcom/android/settings_ex/applications/ClearDefaultsPreference;

    iget-object v1, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/ClearDefaultsPreference;->setAppEntry(Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;)V

    .line 151
    const/4 v0, 0x1

    return v0
.end method
