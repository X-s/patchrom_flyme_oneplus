.class public Lcom/android/settings_ex/accounts/AccountSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "AccountSettings.java"

# interfaces
.implements Lcom/android/settings_exlib/accounts/AuthenticatorHelper$OnAccountsUpdateListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/accounts/AccountSettings$1;,
        Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;,
        Lcom/android/settings_ex/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;,
        Lcom/android/settings_ex/accounts/AccountSettings$ManagedProfileBroadcastReceiver;,
        Lcom/android/settings_ex/accounts/AccountSettings$MasterSyncStateClickListener;,
        Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;
    }
.end annotation


# static fields
.field private static final ADD_ACCOUNT_ACTION:Ljava/lang/String; = "android.settings.ADD_ACCOUNT_SETTINGS"

.field private static final KEY_ACCOUNT:Ljava/lang/String; = "account"

.field private static final ORDER_LAST:I = 0x3ea

.field private static final ORDER_NEXT_TO_LAST:I = 0x3e9

.field private static final ORDER_NEXT_TO_NEXT_TO_LAST:I = 0x3e8

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field public static final TAG:Ljava/lang/String; = "AccountSettings"

.field private static final TAG_CONFIRM_AUTO_SYNC_CHANGE:Ljava/lang/String; = "confirmAutoSyncChange"


# instance fields
.field private mAuthorities:[Ljava/lang/String;

.field private mAuthoritiesCount:I

.field private mManagedProfileBroadcastReceiver:Lcom/android/settings_ex/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

.field private mProfileNotAvailablePreference:Landroid/support/v7/preference/Preference;

.field private mProfiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;",
            ">;"
        }
    .end annotation
.end field

.field private mUm:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/accounts/AccountSettings;)Landroid/os/UserManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/accounts/AccountSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->cleanUpPreferences()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/accounts/AccountSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->listenToAccountUpdates()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings_ex/accounts/AccountSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->stopListeningToAccountUpdates()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 741
    new-instance v0, Lcom/android/settings_ex/accounts/AccountSettings$1;

    invoke-direct {v0}, Lcom/android/settings_ex/accounts/AccountSettings$1;-><init>()V

    .line 740
    sput-object v0, Lcom/android/settings_ex/accounts/AccountSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    .line 89
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 104
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    .line 106
    new-instance v0, Lcom/android/settings_ex/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/accounts/AccountSettings$ManagedProfileBroadcastReceiver;-><init>(Lcom/android/settings_ex/accounts/AccountSettings;Lcom/android/settings_ex/accounts/AccountSettings$ManagedProfileBroadcastReceiver;)V

    .line 105
    iput-object v0, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mManagedProfileBroadcastReceiver:Lcom/android/settings_ex/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mAuthoritiesCount:I

    .line 89
    return-void
.end method

.method private accountTypeHasAnyRequestedAuthorities(Lcom/android/settings_exlib/accounts/AuthenticatorHelper;Ljava/lang/String;)Z
    .locals 6
    .param p1, "helper"    # Lcom/android/settings_exlib/accounts/AuthenticatorHelper;
    .param p2, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 534
    iget v2, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mAuthoritiesCount:I

    if-nez v2, :cond_0

    .line 536
    return v3

    .line 538
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/settings_exlib/accounts/AuthenticatorHelper;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 540
    .local v0, "authoritiesForType":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 541
    const-string/jumbo v2, "AccountSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No sync authorities for account type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    return v5

    .line 544
    :cond_1
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget v2, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mAuthoritiesCount:I

    if-ge v1, v2, :cond_3

    .line 545
    iget-object v2, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mAuthorities:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 546
    return v3

    .line 544
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 549
    :cond_3
    return v5
.end method

.method private cleanUpPreferences()V
    .locals 2

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 410
    .local v0, "preferenceScreen":Landroid/support/v7/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 413
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 408
    return-void
.end method

