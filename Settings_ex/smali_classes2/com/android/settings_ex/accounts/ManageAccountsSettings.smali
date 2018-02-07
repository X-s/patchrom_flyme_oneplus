.class public Lcom/android/settings_ex/accounts/ManageAccountsSettings;
.super Lcom/android/settings_ex/accounts/AccountPreferenceBase;
.source "ManageAccountsSettings.java"

# interfaces
.implements Lcom/android/settings_exlib/accounts/AuthenticatorHelper$OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/accounts/ManageAccountsSettings$1;,
        Lcom/android/settings_ex/accounts/ManageAccountsSettings$FragmentStarter;
    }
.end annotation


# static fields
.field private static final ACCOUNT_KEY:Ljava/lang/String; = "account"

.field public static final KEY_ACCOUNT_LABEL:Ljava/lang/String; = "account_label"

.field public static final KEY_ACCOUNT_TYPE:Ljava/lang/String; = "account_type"

.field private static final LAUNCHING_LOCATION_SETTINGS:Ljava/lang/String; = "com.android.settings_ex.accounts.LAUNCHING_LOCATION_SETTINGS"

.field private static final MENU_SYNC_CANCEL_ID:I = 0x2

.field private static final MENU_SYNC_NOW_ID:I = 0x1

.field private static final REQUEST_SHOW_SYNC_SETTINGS:I = 0x1


# instance fields
.field private final UPDATE_PREF_MESSAGE:I

.field private final UPDATE_VIEW_MESSAGE:I

.field private mAccountType:Ljava/lang/String;

