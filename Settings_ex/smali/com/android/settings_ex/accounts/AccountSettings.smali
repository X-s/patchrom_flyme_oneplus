.class public Lcom/android/settings_ex/accounts/AccountSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "AccountSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings_ex/accounts/AuthenticatorHelper$OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;,
        Lcom/android/settings_ex/accounts/AccountSettings$MasterSyncStateClickListener;,
        Lcom/android/settings_ex/accounts/AccountSettings$ManagedProfileBroadcastReceiver;,
        Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;,
        Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;
    }
.end annotation


# static fields
.field private static final ADD_ACCOUNT_ACTION:Ljava/lang/String; = "android.settings.ADD_ACCOUNT_SETTINGS"

.field private static final KEY_ACCOUNT:Ljava/lang/String; = "account"

.field private static final ORDER_LAST:I = 0x3e9

.field private static final ORDER_NEXT_TO_LAST:I = 0x3e8

.field public static final TAG:Ljava/lang/String; = "AccountSettings"

.field private static final TAG_CONFIRM_AUTO_SYNC_CHANGE:Ljava/lang/String; = "confirmAutoSyncChange"


# instance fields
.field private mAuthorities:[Ljava/lang/String;

.field private mAuthoritiesCount:I

.field private mManagedProfileBroadcastReceiver:Lcom/android/settings_ex/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

.field private mProfileNotAvailablePreference:Landroid/preference/Preference;

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

.field private root:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 84
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    .line 85
    new-instance v0, Lcom/android/settings_ex/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/accounts/AccountSettings$ManagedProfileBroadcastReceiver;-><init>(Lcom/android/settings_ex/accounts/AccountSettings;Lcom/android/settings_ex/accounts/AccountSettings$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mManagedProfileBroadcastReceiver:Lcom/android/settings_ex/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mAuthoritiesCount:I

    .line 609
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/accounts/AccountSettings;)Landroid/os/UserManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/accounts/AccountSettings;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/accounts/AccountSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/accounts/AccountSettings;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->stopListeningToAccountUpdates()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings_ex/accounts/AccountSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/accounts/AccountSettings;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->cleanUpPreferences()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings_ex/accounts/AccountSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/accounts/AccountSettings;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->listenToAccountUpdates()V

    return-void
.end method

.method private accountTypeHasAnyRequestedAuthorities(Lcom/android/settings_ex/accounts/AuthenticatorHelper;Ljava/lang/String;)Z
    .locals 6
    .param p1, "helper"    # Lcom/android/settings_ex/accounts/AuthenticatorHelper;
    .param p2, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 458
    iget v4, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mAuthoritiesCount:I

    if-nez v4, :cond_1

    .line 473
    :cond_0
    :goto_0
    return v2

    .line 462
    :cond_1
    invoke-virtual {p1, p2}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 464
    .local v0, "authoritiesForType":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_2

    .line 465
    const-string v2, "AccountSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No sync authorities for account type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 466
    goto :goto_0

    .line 468
    :cond_2
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v4, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mAuthoritiesCount:I

    if-ge v1, v4, :cond_3

    .line 469
    iget-object v4, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mAuthorities:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 468
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v2, v3

    .line 473
    goto :goto_0
.end method

.method private cleanUpPreferences()V
    .locals 2

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 346
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 349
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 350
    return-void
.end method

.method private getAccountTypePreferences(Lcom/android/settings_ex/accounts/AuthenticatorHelper;Landroid/os/UserHandle;)Ljava/util/ArrayList;
    .locals 17
    .param p1, "helper"    # Lcom/android/settings_ex/accounts/AuthenticatorHelper;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings_ex/accounts/AuthenticatorHelper;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 400
    invoke-virtual/range {p1 .. p1}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;->getEnabledAccountTypes()[Ljava/lang/String;

    move-result-object v13

    .line 401
    .local v13, "accountTypes":[Ljava/lang/String;
    new-instance v12, Ljava/util/ArrayList;

    array-length v2, v13

    invoke-direct {v12, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 404
    .local v12, "accountTypePreferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;>;"
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    array-length v2, v13

    if-ge v15, v2, :cond_4

    .line 405
    aget-object v11, v13, v15

    .line 407
    .local v11, "accountType":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/android/settings_ex/accounts/AccountSettings;->accountTypeHasAnyRequestedAuthorities(Lcom/android/settings_ex/accounts/AuthenticatorHelper;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 404
    :cond_0
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 410
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v11}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 411
    .local v5, "label":Ljava/lang/CharSequence;
    if-eqz v5, :cond_0

    .line 414
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;->getPackageForType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 415
    .local v6, "titleResPackageName":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;->getLabelIdForType(Ljava/lang/String;)I

    move-result v7

    .line 417
    .local v7, "titleResId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v11, v0}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v14

    .line 419
    .local v14, "accounts":[Landroid/accounts/Account;
    array-length v2, v14

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;->hasAccountPreferences(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v16, 0x1

    .line 422
    .local v16, "skipToAccount":Z
    :goto_2
    if-eqz v16, :cond_3

    .line 423
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 424
    .local v9, "fragmentArguments":Landroid/os/Bundle;
    const-string v2, "account"

    const/4 v3, 0x0

    aget-object v3, v14, v3

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 426
    const-string v2, "android.intent.extra.USER"

    move-object/from16 v0, p2

    invoke-virtual {v9, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 428
    new-instance v2, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v3, Lcom/android/settings_ex/accounts/AccountSyncSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v11}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;-><init>(Lcom/android/settings_ex/accounts/AccountSettings;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v11}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;->preloadDrawableForType(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 419
    .end local v9    # "fragmentArguments":Landroid/os/Bundle;
    .end local v16    # "skipToAccount":Z
    :cond_2
    const/16 v16, 0x0

    goto :goto_2

    .line 433
    .restart local v16    # "skipToAccount":Z
    :cond_3
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 434
    .restart local v9    # "fragmentArguments":Landroid/os/Bundle;
    const-string v2, "account_type"

    invoke-virtual {v9, v2, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const-string v2, "account_label"

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const-string v2, "android.intent.extra.USER"

    move-object/from16 v0, p2

    invoke-virtual {v9, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 439
    new-instance v2, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v3, Lcom/android/settings_ex/accounts/ManageAccountsSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v11}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;-><init>(Lcom/android/settings_ex/accounts/AccountSettings;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 447
    .end local v5    # "label":Ljava/lang/CharSequence;
    .end local v6    # "titleResPackageName":Ljava/lang/String;
    .end local v7    # "titleResId":I
    .end local v9    # "fragmentArguments":Landroid/os/Bundle;
    .end local v11    # "accountType":Ljava/lang/String;
    .end local v14    # "accounts":[Landroid/accounts/Account;
    .end local v16    # "skipToAccount":Z
    :cond_4
    new-instance v2, Lcom/android/settings_ex/accounts/AccountSettings$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings_ex/accounts/AccountSettings$3;-><init>(Lcom/android/settings_ex/accounts/AccountSettings;)V

    invoke-static {v12, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 453
    return-object v12
.end method

.method private listenToAccountUpdates()V
    .locals 4

    .prologue
    .line 353
    iget-object v3, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 354
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 355
    iget-object v3, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;

    iget-object v0, v3, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->authenticatorHelper:Lcom/android/settings_ex/accounts/AuthenticatorHelper;

    .line 356
    .local v0, "authenticatorHelper":Lcom/android/settings_ex/accounts/AuthenticatorHelper;
    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {v0}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;->listenToAccountUpdates()V

    .line 354
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 360
    .end local v0    # "authenticatorHelper":Lcom/android/settings_ex/accounts/AuthenticatorHelper;
    :cond_1
    return-void
.end method

.method private newAddAccountPreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 299
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 300
    .local v0, "preference":Landroid/preference/Preference;
    const v1, 0x7f0908bb

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 301
    const v1, 0x7f020045

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 302
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 303
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 304
    return-object v0
.end method

.method private newAddOneplusAccountPreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 312
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 313
    .local v0, "preference":Landroid/preference/Preference;
    const v1, 0x7f0900de

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 314
    const v1, 0x7f02004b

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 315
    new-instance v1, Lcom/android/settings_ex/accounts/AccountSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/accounts/AccountSettings$2;-><init>(Lcom/android/settings_ex/accounts/AccountSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 331
    return-object v0
.end method

.method private newRemoveWorkProfilePreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 336
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 337
    .local v0, "preference":Landroid/preference/Preference;
    const v1, 0x7f0908bd

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 338
    const v1, 0x7f020048

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 339
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 340
    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 341
    return-object v0
.end method

.method private stopListeningToAccountUpdates()V
    .locals 4

    .prologue
    .line 363
    iget-object v3, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 364
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 365
    iget-object v3, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;

    iget-object v0, v3, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->authenticatorHelper:Lcom/android/settings_ex/accounts/AuthenticatorHelper;

    .line 366
    .local v0, "authenticatorHelper":Lcom/android/settings_ex/accounts/AuthenticatorHelper;
    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {v0}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;->stopListeningToAccountUpdates()V

    .line 364
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 370
    .end local v0    # "authenticatorHelper":Lcom/android/settings_ex/accounts/AuthenticatorHelper;
    :cond_1
    return-void
.end method

.method private updateAccountTypes(Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;)V
    .locals 5
    .param p1, "profileData"    # Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;

    .prologue
    .line 373
    iget-object v3, p1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 374
    iget-object v3, p1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 375
    iget-object v3, p1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->authenticatorHelper:Lcom/android/settings_ex/accounts/AuthenticatorHelper;

    iget-object v4, p1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings_ex/accounts/AccountSettings;->getAccountTypePreferences(Lcom/android/settings_ex/accounts/AuthenticatorHelper;Landroid/os/UserHandle;)Ljava/util/ArrayList;

    move-result-object v2

    .line 377
    .local v2, "preferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 378
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 379
    iget-object v4, p1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/Preference;

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 378
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 381
    :cond_0
    iget-object v3, p1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->addAccountPreference:Landroid/preference/Preference;

    if-eqz v3, :cond_1

    .line 382
    iget-object v3, p1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    iget-object v4, p1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->addAccountPreference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 393
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "preferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;>;"
    :cond_1
    :goto_1
    iget-object v3, p1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->removeWorkProfilePreference:Landroid/preference/Preference;

    if-eqz v3, :cond_2

    .line 394
    iget-object v3, p1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    iget-object v4, p1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->removeWorkProfilePreference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 396
    :cond_2
    return-void

    .line 386
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/preference/Preference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 387
    iget-object v3, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/preference/Preference;

    const v4, 0x7f020020

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setIcon(I)V

    .line 388
    iget-object v3, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/preference/Preference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v3, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/preference/Preference;

    const v4, 0x7f0908bc

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 391
    iget-object v3, p1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    iget-object v4, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private updateProfileUi(Landroid/content/pm/UserInfo;ZLandroid/preference/PreferenceScreen;)V
    .locals 5
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;
    .param p2, "addCategory"    # Z
    .param p3, "parent"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 275
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;-><init>(Lcom/android/settings_ex/accounts/AccountSettings$1;)V

    .line 276
    .local v1, "profileData":Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;
    iput-object p1, v1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    .line 277
    if-eqz p2, :cond_3

    .line 278
    new-instance v2, Landroid/preference/PreferenceCategory;

    invoke-direct {v2, v0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    .line 279
    iget-object v3, v1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f09045e

    :goto_0
    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 281
    iget-object v2, v1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {p3, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 285
    :goto_1
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 286
    new-instance v2, Lcom/android/settings_ex/accounts/AuthenticatorHelper;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    invoke-direct {v2, v0, v3, v4, p0}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/UserManager;Lcom/android/settings_ex/accounts/AuthenticatorHelper$OnAccountsUpdateListener;)V

    iput-object v2, v1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->authenticatorHelper:Lcom/android/settings_ex/accounts/AuthenticatorHelper;

    .line 288
    iget-object v2, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    const-string v3, "no_modify_accounts"

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 289
    invoke-direct {p0, v0}, Lcom/android/settings_ex/accounts/AccountSettings;->newAddAccountPreference(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->addAccountPreference:Landroid/preference/Preference;

    .line 292
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 293
    invoke-direct {p0, v0}, Lcom/android/settings_ex/accounts/AccountSettings;->newRemoveWorkProfilePreference(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->removeWorkProfilePreference:Landroid/preference/Preference;

    .line 295
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 296
    return-void

    .line 279
    :cond_2
    const v2, 0x7f09045d

    goto :goto_0

    .line 283
    :cond_3
    iput-object p3, v1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    goto :goto_1
.end method


# virtual methods
.method public onAccountsUpdate(Landroid/os/UserHandle;)V
    .locals 4
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 184
    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;

    .line 185
    .local v0, "profileData":Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;
    if-eqz v0, :cond_0

    .line 186
    invoke-direct {p0, v0}, Lcom/android/settings_ex/accounts/AccountSettings;->updateAccountTypes(Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;)V

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    const-string v1, "AccountSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing Settings screen for: "

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
    .line 119
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 120
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/AccountSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    .line 121
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/preference/Preference;

    .line 122
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "authorities"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mAuthorities:[Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mAuthorities:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mAuthorities:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mAuthoritiesCount:I

    .line 126
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/AccountSettings;->setHasOptionsMenu(Z)V

    .line 127
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 131
    const/high16 v0, 0x7f110000

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 132
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 133
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 176
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 177
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->stopListeningToAccountUpdates()V

    .line 178
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mManagedProfileBroadcastReceiver:Lcom/android/settings_ex/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 179
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->cleanUpPreferences()V

    .line 180
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x1

    .line 195
    iget-object v6, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 196
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 197
    iget-object v6, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;

    .line 198
    .local v3, "profileData":Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;
    iget-object v6, v3, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->addAccountPreference:Landroid/preference/Preference;

    if-ne p1, v6, :cond_0

    .line 199
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "android.intent.extra.USER"

    iget-object v7, v3, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 201
    const-string v6, "authorities"

    iget-object v7, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mAuthorities:[Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/accounts/AccountSettings;->startActivity(Landroid/content/Intent;)V

    .line 218
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "profileData":Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;
    :goto_1
    return v5

    .line 205
    .restart local v3    # "profileData":Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;
    :cond_0
    iget-object v6, v3, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->removeWorkProfilePreference:Landroid/preference/Preference;

    if-ne p1, v6, :cond_1

    .line 206
    iget-object v6, v3, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    iget v4, v6, Landroid/content/pm/UserInfo;->id:I

    .line 207
    .local v4, "userId":I
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v7, Lcom/android/settings_ex/accounts/AccountSettings$1;

    invoke-direct {v7, p0, v4}, Lcom/android/settings_ex/accounts/AccountSettings$1;-><init>(Lcom/android/settings_ex/accounts/AccountSettings;I)V

    invoke-static {v6, v4, v7}, Lcom/android/settings_ex/Utils;->createRemoveConfirmationDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 196
    .end local v4    # "userId":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    .end local v3    # "profileData":Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 9
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v8, 0x7f0f02ad

    const v7, 0x7f0f02ac

    const v6, 0x7f0f02ab

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 137
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 138
    .local v0, "currentProfile":Landroid/os/UserHandle;
    iget-object v2, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 139
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v3, Lcom/android/settings_ex/accounts/AccountSettings$MasterSyncStateClickListener;

    invoke-direct {v3, p0, v0}, Lcom/android/settings_ex/accounts/AccountSettings$MasterSyncStateClickListener;-><init>(Lcom/android/settings_ex/accounts/AccountSettings;Landroid/os/UserHandle;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 144
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 145
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 164
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-le v2, v4, :cond_1

    .line 148
    iget-object v2, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;

    iget-object v2, v2, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 150
    .local v1, "managedProfile":Landroid/os/UserHandle;
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v3, Lcom/android/settings_ex/accounts/AccountSettings$MasterSyncStateClickListener;

    invoke-direct {v3, p0, v0}, Lcom/android/settings_ex/accounts/AccountSettings$MasterSyncStateClickListener;-><init>(Lcom/android/settings_ex/accounts/AccountSettings;Landroid/os/UserHandle;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 155
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v3, Lcom/android/settings_ex/accounts/AccountSettings$MasterSyncStateClickListener;

    invoke-direct {v3, p0, v1}, Lcom/android/settings_ex/accounts/AccountSettings$MasterSyncStateClickListener;-><init>(Lcom/android/settings_ex/accounts/AccountSettings;Landroid/os/UserHandle;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 160
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 162
    .end local v1    # "managedProfile":Landroid/os/UserHandle;
    :cond_1
    const-string v2, "AccountSettings"

    const-string v3, "Method onPrepareOptionsMenu called before mProfiles was initialized"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 168
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 169
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->updateUi()V

    .line 170
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mManagedProfileBroadcastReceiver:Lcom/android/settings_ex/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->register(Landroid/content/Context;)V

    .line 171
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->listenToAccountUpdates()V

    .line 172
    return-void
.end method

.method updateUi()V
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 224
    const v8, 0x7f060005

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/accounts/AccountSettings;->addPreferencesFromResource(I)V

    .line 226
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/accounts/AccountSettings;->root:Landroid/preference/PreferenceScreen;

    .line 228
    iget-object v8, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    invoke-static {v8}, Lcom/android/settings_ex/Utils;->isManagedProfile(Landroid/os/UserManager;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 230
    const-string v7, "AccountSettings"

    const-string v8, "We should not be showing settings for a managed profile"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->finish()V

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    const-string v8, "account"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/accounts/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    .line 236
    .local v2, "preferenceScreen":Landroid/preference/PreferenceScreen;
    iget-object v8, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    invoke-virtual {v8}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 238
    iget-object v8, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 239
    .local v6, "userInfo":Landroid/content/pm/UserInfo;
    invoke-direct {p0, v6, v7, v2}, Lcom/android/settings_ex/accounts/AccountSettings;->updateProfileUi(Landroid/content/pm/UserInfo;ZLandroid/preference/PreferenceScreen;)V

    .line 252
    .end local v6    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2
    iget-object v7, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 253
    .local v5, "profilesCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_6

    .line 254
    iget-object v7, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;

    .line 255
    .local v3, "profileData":Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;
    iget-object v7, v3, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 256
    iget-object v7, v3, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 258
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/settings_ex/accounts/AccountSettings;->updateAccountTypes(Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;)V

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 241
    .end local v1    # "i":I
    .end local v3    # "profileData":Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;
    .end local v5    # "profilesCount":I
    :cond_4
    iget-object v8, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v4

    .line 242
    .local v4, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 243
    .restart local v5    # "profilesCount":I
    if-le v5, v0, :cond_5

    .line 244
    .local v0, "addCategory":Z
    :goto_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    if-ge v1, v5, :cond_2

    .line 245
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    invoke-direct {p0, v7, v0, v2}, Lcom/android/settings_ex/accounts/AccountSettings;->updateProfileUi(Landroid/content/pm/UserInfo;ZLandroid/preference/PreferenceScreen;)V

    .line 244
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v0    # "addCategory":Z
    .end local v1    # "i":I
    :cond_5
    move v0, v7

    .line 243
    goto :goto_2

    .line 266
    .end local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v1    # "i":I
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "com.oneplus.account"

    invoke-static {v7, v8}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 267
    iget-object v7, p0, Lcom/android/settings_ex/accounts/AccountSettings;->root:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/settings_ex/accounts/AccountSettings;->newAddOneplusAccountPreference(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method
