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
    .line 770
    new-instance v0, Lcom/android/settings_ex/accounts/AccountSettings$1;

    invoke-direct {v0}, Lcom/android/settings_ex/accounts/AccountSettings$1;-><init>()V

    .line 769
    sput-object v0, Lcom/android/settings_ex/accounts/AccountSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    .line 91
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 106
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    .line 108
    new-instance v0, Lcom/android/settings_ex/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/accounts/AccountSettings$ManagedProfileBroadcastReceiver;-><init>(Lcom/android/settings_ex/accounts/AccountSettings;Lcom/android/settings_ex/accounts/AccountSettings$ManagedProfileBroadcastReceiver;)V

    .line 107
    iput-object v0, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mManagedProfileBroadcastReceiver:Lcom/android/settings_ex/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mAuthoritiesCount:I

    .line 91
    return-void
.end method

.method private accountTypeHasAnyRequestedAuthorities(Lcom/android/settings_exlib/accounts/AuthenticatorHelper;Ljava/lang/String;)Z
    .locals 6
    .param p1, "helper"    # Lcom/android/settings_exlib/accounts/AuthenticatorHelper;
    .param p2, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 563
    iget v2, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mAuthoritiesCount:I

    if-nez v2, :cond_0

    .line 565
    return v3

    .line 567
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/settings_exlib/accounts/AuthenticatorHelper;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 569
    .local v0, "authoritiesForType":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 570
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

    .line 571
    return v5

    .line 573
    :cond_1
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget v2, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mAuthoritiesCount:I

    if-ge v1, v2, :cond_3

    .line 574
    iget-object v2, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mAuthorities:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 575
    return v3

    .line 573
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 578
    :cond_3
    return v5
.end method