.method private getAccountTypePreferences(Lcom/android/settings_exlib/accounts/AuthenticatorHelper;Landroid/os/UserHandle;)Ljava/util/ArrayList;
    .locals 17
    .param p1, "helper"    # Lcom/android/settings_exlib/accounts/AuthenticatorHelper;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings_exlib/accounts/AuthenticatorHelper;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 472
    invoke-virtual/range {p1 .. p1}, Lcom/android/settings_exlib/accounts/AuthenticatorHelper;->getEnabledAccountTypes()[Ljava/lang/String;

    move-result-object v13

    .line 474
    .local v13, "accountTypes":[Ljava/lang/String;
    new-instance v12, Ljava/util/ArrayList;

    array-length v2, v13

    invoke-direct {v12, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 476
    .local v12, "accountTypePreferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;>;"
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    array-length v2, v13

    if-ge v15, v2, :cond_5

    .line 477
    aget-object v11, v13, v15

    .line 478
    .local v11, "accountType":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v11}, Lcom/android/settings_ex/Utils;->showAccount(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 476
    :cond_0
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 483
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/android/settings_ex/accounts/AccountSettings;->accountTypeHasAnyRequestedAuthorities(Lcom/android/settings_exlib/accounts/AuthenticatorHelper;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 486
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v11}, Lcom/android/settings_exlib/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 487
    .local v5, "label":Ljava/lang/CharSequence;
    if-eqz v5, :cond_0

    .line 490
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/settings_exlib/accounts/AuthenticatorHelper;->getPackageForType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 491
    .local v6, "titleResPackageName":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/settings_exlib/accounts/AuthenticatorHelper;->getLabelIdForType(Ljava/lang/String;)I

    move-result v7

    .line 493
    .local v7, "titleResId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v11, v0}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v14

    .line 495
    .local v14, "accounts":[Landroid/accounts/Account;
    array-length v2, v14

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 496
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/settings_exlib/accounts/AuthenticatorHelper;->hasAccountPreferences(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v16, 0x0

    .line 498
    .local v16, "skipToAccount":Z
    :goto_2
    if-eqz v16, :cond_4

    .line 499
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 500
    .local v9, "fragmentArguments":Landroid/os/Bundle;
    const-string/jumbo v2, "account"

    .line 501
    const/4 v3, 0x0

    aget-object v3, v14, v3

    .line 500
    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 502
    const-string/jumbo v2, "android.intent.extra.USER"

    move-object/from16 v0, p2

    invoke-virtual {v9, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 504
    new-instance v2, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    .line 505
    const-class v3, Lcom/android/settings_ex/accounts/AccountSyncSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 507
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v11}, Lcom/android/settings_exlib/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    move-object/from16 v3, p0

    .line 504
    invoke-direct/range {v2 .. v10}, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;-><init>(Lcom/android/settings_ex/accounts/AccountSettings;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v11}, Lcom/android/settings_exlib/accounts/AuthenticatorHelper;->preloadDrawableForType(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 496
    .end local v9    # "fragmentArguments":Landroid/os/Bundle;
    .end local v16    # "skipToAccount":Z
    :cond_2
    const/16 v16, 0x1

    goto :goto_2

    .line 495
    :cond_3
    const/16 v16, 0x0

    goto :goto_2

    .line 509
    .restart local v16    # "skipToAccount":Z
    :cond_4
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 510
    .restart local v9    # "fragmentArguments":Landroid/os/Bundle;
    const-string/jumbo v2, "account_type"

    invoke-virtual {v9, v2, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    const-string/jumbo v2, "account_label"

    .line 512
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 511
    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const-string/jumbo v2, "android.intent.extra.USER"

    move-object/from16 v0, p2

    invoke-virtual {v9, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 515
    new-instance v2, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    .line 516
    const-class v3, Lcom/android/settings_ex/accounts/ManageAccountsSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 518
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v11}, Lcom/android/settings_exlib/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    move-object/from16 v3, p0

    .line 515
    invoke-direct/range {v2 .. v10}, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;-><init>(Lcom/android/settings_ex/accounts/AccountSettings;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 523
    .end local v5    # "label":Ljava/lang/CharSequence;
    .end local v6    # "titleResPackageName":Ljava/lang/String;
    .end local v7    # "titleResId":I
    .end local v9    # "fragmentArguments":Landroid/os/Bundle;
    .end local v11    # "accountType":Ljava/lang/String;
    .end local v14    # "accounts":[Landroid/accounts/Account;
    .end local v16    # "skipToAccount":Z
    :cond_5
    new-instance v2, Lcom/android/settings_ex/accounts/AccountSettings$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings_ex/accounts/AccountSettings$4;-><init>(Lcom/android/settings_ex/accounts/AccountSettings;)V

    invoke-static {v12, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 529
    return-object v12
.end method

.method private getWorkGroupSummary(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userInfo"    # Landroid/content/pm/UserInfo;

    .prologue
    const/4 v4, 0x0

    .line 399
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 400
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    iget v3, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p1, v3}, Lcom/android/settings_ex/Utils;->getAdminApplicationInfo(Landroid/content/Context;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 401
    .local v0, "adminApplicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_0

    .line 402
    return-object v4

    .line 404
    :cond_0
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 405
    .local v1, "appLabel":Ljava/lang/CharSequence;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const v4, 0x7f0e0ec1

    invoke-virtual {p0, v4, v3}, Lcom/android/settings_ex/accounts/AccountSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private listenToAccountUpdates()V
    .locals 4

    .prologue
    .line 417
    iget-object v3, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 418
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 419
    iget-object v3, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;

    iget-object v0, v3, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->authenticatorHelper:Lcom/android/settings_exlib/accounts/AuthenticatorHelper;

    .line 420
    .local v0, "authenticatorHelper":Lcom/android/settings_exlib/accounts/AuthenticatorHelper;
    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {v0}, Lcom/android/settings_exlib/accounts/AuthenticatorHelper;->listenToAccountUpdates()V

    .line 418
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 416
    .end local v0    # "authenticatorHelper":Lcom/android/settings_exlib/accounts/AuthenticatorHelper;
    :cond_1
    return-void
.end method

.method private newAddAccountPreference(Landroid/content/Context;)Lcom/android/settings_ex/DimmableIconPreference;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 344
    new-instance v0, Lcom/android/settings_ex/DimmableIconPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/DimmableIconPreference;-><init>(Landroid/content/Context;)V

    .line 345
    .local v0, "preference":Lcom/android/settings_ex/DimmableIconPreference;
    const v1, 0x7f0e0c3c

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DimmableIconPreference;->setTitle(I)V

    .line 346
    const v1, 0x7f020119

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DimmableIconPreference;->setIcon(I)V

    .line 347
    invoke-virtual {v0, p0}, Lcom/android/settings_ex/DimmableIconPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 348
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DimmableIconPreference;->setOrder(I)V

    .line 349
    return-object v0
.end method

.method private newAddOneplusAccountPreference(Landroid/content/Context;)Landroid/support/v7/preference/Preference;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 354
    new-instance v0, Landroid/support/v7/preference/Preference;

    invoke-direct {v0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 355
    .local v0, "preference":Landroid/support/v7/preference/Preference;
    const v1, 0x7f0e0312

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 356
    const v1, 0x7f0201e9

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setIcon(I)V

    .line 357
    new-instance v1, Lcom/android/settings_ex/accounts/AccountSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/accounts/AccountSettings$3;-><init>(Lcom/android/settings_ex/accounts/AccountSettings;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 376
    return-object v0
.end method

.method private newManagedProfileSettings()Landroid/support/v7/preference/Preference;
    .locals 2

    .prologue
    .line 390
    new-instance v0, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 391
    .local v0, "preference":Landroid/support/v7/preference/Preference;
    const v1, 0x7f0e104e

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 392
    const v1, 0x7f020177

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setIcon(I)V

    .line 393
    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 394
    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 395
    return-object v0
.end method

.method private newRemoveWorkProfilePreference(Landroid/content/Context;)Landroid/support/v7/preference/Preference;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 380
    new-instance v0, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 381
    .local v0, "preference":Landroid/support/v7/preference/Preference;
    const v1, 0x7f0e0c40

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 382
    const v1, 0x7f02011e

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setIcon(I)V

    .line 383
    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 384
    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 385
    return-object v0
.end method

.method private stopListeningToAccountUpdates()V
    .locals 4

    .prologue
    .line 427
    iget-object v3, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 428
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 429
    iget-object v3, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;

    iget-object v0, v3, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->authenticatorHelper:Lcom/android/settings_exlib/accounts/AuthenticatorHelper;

    .line 430
    .local v0, "authenticatorHelper":Lcom/android/settings_exlib/accounts/AuthenticatorHelper;
    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {v0}, Lcom/android/settings_exlib/accounts/AuthenticatorHelper;->stopListeningToAccountUpdates()V

    .line 428
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 426
    .end local v0    # "authenticatorHelper":Lcom/android/settings_exlib/accounts/AuthenticatorHelper;
    :cond_1
    return-void
.end method

.method private updateAccountTypes(Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;)V
    .locals 7
    .param p1, "profileData"    # Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;

    .prologue
    const/4 v6, 0x0

    .line 437
    iget-object v4, p1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    .line 439
    new-instance v1, Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;

    sget-object v4, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-direct {v1, v4}, Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;-><init>(Landroid/content/Context;)V

    .line 440
    .local v1, "headerMargin":Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;->setOrder(I)V

    .line 441
    iget-object v4, p1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v4, v1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 443
    iget-object v4, p1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 445
    iget-object v4, p1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->authenticatorHelper:Lcom/android/settings_exlib/accounts/AuthenticatorHelper;

    iget-object v5, p1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    .line 444
    invoke-direct {p0, v4, v5}, Lcom/android/settings_ex/accounts/AccountSettings;->getAccountTypePreferences(Lcom/android/settings_exlib/accounts/AuthenticatorHelper;Landroid/os/UserHandle;)Ljava/util/ArrayList;

    move-result-object v3

    .line 446
    .local v3, "preferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 447
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 448
    iget-object v5, p1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/Preference;

    invoke-virtual {v5, v4}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 447
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 450
    :cond_0
    iget-object v4, p1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->addAccountPreference:Lcom/android/settings_ex/DimmableIconPreference;

    if-eqz v4, :cond_1

    .line 451
    iget-object v4, p1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    iget-object v5, p1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->addAccountPreference:Lcom/android/settings_ex/DimmableIconPreference;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 462
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "preferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;>;"
    :cond_1
    :goto_1
    iget-object v4, p1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->removeWorkProfilePreference:Landroid/support/v7/preference/Preference;

    if-eqz v4, :cond_2

    .line 463
    iget-object v4, p1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    iget-object v5, p1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->removeWorkProfilePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 465
    :cond_2
    iget-object v4, p1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->managedProfilePreference:Landroid/support/v7/preference/Preference;

    if-eqz v4, :cond_3

    .line 466
    iget-object v4, p1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    iget-object v5, p1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->managedProfilePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 436
    :cond_3
    return-void

    .line 455
    :cond_4
    iget-object v4, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/support/v7/preference/Preference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 456
    iget-object v4, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/support/v7/preference/Preference;

    const v5, 0x7f0200c0

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setIcon(I)V

    .line 457
    iget-object v4, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 458
    iget-object v4, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/support/v7/preference/Preference;

    .line 459
    const v5, 0x7f0e0c3d

    .line 458
    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 460
    iget-object v4, p1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    iget-object v5, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1
.end method

.method private updateProfileUi(Landroid/content/pm/UserInfo;ZLandroid/support/v7/preference/PreferenceScreen;)V
    .locals 7
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;
    .param p2, "addCategory"    # Z
    .param p3, "parent"    # Landroid/support/v7/preference/PreferenceScreen;

    .prologue
    const/4 v6, 0x1

    .line 305
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 306
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;-><init>(Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;)V

    .line 307
    .local v1, "profileData":Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;
    iput-object p1, v1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    .line 308
    if-eqz p2, :cond_2

    .line 309
    new-instance v3, Lcom/android/settings_ex/AccessiblePreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/settings_ex/AccessiblePreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v3, v1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    .line 310
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 311
    iget-object v3, v1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    const v4, 0x7f040218

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceGroup;->setLayoutResource(I)V

    .line 312
    iget-object v3, v1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    const v4, 0x7f0e0099

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceGroup;->setTitle(I)V

    .line 313
    invoke-direct {p0, v0, p1}, Lcom/android/settings_ex/accounts/AccountSettings;->getWorkGroupSummary(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v2

    .line 314
    .local v2, "workGroupSummary":Ljava/lang/String;
    iget-object v3, v1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/PreferenceGroup;->setSummary(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v3, v1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    check-cast v3, Lcom/android/settings_ex/AccessiblePreferenceCategory;

    .line 316
    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const v5, 0x7f0e07e7

    invoke-virtual {p0, v5, v4}, Lcom/android/settings_ex/accounts/AccountSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 315
    invoke-virtual {v3, v4}, Lcom/android/settings_ex/AccessiblePreferenceCategory;->setContentDescription(Ljava/lang/String;)V

    .line 317
    invoke-direct {p0, v0}, Lcom/android/settings_ex/accounts/AccountSettings;->newRemoveWorkProfilePreference(Landroid/content/Context;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    iput-object v3, v1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->removeWorkProfilePreference:Landroid/support/v7/preference/Preference;

    .line 318
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->newManagedProfileSettings()Landroid/support/v7/preference/Preference;

    move-result-object v3

    iput-object v3, v1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->managedProfilePreference:Landroid/support/v7/preference/Preference;

    .line 324
    .end local v2    # "workGroupSummary":Ljava/lang/String;
    :goto_0
    iget-object v3, v1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {p3, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 328
    :goto_1
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 329
    new-instance v3, Lcom/android/settings_exlib/accounts/AuthenticatorHelper;

    .line 330
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    .line 329
    invoke-direct {v3, v0, v4, p0}, Lcom/android/settings_exlib/accounts/AuthenticatorHelper;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/settings_exlib/accounts/AuthenticatorHelper$OnAccountsUpdateListener;)V

    iput-object v3, v1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->authenticatorHelper:Lcom/android/settings_exlib/accounts/AuthenticatorHelper;

    .line 332
    const-string/jumbo v3, "no_modify_accounts"

    iget v4, p1, Landroid/content/pm/UserInfo;->id:I

    .line 331
    invoke-static {v0, v3, v4}, Lcom/android/settings_exlib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 333
    invoke-direct {p0, v0}, Lcom/android/settings_ex/accounts/AccountSettings;->newAddAccountPreference(Landroid/content/Context;)Lcom/android/settings_ex/DimmableIconPreference;

    move-result-object v3

    iput-object v3, v1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->addAccountPreference:Lcom/android/settings_ex/DimmableIconPreference;

    .line 334
    iget-object v3, v1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->addAccountPreference:Lcom/android/settings_ex/DimmableIconPreference;

    .line 335
    const-string/jumbo v4, "no_modify_accounts"

    iget v5, p1, Landroid/content/pm/UserInfo;->id:I

    .line 334
    invoke-virtual {v3, v4, v5}, Lcom/android/settings_ex/DimmableIconPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;I)V

    .line 338
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    iget v4, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 339
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/search/Index;

    move-result-object v3

    .line 340
    const-class v4, Lcom/android/settings_ex/accounts/AccountSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 339
    invoke-virtual {v3, v4, v6, v6}, Lcom/android/settings_ex/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    .line 304
    return-void

    .line 320
    :cond_1
    iget-object v3, v1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    const v4, 0x7f0e0098

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceGroup;->setTitle(I)V

    .line 321
    iget-object v3, v1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    check-cast v3, Lcom/android/settings_ex/AccessiblePreferenceCategory;

    .line 322
    const v4, 0x7f0e07e8

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/accounts/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 321
    invoke-virtual {v3, v4}, Lcom/android/settings_ex/AccessiblePreferenceCategory;->setContentDescription(Ljava/lang/String;)V

    goto :goto_0

    .line 326
    :cond_2
    iput-object p3, v1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 143
    const/16 v0, 0x8

    return v0
.end method

.method public onAccountsUpdate(Landroid/os/UserHandle;)V
    .locals 4
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 213
    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;

    .line 214
    .local v0, "profileData":Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;
    if-eqz v0, :cond_0

    .line 215
    invoke-direct {p0, v0}, Lcom/android/settings_ex/accounts/AccountSettings;->updateAccountTypes(Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;)V

    .line 212
    :goto_0
    return-void

    .line 217
    :cond_0
    const-string/jumbo v1, "AccountSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Missing Settings screen for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 148
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 149
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/AccountSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    .line 150
    new-instance v0, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/support/v7/preference/Preference;

    .line 151
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "authorities"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mAuthorities:[Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mAuthorities:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mAuthorities:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mAuthoritiesCount:I

    .line 155
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/AccountSettings;->setHasOptionsMenu(Z)V

    .line 147
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 160
    const/high16 v0, 0x7f140000

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 161
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 159
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 206
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 207
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->stopListeningToAccountUpdates()V

    .line 208
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mManagedProfileBroadcastReceiver:Lcom/android/settings_ex/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 205
    return-void
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 13
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x1

    .line 224
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 225
    .local v7, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_3

    .line 226
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;

    .line 227
    .local v10, "profileData":Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;
    iget-object v0, v10, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->addAccountPreference:Lcom/android/settings_ex/DimmableIconPreference;

    if-ne p1, v0, :cond_0

    .line 228
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v0, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 229
    .local v9, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "android.intent.extra.USER"

    iget-object v1, v10, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 230
    const-string/jumbo v0, "authorities"

    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mAuthorities:[Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    invoke-virtual {p0, v9}, Lcom/android/settings_ex/accounts/AccountSettings;->startActivity(Landroid/content/Intent;)V

    .line 232
    return v12

    .line 234
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v0, v10, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->removeWorkProfilePreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_1

    .line 235
    iget-object v0, v10, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    iget v11, v0, Landroid/content/pm/UserInfo;->id:I

    .line 236
    .local v11, "userId":I
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 237
    new-instance v1, Lcom/android/settings_ex/accounts/AccountSettings$2;

    invoke-direct {v1, p0, v11}, Lcom/android/settings_ex/accounts/AccountSettings$2;-><init>(Lcom/android/settings_ex/accounts/AccountSettings;I)V

    .line 236
    invoke-static {v0, v11, v1}, Lcom/android/settings_ex/users/UserDialogs;->createRemoveDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 244
    return v12

    .line 246
    .end local v11    # "userId":I
    :cond_1
    iget-object v0, v10, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->managedProfilePreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_2

    .line 247
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 248
    .local v2, "arguments":Landroid/os/Bundle;
    const-string/jumbo v0, "android.intent.extra.USER"

    iget-object v1, v10, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 249
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 250
    const-class v1, Lcom/android/settings_ex/accounts/ManagedProfileSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 251
    const v3, 0x7f0e104e

    move-object v5, v4

    .line 249
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 252
    return v12

    .line 225
    .end local v2    # "arguments":Landroid/os/Bundle;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 255
    .end local v10    # "profileData":Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;
    :cond_3
    return v6
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 9
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v8, 0x7f110400

    const v7, 0x7f1103ff

    const v6, 0x7f1103fe

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 166
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 167
    .local v0, "currentProfile":Landroid/os/UserHandle;
    iget-object v2, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 168
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    .line 170
    new-instance v3, Lcom/android/settings_ex/accounts/AccountSettings$MasterSyncStateClickListener;

    invoke-direct {v3, p0, v0}, Lcom/android/settings_ex/accounts/AccountSettings$MasterSyncStateClickListener;-><init>(Lcom/android/settings_ex/accounts/AccountSettings;Landroid/os/UserHandle;)V

    .line 168
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v2

    .line 172
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 171
    invoke-static {v3}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v3

    .line 168
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 173
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 174
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 165
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-le v2, v4, :cond_1

    .line 177
    iget-object v2, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;

    iget-object v2, v2, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 179
    .local v1, "managedProfile":Landroid/os/UserHandle;
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    .line 181
    new-instance v3, Lcom/android/settings_ex/accounts/AccountSettings$MasterSyncStateClickListener;

    invoke-direct {v3, p0, v0}, Lcom/android/settings_ex/accounts/AccountSettings$MasterSyncStateClickListener;-><init>(Lcom/android/settings_ex/accounts/AccountSettings;Landroid/os/UserHandle;)V

    .line 179
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v2

    .line 183
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 182
    invoke-static {v3}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v3

    .line 179
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 184
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    .line 186
    new-instance v3, Lcom/android/settings_ex/accounts/AccountSettings$MasterSyncStateClickListener;

    invoke-direct {v3, p0, v1}, Lcom/android/settings_ex/accounts/AccountSettings$MasterSyncStateClickListener;-><init>(Lcom/android/settings_ex/accounts/AccountSettings;Landroid/os/UserHandle;)V

    .line 184
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v2

    .line 188
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 187
    invoke-static {v3}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v3

    .line 184
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 189
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 191
    .end local v1    # "managedProfile":Landroid/os/UserHandle;
    :cond_1
    const-string/jumbo v2, "AccountSettings"

    const-string/jumbo v3, "Method onPrepareOptionsMenu called before mProfiles was initialized"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 197
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 198
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->cleanUpPreferences()V

    .line 199
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->updateUi()V

    .line 200
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mManagedProfileBroadcastReceiver:Lcom/android/settings_ex/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->register(Landroid/content/Context;)V

    .line 201
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->listenToAccountUpdates()V

    .line 196
    return-void
.end method

.method updateUi()V
    .locals 9

    .prologue
    .line 260
    const v7, 0x7f080005

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/accounts/AccountSettings;->addPreferencesFromResource(I)V

    .line 262
    iget-object v7, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    invoke-static {v7}, Lcom/android/settings_ex/Utils;->isManagedProfile(Landroid/os/UserManager;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 264
    const-string/jumbo v7, "AccountSettings"

    const-string/jumbo v8, "We should not be showing settings for a managed profile"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->finish()V

    .line 266
    return-void

    .line 269
    :cond_0
    const-string/jumbo v7, "account"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/accounts/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/PreferenceScreen;

    .line 270
    .local v2, "preferenceScreen":Landroid/support/v7/preference/PreferenceScreen;
    iget-object v7, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    invoke-virtual {v7}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 272
    iget-object v7, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 273
    .local v6, "userInfo":Landroid/content/pm/UserInfo;
    const/4 v7, 0x0

    invoke-direct {p0, v6, v7, v2}, Lcom/android/settings_ex/accounts/AccountSettings;->updateProfileUi(Landroid/content/pm/UserInfo;ZLandroid/support/v7/preference/PreferenceScreen;)V

    .line 286
    .end local v6    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1
    iget-object v7, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 287
    .local v5, "profilesCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_5

    .line 288
    iget-object v7, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;

    .line 289
    .local v3, "profileData":Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;
    iget-object v7, v3, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v7, v2}, Landroid/support/v7/preference/PreferenceGroup;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 290
    iget-object v7, v3, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v2, v7}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 292
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/settings_ex/accounts/AccountSettings;->updateAccountTypes(Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;)V

    .line 287
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 275
    .end local v1    # "i":I
    .end local v3    # "profileData":Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;
    .end local v5    # "profilesCount":I
    :cond_3
    iget-object v7, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v4

    .line 276
    .local v4, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 277
    .restart local v5    # "profilesCount":I
    const/4 v7, 0x1

    if-le v5, v7, :cond_4

    const/4 v0, 0x1

    .line 278
    .local v0, "addCategory":Z
    :goto_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v5, :cond_1

    .line 279
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    invoke-direct {p0, v7, v0, v2}, Lcom/android/settings_ex/accounts/AccountSettings;->updateProfileUi(Landroid/content/pm/UserInfo;ZLandroid/support/v7/preference/PreferenceScreen;)V

    .line 278
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 277
    .end local v0    # "addCategory":Z
    .end local v1    # "i":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "addCategory":Z
    goto :goto_1

    .line 297
    .end local v0    # "addCategory":Z
    .end local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v1    # "i":I
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string/jumbo v8, "com.oneplus.account"

    invoke-static {v7, v8}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 298
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings_ex/accounts/AccountSettings;->newAddOneplusAccountPreference(Landroid/content/Context;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 258
    :cond_6
    return-void
.end method
