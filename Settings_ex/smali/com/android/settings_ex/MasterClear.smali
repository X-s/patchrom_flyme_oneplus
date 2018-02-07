.class public Lcom/android/settings_ex/MasterClear;
.super Lcom/android/settings_ex/OptionsMenuFragment;
.source "MasterClear.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory$OnFactoryResetConfirmListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/MasterClear$1;
    }
.end annotation


# static fields
.field static final ERASE_EXTERNAL_EXTRA:Ljava/lang/String; = "erase_sd"

.field private static final KEYGUARD_REQUEST:I = 0x37

.field private static final TAG:Ljava/lang/String; = "MasterClear"


# instance fields
.field private mContentView:Landroid/view/View;

.field private mExternalStorage:Landroid/widget/CheckBox;

.field private mExternalStorageContainer:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private final mInitiateListener:Landroid/view/View$OnClickListener;

.field private mOPFactoryResetConfirmCategory:Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory;

.field private mOptionalSwitchPreference:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings_ex/MasterClear;I)Z
    .locals 1
    .param p1, "request"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/MasterClear;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/MasterClear;Ljava/lang/String;)V
    .locals 0
    .param p1, "psw"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/MasterClear;->showFinalConfirmation(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings_ex/OptionsMenuFragment;-><init>()V

    .line 139
    new-instance v0, Lcom/android/settings_ex/MasterClear$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/MasterClear$1;-><init>(Lcom/android/settings_ex/MasterClear;)V

    iput-object v0, p0, Lcom/android/settings_ex/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    .line 71
    return-void
.end method

.method private establishInitialState()V
    .locals 2

    .prologue
    .line 164
    const-string/jumbo v0, "op_optional_reset"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/MasterClear;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings_ex/MasterClear;->mOptionalSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 165
    iget-object v0, p0, Lcom/android/settings_ex/MasterClear;->mOptionalSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 166
    iget-object v0, p0, Lcom/android/settings_ex/MasterClear;->mOptionalSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 167
    const-string/jumbo v0, "op_factory_reset_confirm"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/MasterClear;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory;

    iput-object v0, p0, Lcom/android/settings_ex/MasterClear;->mOPFactoryResetConfirmCategory:Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory;

    .line 168
    iget-object v0, p0, Lcom/android/settings_ex/MasterClear;->mOPFactoryResetConfirmCategory:Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory;->setOnFactoryResetConfirmListener(Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory$OnFactoryResetConfirmListener;)V

    .line 162
    return-void
.end method

.method private getContentDescription(Landroid/view/View;Ljava/lang/StringBuffer;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "description"    # Ljava/lang/StringBuffer;

    .prologue
    .line 216
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    .line 217
    return-void

    .line 219
    :cond_0
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    move-object v2, p1

    .line 220
    check-cast v2, Landroid/view/ViewGroup;

    .line 221
    .local v2, "vGroup":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 222
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 223
    .local v1, "nextChild":Landroid/view/View;
    invoke-direct {p0, v1, p2}, Lcom/android/settings_ex/MasterClear;->getContentDescription(Landroid/view/View;Ljava/lang/StringBuffer;)V

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    .end local v0    # "i":I
    .end local v1    # "nextChild":Landroid/view/View;
    .end local v2    # "vGroup":Landroid/view/ViewGroup;
    :cond_1
    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_2

    move-object v3, p1

    .line 226
    check-cast v3, Landroid/widget/TextView;

    .line 227
    .local v3, "vText":Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 228
    const-string/jumbo v4, ","

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    .end local v3    # "vText":Landroid/widget/TextView;
    :cond_2
    return-void
.end method

.method private isExtStorageEncrypted()Z
    .locals 2

    .prologue
    .line 233
    const-string/jumbo v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "state":Ljava/lang/String;
    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private loadAccountList(Landroid/os/UserManager;)V
    .locals 36
    .param p1, "um"    # Landroid/os/UserManager;

    .prologue
    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v33, v0

    const v34, 0x7f110196

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 239
    .local v9, "accountsLabel":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v33, v0

    const v34, 0x7f110197

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 240
    .local v12, "contents":Landroid/widget/LinearLayout;
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v13

    .line 243
    .local v13, "context":Landroid/content/Context;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v33

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v27

    .line 244
    .local v27, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v28

    .line 246
    .local v28, "profilesSize":I
    invoke-static {v13}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v23

    .line 249
    .local v23, "mgr":Landroid/accounts/AccountManager;
    const-string/jumbo v33, "layout_inflater"

    .line 248
    move-object/from16 v0, v33

    invoke-virtual {v13, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/view/LayoutInflater;

    .line 251
    .local v21, "inflater":Landroid/view/LayoutInflater;
    const/4 v8, 0x0

    .line 252
    .local v8, "accountsCount":I
    const/16 v26, 0x0

    .local v26, "profileIndex":I
    :goto_0
    move/from16 v0, v26

    move/from16 v1, v28

    if-ge v0, v1, :cond_9

    .line 253
    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/content/pm/UserInfo;

    .line 254
    .local v32, "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v0, v32

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v25, v0

    .line 255
    .local v25, "profileId":I
    new-instance v31, Landroid/os/UserHandle;

    move-object/from16 v0, v31

    move/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 256
    .local v31, "userHandle":Landroid/os/UserHandle;
    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v7

    .line 257
    .local v7, "accounts":[Landroid/accounts/Account;
    array-length v5, v7

    .line 258
    .local v5, "N":I
    if-nez v5, :cond_1

    .line 252
    :cond_0
    add-int/lit8 v26, v26, 0x1

    goto :goto_0

    .line 261
    :cond_1
    add-int/2addr v8, v5

    .line 263
    invoke-static {v13}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAuthenticatorTypesAsUser(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object v15

    .line 265
    .local v15, "descs":[Landroid/accounts/AuthenticatorDescription;
    array-length v4, v15

    .line 267
    .local v4, "M":I
    move-object/from16 v0, v21

    invoke-static {v0, v12}, Lcom/android/settings_ex/Utils;->inflateCategoryHeader(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v30

    .line 268
    .local v30, "titleView":Landroid/view/View;
    const v33, 0x1020016

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    .line 269
    .local v29, "titleText":Landroid/widget/TextView;
    invoke-virtual/range {v32 .. v32}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v33

    if-eqz v33, :cond_2

    const v33, 0x7f0e0099

    :goto_1
    move-object/from16 v0, v29

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 271
    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 273
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_2
    move/from16 v0, v19

    if-ge v0, v5, :cond_0

    .line 274
    aget-object v6, v7, v19

    .line 275
    .local v6, "account":Landroid/accounts/Account;
    iget-object v0, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-static {v13, v0}, Lcom/android/settings_ex/Utils;->showAccount(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v33

    if-nez v33, :cond_3

    .line 273
    :goto_3
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 270
    .end local v6    # "account":Landroid/accounts/Account;
    .end local v19    # "i":I
    :cond_2
    const v33, 0x7f0e0098

    goto :goto_1

    .line 279
    .restart local v6    # "account":Landroid/accounts/Account;
    .restart local v19    # "i":I
    :cond_3
    const/4 v14, 0x0

    .line 280
    .local v14, "desc":Landroid/accounts/AuthenticatorDescription;
    const/16 v22, 0x0

    .local v22, "j":I
    :goto_4
    move/from16 v0, v22

    if-ge v0, v4, :cond_4

    .line 281
    iget-object v0, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v33, v0

    aget-object v34, v15, v22

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_5

    .line 282
    aget-object v14, v15, v22

    .line 286
    .end local v14    # "desc":Landroid/accounts/AuthenticatorDescription;
    :cond_4
    if-nez v14, :cond_6

    .line 287
    const-string/jumbo v33, "MasterClear"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "No descriptor for account name="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    iget-object v0, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    .line 288
    const-string/jumbo v35, " type="

    .line 287
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    .line 288
    iget-object v0, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v35, v0

    .line 287
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 280
    .restart local v14    # "desc":Landroid/accounts/AuthenticatorDescription;
    :cond_5
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 291
    .end local v14    # "desc":Landroid/accounts/AuthenticatorDescription;
    :cond_6
    const/16 v20, 0x0

    .line 293
    .local v20, "icon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget v0, v14, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v33, v0

    if-eqz v33, :cond_7

    .line 294
    iget-object v0, v14, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v33, v0

    .line 295
    const/16 v34, 0x0

    .line 294
    move-object/from16 v0, v33

    move/from16 v1, v34

    move-object/from16 v2, v31

    invoke-virtual {v13, v0, v1, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v10

    .line 296
    .local v10, "authContext":Landroid/content/Context;
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v33

    .line 297
    iget v0, v14, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v34, v0

    move/from16 v0, v34

    invoke-virtual {v10, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v34

    .line 296
    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v20

    .line 304
    .end local v10    # "authContext":Landroid/content/Context;
    .end local v20    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_7
    :goto_5
    if-nez v20, :cond_8

    .line 305
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 308
    :cond_8
    const v33, 0x7f0400ad

    .line 309
    const/16 v34, 0x0

    .line 308
    move-object/from16 v0, v21

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v12, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 310
    .local v11, "child":Landroid/widget/TextView;
    iget-object v0, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 312
    invoke-virtual {v12, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_3

    .line 301
    .end local v11    # "child":Landroid/widget/TextView;
    .restart local v20    # "icon":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v17

    .line 302
    .local v17, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v33, "MasterClear"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "Invalid icon id for account type "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    iget-object v0, v14, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 299
    .end local v17    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v16

    .line 300
    .local v16, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v33, "MasterClear"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "Bad package name for account type "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    iget-object v0, v14, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 316
    .end local v4    # "M":I
    .end local v5    # "N":I
    .end local v6    # "account":Landroid/accounts/Account;
    .end local v7    # "accounts":[Landroid/accounts/Account;
    .end local v15    # "descs":[Landroid/accounts/AuthenticatorDescription;
    .end local v16    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v19    # "i":I
    .end local v20    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v22    # "j":I
    .end local v25    # "profileId":I
    .end local v29    # "titleText":Landroid/widget/TextView;
    .end local v30    # "titleView":Landroid/view/View;
    .end local v31    # "userHandle":Landroid/os/UserHandle;
    .end local v32    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_9
    if-lez v8, :cond_a

    .line 317
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 318
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 321
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v33, v0

    const v34, 0x7f110198

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    .line 322
    .local v24, "otherUsers":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/os/UserManager;->getUserCount()I

    move-result v33

    sub-int v33, v33, v28

    if-lez v33, :cond_b

    const/16 v18, 0x1

    .line 323
    .local v18, "hasOtherUsers":Z
    :goto_6
    if-eqz v18, :cond_c

    const/16 v33, 0x0

    :goto_7
    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 237
    return-void

    .line 322
    .end local v18    # "hasOtherUsers":Z
    :cond_b
    const/16 v18, 0x0

    goto :goto_6

    .line 323
    .restart local v18    # "hasOtherUsers":Z
    :cond_c
    const/16 v33, 0x8

    goto :goto_7
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3
    .param p1, "request"    # I

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 103
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 104
    const v2, 0x7f0e0916

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 103
    invoke-virtual {v1, p1, v2}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private showFinalConfirmation(Ljava/lang/String;)V
    .locals 7
    .param p1, "psw"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 127
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 128
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v0, "erase_sd"

    iget-object v1, p0, Lcom/android/settings_ex/MasterClear;->mOptionalSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 129
    const-string/jumbo v0, "power_on_psw"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    const-class v1, Lcom/android/settings_ex/MasterClearConfirm;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 131
    const v3, 0x7f0e0922

    const/4 v6, 0x0

    move-object v5, v4

    .line 130
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 126
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 349
    const/16 v0, 0x42

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 109
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/OptionsMenuFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 111
    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    .line 112
    return-void

    .line 117
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 119
    const-string/jumbo v0, "power_on_psw"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/MasterClear;->showFinalConfirmation(Ljava/lang/String;)V

    .line 108
    :goto_0
    return-void

    .line 122
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/MasterClear;->establishInitialState()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/android/settings_ex/OptionsMenuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const v0, 0x7f080055

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/MasterClear;->addPreferencesFromResource(I)V

    .line 92
    invoke-direct {p0}, Lcom/android/settings_ex/MasterClear;->establishInitialState()V

    .line 88
    return-void
.end method

.method public onFactoryResetConfirmClick()V
    .locals 1

    .prologue
    .line 364
    const/16 v0, 0x37

    invoke-direct {p0, v0}, Lcom/android/settings_ex/MasterClear;->runKeyguardConfirmation(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 365
    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Lcom/android/settings_ex/MasterClear;->showFinalConfirmation(Ljava/lang/String;)V

    .line 362
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 356
    iget-object v0, p0, Lcom/android/settings_ex/MasterClear;->mOptionalSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v0, :cond_0

    .line 357
    return v1

    .line 359
    :cond_0
    return v1
.end method