.method private cleanUpPreferences()V
    .locals 2

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 439
    .local v0, "preferenceScreen":Landroid/support/v7/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 440
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 442
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 437
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
    .line 501
    invoke-virtual/range {p1 .. p1}, Lcom/android/settings_exlib/accounts/AuthenticatorHelper;->getEnabledAccountTypes()[Ljava/lang/String;

    move-result-object v13

    .line 503
    .local v13, "accountTypes":[Ljava/lang/String;
    new-instance v12, Ljava/util/ArrayList;

    array-length v2, v13

    invoke-direct {v12, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 505
    .local v12, "accountTypePreferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;>;"
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    array-length v2, v13

    if-ge v15, v2, :cond_5

    .line 506
    aget-object v11, v13, v15

    .line 507
    .local v11, "accountType":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v11}, Lcom/android/settings_ex/Utils;->showAccount(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 505
    :cond_0
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 512
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/android/settings_ex/accounts/AccountSettings;->accountTypeHasAnyRequestedAuthorities(Lcom/android/settings_exlib/accounts/AuthenticatorHelper;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 515
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v11}, Lcom/android/settings_exlib/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 516
    .local v5, "label":Ljava/lang/CharSequence;
    if-eqz v5, :cond_0

    .line 519
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/settings_exlib/accounts/AuthenticatorHelper;->getPackageForType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 520
    .local v6, "titleResPackageName":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/settings_exlib/accounts/AuthenticatorHelper;->getLabelIdForType(Ljava/lang/String;)I

    move-result v7

    .line 522
    .local v7, "titleResId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v11, v0}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v14

    .line 524
    .local v14, "accounts":[Landroid/accounts/Account;
    array-length v2, v14

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 525
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/settings_exlib/accounts/AuthenticatorHelper;->hasAccountPreferences(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v16, 0x0

    .line 527
    .local v16, "skipToAccount":Z
    :goto_2
    if-eqz v16, :cond_4

    .line 528
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 529
    .local v9, "fragmentArguments":Landroid/os/Bundle;
    const-string/jumbo v2, "account"

    .line 530
    const/4 v3, 0x0

    aget-object v3, v14, v3

    .line 529
    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 531
    const-string/jumbo v2, "android.intent.extra.USER"

    move-object/from16 v0, p2

    invoke-virtual {v9, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 533
    new-instance v2, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    .line 534
    const-class v3, Lcom/android/settings_ex/accounts/AccountSyncSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 536
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v11}, Lcom/android/settings_exlib/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    move-object/from16 v3, p0

    .line 533
    invoke-direct/range {v2 .. v10}, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;-><init>(Lcom/android/settings_ex/accounts/AccountSettings;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v11}, Lcom/android/settings_exlib/accounts/AuthenticatorHelper;->preloadDrawableForType(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 525
    .end local v9    # "fragmentArguments":Landroid/os/Bundle;
    .end local v16    # "skipToAccount":Z
    :cond_2
    const/16 v16, 0x1

    goto :goto_2

    .line 524
    :cond_3
    const/16 v16, 0x0

    goto :goto_2

    .line 538
    .restart local v16    # "skipToAccount":Z
    :cond_4
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 539
    .restart local v9    # "fragmentArguments":Landroid/os/Bundle;
    const-string/jumbo v2, "account_type"

    invoke-virtual {v9, v2, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const-string/jumbo v2, "account_label"

    .line 541
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 540
    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const-string/jumbo v2, "android.intent.extra.USER"

    move-object/from16 v0, p2

    invoke-virtual {v9, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 544
    new-instance v2, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    .line 545
    const-class v3, Lcom/android/settings_ex/accounts/ManageAccountsSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 547
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v11}, Lcom/android/settings_exlib/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    move-object/from16 v3, p0

    .line 544
    invoke-direct/range {v2 .. v10}, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;-><init>(Lcom/android/settings_ex/accounts/AccountSettings;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 552
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

    .line 558
    return-object v12
.end method

.method private getWorkGroupSummary(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userInfo"    # Landroid/content/pm/UserInfo;

    .prologue
    const/4 v4, 0x0

    .line 428
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 429
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    iget v3, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p1, v3}, Lcom/android/settings_ex/Utils;->getAdminApplicationInfo(Landroid/content/Context;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 430
    .local v0, "adminApplicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_0

    .line 431
    return-object v4

    .line 433
    :cond_0
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 434
    .local v1, "appLabel":Ljava/lang/CharSequence;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const v4, 0x7f0e0eef

    invoke-virtual {p0, v4, v3}, Lcom/android/settings_ex/accounts/AccountSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private isMultiAppEnable(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 262
    .local p1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v0, 0x0

    .line 263
    .local v0, "isMultiAppEnable":Z
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "profile$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 264
    .local v1, "profile":Landroid/content/pm/UserInfo;
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    const/16 v4, 0x3e7

    if-ne v3, v4, :cond_0

    .line 265
    const/4 v0, 0x1

    .line 269
    .end local v1    # "profile":Landroid/content/pm/UserInfo;
    :cond_1
    return v0
.end method

.method private listenToAccountUpdates()V
    .locals 4

    .prologue
    .line 446
    iget-object v3, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 447
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 448
    iget-object v3, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;

    iget-object v0, v3, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->authenticatorHelper:Lcom/android/settings_exlib/accounts/AuthenticatorHelper;

    .line 449
    .local v0, "authenticatorHelper":Lcom/android/settings_exlib/accounts/AuthenticatorHelper;
    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {v0}, Lcom/android/settings_exlib/accounts/AuthenticatorHelper;->listenToAccountUpdates()V

    .line 447
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 445
    .end local v0    # "authenticatorHelper":Lcom/android/settings_exlib/accounts/AuthenticatorHelper;
    :cond_1
    return-void
.end method

.method private newAddAccountPreference(Landroid/content/Context;)Lcom/android/settings_ex/DimmableIconPreference;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 373
    new-instance v0, Lcom/android/settings_ex/DimmableIconPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/DimmableIconPreference;-><init>(Landroid/content/Context;)V

    .line 374
    .local v0, "preference":Lcom/android/settings_ex/DimmableIconPreference;
    const v1, 0x7f0e0c6a

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DimmableIconPreference;->setTitle(I)V

    .line 375
    const v1, 0x7f02011a

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DimmableIconPreference;->setIcon(I)V

    .line 376
    invoke-virtual {v0, p0}, Lcom/android/settings_ex/DimmableIconPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 377
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DimmableIconPreference;->setOrder(I)V

    .line 378
    return-object v0
.end method

.method private newAddOneplusAccountPreference(Landroid/content/Context;)Landroid/support/v7/preference/Preference;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 383
    new-instance v0, Landroid/support/v7/preference/Preference;

    invoke-direct {v0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 384
    .local v0, "preference":Landroid/support/v7/preference/Preference;
    const v1, 0x7f0e0312

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 385
    const v1, 0x7f0201eb

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setIcon(I)V

    .line 386
    new-instance v1, Lcom/android/settings_ex/accounts/AccountSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/accounts/AccountSettings$3;-><init>(Lcom/android/settings_ex/accounts/AccountSettings;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 405
    return-object v0
.end method

.method private newManagedProfileSettings()Landroid/support/v7/preference/Preference;
    .locals 2

    .prologue
    .line 419
    new-instance v0, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 420
    .local v0, "preference":Landroid/support/v7/preference/Preference;
    const v1, 0x7f0e107c

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 421
    const v1, 0x7f020178

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setIcon(I)V

    .line 422
    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 423
    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 424
    return-object v0
.end method

.method private newRemoveWorkProfilePreference(Landroid/content/Context;)Landroid/support/v7/preference/Preference;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 409
    new-instance v0, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 410
    .local v0, "preference":Landroid/support/v7/preference/Preference;
    const v1, 0x7f0e0c6e

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 411
    const v1, 0x7f02011f

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setIcon(I)V

    .line 412
    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 413
    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 414
    return-object v0
.end method

.method private stopListeningToAccountUpdates()V
    .locals 4

    .prologue
    .line 456
    iget-object v3, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 457
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 458
    iget-object v3, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;

    iget-object v0, v3, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->authenticatorHelper:Lcom/android/settings_exlib/accounts/AuthenticatorHelper;

    .line 459
    .local v0, "authenticatorHelper":Lcom/android/settings_exlib/accounts/AuthenticatorHelper;
    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {v0}, Lcom/android/settings_exlib/accounts/AuthenticatorHelper;->stopListeningToAccountUpdates()V

    .line 457
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 455
    .end local v0    # "authenticatorHelper":Lcom/android/settings_exlib/accounts/AuthenticatorHelper;
    :cond_1
    return-void
.end method

.method private updateAccountTypes(Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;)V
    .locals 7
    .param p1, "profileData"    # Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;

    .prologue
    const/4 v6, 0x0

    .line 466
    iget-object v4, p1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    .line 468
    new-instance v1, Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;

    sget-object v4, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-direct {v1, v4}, Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;-><init>(Landroid/content/Context;)V

    .line 469
    .local v1, "headerMargin":Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;->setOrder(I)V

    .line 470
    iget-object v4, p1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v4, v1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 472
    iget-object v4, p1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 474
    iget-object v4, p1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->authenticatorHelper:Lcom/android/settings_exlib/accounts/AuthenticatorHelper;

    iget-object v5, p1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    .line 473
    invoke-direct {p0, v4, v5}, Lcom/android/settings_ex/accounts/AccountSettings;->getAccountTypePreferences(Lcom/android/settings_exlib/accounts/AuthenticatorHelper;Landroid/os/UserHandle;)Ljava/util/ArrayList;

    move-result-object v3

    .line 475
    .local v3, "preferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 476
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 477
    iget-object v5, p1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/Preference;

    invoke-virtual {v5, v4}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 476
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 479
    :cond_0
    iget-object v4, p1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->addAccountPreference:Lcom/android/settings_ex/DimmableIconPreference;

    if-eqz v4, :cond_1

    .line 480
    iget-object v4, p1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    iget-object v5, p1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->addAccountPreference:Lcom/android/settings_ex/DimmableIconPreference;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 491
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "preferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;>;"
    :cond_1
    :goto_1
    iget-object v4, p1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->removeWorkProfilePreference:Landroid/support/v7/preference/Preference;

    if-eqz v4, :cond_2

    .line 492
    iget-object v4, p1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    iget-object v5, p1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->removeWorkProfilePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 494
    :cond_2
    iget-object v4, p1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->managedProfilePreference:Landroid/support/v7/preference/Preference;

    if-eqz v4, :cond_3

    .line 495
    iget-object v4, p1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    iget-object v5, p1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->managedProfilePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 465
    :cond_3
    return-void

    .line 484
    :cond_4
    iget-object v4, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/support/v7/preference/Preference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 485
    iget-object v4, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/support/v7/preference/Preference;

    const v5, 0x7f0200c0

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setIcon(I)V

    .line 486
    iget-object v4, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 487
    iget-object v4, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/support/v7/preference/Preference;

    .line 488
    const v5, 0x7f0e0c6b

    .line 487
    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 489
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

    .line 334
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 335
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;-><init>(Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;)V

    .line 336
    .local v1, "profileData":Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;
    iput-object p1, v1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    .line 337
    if-eqz p2, :cond_2

    .line 338
    new-instance v3, Lcom/android/settings_ex/AccessiblePreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/settings_ex/AccessiblePreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v3, v1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    .line 339
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 340
    iget-object v3, v1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    const v4, 0x7f040220

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceGroup;->setLayoutResource(I)V

    .line 341
    iget-object v3, v1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    const v4, 0x7f0e0099

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceGroup;->setTitle(I)V

    .line 342
    invoke-direct {p0, v0, p1}, Lcom/android/settings_ex/accounts/AccountSettings;->getWorkGroupSummary(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v2

    .line 343
    .local v2, "workGroupSummary":Ljava/lang/String;
    iget-object v3, v1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/PreferenceGroup;->setSummary(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v3, v1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    check-cast v3, Lcom/android/settings_ex/AccessiblePreferenceCategory;

    .line 345
    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const v5, 0x7f0e0815

    invoke-virtual {p0, v5, v4}, Lcom/android/settings_ex/accounts/AccountSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 344
    invoke-virtual {v3, v4}, Lcom/android/settings_ex/AccessiblePreferenceCategory;->setContentDescription(Ljava/lang/String;)V

    .line 346
    invoke-direct {p0, v0}, Lcom/android/settings_ex/accounts/AccountSettings;->newRemoveWorkProfilePreference(Landroid/content/Context;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    iput-object v3, v1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->removeWorkProfilePreference:Landroid/support/v7/preference/Preference;

    .line 347
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->newManagedProfileSettings()Landroid/support/v7/preference/Preference;

    move-result-object v3

    iput-object v3, v1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->managedProfilePreference:Landroid/support/v7/preference/Preference;

    .line 353
    .end local v2    # "workGroupSummary":Ljava/lang/String;
    :goto_0
    iget-object v3, v1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {p3, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 357
    :goto_1
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 358
    new-instance v3, Lcom/android/settings_exlib/accounts/AuthenticatorHelper;

    .line 359
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    .line 358
    invoke-direct {v3, v0, v4, p0}, Lcom/android/settings_exlib/accounts/AuthenticatorHelper;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/settings_exlib/accounts/AuthenticatorHelper$OnAccountsUpdateListener;)V

    iput-object v3, v1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->authenticatorHelper:Lcom/android/settings_exlib/accounts/AuthenticatorHelper;

    .line 361
    const-string/jumbo v3, "no_modify_accounts"

    iget v4, p1, Landroid/content/pm/UserInfo;->id:I

    .line 360
    invoke-static {v0, v3, v4}, Lcom/android/settings_exlib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 362
    invoke-direct {p0, v0}, Lcom/android/settings_ex/accounts/AccountSettings;->newAddAccountPreference(Landroid/content/Context;)Lcom/android/settings_ex/DimmableIconPreference;

    move-result-object v3

    iput-object v3, v1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->addAccountPreference:Lcom/android/settings_ex/DimmableIconPreference;

    .line 363
    iget-object v3, v1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->addAccountPreference:Lcom/android/settings_ex/DimmableIconPreference;

    .line 364
    const-string/jumbo v4, "no_modify_accounts"

    iget v5, p1, Landroid/content/pm/UserInfo;->id:I

    .line 363
    invoke-virtual {v3, v4, v5}, Lcom/android/settings_ex/DimmableIconPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;I)V

    .line 367
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    iget v4, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 368
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/search/Index;

    move-result-object v3

    .line 369
    const-class v4, Lcom/android/settings_ex/accounts/AccountSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 368
    invoke-virtual {v3, v4, v6, v6}, Lcom/android/settings_ex/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    .line 333
    return-void

    .line 349
    :cond_1
    iget-object v3, v1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    const v4, 0x7f0e0098

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceGroup;->setTitle(I)V

    .line 350
    iget-object v3, v1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    check-cast v3, Lcom/android/settings_ex/AccessiblePreferenceCategory;

    .line 351
    const v4, 0x7f0e0816

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/accounts/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 350
    invoke-virtual {v3, v4}, Lcom/android/settings_ex/AccessiblePreferenceCategory;->setContentDescription(Ljava/lang/String;)V

    goto :goto_0

    .line 355
    :cond_2
    iput-object p3, v1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 145
    const/16 v0, 0x8

    return v0
.end method

.method public onAccountsUpdate(Landroid/os/UserHandle;)V
    .locals 4
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 215
    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;

    .line 216
    .local v0, "profileData":Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;
    if-eqz v0, :cond_0

    .line 217
    invoke-direct {p0, v0}, Lcom/android/settings_ex/accounts/AccountSettings;->updateAccountTypes(Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;)V

    .line 214
    :goto_0
    return-void

    .line 219
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
    .line 150
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 151
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/AccountSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    .line 152
    new-instance v0, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/support/v7/preference/Preference;

    .line 153
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "authorities"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mAuthorities:[Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mAuthorities:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mAuthorities:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mAuthoritiesCount:I

    .line 157
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/AccountSettings;->setHasOptionsMenu(Z)V

    .line 149
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 162
    const/high16 v0, 0x7f140000

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 163
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 161
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 208
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 209
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->stopListeningToAccountUpdates()V

    .line 210
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mManagedProfileBroadcastReceiver:Lcom/android/settings_ex/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 207
    return-void
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 13
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x1

    .line 226
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 227
    .local v7, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_3

    .line 228
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;

    .line 229
    .local v10, "profileData":Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;
    iget-object v0, v10, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->addAccountPreference:Lcom/android/settings_ex/DimmableIconPreference;

    if-ne p1, v0, :cond_0

    .line 230
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v0, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 231
    .local v9, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "android.intent.extra.USER"

    iget-object v1, v10, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 232
    const-string/jumbo v0, "authorities"

    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mAuthorities:[Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    invoke-virtual {p0, v9}, Lcom/android/settings_ex/accounts/AccountSettings;->startActivity(Landroid/content/Intent;)V

    .line 234
    return v12

    .line 236
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v0, v10, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->removeWorkProfilePreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_1

    .line 237
    iget-object v0, v10, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    iget v11, v0, Landroid/content/pm/UserInfo;->id:I

    .line 238
    .local v11, "userId":I
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 239
    new-instance v1, Lcom/android/settings_ex/accounts/AccountSettings$2;

    invoke-direct {v1, p0, v11}, Lcom/android/settings_ex/accounts/AccountSettings$2;-><init>(Lcom/android/settings_ex/accounts/AccountSettings;I)V

    .line 238
    invoke-static {v0, v11, v1}, Lcom/android/settings_ex/users/UserDialogs;->createRemoveDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 246
    return v12

    .line 248
    .end local v11    # "userId":I
    :cond_1
    iget-object v0, v10, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->managedProfilePreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_2

    .line 249
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 250
    .local v2, "arguments":Landroid/os/Bundle;
    const-string/jumbo v0, "android.intent.extra.USER"

    iget-object v1, v10, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 251
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 252
    const-class v1, Lcom/android/settings_ex/accounts/ManagedProfileSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 253
    const v3, 0x7f0e107c

    move-object v5, v4

    .line 251
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 254
    return v12

    .line 227
    .end local v2    # "arguments":Landroid/os/Bundle;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 257
    .end local v10    # "profileData":Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;
    :cond_3
    return v6
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 9
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v8, 0x7f11040f

    const v7, 0x7f11040e

    const v6, 0x7f11040d

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 168
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 169
    .local v0, "currentProfile":Landroid/os/UserHandle;
    iget-object v2, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 170
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    .line 172
    new-instance v3, Lcom/android/settings_ex/accounts/AccountSettings$MasterSyncStateClickListener;

    invoke-direct {v3, p0, v0}, Lcom/android/settings_ex/accounts/AccountSettings$MasterSyncStateClickListener;-><init>(Lcom/android/settings_ex/accounts/AccountSettings;Landroid/os/UserHandle;)V

    .line 170
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v2

    .line 174
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 173
    invoke-static {v3}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v3

    .line 170
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 175
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 176
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 167
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-le v2, v4, :cond_1

    .line 179
    iget-object v2, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;

    iget-object v2, v2, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 181
    .local v1, "managedProfile":Landroid/os/UserHandle;
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    .line 183
    new-instance v3, Lcom/android/settings_ex/accounts/AccountSettings$MasterSyncStateClickListener;

    invoke-direct {v3, p0, v0}, Lcom/android/settings_ex/accounts/AccountSettings$MasterSyncStateClickListener;-><init>(Lcom/android/settings_ex/accounts/AccountSettings;Landroid/os/UserHandle;)V

    .line 181
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v2

    .line 185
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 184
    invoke-static {v3}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v3

    .line 181
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 186
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    .line 188
    new-instance v3, Lcom/android/settings_ex/accounts/AccountSettings$MasterSyncStateClickListener;

    invoke-direct {v3, p0, v1}, Lcom/android/settings_ex/accounts/AccountSettings$MasterSyncStateClickListener;-><init>(Lcom/android/settings_ex/accounts/AccountSettings;Landroid/os/UserHandle;)V

    .line 186
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v2

    .line 190
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 189
    invoke-static {v3}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v3

    .line 186
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 191
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 193
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
    .line 199
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 200
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->cleanUpPreferences()V

    .line 201
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->updateUi()V

    .line 202
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mManagedProfileBroadcastReceiver:Lcom/android/settings_ex/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->register(Landroid/content/Context;)V

    .line 203
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->listenToAccountUpdates()V

    .line 198
    return-void
.end method

.method updateUi()V
    .locals 11

    .prologue
    const/16 v10, 0x3e7

    .line 275
    const v8, 0x7f080005

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/accounts/AccountSettings;->addPreferencesFromResource(I)V

    .line 277
    iget-object v8, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    invoke-static {v8}, Lcom/android/settings_ex/Utils;->isManagedProfile(Landroid/os/UserManager;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 279
    const-string/jumbo v8, "AccountSettings"

    const-string/jumbo v9, "We should not be showing settings for a managed profile"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->finish()V

    .line 281
    return-void

    .line 284
    :cond_0
    const-string/jumbo v8, "account"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/accounts/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/PreferenceScreen;

    .line 285
    .local v3, "preferenceScreen":Landroid/support/v7/preference/PreferenceScreen;
    iget-object v8, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    invoke-virtual {v8}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 287
    iget-object v8, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    .line 288
    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    const/4 v8, 0x0

    invoke-direct {p0, v7, v8, v3}, Lcom/android/settings_ex/accounts/AccountSettings;->updateProfileUi(Landroid/content/pm/UserInfo;ZLandroid/support/v7/preference/PreferenceScreen;)V

    .line 310
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1
    iget-object v8, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 311
    .local v6, "profilesCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_8

    .line 312
    iget-object v8, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;

    .line 314
    .local v4, "profileData":Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;
    iget-object v8, v4, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    iget v8, v8, Landroid/content/pm/UserInfo;->id:I

    if-ne v8, v10, :cond_6

    .line 311
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 290
    .end local v1    # "i":I
    .end local v4    # "profileData":Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;
    .end local v6    # "profilesCount":I
    :cond_2
    iget-object v8, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v5

    .line 291
    .local v5, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 293
    .restart local v6    # "profilesCount":I
    invoke-direct {p0, v5}, Lcom/android/settings_ex/accounts/AccountSettings;->isMultiAppEnable(Ljava/util/List;)Z

    move-result v2

    .line 294
    .local v2, "isMultiAppEnable":Z
    if-eqz v2, :cond_4

    const/4 v8, 0x2

    if-le v6, v8, :cond_3

    :goto_2
    const/4 v0, 0x1

    .line 296
    .local v0, "addCategory":Z
    :goto_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    if-ge v1, v6, :cond_1

    .line 298
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 299
    .restart local v7    # "userInfo":Landroid/content/pm/UserInfo;
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    if-ne v8, v10, :cond_5

    .line 296
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 294
    .end local v0    # "addCategory":Z
    .end local v1    # "i":I
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "addCategory":Z
    goto :goto_3

    .end local v0    # "addCategory":Z
    :cond_4
    const/4 v8, 0x1

    if-le v6, v8, :cond_3

    goto :goto_2

    .line 303
    .restart local v0    # "addCategory":Z
    .restart local v1    # "i":I
    .restart local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5
    invoke-direct {p0, v7, v0, v3}, Lcom/android/settings_ex/accounts/AccountSettings;->updateProfileUi(Landroid/content/pm/UserInfo;ZLandroid/support/v7/preference/PreferenceScreen;)V

    goto :goto_5

    .line 318
    .end local v0    # "addCategory":Z
    .end local v2    # "isMultiAppEnable":Z
    .end local v5    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v4    # "profileData":Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;
    :cond_6
    iget-object v8, v4, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v8, v3}, Landroid/support/v7/preference/PreferenceGroup;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 319
    iget-object v8, v4, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v3, v8}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 321
    :cond_7
    invoke-direct {p0, v4}, Lcom/android/settings_ex/accounts/AccountSettings;->updateAccountTypes(Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;)V

    goto :goto_1

    .line 326
    .end local v4    # "profileData":Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v9, "com.oneplus.account"

    invoke-static {v8, v9}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 327
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/settings_ex/accounts/AccountSettings;->newAddOneplusAccountPreference(Landroid/content/Context;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 273
    :cond_9
    return-void
.end method
