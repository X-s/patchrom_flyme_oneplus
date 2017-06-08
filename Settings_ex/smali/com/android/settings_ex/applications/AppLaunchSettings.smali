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

.field private static final sBrowserIntent:Landroid/content/Intent;


# instance fields
.field private mAppDomainUrls:Lcom/android/settings_ex/applications/AppDomainsPreference;

.field private mAppLinkState:Lcom/android/settings_ex/DropDownPreference;

.field private mClearDefaultsPreference:Lcom/android/settings_ex/applications/ClearDefaultsPreference;

.field private mHasDomainUrls:Z

.field private mIsBrowser:Z

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "http:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/applications/AppLaunchSettings;->sBrowserIntent:Landroid/content/Intent;

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings_ex/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/applications/AppLaunchSettings;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/AppLaunchSettings;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings_ex/applications/AppLaunchSettings;->updateAppLinkState(I)Z

    move-result v0

    return v0
.end method

.method private buildStateDropDown()V
    .locals 5

    .prologue
    const/4 v1, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 115
    iget-boolean v2, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mIsBrowser:Z

    if-eqz v2, :cond_1

    .line 117
    iget-object v1, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mAppLinkState:Lcom/android/settings_ex/DropDownPreference;

    invoke-virtual {v1, v4}, Lcom/android/settings_ex/DropDownPreference;->setShouldDisableView(Z)V

    .line 118
    iget-object v1, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mAppLinkState:Lcom/android/settings_ex/DropDownPreference;

    invoke-virtual {v1, v3}, Lcom/android/settings_ex/DropDownPreference;->setEnabled(Z)V

    .line 119
    iget-object v1, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mAppDomainUrls:Lcom/android/settings_ex/applications/AppDomainsPreference;

    invoke-virtual {v1, v4}, Lcom/android/settings_ex/applications/AppDomainsPreference;->setShouldDisableView(Z)V

    .line 120
    iget-object v1, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mAppDomainUrls:Lcom/android/settings_ex/applications/AppDomainsPreference;

    invoke-virtual {v1, v3}, Lcom/android/settings_ex/applications/AppDomainsPreference;->setEnabled(Z)V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mAppLinkState:Lcom/android/settings_ex/DropDownPreference;

    const v3, 0x7f0c0cfd

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/settings_ex/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 129
    iget-object v2, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mAppLinkState:Lcom/android/settings_ex/DropDownPreference;

    const v3, 0x7f0c0cfe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/settings_ex/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 131
    iget-object v2, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mAppLinkState:Lcom/android/settings_ex/DropDownPreference;

    const v3, 0x7f0c0cff

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/settings_ex/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 134
    iget-object v2, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mAppLinkState:Lcom/android/settings_ex/DropDownPreference;

    iget-boolean v3, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mHasDomainUrls:Z

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/DropDownPreference;->setEnabled(Z)V

    .line 135
    iget-boolean v2, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mHasDomainUrls:Z

    if-eqz v2, :cond_0

    .line 139
    iget-object v2, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getIntentVerificationStatus(Ljava/lang/String;I)I

    move-result v0

    .line 140
    .local v0, "state":I
    iget-object v2, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mAppLinkState:Lcom/android/settings_ex/DropDownPreference;

    if-nez v0, :cond_2

    move v0, v1

    .end local v0    # "state":I
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    .line 146
    iget-object v1, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mAppLinkState:Lcom/android/settings_ex/DropDownPreference;

    new-instance v2, Lcom/android/settings_ex/applications/AppLaunchSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/applications/AppLaunchSettings$1;-><init>(Lcom/android/settings_ex/applications/AppLaunchSettings;)V

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/DropDownPreference;->setCallback(Lcom/android/settings_ex/DropDownPreference$Callback;)V

    goto :goto_0
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
    .line 183
    .local p2, "iviList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/IntentFilterVerificationInfo;>;"
    .local p3, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    iget-object v1, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {v1, p1}, Lcom/android/settings_ex/Utils;->getHandledDomains(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    .line 184
    .local v0, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    return-object v1
.end method

.method private isBrowserApp(Ljava/lang/String;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 101
    sget-object v4, Lcom/android/settings_ex/applications/AppLaunchSettings;->sBrowserIntent:Landroid/content/Intent;

    invoke-virtual {v4, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    iget-object v4, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    sget-object v5, Lcom/android/settings_ex/applications/AppLaunchSettings;->sBrowserIntent:Landroid/content/Intent;

    const/high16 v6, 0x20000

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    .line 104
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 105
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 106
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 107
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_0

    iget-boolean v4, v2, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v4, :cond_0

    .line 108
    const/4 v4, 0x1

    .line 111
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    :goto_1
    return v4

    .line 105
    .restart local v2    # "info":Landroid/content/pm/ResolveInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private updateAppLinkState(I)Z
    .locals 7
    .param p1, "newState"    # I

    .prologue
    const/4 v4, 0x0

    .line 157
    iget-boolean v5, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mIsBrowser:Z

    if-eqz v5, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v4

    .line 163
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 164
    .local v3, "userId":I
    iget-object v5, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v6, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v3}, Landroid/content/pm/PackageManager;->getIntentVerificationStatus(Ljava/lang/String;I)I

    move-result v0

    .line 166
    .local v0, "priorState":I
    if-eq v0, p1, :cond_0

    .line 170
    iget-object v5, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v6, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6, p1, v3}, Landroid/content/pm/PackageManager;->updateIntentVerificationStatus(Ljava/lang/String;II)Z

    move-result v1

    .line 171
    .local v1, "success":Z
    if-eqz v1, :cond_3

    .line 173
    iget-object v5, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v6, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v3}, Landroid/content/pm/PackageManager;->getIntentVerificationStatus(Ljava/lang/String;I)I

    move-result v2

    .line 174
    .local v2, "updatedState":I
    if-ne p1, v2, :cond_2

    const/4 v1, 0x1

    .end local v2    # "updatedState":I
    :goto_1
    move v4, v1

    .line 178
    goto :goto_0

    .restart local v2    # "updatedState":I
    :cond_2
    move v1, v4

    .line 174
    goto :goto_1

    .line 176
    .end local v2    # "updatedState":I
    :cond_3
    const-string v4, "AppLaunchSettings"

    const-string v5, "Couldn\'t update intent verification status!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method protected createDialog(II)Landroid/app/AlertDialog;
    .locals 1
    .param p1, "id"    # I
    .param p2, "errorCode"    # I

    .prologue
    .line 197
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 213
    const/16 v0, 0x11

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 203
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/android/settings_ex/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const v3, 0x7f080027

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/applications/AppLaunchSettings;->addPreferencesFromResource(I)V

    .line 78
    const-string v3, "app_launch_supported_domain_urls"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/applications/AppLaunchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/applications/AppDomainsPreference;

    iput-object v3, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mAppDomainUrls:Lcom/android/settings_ex/applications/AppDomainsPreference;

    .line 79
    const-string v3, "app_launch_clear_defaults"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/applications/AppLaunchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/applications/ClearDefaultsPreference;

    iput-object v3, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mClearDefaultsPreference:Lcom/android/settings_ex/applications/ClearDefaultsPreference;

    .line 80
    const-string v3, "app_link_state"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/applications/AppLaunchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/DropDownPreference;

    iput-object v3, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mAppLinkState:Lcom/android/settings_ex/DropDownPreference;

    .line 82
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppLaunchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 84
    iget-object v3, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/settings_ex/applications/AppLaunchSettings;->isBrowserApp(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mIsBrowser:Z

    .line 85
    iget-object v3, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mHasDomainUrls:Z

    .line 88
    iget-boolean v3, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mIsBrowser:Z

    if-nez v3, :cond_0

    .line 89
    iget-object v3, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getIntentFilterVerifications(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 90
    .local v2, "iviList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/IntentFilterVerificationInfo;>;"
    iget-object v3, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getAllIntentFilters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 91
    .local v1, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    iget-object v3, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v3, v2, v1}, Lcom/android/settings_ex/applications/AppLaunchSettings;->getEntries(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 92
    .local v0, "entries":[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mAppDomainUrls:Lcom/android/settings_ex/applications/AppDomainsPreference;

    invoke-virtual {v3, v0}, Lcom/android/settings_ex/applications/AppDomainsPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 93
    iget-object v3, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mAppDomainUrls:Lcom/android/settings_ex/applications/AppDomainsPreference;

    array-length v4, v0

    new-array v4, v4, [I

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/applications/AppDomainsPreference;->setValues([I)V

    .line 95
    .end local v0    # "entries":[Ljava/lang/CharSequence;
    .end local v1    # "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    .end local v2    # "iviList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/IntentFilterVerificationInfo;>;"
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/applications/AppLaunchSettings;->buildStateDropDown()V

    .line 96
    return-void

    .line 85
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 208
    const/4 v0, 0x1

    return v0
.end method

.method protected refreshUi()Z
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mClearDefaultsPreference:Lcom/android/settings_ex/applications/ClearDefaultsPreference;

    iget-object v1, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/ClearDefaultsPreference;->setPackageName(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mClearDefaultsPreference:Lcom/android/settings_ex/applications/ClearDefaultsPreference;

    iget-object v1, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/ClearDefaultsPreference;->setAppEntry(Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;)V

    .line 191
    const/4 v0, 0x1

    return v0
.end method
