.class public Lcom/android/settings_ex/applications/AppLaunchSettings;
.super Lcom/android/settings_ex/applications/AppInfoWithHeader;
.source "AppLaunchSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_APP_LINK_STATE:Ljava/lang/String; = "app_link_state"

.field private static final KEY_CLEAR_DEFAULTS:Ljava/lang/String; = "app_launch_clear_defaults"

.field private static final KEY_SUPPORTED_DOMAIN_URLS:Ljava/lang/String; = "app_launch_supported_domain_urls"

.field private static final TAG:Ljava/lang/String; = "AppLaunchSettings"

.field private static final sBrowserIntent:Landroid/content/Intent;


# instance fields
.field private mAppDomainUrls:Lcom/android/settings_ex/applications/AppDomainsPreference;

.field private mAppLinkState:Landroid/support/v7/preference/DropDownPreference;

.field private mClearDefaultsPreference:Lcom/android/settings_ex/applications/ClearDefaultsPreference;

.field private mHasDomainUrls:Z

.field private mIsBrowser:Z

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings_ex/applications/AppLaunchSettings;I)Z
    .locals 1
    .param p1, "newState"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/applications/AppLaunchSettings;->updateAppLinkState(I)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 59
    const-string/jumbo v1, "android.intent.action.VIEW"

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 60
    const-string/jumbo v1, "android.intent.category.BROWSABLE"

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 61
    const-string/jumbo v1, "http:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/applications/AppLaunchSettings;->sBrowserIntent:Landroid/content/Intent;

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings_ex/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method private buildStateDropDown()V
    .locals 9

    .prologue
    const/4 v1, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 114
    iget-boolean v2, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mIsBrowser:Z

    if-eqz v2, :cond_1

    .line 116
    iget-object v1, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mAppLinkState:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/DropDownPreference;->setShouldDisableView(Z)V

    .line 117
    iget-object v1, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mAppLinkState:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v1, v5}, Landroid/support/v7/preference/DropDownPreference;->setEnabled(Z)V

    .line 118
    iget-object v1, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mAppDomainUrls:Lcom/android/settings_ex/applications/AppDomainsPreference;

    invoke-virtual {v1, v6}, Lcom/android/settings_ex/applications/AppDomainsPreference;->setShouldDisableView(Z)V

    .line 119
    iget-object v1, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mAppDomainUrls:Lcom/android/settings_ex/applications/AppDomainsPreference;

    invoke-virtual {v1, v5}, Lcom/android/settings_ex/applications/AppDomainsPreference;->setEnabled(Z)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mAppLinkState:Landroid/support/v7/preference/DropDownPreference;

    new-array v3, v8, [Ljava/lang/CharSequence;

    .line 127
    const v4, 0x7f0e0f0f

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/applications/AppLaunchSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 128
    const v4, 0x7f0e0f10

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/applications/AppLaunchSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 129
    const v4, 0x7f0e0f11

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/applications/AppLaunchSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 126
    invoke-virtual {v2, v3}, Landroid/support/v7/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 131
    iget-object v2, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mAppLinkState:Landroid/support/v7/preference/DropDownPreference;

    new-array v3, v8, [Ljava/lang/CharSequence;

    .line 132
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 133
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 134
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 131
    invoke-virtual {v2, v3}, Landroid/support/v7/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 137
    iget-object v2, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mAppLinkState:Landroid/support/v7/preference/DropDownPreference;

    iget-boolean v3, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mHasDomainUrls:Z

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/DropDownPreference;->setEnabled(Z)V

    .line 138
    iget-boolean v2, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mHasDomainUrls:Z

    if-eqz v2, :cond_0

    .line 142
    iget-object v2, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getIntentVerificationStatusAsUser(Ljava/lang/String;I)I

    move-result v0

    .line 143
    .local v0, "state":I
    iget-object v2, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mAppLinkState:Landroid/support/v7/preference/DropDownPreference;

    .line 144
    if-nez v0, :cond_2

    move v0, v1

    .end local v0    # "state":I
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-virtual {v2, v1}, Landroid/support/v7/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mAppLinkState:Landroid/support/v7/preference/DropDownPreference;

    new-instance v2, Lcom/android/settings_ex/applications/AppLaunchSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/applications/AppLaunchSettings$1;-><init>(Lcom/android/settings_ex/applications/AppLaunchSettings;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/DropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

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
    .line 186
    .local p2, "iviList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/IntentFilterVerificationInfo;>;"
    .local p3, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    iget-object v1, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {v1, p1}, Lcom/android/settings_ex/Utils;->getHandledDomains(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    .line 187
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
    .line 100
    sget-object v4, Lcom/android/settings_ex/applications/AppLaunchSettings;->sBrowserIntent:Landroid/content/Intent;

    invoke-virtual {v4, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    iget-object v4, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    sget-object v5, Lcom/android/settings_ex/applications/AppLaunchSettings;->sBrowserIntent:Landroid/content/Intent;

    .line 102
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    const/high16 v7, 0x20000

    .line 101
    invoke-virtual {v4, v5, v7, v6}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    .line 103
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 104
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 105
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 106
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_0

    iget-boolean v4, v2, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v4, :cond_0

    .line 107
    const/4 v4, 0x1

    return v4

    .line 104
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method private updateAppLinkState(I)Z
    .locals 7
    .param p1, "newState"    # I

    .prologue
    const/4 v6, 0x0

    .line 160
    iget-boolean v4, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mIsBrowser:Z

    if-eqz v4, :cond_0

    .line 163
    return v6

    .line 166
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 167
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/content/pm/PackageManager;->getIntentVerificationStatusAsUser(Ljava/lang/String;I)I

    move-result v0

    .line 169
    .local v0, "priorState":I
    if-ne v0, p1, :cond_1

    .line 170
    return v6

    .line 173
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5, p1, v3}, Landroid/content/pm/PackageManager;->updateIntentVerificationStatusAsUser(Ljava/lang/String;II)Z

    move-result v1

    .line 174
    .local v1, "success":Z
    if-eqz v1, :cond_3

    .line 176
    iget-object v4, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/content/pm/PackageManager;->getIntentVerificationStatusAsUser(Ljava/lang/String;I)I

    move-result v2

    .line 177
    .local v2, "updatedState":I
    if-ne p1, v2, :cond_2

    const/4 v1, 0x1

    .line 181
    .end local v1    # "success":Z
    .end local v2    # "updatedState":I
    :goto_0
    return v1

    .line 177
    .restart local v1    # "success":Z
    .restart local v2    # "updatedState":I
    :cond_2
    const/4 v1, 0x0

    .local v1, "success":Z
    goto :goto_0

    .line 179
    .end local v2    # "updatedState":I
    .local v1, "success":Z
    :cond_3
    const-string/jumbo v4, "AppLaunchSettings"

    const-string/jumbo v5, "Couldn\'t update intent verification status!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected createDialog(II)Landroid/app/AlertDialog;
    .locals 1
    .param p1, "id"    # I
    .param p2, "errorCode"    # I

    .prologue
    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 216
    const/16 v0, 0x11

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 204
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 74
    invoke-super {p0, p1}, Lcom/android/settings_ex/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const v3, 0x7f080035

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/applications/AppLaunchSettings;->addPreferencesFromResource(I)V

    .line 77
    const-string/jumbo v3, "app_launch_supported_domain_urls"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/applications/AppLaunchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/applications/AppDomainsPreference;

    iput-object v3, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mAppDomainUrls:Lcom/android/settings_ex/applications/AppDomainsPreference;

    .line 78
    const-string/jumbo v3, "app_launch_clear_defaults"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/applications/AppLaunchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/applications/ClearDefaultsPreference;

    iput-object v3, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mClearDefaultsPreference:Lcom/android/settings_ex/applications/ClearDefaultsPreference;

    .line 79
    const-string/jumbo v3, "app_link_state"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/applications/AppLaunchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/DropDownPreference;

    iput-object v3, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mAppLinkState:Landroid/support/v7/preference/DropDownPreference;

    .line 81
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppLaunchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 83
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

    .line 84
    :goto_0
    iput-boolean v3, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mHasDomainUrls:Z

    .line 87
    iget-boolean v3, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mIsBrowser:Z

    if-nez v3, :cond_0

    .line 88
    iget-object v3, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getIntentFilterVerifications(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 89
    .local v2, "iviList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/IntentFilterVerificationInfo;>;"
    iget-object v3, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getAllIntentFilters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 90
    .local v1, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    iget-object v3, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v3, v2, v1}, Lcom/android/settings_ex/applications/AppLaunchSettings;->getEntries(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 91
    .local v0, "entries":[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mAppDomainUrls:Lcom/android/settings_ex/applications/AppDomainsPreference;

    invoke-virtual {v3, v0}, Lcom/android/settings_ex/applications/AppDomainsPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 92
    iget-object v3, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mAppDomainUrls:Lcom/android/settings_ex/applications/AppDomainsPreference;

    array-length v4, v0

    new-array v4, v4, [I

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/applications/AppDomainsPreference;->setValues([I)V

    .line 94
    .end local v0    # "entries":[Ljava/lang/CharSequence;
    .end local v1    # "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    .end local v2    # "iviList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/IntentFilterVerificationInfo;>;"
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/applications/AppLaunchSettings;->buildStateDropDown()V

    .line 73
    return-void

    :cond_1
    move v3, v4

    .line 85
    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 211
    const/4 v0, 0x1

    return v0
.end method

.method protected refreshUi()Z
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mClearDefaultsPreference:Lcom/android/settings_ex/applications/ClearDefaultsPreference;

    iget-object v1, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/ClearDefaultsPreference;->setPackageName(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mClearDefaultsPreference:Lcom/android/settings_ex/applications/ClearDefaultsPreference;

    iget-object v1, p0, Lcom/android/settings_ex/applications/AppLaunchSettings;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/ClearDefaultsPreference;->setAppEntry(Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;)V

    .line 194
    const/4 v0, 0x1

    return v0
.end method
