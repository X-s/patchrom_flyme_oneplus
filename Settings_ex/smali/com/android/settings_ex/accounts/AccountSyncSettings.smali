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
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;-><init>()V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mSwitches:Ljava/util/ArrayList;

    .line 80
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/accounts/AccountSyncSettings;)Landroid/accounts/Account;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/accounts/AccountSyncSettings;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/accounts/AccountSyncSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/accounts/AccountSyncSettings;
    .param p1, "x1"    # I

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->showDialog(I)V

    return-void
.end method

.method private accountExists(Landroid/accounts/Account;)Z
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v3, 0x0

    .line 468
    if-nez p1, :cond_1

    .line 478
    :cond_0
    :goto_0
    return v3

    .line 470
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    iget-object v5, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v0

    .line 472
    .local v0, "accounts":[Landroid/accounts/Account;
    array-length v1, v0

    .line 473
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 474
    aget-object v4, v0, v2

    invoke-virtual {v4, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 475
    const/4 v3, 0x1

    goto :goto_0

    .line 473
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private addSyncStateSwitch(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 214
    new-instance v0, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4, p1, p2}, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 216
    .local v0, "item":Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;
    invoke-virtual {v0, v6}, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;->setPersistent(Z)V

    .line 217
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v4, p2, v6, v5}, Landroid/content/pm/PackageManager;->resolveContentProviderAsUser(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    .line 219
    .local v1, "providerInfo":Landroid/content/pm/ProviderInfo;
    if-nez v1, :cond_0

    .line 231
    :goto_0
    return-void

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/pm/ProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 223
    .local v2, "providerLabel":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 224
    const-string v4, "AccountSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider needs a label for authority \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 227
    :cond_1
    const v4, 0x7f0908dc

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 228
    .local v3, "title":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 229
    invoke-virtual {v0, p2}, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;->setKey(Ljava/lang/String;)V

    .line 230
    iget-object v4, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mSwitches:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private cancelSyncForEnabledProviders()V
    .locals 2

    .prologue
    .line 324
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->requestOrCancelSyncForEnabledProviders(Z)V

    .line 325
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 326
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 329
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
    .line 365
    .local p1, "currentSyncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncInfo;

    .line 366
    .local v1, "syncInfo":Landroid/content/SyncInfo;
    iget-object v2, v1, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v2, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 367
    const/4 v2, 0x1

    .line 370
    .end local v1    # "syncInfo":Landroid/content/SyncInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "flag"    # Z

    .prologue
    .line 354
    if-eqz p3, :cond_0

    .line 355
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 356
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "force"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 357
    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {p1, p2, v1, v0}, Landroid/content/ContentResolver;->requestSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 362
    .end local v0    # "extras":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 360
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
    .line 333
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    .line 334
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 335
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 336
    .local v3, "pref":Landroid/preference/Preference;
    instance-of v6, v3, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;

    if-nez v6, :cond_1

    .line 334
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v5, v3

    .line 339
    check-cast v5, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;

    .line 340
    .local v5, "syncPref":Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;
    invoke-virtual {v5}, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 343
    invoke-virtual {v5}, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;->getAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7, p1}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_1

    .line 346
    .end local v3    # "pref":Landroid/preference/Preference;
    .end local v5    # "syncPref":Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;
    :cond_2
    iget-object v6, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v6, :cond_3

    .line 347
    iget-object v6, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/SyncAdapterType;

    .line 348
    .local v4, "syncAdapter":Landroid/content/SyncAdapterType;
    iget-object v6, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v7, v4, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-direct {p0, v6, v7, p1}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_2

    .line 351
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "syncAdapter":Landroid/content/SyncAdapterType;
    :cond_3
    return-void
.end method

.method private setFeedsState()V
    .locals 30

    .prologue
    .line 385
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    .line 386
    .local v10, "date":Ljava/util/Date;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v25

    .line 387
    .local v25, "userId":I
    invoke-static/range {v25 .. v25}, Landroid/content/ContentResolver;->getCurrentSyncsAsUser(I)Ljava/util/List;

    move-result-object v9

    .line 388
    .local v9, "currentSyncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    const/16 v21, 0x0

    .line 391
    .local v21, "syncIsFailing":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->updateAccountSwitches()V

    .line 393
    const/4 v11, 0x0

    .local v11, "i":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v8

    .local v8, "count":I
    :goto_0
    if-ge v11, v8, :cond_11

    .line 394
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v16

    .line 395
    .local v16, "pref":Landroid/preference/Preference;
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;

    move/from16 v26, v0

    if-nez v26, :cond_0

    .line 393
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v22, v16

    .line 398
    check-cast v22, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;

    .line 400
    .local v22, "syncPref":Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;
    invoke-virtual/range {v22 .. v22}, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;->getAuthority()Ljava/lang/String;

    move-result-object v4

    .line 401
    .local v4, "authority":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    .line 403
    .local v2, "account":Landroid/accounts/Account;
    move/from16 v0, v25

    invoke-static {v2, v4, v0}, Landroid/content/ContentResolver;->getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Landroid/content/SyncStatusInfo;

    move-result-object v17

    .line 404
    .local v17, "status":Landroid/content/SyncStatusInfo;
    move/from16 v0, v25

    invoke-static {v2, v4, v0}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v20

    .line 406
    .local v20, "syncEnabled":Z
    if-nez v17, :cond_6

    const/4 v5, 0x0

    .line 407
    .local v5, "authorityIsPending":Z
    :goto_2
    if-nez v17, :cond_7

    const/4 v12, 0x0

    .line 409
    .local v12, "initialSync":Z
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2, v4}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->isSyncing(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    .line 410
    .local v3, "activelySyncing":Z
    if-eqz v17, :cond_8

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-eqz v26, :cond_8

    const/16 v26, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_8

    const/4 v13, 0x1

    .line 414
    .local v13, "lastSyncFailed":Z
    :goto_4
    if-nez v20, :cond_1

    const/4 v13, 0x0

    .line 415
    :cond_1
    if-eqz v13, :cond_2

    if-nez v3, :cond_2

    if-nez v5, :cond_2

    .line 416
    const/16 v21, 0x1

    .line 418
    :cond_2
    const-string v26, "AccountSettings"

    const/16 v27, 0x2

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v26

    if-eqz v26, :cond_3

    .line 419
    const-string v26, "AccountSettings"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Update sync status: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " active = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " pend ="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_3
    if-nez v17, :cond_9

    const-wide/16 v18, 0x0

    .line 424
    .local v18, "successEndTime":J
    :goto_5
    if-nez v20, :cond_a

    .line 425
    const v26, 0x7f0908c4

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;->setSummary(I)V

    .line 435
    :goto_6
    move/from16 v0, v25

    invoke-static {v2, v4, v0}, Landroid/content/ContentResolver;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v23

    .line 437
    .local v23, "syncState":I
    if-eqz v3, :cond_d

    if-ltz v23, :cond_d

    if-nez v12, :cond_d

    const/16 v26, 0x1

    :goto_7
    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;->setActive(Z)V

    .line 439
    if-eqz v5, :cond_e

    if-ltz v23, :cond_e

    if-nez v12, :cond_e

    const/16 v26, 0x1

    :goto_8
    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;->setPending(Z)V

    .line 442
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;->setFailed(Z)V

    .line 443
    const-string v26, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    .line 445
    .local v7, "connManager":Landroid/net/ConnectivityManager;
    invoke-static/range {v25 .. v25}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v14

    .line 447
    .local v14, "masterSyncAutomatically":Z
    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v6

    .line 448
    .local v6, "backgroundDataEnabled":Z
    if-eqz v14, :cond_4

    if-nez v6, :cond_f

    :cond_4
    const/4 v15, 0x1

    .line 449
    .local v15, "oneTimeSyncMode":Z
    :goto_9
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;->setOneTimeSyncMode(Z)V

    .line 450
    if-nez v15, :cond_5

    if-eqz v20, :cond_10

    :cond_5
    const/16 v26, 0x1

    :goto_a
    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 406
    .end local v3    # "activelySyncing":Z
    .end local v5    # "authorityIsPending":Z
    .end local v6    # "backgroundDataEnabled":Z
    .end local v7    # "connManager":Landroid/net/ConnectivityManager;
    .end local v12    # "initialSync":Z
    .end local v13    # "lastSyncFailed":Z
    .end local v14    # "masterSyncAutomatically":Z
    .end local v15    # "oneTimeSyncMode":Z
    .end local v18    # "successEndTime":J
    .end local v23    # "syncState":I
    :cond_6
    move-object/from16 v0, v17

    iget-boolean v5, v0, Landroid/content/SyncStatusInfo;->pending:Z

    goto/16 :goto_2

    .line 407
    .restart local v5    # "authorityIsPending":Z
    :cond_7
    move-object/from16 v0, v17

    iget-boolean v12, v0, Landroid/content/SyncStatusInfo;->initialize:Z

    goto/16 :goto_3

    .line 410
    .restart local v3    # "activelySyncing":Z
    .restart local v12    # "initialSync":Z
    :cond_8
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 423
    .restart local v13    # "lastSyncFailed":Z
    :cond_9
    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v18, v0

    goto :goto_5

    .line 426
    .restart local v18    # "successEndTime":J
    :cond_a
    if-eqz v3, :cond_b

    .line 427
    const v26, 0x7f0908c7

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;->setSummary(I)V

    goto :goto_6

    .line 428
    :cond_b
    const-wide/16 v26, 0x0

    cmp-long v26, v18, v26

    if-eqz v26, :cond_c

    .line 429
    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 430
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->formatSyncDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v24

    .line 431
    .local v24, "timeString":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0908c6

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v24, v28, v29

    invoke-virtual/range {v26 .. v28}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 433
    .end local v24    # "timeString":Ljava/lang/String;
    :cond_c
    const-string v26, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 437
    .restart local v23    # "syncState":I
    :cond_d
    const/16 v26, 0x0

    goto/16 :goto_7

    .line 439
    :cond_e
    const/16 v26, 0x0

    goto/16 :goto_8

    .line 448
    .restart local v6    # "backgroundDataEnabled":Z
    .restart local v7    # "connManager":Landroid/net/ConnectivityManager;
    .restart local v14    # "masterSyncAutomatically":Z
    :cond_f
    const/4 v15, 0x0

    goto :goto_9

    .line 450
    .restart local v15    # "oneTimeSyncMode":Z
    :cond_10
    const/16 v26, 0x0

    goto :goto_a

    .line 452
    .end local v2    # "account":Landroid/accounts/Account;
    .end local v3    # "activelySyncing":Z
    .end local v4    # "authority":Ljava/lang/String;
    .end local v5    # "authorityIsPending":Z
    .end local v6    # "backgroundDataEnabled":Z
    .end local v7    # "connManager":Landroid/net/ConnectivityManager;
    .end local v12    # "initialSync":Z
    .end local v13    # "lastSyncFailed":Z
    .end local v14    # "masterSyncAutomatically":Z
    .end local v15    # "oneTimeSyncMode":Z
    .end local v16    # "pref":Landroid/preference/Preference;
    .end local v17    # "status":Landroid/content/SyncStatusInfo;
    .end local v18    # "successEndTime":J
    .end local v20    # "syncEnabled":Z
    .end local v22    # "syncPref":Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;
    .end local v23    # "syncState":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mErrorInfoView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    if-eqz v21, :cond_12

    const/16 v26, 0x0

    :goto_b
    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 453
    return-void

    .line 452
    :cond_12
    const/16 v26, 0x8

    goto :goto_b
.end method

.method private startSyncForEnabledProviders()V
    .locals 2

    .prologue
    .line 316
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->requestOrCancelSyncForEnabledProviders(Z)V

    .line 317
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 318
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 321
    :cond_0
    return-void
.end method

.method private updateAccountSwitches()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    .line 482
    iget-object v9, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 484
    iget-object v9, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    invoke-static {v9}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v7

    .line 486
    .local v7, "syncAdapters":[Landroid/content/SyncAdapterType;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 487
    .local v0, "authorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v5, v7

    .local v5, "n":I
    :goto_0
    if-ge v2, v5, :cond_3

    .line 488
    aget-object v6, v7, v2

    .line 490
    .local v6, "sa":Landroid/content/SyncAdapterType;
    iget-object v9, v6, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v10, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 487
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 491
    :cond_0
    invoke-virtual {v6}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 492
    const-string v9, "AccountSettings"

    invoke-static {v9, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 493
    const-string v9, "AccountSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateAccountSwitches: added authority "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to accountType "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_1
    iget-object v9, v6, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 500
    :cond_2
    iget-object v9, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 504
    .end local v6    # "sa":Landroid/content/SyncAdapterType;
    :cond_3
    const/4 v2, 0x0

    iget-object v9, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mSwitches:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_2
    if-ge v2, v5, :cond_4

    .line 505
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v9, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mSwitches:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/preference/Preference;

    invoke-virtual {v10, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 504
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 507
    :cond_4
    iget-object v9, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mSwitches:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 509
    const-string v9, "AccountSettings"

    invoke-static {v9, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 510
    const-string v9, "AccountSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "looking for sync adapters that match account "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_5
    const/4 v3, 0x0

    .local v3, "j":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "m":I
    :goto_3
    if-ge v3, v4, :cond_8

    .line 513
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 515
    .local v1, "authority":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v10, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    invoke-static {v9, v1, v10}, Landroid/content/ContentResolver;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v8

    .line 517
    .local v8, "syncState":I
    const-string v9, "AccountSettings"

    invoke-static {v9, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 518
    const-string v9, "AccountSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  found authority "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_6
    if-lez v8, :cond_7

    .line 521
    iget-object v9, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v9, v1}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->addSyncStateSwitch(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 512
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 525
    .end local v1    # "authority":Ljava/lang/String;
    .end local v8    # "syncState":I
    :cond_8
    iget-object v9, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mSwitches:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 526
    const/4 v2, 0x0

    iget-object v9, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mSwitches:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_4
    if-ge v2, v5, :cond_9

    .line 527
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v9, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mSwitches:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/preference/Preference;

    invoke-virtual {v10, v9}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 526
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 529
    :cond_9
    return-void
.end method


# virtual methods
.method public bridge synthetic addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 547
    const v0, 0x7f090a20

    return v0
.end method

.method protected initializeUi(Landroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 165
    const v0, 0x7f060006

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->addPreferencesFromResource(I)V

    .line 167
    const v0, 0x7f0f0003

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mErrorInfoView:Landroid/widget/TextView;

    .line 168
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mErrorInfoView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    const v0, 0x7f0f0228

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mUserId:Landroid/widget/TextView;

    .line 171
    const v0, 0x7f0f0229

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mProviderId:Landroid/widget/TextView;

    .line 172
    const v0, 0x7f0f0227

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mProviderIcon:Landroid/widget/ImageView;

    .line 173
    return-void
.end method

.method public onAccountsUpdate(Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 457
    invoke-super {p0, p1}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onAccountsUpdate(Landroid/os/UserHandle;)V

    .line 458
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->accountExists(Landroid/accounts/Account;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 460
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->finish()V

    .line 465
    :goto_0
    return-void

    .line 463
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->updateAccountSwitches()V

    .line 464
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->onSyncStateUpdated()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 177
    invoke-super {p0, p1}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 179
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 180
    .local v0, "arguments":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 181
    const-string v1, "AccountSettings"

    const-string v2, "No arguments provided when starting intent. ACCOUNT_KEY needed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->finish()V

    .line 196
    :goto_0
    return-void

    .line 185
    :cond_0
    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    iput-object v1, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    .line 186
    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->accountExists(Landroid/accounts/Account;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 187
    const-string v1, "AccountSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Account provided does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->finish()V

    goto :goto_0

    .line 191
    :cond_1
    const-string v1, "AccountSettings"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 192
    const-string v1, "AccountSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got account: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mUserId:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mProviderId:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 2

    .prologue
    .line 536
    invoke-super {p0}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onAuthDescriptionsUpdated()V

    .line 537
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 538
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mProviderIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 540
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mProviderId:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    :cond_0
    const v0, 0x7f060006

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->addPreferencesFromResource(I)V

    .line 543
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 146
    invoke-super {p0, p1}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    .line 148
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->setHasOptionsMenu(Z)V

    .line 149
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .param p1, "id"    # I

    .prologue
    const v5, 0x7f0908d8

    const v4, 0x104000a

    const/4 v3, 0x0

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "dialog":Landroid/app/Dialog;
    const/16 v1, 0x64

    if-ne p1, v1, :cond_1

    .line 86
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0908d9

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0908d5

    new-instance v3, Lcom/android/settings_ex/accounts/AccountSyncSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings$1;-><init>(Lcom/android/settings_ex/accounts/AccountSyncSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 141
    :cond_0
    :goto_0
    return-object v0

    .line 128
    :cond_1
    const/16 v1, 0x65

    if-ne p1, v1, :cond_2

    .line 129
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0908da

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 134
    :cond_2
    const/16 v1, 0x66

    if-ne p1, v1, :cond_0

    .line 135
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0908dd

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0908de

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 236
    const/4 v4, 0x1

    const v5, 0x7f0908ca

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f02004a

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 239
    .local v2, "syncNow":Landroid/view/MenuItem;
    const/4 v4, 0x2

    const v5, 0x7f0908cb

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x1080038

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 242
    .local v1, "syncCancel":Landroid/view/MenuItem;
    const-string v4, "user"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 243
    .local v3, "um":Landroid/os/UserManager;
    const-string v4, "no_modify_accounts"

    iget-object v5, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 244
    const/4 v4, 0x3

    const v5, 0x7f0908d5

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f020048

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 247
    .local v0, "removeAccount":Landroid/view/MenuItem;
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 250
    .end local v0    # "removeAccount":Landroid/view/MenuItem;
    :cond_0
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 252
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 255
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 256
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 154
    const/high16 v2, 0x7f040000

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 156
    .local v1, "view":Landroid/view/View;
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 157
    .local v0, "list":Landroid/widget/ListView;
    invoke-static {p2, v1, v0, v3}, Lcom/android/settings_ex/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 159
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->initializeUi(Landroid/view/View;)V

    .line 161
    return-object v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 270
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 281
    invoke-super {p0, p1}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 272
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->startSyncForEnabledProviders()V

    goto :goto_0

    .line 275
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->cancelSyncForEnabledProviders()V

    goto :goto_0

    .line 278
    :pswitch_2
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->showDialog(I)V

    goto :goto_0

    .line 270
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
    .line 209
    invoke-super {p0}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onPause()V

    .line 210
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAuthenticatorHelper:Lcom/android/settings_ex/accounts/AuthenticatorHelper;

    invoke-virtual {v0}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;->stopListeningToAccountUpdates()V

    .line 211
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preferences"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v7, 0x1

    .line 286
    instance-of v8, p2, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;

    if-eqz v8, :cond_3

    move-object v5, p2

    .line 287
    check-cast v5, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;

    .line 288
    .local v5, "syncPref":Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;
    invoke-virtual {v5}, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, "authority":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 290
    .local v0, "account":Landroid/accounts/Account;
    iget-object v8, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 291
    .local v6, "userId":I
    invoke-static {v0, v1, v6}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v3

    .line 293
    .local v3, "syncAutomatically":Z
    invoke-virtual {v5}, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;->isOneTimeSyncMode()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 294
    invoke-direct {p0, v0, v1, v7}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 311
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v1    # "authority":Ljava/lang/String;
    .end local v3    # "syncAutomatically":Z
    .end local v5    # "syncPref":Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;
    .end local v6    # "userId":I
    :cond_0
    :goto_0
    return v7

    .line 296
    .restart local v0    # "account":Landroid/accounts/Account;
    .restart local v1    # "authority":Ljava/lang/String;
    .restart local v3    # "syncAutomatically":Z
    .restart local v5    # "syncPref":Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;
    .restart local v6    # "userId":I
    :cond_1
    invoke-virtual {v5}, Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;->isChecked()Z

    move-result v4

    .line 297
    .local v4, "syncOn":Z
    move v2, v3

    .line 298
    .local v2, "oldSyncState":Z
    if-eq v4, v2, :cond_0

    .line 300
    invoke-static {v0, v1, v4, v6}, Landroid/content/ContentResolver;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    .line 304
    invoke-static {v6}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v8

    if-eqz v8, :cond_2

    if-nez v4, :cond_0

    .line 305
    :cond_2
    invoke-direct {p0, v0, v1, v4}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_0

    .line 311
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v1    # "authority":Ljava/lang/String;
    .end local v2    # "oldSyncState":Z
    .end local v3    # "syncAutomatically":Z
    .end local v4    # "syncOn":Z
    .end local v5    # "syncPref":Lcom/android/settings_ex/accounts/SyncStateSwitchPreference;
    .end local v6    # "userId":I
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v7

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 260
    invoke-super {p0, p1}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 262
    iget-object v3, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Landroid/content/ContentResolver;->getCurrentSyncsAsUser(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 264
    .local v0, "syncActive":Z
    :goto_0
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-nez v0, :cond_1

    :goto_1
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 265
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 266
    return-void

    .end local v0    # "syncActive":Z
    :cond_0
    move v0, v2

    .line 262
    goto :goto_0

    .restart local v0    # "syncActive":Z
    :cond_1
    move v1, v2

    .line 264
    goto :goto_1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAuthenticatorHelper:Lcom/android/settings_ex/accounts/AuthenticatorHelper;

    invoke-virtual {v0}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;->listenToAccountUpdates()V

    .line 201
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->updateAuthDescriptions()V

    .line 202
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->onAccountsUpdate(Landroid/os/UserHandle;)V

    .line 204
    invoke-super {p0}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onResume()V

    .line 205
    return-void
.end method

.method protected onSyncStateUpdated()V
    .locals 2

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->isResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->setFeedsState()V

    .line 377
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 378
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public bridge synthetic updateAuthDescriptions()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->updateAuthDescriptions()V

    return-void
.end method