.field private mAuthorities:[Ljava/lang/String;

.field private mErrorInfoView:Landroid/widget/TextView;

.field private mFirstAccount:Landroid/accounts/Account;

.field mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/accounts/ManageAccountsSettings;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/accounts/ManageAccountsSettings;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->isSafeIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/accounts/ManageAccountsSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->showSyncState()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;-><init>()V

    .line 375
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->UPDATE_PREF_MESSAGE:I

    .line 376
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->UPDATE_VIEW_MESSAGE:I

    .line 377
    new-instance v0, Lcom/android/settings_ex/accounts/ManageAccountsSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings$1;-><init>(Lcom/android/settings_ex/accounts/ManageAccountsSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mHandler:Landroid/os/Handler;

    .line 68
    return-void
.end method

.method private addAuthenticatorSettings()V
    .locals 3

    .prologue
    .line 474
    iget-object v1, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->addPreferencesForType(Ljava/lang/String;Landroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 475
    .local v0, "prefs":Landroid/support/v7/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 476
    invoke-direct {p0, v0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->updatePreferenceIntents(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 473
    :cond_0
    return-void
.end method

.method private isSafeIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z
    .locals 10
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 591
    iget-object v8, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mAuthenticatorHelper:Lcom/android/settings_exlib/accounts/AuthenticatorHelper;

    iget-object v9, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/settings_exlib/accounts/AuthenticatorHelper;->getAccountTypeDescription(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    .line 593
    .local v0, "authDesc":Landroid/accounts/AuthenticatorDescription;
    iget-object v8, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {p1, p2, v7, v8}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 594
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v3, :cond_0

    .line 595
    return v7

    .line 597
    :cond_0
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 598
    .local v4, "resolvedActivityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 600
    .local v5, "resolvedAppInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-boolean v8, v4, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v8, :cond_2

    .line 601
    iget-object v8, v4, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    if-nez v8, :cond_1

    .line 602
    return v6

    .line 603
    :cond_1
    iget-object v8, v4, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 604
    iget-object v9, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    .line 603
    invoke-virtual {p1, v8, v9}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_2

    .line 605
    return v6

    .line 608
    :cond_2
    iget-object v8, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 609
    .local v1, "authenticatorAppInf":Landroid/content/pm/ApplicationInfo;
    iget v8, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v9, v1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v8, v9, :cond_3

    :goto_0
    return v6

    :cond_3
    move v6, v7

    goto :goto_0

    .line 610
    .end local v1    # "authenticatorAppInf":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .line 611
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v6, "AccountSettings"

    const-string/jumbo v8, "Intent considered unsafe due to exception."

    invoke-static {v6, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 612
    return v7
.end method

.method private isSyncEnabled(ILandroid/accounts/Account;Ljava/lang/String;)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authority"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 416
    invoke-static {p2, p3, p1}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    invoke-static {p1}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v1

    .line 416
    if-eqz v1, :cond_0

    .line 418
    invoke-static {p2, p3, p1}, Landroid/content/ContentResolver;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 416
    :cond_0
    return v0
.end method

.method private isSyncing(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 4
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/SyncInfo;",
            ">;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 405
    .local p1, "currentSyncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 406
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 407
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncInfo;

    .line 408
    .local v2, "syncInfo":Landroid/content/SyncInfo;
    iget-object v3, v2, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v3, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 409
    const/4 v3, 0x1

    return v3

    .line 406
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 412
    .end local v2    # "syncInfo":Landroid/content/SyncInfo;
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method private requestOrCancelSyncForAccounts(Z)V
    .locals 11
    .param p1, "sync"    # Z

    .prologue
    .line 219
    iget-object v9, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 220
    .local v8, "userId":I
    invoke-static {v8}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v7

    .line 221
    .local v7, "syncAdapters":[Landroid/content/SyncAdapterType;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 222
    .local v2, "extras":Landroid/os/Bundle;
    const-string/jumbo v9, "force"

    const/4 v10, 0x1

    invoke-virtual {v2, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 223
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    .line 225
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 226
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v5

    .line 227
    .local v5, "pref":Landroid/support/v7/preference/Preference;
    instance-of v9, v5, Lcom/android/settings_ex/AccountPreference;

    if-eqz v9, :cond_2

    .line 228
    check-cast v5, Lcom/android/settings_ex/AccountPreference;

    .end local v5    # "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual {v5}, Lcom/android/settings_ex/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 230
    .local v0, "account":Landroid/accounts/Account;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v9, v7

    if-ge v4, v9, :cond_2

    .line 231
    aget-object v6, v7, v4

    .line 232
    .local v6, "sa":Landroid/content/SyncAdapterType;
    aget-object v9, v7, v4

    iget-object v9, v9, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 233
    iget-object v9, v6, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v0, v9, v8}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v9

    .line 232
    if-eqz v9, :cond_0

    .line 235
    if-eqz p1, :cond_1

    .line 236
    iget-object v9, v6, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v0, v9, v8, v2}, Landroid/content/ContentResolver;->requestSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 230
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 239
    :cond_1
    iget-object v9, v6, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v0, v9, v8}, Landroid/content/ContentResolver;->cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;I)V

    goto :goto_2

    .line 225
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v4    # "j":I
    .end local v6    # "sa":Landroid/content/SyncAdapterType;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 218
    :cond_3
    return-void
.end method

.method private showAccountsIfNeeded()V
    .locals 14

    .prologue
    const/4 v5, 0x0

    const/4 v12, 0x0

    .line 428
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 429
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 430
    iget-object v11, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v11}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    .line 429
    invoke-virtual {v1, v11}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v6

    .line 431
    .local v6, "accounts":[Landroid/accounts/Account;
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 432
    iput-object v12, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    .line 433
    const v1, 0x7f08003a

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->addPreferencesFromResource(I)V

    .line 434
    const/4 v7, 0x0

    .local v7, "i":I
    array-length v8, v6

    .local v8, "n":I
    :goto_0
    if-ge v7, v8, :cond_6

    .line 435
    aget-object v2, v6, v7

    .line 436
    .local v2, "account":Landroid/accounts/Account;
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v11, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v1, v11}, Lcom/android/settings_ex/Utils;->showAccount(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 434
    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 441
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 442
    :cond_3
    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 444
    .local v4, "auths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x1

    .line 445
    .local v10, "showAccount":Z
    iget-object v1, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    if-eqz v1, :cond_4

    if-eqz v4, :cond_4

    .line 446
    const/4 v10, 0x0

    .line 447
    iget-object v11, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    array-length v12, v11

    move v1, v5

    :goto_2
    if-ge v1, v12, :cond_4

    aget-object v9, v11, v1

    .line 448
    .local v9, "requestedAuthority":Ljava/lang/String;
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 449
    const/4 v10, 0x1

    .line 455
    .end local v9    # "requestedAuthority":Ljava/lang/String;
    :cond_4
    if-eqz v10, :cond_1

    .line 456
    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 458
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    new-instance v0, Lcom/android/settings_ex/AccountPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/AccountPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;Z)V

    .line 459
    .local v0, "preference":Lcom/android/settings_ex/AccountPreference;
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 460
    iget-object v1, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    if-nez v1, :cond_1

    .line 461
    iput-object v2, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    goto :goto_1

    .line 447
    .end local v0    # "preference":Lcom/android/settings_ex/AccountPreference;
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v9    # "requestedAuthority":Ljava/lang/String;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 465
    .end local v2    # "account":Landroid/accounts/Account;
    .end local v4    # "auths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "requestedAuthority":Ljava/lang/String;
    .end local v10    # "showAccount":Z
    :cond_6
    iget-object v1, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    if-eqz v1, :cond_7

    .line 466
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->addAuthenticatorSettings()V

    .line 427
    :goto_3
    return-void

    .line 469
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->finish()V

    goto :goto_3
.end method

.method private showSyncState()V
    .locals 40

    .prologue
    .line 269
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v36

    if-eqz v36, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/app/Activity;->isFinishing()Z

    move-result v36

    if-eqz v36, :cond_1

    :cond_0
    return-void

    .line 271
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mUserHandle:Landroid/os/UserHandle;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v35

    .line 274
    .local v35, "userId":I
    invoke-static/range {v35 .. v35}, Landroid/content/ContentResolver;->getCurrentSyncsAsUser(I)Ljava/util/List;

    move-result-object v14

    .line 276
    .local v14, "currentSyncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    const/4 v7, 0x0

    .line 277
    .local v7, "anySyncFailed":Z
    new-instance v15, Ljava/util/Date;

    invoke-direct {v15}, Ljava/util/Date;-><init>()V

    .line 280
    .local v15, "date":Ljava/util/Date;
    invoke-static/range {v35 .. v35}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v28

    .line 281
    .local v28, "syncAdapters":[Landroid/content/SyncAdapterType;
    new-instance v34, Ljava/util/HashSet;

    invoke-direct/range {v34 .. v34}, Ljava/util/HashSet;-><init>()V

    .line 282
    .local v34, "userFacing":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/16 v18, 0x0

    .local v18, "k":I
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v24, v0

    .local v24, "n":I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v24

    if-ge v0, v1, :cond_3

    .line 283
    aget-object v26, v28, v18

    .line 284
    .local v26, "sa":Landroid/content/SyncAdapterType;
    invoke-virtual/range {v26 .. v26}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v36

    if-eqz v36, :cond_2

    .line 285
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 288
    .end local v26    # "sa":Landroid/content/SyncAdapterType;
    :cond_3
    const/16 v17, 0x0

    .local v17, "i":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v13

    .local v13, "count":I
    :goto_1
    move/from16 v0, v17

    if-ge v0, v13, :cond_12

    .line 291
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v25

    .line 296
    .local v25, "pref":Landroid/support/v7/preference/Preference;
    move-object/from16 v0, v25

    instance-of v0, v0, Lcom/android/settings_ex/AccountPreference;

    move/from16 v36, v0

    if-nez v36, :cond_4

    .line 288
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 v5, v25

    .line 300
    check-cast v5, Lcom/android/settings_ex/AccountPreference;

    .line 301
    .local v5, "accountPref":Lcom/android/settings_ex/AccountPreference;
    invoke-virtual {v5}, Lcom/android/settings_ex/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    .line 302
    .local v4, "account":Landroid/accounts/Account;
    const/16 v29, 0x0

    .line 303
    .local v29, "syncCount":I
    const-wide/16 v20, 0x0

    .line 304
    .local v20, "lastSuccessTime":J
    const/16 v31, 0x0

    .line 305
    .local v31, "syncIsFailing":Z
    invoke-virtual {v5}, Lcom/android/settings_ex/AccountPreference;->getAuthorities()Ljava/util/ArrayList;

    move-result-object v8

    .line 306
    .local v8, "authorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v32, 0x0

    .line 307
    .local v32, "syncingNow":Z
    if-eqz v8, :cond_b

    .line 308
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v32    # "syncingNow":Z
    .local v10, "authority$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 309
    .local v9, "authority":Ljava/lang/String;
    move/from16 v0, v35

    invoke-static {v4, v9, v0}, Landroid/content/ContentResolver;->getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Landroid/content/SyncStatusInfo;

    move-result-object v27

    .line 311
    .local v27, "status":Landroid/content/SyncStatusInfo;
    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v1, v4, v9}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->isSyncEnabled(ILandroid/accounts/Account;Ljava/lang/String;)Z

    move-result v30

    .line 312
    .local v30, "syncEnabled":Z
    invoke-static {v4, v9}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v11

    .line 313
    .local v11, "authorityIsPending":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v4, v9}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->isSyncing(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v6

    .line 314
    .local v6, "activelySyncing":Z
    if-eqz v27, :cond_8

    if-eqz v30, :cond_8

    .line 316
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v36, v0

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_8

    .line 317
    const/16 v36, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v36

    .line 318
    const/16 v37, 0x1

    .line 317
    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_7

    const/16 v36, 0x1

    :goto_4
    move/from16 v19, v36

    .line 319
    .local v19, "lastSyncFailed":Z
    :goto_5
    if-eqz v19, :cond_5

    if-eqz v6, :cond_9

    .line 323
    :cond_5
    :goto_6
    or-int v32, v32, v6

    .line 324
    .local v32, "syncingNow":Z
    if-eqz v27, :cond_6

    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v36, v0

    cmp-long v36, v20, v36

    if-gez v36, :cond_6

    .line 325
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v20, v0

    .line 327
    :cond_6
    if-eqz v30, :cond_a

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_a

    const/16 v36, 0x1

    :goto_7
    add-int v29, v29, v36

    goto :goto_3

    .line 317
    .end local v19    # "lastSyncFailed":Z
    .end local v32    # "syncingNow":Z
    :cond_7
    const/16 v36, 0x0

    goto :goto_4

    .line 314
    :cond_8
    const/16 v19, 0x0

    goto :goto_5

    .line 319
    .restart local v19    # "lastSyncFailed":Z
    :cond_9
    if-nez v11, :cond_5

    .line 320
    const/16 v31, 0x1

    .line 321
    const/4 v7, 0x1

    goto :goto_6

    .line 327
    .restart local v32    # "syncingNow":Z
    :cond_a
    const/16 v36, 0x0

    goto :goto_7

    .line 330
    .end local v6    # "activelySyncing":Z
    .end local v9    # "authority":Ljava/lang/String;
    .end local v10    # "authority$iterator":Ljava/util/Iterator;
    .end local v11    # "authorityIsPending":Z
    .end local v19    # "lastSyncFailed":Z
    .end local v27    # "status":Landroid/content/SyncStatusInfo;
    .end local v30    # "syncEnabled":Z
    .local v32, "syncingNow":Z
    :cond_b
    const-string/jumbo v36, "AccountSettings"

    const/16 v37, 0x2

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v36

    if-eqz v36, :cond_c

    .line 331
    const-string/jumbo v36, "AccountSettings"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "no syncadapters found for "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    .end local v32    # "syncingNow":Z
    :cond_c
    new-instance v22, Landroid/os/Message;

    invoke-direct/range {v22 .. v22}, Landroid/os/Message;-><init>()V

    .line 336
    .local v22, "msg":Landroid/os/Message;
    const/16 v36, 0x1

    move/from16 v0, v36

    move-object/from16 v1, v22

    iput v0, v1, Landroid/os/Message;->what:I

    .line 337
    move-object/from16 v0, v22

    iput-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 338
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 339
    .local v12, "bundle":Landroid/os/Bundle;
    if-eqz v31, :cond_d

    .line 340
    const-string/jumbo v36, "status"

    const/16 v37, 0x2

    move-object/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 341
    const-string/jumbo v36, "updateSummary"

    const/16 v37, 0x1

    move-object/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 365
    :goto_8
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 342
    :cond_d
    if-nez v29, :cond_e

    .line 343
    const-string/jumbo v36, "status"

    const/16 v37, 0x1

    move-object/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 344
    const-string/jumbo v36, "updateSummary"

    const/16 v37, 0x1

    move-object/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_8

    .line 345
    :cond_e
    if-lez v29, :cond_11

    .line 346
    if-eqz v32, :cond_f

    .line 347
    const-string/jumbo v36, "status"

    const/16 v37, 0x3

    move-object/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 348
    const-string/jumbo v36, "updateSummary"

    const/16 v37, 0x1

    move-object/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_8

    .line 350
    :cond_f
    const-string/jumbo v36, "status"

    const/16 v37, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 351
    const-wide/16 v36, 0x0

    cmp-long v36, v20, v36

    if-lez v36, :cond_10

    .line 352
    const-string/jumbo v36, "updateSummary"

    const/16 v37, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 353
    move-wide/from16 v0, v20

    invoke-virtual {v15, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 354
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->formatSyncDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v33

    .line 355
    .local v33, "timeString":Ljava/lang/String;
    const-string/jumbo v36, "summary"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    .line 356
    const/16 v39, 0x0

    aput-object v33, v38, v39

    const v39, 0x7f0e0c49

    .line 355
    move-object/from16 v0, v37

    move/from16 v1, v39

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 358
    .end local v33    # "timeString":Ljava/lang/String;
    :cond_10
    const-string/jumbo v36, "updateSummary"

    const/16 v37, 0x1

    move-object/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_8

    .line 362
    :cond_11
    const-string/jumbo v36, "status"

    const/16 v37, 0x1

    move-object/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 363
    const-string/jumbo v36, "updateSummary"

    const/16 v37, 0x1

    move-object/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_8

    .line 292
    .end local v4    # "account":Landroid/accounts/Account;
    .end local v5    # "accountPref":Lcom/android/settings_ex/AccountPreference;
    .end local v8    # "authorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "bundle":Landroid/os/Bundle;
    .end local v20    # "lastSuccessTime":J
    .end local v22    # "msg":Landroid/os/Message;
    .end local v25    # "pref":Landroid/support/v7/preference/Preference;
    .end local v29    # "syncCount":I
    .end local v31    # "syncIsFailing":Z
    :catch_0
    move-exception v16

    .line 369
    :cond_12
    new-instance v23, Landroid/os/Message;

    invoke-direct/range {v23 .. v23}, Landroid/os/Message;-><init>()V

    .line 370
    .local v23, "msg1":Landroid/os/Message;
    const/16 v36, 0x2

    move/from16 v0, v36

    move-object/from16 v1, v23

    iput v0, v1, Landroid/os/Message;->what:I

    .line 371
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v23

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 267
    return-void
.end method

.method private startAccountSettings(Lcom/android/settings_ex/AccountPreference;)V
    .locals 7
    .param p1, "acctPref"    # Lcom/android/settings_ex/AccountPreference;

    .prologue
    .line 178
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 179
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v0, "account"

    invoke-virtual {p1}, Lcom/android/settings_ex/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 180
    const-string/jumbo v0, "android.intent.extra.USER"

    iget-object v1, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 181
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 182
    const-class v1, Lcom/android/settings_ex/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 183
    invoke-virtual {p1}, Lcom/android/settings_ex/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v4, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    const v3, 0x7f0e0c3a

    .line 184
    const/4 v6, 0x1

    move-object v5, p0

    .line 181
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 177
    return-void
.end method

.method private updatePreferenceIntents(Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 8
    .param p1, "prefs"    # Landroid/support/v7/preference/PreferenceGroup;

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 518
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 519
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v3

    .line 520
    .local v3, "pref":Landroid/support/v7/preference/Preference;
    instance-of v5, v3, Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v5, :cond_0

    move-object v5, v3

    .line 521
    check-cast v5, Landroid/support/v7/preference/PreferenceGroup;

    invoke-direct {p0, v5}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->updatePreferenceIntents(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 523
    :cond_0
    invoke-virtual {v3}, Landroid/support/v7/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 524
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 539
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 540
    const-string/jumbo v6, "android.settings.LOCATION_SOURCE_SETTINGS"

    .line 539
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 543
    new-instance v5, Lcom/android/settings_ex/accounts/ManageAccountsSettings$FragmentStarter;

    .line 544
    const-class v6, Lcom/android/settings_ex/location/LocationSettings;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 545
    const v7, 0x7f0e05d3

    .line 543
    invoke-direct {v5, p0, v6, v7}, Lcom/android/settings_ex/accounts/ManageAccountsSettings$FragmentStarter;-><init>(Lcom/android/settings_ex/accounts/ManageAccountsSettings;Ljava/lang/String;I)V

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 580
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 548
    :cond_2
    iget-object v5, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    const/high16 v6, 0x10000

    .line 547
    invoke-virtual {v2, v1, v6, v5}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 549
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    if-nez v4, :cond_3

    .line 550
    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 553
    :cond_3
    const-string/jumbo v5, "account"

    iget-object v6, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 554
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/high16 v6, 0x10000000

    or-int/2addr v5, v6

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 555
    new-instance v5, Lcom/android/settings_ex/accounts/ManageAccountsSettings$4;

    invoke-direct {v5, p0, v2}, Lcom/android/settings_ex/accounts/ManageAccountsSettings$4;-><init>(Lcom/android/settings_ex/accounts/ManageAccountsSettings;Landroid/content/pm/PackageManager;)V

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_1

    .line 516
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "pref":Landroid/support/v7/preference/Preference;
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_4
    return-void
.end method


# virtual methods
.method public bridge synthetic addPreferencesForType(Ljava/lang/String;Landroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/preference/PreferenceScreen;
    .locals 1
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "parent"    # Landroid/support/v7/preference/PreferenceScreen;

    .prologue
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->addPreferencesForType(Ljava/lang/String;Landroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    invoke-super {p0, p1}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 95
    const/16 v0, 0xb

    return v0
.end method

.method public onAccountsUpdate(Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 423
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->showAccountsIfNeeded()V

    .line 424
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->onSyncStateUpdated()V

    .line 422
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 140
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getView()Landroid/view/View;

    move-result-object v2

    .line 142
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f11008d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    .line 143
    iget-object v3, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "authorities"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    .line 147
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 148
    .local v1, "args":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    const-string/jumbo v3, "account_label"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "account_label"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 136
    :cond_0
    return-void
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 4

    .prologue
    .line 619
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 620
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 621
    .local v2, "pref":Landroid/support/v7/preference/Preference;
    instance-of v3, v2, Lcom/android/settings_ex/AccountPreference;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 622
    check-cast v0, Lcom/android/settings_ex/AccountPreference;

    .line 623
    .local v0, "accPref":Lcom/android/settings_ex/AccountPreference;
    invoke-virtual {v0}, Lcom/android/settings_ex/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 619
    .end local v0    # "accPref":Lcom/android/settings_ex/AccountPreference;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 617
    .end local v2    # "pref":Landroid/support/v7/preference/Preference;
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 103
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    const-string/jumbo v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    .line 106
    :cond_0
    const v1, 0x7f08003a

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->addPreferencesFromResource(I)V

    .line 107
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->setHasOptionsMenu(Z)V

    .line 99
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 189
    const v0, 0x7f0e0c4d

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 190
    const v1, 0x7f020122

    .line 189
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 191
    const v0, 0x7f0e0c4e

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 192
    const v1, 0x1080038

    .line 191
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 193
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 188
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 127
    const v3, 0x7f0400a9

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 128
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f11008c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 129
    .local v1, "prefs_container":Landroid/view/ViewGroup;
    invoke-static {p2, v2, v1, v4}, Lcom/android/settings_ex/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 130
    invoke-super {p0, p1, v1, p3}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 131
    .local v0, "prefs":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 132
    return-object v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 207
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 215
    invoke-super {p0, p1}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 209
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->requestOrCancelSyncForAccounts(Z)V

    .line 210
    return v1

    .line 212
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->requestOrCancelSyncForAccounts(Z)V

    .line 213
    return v1

    .line 207
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onPause()V

    .line 156
    iget-object v0, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mAuthenticatorHelper:Lcom/android/settings_exlib/accounts/AuthenticatorHelper;

    invoke-virtual {v0}, Lcom/android/settings_exlib/accounts/AuthenticatorHelper;->stopListeningToAccountUpdates()V

    .line 154
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 169
    instance-of v0, p1, Lcom/android/settings_ex/AccountPreference;

    if-eqz v0, :cond_0

    .line 170
    check-cast p1, Lcom/android/settings_ex/AccountPreference;

    .end local p1    # "preference":Landroid/support/v7/preference/Preference;
    invoke-direct {p0, p1}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->startAccountSettings(Lcom/android/settings_ex/AccountPreference;)V

    .line 174
    const/4 v0, 0x1

    return v0

    .line 172
    .restart local p1    # "preference":Landroid/support/v7/preference/Preference;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x1

    .line 198
    invoke-super {p0, p1}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 200
    iget-object v2, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 199
    invoke-static {v2}, Landroid/content/ContentResolver;->getCurrentSyncsAsUser(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .line 201
    .local v0, "syncActive":Z
    :goto_0
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 202
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 197
    return-void

    .line 199
    .end local v0    # "syncActive":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "syncActive":Z
    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onResume()V

    .line 113
    iget-object v0, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mAuthenticatorHelper:Lcom/android/settings_exlib/accounts/AuthenticatorHelper;

    invoke-virtual {v0}, Lcom/android/settings_exlib/accounts/AuthenticatorHelper;->listenToAccountUpdates()V

    .line 114
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->updateAuthDescriptions()V

    .line 115
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->showAccountsIfNeeded()V

    .line 116
    new-instance v0, Lcom/android/settings_ex/accounts/ManageAccountsSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings$2;-><init>(Lcom/android/settings_ex/accounts/ManageAccountsSettings;)V

    invoke-virtual {v0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings$2;->start()V

    .line 111
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 161
    invoke-super {p0}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onStop()V

    .line 162
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 163
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 164
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 160
    return-void
.end method

.method protected onSyncStateUpdated()V
    .locals 2

    .prologue
    .line 249
    new-instance v1, Lcom/android/settings_ex/accounts/ManageAccountsSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings$3;-><init>(Lcom/android/settings_ex/accounts/ManageAccountsSettings;)V

    invoke-virtual {v1}, Lcom/android/settings_ex/accounts/ManageAccountsSettings$3;->start()V

    .line 257
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 258
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 248
    :cond_0
    return-void
.end method

.method public bridge synthetic updateAuthDescriptions()V
    .locals 0

    .prologue
    invoke-super {p0}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->updateAuthDescriptions()V

    return-void
.end method
