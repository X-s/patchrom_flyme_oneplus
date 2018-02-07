.class public Lcom/android/settings_ex/accounts/AccountSyncSettings;
.super Lcom/android/settings_ex/accounts/AccountPreferenceBase;
.source "AccountSyncSettings.java"


# static fields
.field public static final ACCOUNT_KEY:Ljava/lang/String; = "account"

.field private static final CANT_DO_ONETIME_SYNC_DIALOG:I = 0x66

.field private static final FAILED_REMOVAL_DIALOG:I = 0x65

.field private static final MENU_REMOVE_ACCOUNT_ID:I = 0x3

.field private static final MENU_SYNC_CANCEL_ID:I = 0x2

.field private static final MENU_SYNC_NOW_ID:I = 0x1

.field private static final REALLY_REMOVE_DIALOG:I = 0x64


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mErrorInfoView:Landroid/widget/TextView;

.field private mInvisibleAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/SyncAdapterType;",
            ">;"
        }
    .end annotation
.end field

.field private mProviderIcon:Landroid/widget/ImageView;

.field private mProviderId:Landroid/widget/TextView;

.field private mSwitches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mUserId:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/accounts/AccountSyncSettings;)Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/accounts/AccountSyncSettings;I)V
    .locals 0
    .param p1, "dialogId"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->showDialog(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;-><init>()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    iput-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mSwitches:Ljava/util/ArrayList;

    .line 83
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    .line 67
    return-void
.end method

.method private accountExists(Landroid/accounts/Account;)Z
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v6, 0x0

    .line 501
    if-nez p1, :cond_0

    return v6

    .line 503
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    .line 504
    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    .line 503
    invoke-virtual {v3, v4, v5}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v0

    .line 505
    .local v0, "accounts":[Landroid/accounts/Account;
    array-length v1, v0

    .line 506
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 507
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 508
    const/4 v3, 0x1

    return v3

    .line 506
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 511
    :cond_2
    return v6
.end method

.method private addSyncStateSwitch(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 238
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getCachedPreference(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;

    .line 239
    .local v0, "item":Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;
    if-nez v0, :cond_0

    .line 240
    new-instance v0, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;

    .end local v0    # "item":Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4, p1, p2}, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 241
    .restart local v0    # "item":Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 245
    :goto_0
    invoke-virtual {v0, v6}, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;->setPersistent(Z)V

    .line 246
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 247
    iget-object v5, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 246
    invoke-virtual {v4, p2, v6, v5}, Landroid/content/pm/PackageManager;->resolveContentProviderAsUser(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    .line 248
    .local v1, "providerInfo":Landroid/content/pm/ProviderInfo;
    if-nez v1, :cond_1

    .line 249
    return-void

    .line 243
    .end local v1    # "providerInfo":Landroid/content/pm/ProviderInfo;
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;->setup(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_0

    .line 251
    .restart local v1    # "providerInfo":Landroid/content/pm/ProviderInfo;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/pm/ProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 252
    .local v2, "providerLabel":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 253
    const-string/jumbo v4, "AccountSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Provider needs a label for authority \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-void

    .line 256
    :cond_2
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v6

    const v5, 0x7f0e0c5f

    invoke-virtual {p0, v5, v4}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 257
    .local v3, "title":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 258
    invoke-virtual {v0, p2}, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;->setKey(Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method private cancelSyncForEnabledProviders()V
    .locals 2

    .prologue
    .line 361
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->requestOrCancelSyncForEnabledProviders(Z)V

    .line 362
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 363
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 360
    :cond_0
    return-void
.end method

.method private isSyncing(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 3
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
    .line 402
    .local p1, "currentSyncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "syncInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncInfo;

    .line 403
    .local v0, "syncInfo":Landroid/content/SyncInfo;
    iget-object v2, v0, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v2, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 404
    const/4 v2, 0x1

    return v2

    .line 407
    .end local v0    # "syncInfo":Landroid/content/SyncInfo;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "flag"    # Z

    .prologue
    .line 391
    if-eqz p3, :cond_0

    .line 392
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 393
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "force"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 394
    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {p1, p2, v1, v0}, Landroid/content/ContentResolver;->requestSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 390
    .end local v0    # "extras":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 397
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {p1, p2, v1}, Landroid/content/ContentResolver;->cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private requestOrCancelSyncForEnabledProviders(Z)V
    .locals 8
    .param p1, "startSync"    # Z

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    .line 371
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 372
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 373
    .local v2, "pref":Landroid/support/v7/preference/Preference;
    instance-of v6, v2, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;

    if-nez v6, :cond_1

    .line 371
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v5, v2

    .line 376
    check-cast v5, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;

    .line 377
    .local v5, "syncPref":Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;
    invoke-virtual {v5}, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 380
    invoke-virtual {v5}, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;->getAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7, p1}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_1

    .line 383
    .end local v2    # "pref":Landroid/support/v7/preference/Preference;
    .end local v5    # "syncPref":Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;
    :cond_2
    iget-object v6, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v6, :cond_3

    .line 384
    iget-object v6, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "syncAdapter$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SyncAdapterType;

    .line 385
    .local v3, "syncAdapter":Landroid/content/SyncAdapterType;
    iget-object v6, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v7, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-direct {p0, v6, v7, p1}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_2

    .line 368
    .end local v3    # "syncAdapter":Landroid/content/SyncAdapterType;
    .end local v4    # "syncAdapter$iterator":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method private setAccessibilityTitle()V
    .locals 8

    .prologue
    .line 211
    const-string/jumbo v5, "user"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 212
    .local v3, "um":Landroid/os/UserManager;
    iget-object v5, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 213
    .local v4, "user":Landroid/content/pm/UserInfo;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    .line 214
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 216
    .local v1, "currentTitle":Ljava/lang/CharSequence;
    if-eqz v2, :cond_1

    .line 217
    const v5, 0x7f0e07e9

    .line 216
    :goto_1
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 218
    const/4 v7, 0x0

    aput-object v1, v6, v7

    .line 216
    invoke-virtual {p0, v5, v6}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "accessibilityTitle":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v1, v0}, Lcom/android/settings_ex/Utils;->createAccessibleSequence(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 210
    return-void

    .line 213
    .end local v0    # "accessibilityTitle":Ljava/lang/String;
    .end local v1    # "currentTitle":Ljava/lang/CharSequence;
    :cond_0
    const/4 v2, 0x0

    .local v2, "isWorkProfile":Z
    goto :goto_0

    .line 218
    .end local v2    # "isWorkProfile":Z
    .restart local v1    # "currentTitle":Ljava/lang/CharSequence;
    :cond_1
    const v5, 0x7f0e07ea

    goto :goto_1
.end method

.method private setFeedsState()V
    .locals 30

    .prologue
    .line 422
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    .line 423
    .local v10, "date":Ljava/util/Date;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v24

    .line 424
    .local v24, "userId":I
    invoke-static/range {v24 .. v24}, Landroid/content/ContentResolver;->getCurrentSyncsAsUser(I)Ljava/util/List;

    move-result-object v9

    .line 425
    .local v9, "currentSyncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    const/16 v20, 0x0

    .line 428
    .local v20, "syncIsFailing":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->updateAccountSwitches()V

    .line 430
    const/4 v11, 0x0

    .local v11, "i":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v8

    .local v8, "count":I
    :goto_0
    if-ge v11, v8, :cond_13

    .line 431
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v15

    .line 432
    .local v15, "pref":Landroid/support/v7/preference/Preference;
    instance-of v0, v15, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;

    move/from16 v25, v0

    if-nez v25, :cond_0

    .line 430
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v21, v15

    .line 435
    check-cast v21, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;

    .line 437
    .local v21, "syncPref":Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;
    invoke-virtual/range {v21 .. v21}, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;->getAuthority()Ljava/lang/String;

    move-result-object v6

    .line 438
    .local v6, "authority":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    .line 440
    .local v4, "account":Landroid/accounts/Account;
    move/from16 v0, v24

    invoke-static {v4, v6, v0}, Landroid/content/ContentResolver;->getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Landroid/content/SyncStatusInfo;

    move-result-object v16

    .line 441
    .local v16, "status":Landroid/content/SyncStatusInfo;
    move/from16 v0, v24

    invoke-static {v4, v6, v0}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v17

    .line 443
    .local v17, "syncEnabled":Z
    if-nez v16, :cond_4

    const/4 v7, 0x0

    .line 444
    :goto_2
    if-nez v16, :cond_5

    const/4 v12, 0x0

    .line 446
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v4, v6}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->isSyncing(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v5

    .line 447
    .local v5, "activelySyncing":Z
    if-eqz v16, :cond_7

    .line 448
    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmp-long v25, v26, v28

    if-eqz v25, :cond_7

    .line 449
    const/16 v25, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v25

    .line 450
    const/16 v26, 0x1

    .line 449
    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_6

    const/4 v13, 0x1

    .line 451
    .local v13, "lastSyncFailed":Z
    :goto_4
    if-nez v17, :cond_1

    const/4 v13, 0x0

    .line 452
    :cond_1
    if-eqz v13, :cond_2

    if-eqz v5, :cond_8

    .line 455
    :cond_2
    :goto_5
    const-string/jumbo v25, "AccountSettings"

    const/16 v26, 0x2

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 456
    const-string/jumbo v25, "AccountSettings"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Update sync status: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 457
    const-string/jumbo v27, " active = "

    .line 456
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 457
    const-string/jumbo v27, " pend ="

    .line 456
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_3
    if-nez v16, :cond_9

    const-wide/16 v18, 0x0

    .line 461
    .local v18, "successEndTime":J
    :goto_6
    if-nez v17, :cond_a

    .line 462
    const v25, 0x7f0e0c47

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;->setSummary(I)V

    .line 472
    :goto_7
    move/from16 v0, v24

    invoke-static {v4, v6, v0}, Landroid/content/ContentResolver;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v22

    .line 474
    .local v22, "syncState":I
    if-eqz v5, :cond_e

    if-ltz v22, :cond_e

    .line 475
    if-eqz v12, :cond_d

    const/16 v25, 0x0

    .line 474
    :goto_8
    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;->setActive(Z)V

    .line 476
    if-eqz v7, :cond_10

    if-ltz v22, :cond_10

    .line 477
    if-eqz v12, :cond_f

    const/16 v25, 0x0

    .line 476
    :goto_9
    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;->setPending(Z)V

    .line 479
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;->setFailed(Z)V

    .line 480
    invoke-static/range {v24 .. v24}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v25

    if-eqz v25, :cond_11

    const/4 v14, 0x0

    .line 482
    .local v14, "oneTimeSyncMode":Z
    :goto_a
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;->setOneTimeSyncMode(Z)V

    .line 483
    if-nez v14, :cond_12

    .end local v17    # "syncEnabled":Z
    :goto_b
    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 443
    .end local v5    # "activelySyncing":Z
    .end local v13    # "lastSyncFailed":Z
    .end local v14    # "oneTimeSyncMode":Z
    .end local v18    # "successEndTime":J
    .end local v22    # "syncState":I
    .restart local v17    # "syncEnabled":Z
    :cond_4
    move-object/from16 v0, v16

    iget-boolean v7, v0, Landroid/content/SyncStatusInfo;->pending:Z

    .local v7, "authorityIsPending":Z
    goto/16 :goto_2

    .line 444
    .end local v7    # "authorityIsPending":Z
    :cond_5
    move-object/from16 v0, v16

    iget-boolean v12, v0, Landroid/content/SyncStatusInfo;->initialize:Z

    .local v12, "initialSync":Z
    goto/16 :goto_3

    .line 449
    .end local v12    # "initialSync":Z
    .restart local v5    # "activelySyncing":Z
    :cond_6
    const/4 v13, 0x0

    .restart local v13    # "lastSyncFailed":Z
    goto/16 :goto_4

    .line 447
    .end local v13    # "lastSyncFailed":Z
    :cond_7
    const/4 v13, 0x0

    .restart local v13    # "lastSyncFailed":Z
    goto/16 :goto_4

    .line 452
    :cond_8
    if-nez v7, :cond_2

    .line 453
    const/16 v20, 0x1

    goto/16 :goto_5

    .line 460
    :cond_9
    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v18, v0

    .restart local v18    # "successEndTime":J
    goto :goto_6

    .line 463
    :cond_a
    if-eqz v5, :cond_b

    .line 464
    const v25, 0x7f0e0c4a

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;->setSummary(I)V

    goto :goto_7

    .line 465
    :cond_b
    const-wide/16 v26, 0x0

    cmp-long v25, v18, v26

    if-eqz v25, :cond_c

    .line 466
    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 467
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->formatSyncDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v23

    .line 468
    .local v23, "timeString":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v23, v26, v27

    const v27, 0x7f0e0c49

    move-object/from16 v0, v25

    move/from16 v1, v27

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 470
    .end local v23    # "timeString":Ljava/lang/String;
    :cond_c
    const-string/jumbo v25, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 475
    .restart local v22    # "syncState":I
    :cond_d
    const/16 v25, 0x1

    goto/16 :goto_8

    .line 474
    :cond_e
    const/16 v25, 0x0

    goto/16 :goto_8

    .line 477
    :cond_f
    const/16 v25, 0x1

    goto/16 :goto_9

    .line 476
    :cond_10
    const/16 v25, 0x0

    goto/16 :goto_9

    .line 480
    :cond_11
    const/4 v14, 0x1

    goto/16 :goto_a

    .line 483
    .restart local v14    # "oneTimeSyncMode":Z
    :cond_12
    const/16 v17, 0x1

    goto/16 :goto_b

    .line 485
    .end local v4    # "account":Landroid/accounts/Account;
    .end local v5    # "activelySyncing":Z
    .end local v6    # "authority":Ljava/lang/String;
    .end local v13    # "lastSyncFailed":Z
    .end local v14    # "oneTimeSyncMode":Z
    .end local v15    # "pref":Landroid/support/v7/preference/Preference;
    .end local v16    # "status":Landroid/content/SyncStatusInfo;
    .end local v17    # "syncEnabled":Z
    .end local v18    # "successEndTime":J
    .end local v21    # "syncPref":Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;
    .end local v22    # "syncState":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mErrorInfoView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    if-eqz v20, :cond_14

    const/16 v25, 0x0

    :goto_c
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 420
    return-void

    .line 485
    :cond_14
    const/16 v25, 0x8

    goto :goto_c
.end method

.method private startSyncForEnabledProviders()V
    .locals 2

    .prologue
    .line 353
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->requestOrCancelSyncForEnabledProviders(Z)V

    .line 354
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 355
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 352
    :cond_0
    return-void
.end method

.method private updateAccountSwitches()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    .line 515
    iget-object v9, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 518
    iget-object v9, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    .line 517
    invoke-static {v9}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v7

    .line 519
    .local v7, "syncAdapters":[Landroid/content/SyncAdapterType;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 520
    .local v0, "authorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v5, v7

    .local v5, "n":I
    :goto_0
    if-ge v2, v5, :cond_3

    .line 521
    aget-object v6, v7, v2

    .line 523
    .local v6, "sa":Landroid/content/SyncAdapterType;
    iget-object v9, v6, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v10, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 520
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 524
    :cond_0
    invoke-virtual {v6}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 525
    const-string/jumbo v9, "AccountSettings"

    invoke-static {v9, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 526
    const-string/jumbo v9, "AccountSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateAccountSwitches: added authority "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 527
    const-string/jumbo v11, " to accountType "

    .line 526
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 527
    iget-object v11, v6, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    .line 526
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_1
    iget-object v9, v6, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 533
    :cond_2
    iget-object v9, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 537
    .end local v6    # "sa":Landroid/content/SyncAdapterType;
    :cond_3
    const-string/jumbo v9, "AccountSettings"

    invoke-static {v9, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 538
    const-string/jumbo v9, "AccountSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "looking for sync adapters that match account "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->cacheRemoveAllPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 541
    const/4 v3, 0x0

    .local v3, "j":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "m":I
    :goto_2
    if-ge v3, v4, :cond_7

    .line 542
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 544
    .local v1, "authority":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    .line 545
    iget-object v10, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    .line 544
    invoke-static {v9, v1, v10}, Landroid/content/ContentResolver;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v8

    .line 546
    .local v8, "syncState":I
    const-string/jumbo v9, "AccountSettings"

    invoke-static {v9, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 547
    const-string/jumbo v9, "AccountSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "  found authority "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_5
    if-lez v8, :cond_6

    .line 550
    iget-object v9, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v9, v1}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->addSyncStateSwitch(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 541
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 553
    .end local v1    # "authority":Ljava/lang/String;
    .end local v8    # "syncState":I
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->removeCachedPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 514
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

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 570
    const v0, 0x7f0e0d7d

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 149
    const/16 v0, 0x9

    return v0
.end method

.method protected initializeUi(Landroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 179
    const v0, 0x7f11008d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mErrorInfoView:Landroid/widget/TextView;

    .line 180
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mErrorInfoView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    const v0, 0x7f11031a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mUserId:Landroid/widget/TextView;

    .line 183
    const v0, 0x7f11031b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mProviderId:Landroid/widget/TextView;

    .line 184
    const v0, 0x7f110319

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mProviderIcon:Landroid/widget/ImageView;

    .line 178
    return-void
.end method

.method public onAccountsUpdate(Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 490
    invoke-super {p0, p1}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onAccountsUpdate(Landroid/os/UserHandle;)V

    .line 491
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->accountExists(Landroid/accounts/Account;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 493
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->finish()V

    .line 494
    return-void

    .line 496
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->updateAccountSwitches()V

    .line 497
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->onSyncStateUpdated()V

    .line 489
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 189
    invoke-super {p0, p1}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 191
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 192
    .local v0, "arguments":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 193
    const-string/jumbo v1, "AccountSettings"

    const-string/jumbo v2, "No arguments provided when starting intent. ACCOUNT_KEY needed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->finish()V

    .line 195
    return-void

    .line 197
    :cond_0
    const-string/jumbo v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    iput-object v1, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    .line 198
    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->accountExists(Landroid/accounts/Account;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 199
    const-string/jumbo v1, "AccountSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Account provided does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->finish()V

    .line 201
    return-void

    .line 203
    :cond_1
    const-string/jumbo v1, "AccountSettings"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 204
    const-string/jumbo v1, "AccountSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Got account: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mUserId:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mProviderId:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    return-void
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 2

    .prologue
    .line 561
    invoke-super {p0}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onAuthDescriptionsUpdated()V

    .line 562
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mProviderIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 564
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mProviderId:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 560
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 154
    invoke-super {p0, p1}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    .line 155
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 156
    const v0, 0x7f080006

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->addPreferencesFromResource(I)V

    .line 157
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 158
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->setAccessibilityTitle()V

    .line 160
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->setHasOptionsMenu(Z)V

    .line 153
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .param p1, "id"    # I

    .prologue
    const v5, 0x7f0e0c5b

    const v4, 0x104000a

    const/4 v3, 0x0

    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, "dialog":Landroid/app/Dialog;
    const/16 v1, 0x64

    if-ne p1, v1, :cond_1

    .line 89
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 91
    const v2, 0x7f0e0c5c

    .line 89
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 92
    const/high16 v2, 0x1040000

    .line 89
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 94
    new-instance v2, Lcom/android/settings_ex/accounts/AccountSyncSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings$1;-><init>(Lcom/android/settings_ex/accounts/AccountSyncSettings;)V

    .line 93
    const v3, 0x7f0e0c58

    .line 89
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 144
    .end local v0    # "dialog":Landroid/app/Dialog;
    :cond_0
    :goto_0
    return-object v0

    .line 131
    .restart local v0    # "dialog":Landroid/app/Dialog;
    :cond_1
    const/16 v1, 0x65

    if-ne p1, v1, :cond_2

    .line 132
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 135
    const v2, 0x7f0e0c5d

    .line 132
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .local v0, "dialog":Landroid/app/Dialog;
    goto :goto_0

    .line 137
    .local v0, "dialog":Landroid/app/Dialog;
    :cond_2
    const/16 v1, 0x66

    if-ne p1, v1, :cond_0

    .line 138
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 139
    const v2, 0x7f0e0c60

    .line 138
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 140
    const v2, 0x7f0e0c61

    .line 138
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .local v0, "dialog":Landroid/app/Dialog;
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 9
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 265
    const v4, 0x7f0e0c4d

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 264
    const/4 v5, 0x1

    invoke-interface {p1, v7, v5, v7, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    .line 266
    const v5, 0x7f020122

    .line 264
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 268
    .local v3, "syncNow":Landroid/view/MenuItem;
    const v4, 0x7f0e0c4e

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 267
    const/4 v5, 0x2

    invoke-interface {p1, v7, v5, v7, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    .line 269
    const v5, 0x1080038

    .line 267
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 270
    .local v2, "syncCancel":Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    .line 271
    const-string/jumbo v5, "no_modify_accounts"

    iget-object v6, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 270
    invoke-static {v4, v5, v6}, Lcom/android/settings_exlib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 273
    const v4, 0x7f0e0c58

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 272
    const/4 v5, 0x3

    invoke-interface {p1, v7, v5, v7, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    .line 274
    const v5, 0x7f02011e

    .line 272
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 275
    .local v1, "removeAccount":Landroid/view/MenuItem;
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 278
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "no_modify_accounts"

    .line 279
    iget-object v6, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 277
    invoke-static {v4, v5, v6}, Lcom/android/settings_exlib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 280
    .local v0, "admin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    if-nez v0, :cond_0

    .line 282
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 281
    invoke-static {v4, v5, v6}, Lcom/android/settings_exlib/RestrictedLockUtils;->checkIfAccountManagementDisabled(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 284
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v0}, Lcom/android/settings_exlib/RestrictedLockUtils;->setMenuItemAsDisabledByAdmin(Landroid/content/Context;Landroid/view/MenuItem;Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 287
    .end local v0    # "admin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    .end local v1    # "removeAccount":Landroid/view/MenuItem;
    :cond_1
    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 289
    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 292
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 262
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 166
    const v3, 0x7f04001b

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 168
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f11008c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 169
    .local v1, "prefs_container":Landroid/view/ViewGroup;
    invoke-static {p2, v2, v1, v4}, Lcom/android/settings_ex/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 170
    invoke-super {p0, p1, v1, p3}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 171
    .local v0, "prefs":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 173
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->initializeUi(Landroid/view/View;)V

    .line 175
    return-object v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 307
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 318
    invoke-super {p0, p1}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 309
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->startSyncForEnabledProviders()V

    .line 310
    return v1

    .line 312
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->cancelSyncForEnabledProviders()V

    .line 313
    return v1

    .line 315
    :pswitch_2
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->showDialog(I)V

    .line 316
    return v1

    .line 307
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 233
    invoke-super {p0}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onPause()V

    .line 234
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAuthenticatorHelper:Lcom/android/settings_exlib/accounts/AuthenticatorHelper;

    invoke-virtual {v0}, Lcom/android/settings_exlib/accounts/AuthenticatorHelper;->stopListeningToAccountUpdates()V

    .line 232
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 9
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v8, 0x1

    .line 323
    instance-of v7, p1, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;

    if-eqz v7, :cond_3

    move-object v5, p1

    .line 324
    check-cast v5, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;

    .line 325
    .local v5, "syncPref":Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;
    invoke-virtual {v5}, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, "authority":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 327
    .local v0, "account":Landroid/accounts/Account;
    iget-object v7, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 328
    .local v6, "userId":I
    invoke-static {v0, v1, v6}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v3

    .line 330
    .local v3, "syncAutomatically":Z
    invoke-virtual {v5}, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;->isOneTimeSyncMode()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 331
    invoke-direct {p0, v0, v1, v8}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 346
    :cond_0
    :goto_0
    return v8

    .line 333
    :cond_1
    invoke-virtual {v5}, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;->isChecked()Z

    move-result v4

    .line 334
    .local v4, "syncOn":Z
    move v2, v3

    .line 335
    .local v2, "oldSyncState":Z
    if-eq v4, v3, :cond_0

    .line 337
    invoke-static {v0, v1, v4, v6}, Landroid/content/ContentResolver;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    .line 341
    invoke-static {v6}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v7

    if-eqz v7, :cond_2

    if-nez v4, :cond_0

    .line 342
    :cond_2
    invoke-direct {p0, v0, v1, v4}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_0

    .line 348
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v1    # "authority":Ljava/lang/String;
    .end local v2    # "oldSyncState":Z
    .end local v3    # "syncAutomatically":Z
    .end local v4    # "syncOn":Z
    .end local v5    # "syncPref":Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;
    .end local v6    # "userId":I
    :cond_3
    invoke-super {p0, p1}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v7

    return v7
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x1

    .line 297
    invoke-super {p0, p1}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 300
    iget-object v2, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 299
    invoke-static {v2}, Landroid/content/ContentResolver;->getCurrentSyncsAsUser(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .line 301
    .local v0, "syncActive":Z
    :goto_0
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 302
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 296
    return-void

    .line 299
    .end local v0    # "syncActive":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "syncActive":Z
    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 224
    const-string/jumbo v0, "dummy"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->removePreference(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAuthenticatorHelper:Lcom/android/settings_exlib/accounts/AuthenticatorHelper;

    invoke-virtual {v0}, Lcom/android/settings_exlib/accounts/AuthenticatorHelper;->listenToAccountUpdates()V

    .line 226
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->updateAuthDescriptions()V

    .line 227
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->onAccountsUpdate(Landroid/os/UserHandle;)V

    .line 228
    invoke-super {p0}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onResume()V

    .line 223
    return-void
.end method

.method protected onSyncStateUpdated()V
    .locals 2

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->isResumed()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 413
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->setFeedsState()V

    .line 414
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 415
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 416
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 411
    :cond_1
    return-void
.end method

.method public bridge synthetic updateAuthDescriptions()V
    .locals 0

    .prologue
    invoke-super {p0}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->updateAuthDescriptions()V

    return-void
.end method
