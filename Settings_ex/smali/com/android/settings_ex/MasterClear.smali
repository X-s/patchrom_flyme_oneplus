.class public Lcom/android/settings_ex/MasterClear;
.super Landroid/app/Fragment;
.source "MasterClear.java"


# static fields
.field private static final CONFIRM_EXISTING_REQUEST:I = 0x64

.field static final ERASE_EXTERNAL_EXTRA:Ljava/lang/String; = "erase_sd"

.field private static final KEYGUARD_REQUEST:I = 0x37

.field private static final TAG:Ljava/lang/String; = "MasterClear"


# instance fields
.field private mContentView:Landroid/view/View;

.field private mExternalStorage:Landroid/widget/CheckBox;

.field private mExternalStorageContainer:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private final mInitiateListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 115
    new-instance v0, Lcom/android/settings_ex/MasterClear$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/MasterClear$1;-><init>(Lcom/android/settings_ex/MasterClear;)V

    iput-object v0, p0, Lcom/android/settings_ex/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/MasterClear;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/MasterClear;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/settings_ex/MasterClear;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/MasterClear;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/MasterClear;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/settings_ex/MasterClear;->showFinalConfirmation()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/MasterClear;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/MasterClear;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings_ex/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private establishInitialState()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 138
    iget-object v4, p0, Lcom/android/settings_ex/MasterClear;->mContentView:Landroid/view/View;

    const v6, 0x7f0f00eb

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings_ex/MasterClear;->mInitiateButton:Landroid/widget/Button;

    .line 139
    iget-object v4, p0, Lcom/android/settings_ex/MasterClear;->mInitiateButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/settings_ex/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v4, p0, Lcom/android/settings_ex/MasterClear;->mContentView:Landroid/view/View;

    const v6, 0x7f0f00e9

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    .line 141
    iget-object v4, p0, Lcom/android/settings_ex/MasterClear;->mContentView:Landroid/view/View;

    const v6, 0x7f0f00ea

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/android/settings_ex/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    .line 150
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v2

    .line 151
    .local v2, "isExtStorageEmulated":Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0}, Lcom/android/settings_ex/MasterClear;->isExtStorageEncrypted()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 160
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/MasterClear;->mContentView:Landroid/view/View;

    const v6, 0x7f0f00e8

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 166
    .local v1, "externalOption":Landroid/view/View;
    iget-object v4, p0, Lcom/android/settings_ex/MasterClear;->mContentView:Landroid/view/View;

    const v6, 0x7f0f00e4

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 167
    .local v0, "externalAlsoErased":Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 171
    iget-object v6, p0, Lcom/android/settings_ex/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    if-nez v2, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v6, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 182
    .end local v0    # "externalAlsoErased":Landroid/view/View;
    .end local v1    # "externalOption":Landroid/view/View;
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "user"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 183
    .local v3, "um":Landroid/os/UserManager;
    invoke-direct {p0, v3}, Lcom/android/settings_ex/MasterClear;->loadAccountList(Landroid/os/UserManager;)V

    .line 184
    return-void

    .end local v3    # "um":Landroid/os/UserManager;
    .restart local v0    # "externalAlsoErased":Landroid/view/View;
    .restart local v1    # "externalOption":Landroid/view/View;
    :cond_1
    move v4, v5

    .line 171
    goto :goto_0

    .line 173
    .end local v0    # "externalAlsoErased":Landroid/view/View;
    .end local v1    # "externalOption":Landroid/view/View;
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    new-instance v5, Lcom/android/settings_ex/MasterClear$2;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/MasterClear$2;-><init>(Lcom/android/settings_ex/MasterClear;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method private isExtStorageEncrypted()Z
    .locals 2

    .prologue
    .line 187
    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "state":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadAccountList(Landroid/os/UserManager;)V
    .locals 35
    .param p1, "um"    # Landroid/os/UserManager;

    .prologue
    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f0f00e5

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 193
    .local v9, "accountsLabel":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f0f00e6

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 194
    .local v12, "contents":Landroid/widget/LinearLayout;
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v13

    .line 197
    .local v13, "context":Landroid/content/Context;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v32

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v26

    .line 198
    .local v26, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v27

    .line 200
    .local v27, "profilesSize":I
    invoke-static {v13}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v22

    .line 202
    .local v22, "mgr":Landroid/accounts/AccountManager;
    const-string v32, "layout_inflater"

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/LayoutInflater;

    .line 205
    .local v20, "inflater":Landroid/view/LayoutInflater;
    const/4 v8, 0x0

    .line 206
    .local v8, "accountsCount":I
    const/16 v25, 0x0

    .local v25, "profileIndex":I
    :goto_0
    move/from16 v0, v25

    move/from16 v1, v27

    if-ge v0, v1, :cond_8

    .line 207
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/content/pm/UserInfo;

    .line 208
    .local v31, "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v0, v31

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v24, v0

    .line 209
    .local v24, "profileId":I
    new-instance v30, Landroid/os/UserHandle;

    move-object/from16 v0, v30

    move/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 210
    .local v30, "userHandle":Landroid/os/UserHandle;
    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v7

    .line 211
    .local v7, "accounts":[Landroid/accounts/Account;
    array-length v5, v7

    .line 212
    .local v5, "N":I
    if-nez v5, :cond_1

    .line 206
    :cond_0
    add-int/lit8 v25, v25, 0x1

    goto :goto_0

    .line 215
    :cond_1
    add-int/2addr v8, v5

    .line 217
    invoke-static {v13}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAuthenticatorTypesAsUser(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object v15

    .line 219
    .local v15, "descs":[Landroid/accounts/AuthenticatorDescription;
    array-length v4, v15

    .line 221
    .local v4, "M":I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v12, v1}, Lcom/android/settings_ex/MasterClear;->newTitleView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v29

    .line 222
    .local v29, "titleView":Landroid/view/View;
    const v32, 0x1020016

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    .line 223
    .local v28, "titleText":Landroid/widget/TextView;
    invoke-virtual/range {v31 .. v31}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v32

    if-eqz v32, :cond_3

    const v32, 0x7f09045e

    :goto_1
    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 225
    move-object/from16 v0, v29

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 227
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_2
    move/from16 v0, v18

    if-ge v0, v5, :cond_0

    .line 228
    aget-object v6, v7, v18

    .line 229
    .local v6, "account":Landroid/accounts/Account;
    const/4 v14, 0x0

    .line 230
    .local v14, "desc":Landroid/accounts/AuthenticatorDescription;
    const/16 v21, 0x0

    .local v21, "j":I
    :goto_3
    move/from16 v0, v21

    if-ge v0, v4, :cond_2

    .line 231
    iget-object v0, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v32, v0

    aget-object v33, v15, v21

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_4

    .line 232
    aget-object v14, v15, v21

    .line 236
    :cond_2
    if-nez v14, :cond_5

    .line 237
    const-string v32, "MasterClear"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "No descriptor for account name="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    iget-object v0, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " type="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    iget-object v0, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :goto_4
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 223
    .end local v6    # "account":Landroid/accounts/Account;
    .end local v14    # "desc":Landroid/accounts/AuthenticatorDescription;
    .end local v18    # "i":I
    .end local v21    # "j":I
    :cond_3
    const v32, 0x7f09045d

    goto :goto_1

    .line 230
    .restart local v6    # "account":Landroid/accounts/Account;
    .restart local v14    # "desc":Landroid/accounts/AuthenticatorDescription;
    .restart local v18    # "i":I
    .restart local v21    # "j":I
    :cond_4
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 241
    :cond_5
    const/16 v19, 0x0

    .line 243
    .local v19, "icon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget v0, v14, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v32, v0

    if-eqz v32, :cond_6

    .line 244
    iget-object v0, v14, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, v30

    invoke-virtual {v13, v0, v1, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v10

    .line 246
    .local v10, "authContext":Landroid/content/Context;
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v32

    iget v0, v14, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v33, v0

    move/from16 v0, v33

    invoke-virtual {v10, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .line 253
    .end local v10    # "authContext":Landroid/content/Context;
    :cond_6
    :goto_5
    const v32, 0x7f040058

    const/16 v33, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v12, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 255
    .local v11, "child":Landroid/widget/TextView;
    iget-object v0, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    if-eqz v19, :cond_7

    .line 257
    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 259
    :cond_7
    invoke-virtual {v12, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 249
    .end local v11    # "child":Landroid/widget/TextView;
    :catch_0
    move-exception v16

    .line 250
    .local v16, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v32, "MasterClear"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "No icon for account type "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    iget-object v0, v14, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 263
    .end local v4    # "M":I
    .end local v5    # "N":I
    .end local v6    # "account":Landroid/accounts/Account;
    .end local v7    # "accounts":[Landroid/accounts/Account;
    .end local v14    # "desc":Landroid/accounts/AuthenticatorDescription;
    .end local v15    # "descs":[Landroid/accounts/AuthenticatorDescription;
    .end local v16    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v18    # "i":I
    .end local v19    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v21    # "j":I
    .end local v24    # "profileId":I
    .end local v28    # "titleText":Landroid/widget/TextView;
    .end local v29    # "titleView":Landroid/view/View;
    .end local v30    # "userHandle":Landroid/os/UserHandle;
    .end local v31    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_8
    if-lez v8, :cond_9

    .line 264
    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 265
    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 268
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f0f00e7

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .line 269
    .local v23, "otherUsers":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/os/UserManager;->getUserCount()I

    move-result v32

    sub-int v32, v32, v27

    if-lez v32, :cond_a

    const/16 v17, 0x1

    .line 270
    .local v17, "hasOtherUsers":Z
    :goto_6
    if-eqz v17, :cond_b

    const/16 v32, 0x0

    :goto_7
    move-object/from16 v0, v23

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 271
    return-void

    .line 269
    .end local v17    # "hasOtherUsers":Z
    :cond_a
    const/16 v17, 0x0

    goto :goto_6

    .line 270
    .restart local v17    # "hasOtherUsers":Z
    :cond_b
    const/16 v32, 0x8

    goto :goto_7
.end method

.method private newTitleView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v6, 0x0

    .line 289
    invoke-virtual {p2}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/android/internal/R$styleable;->Preference:[I

    const v5, 0x101008c

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 292
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 294
    .local v1, "resId":I
    invoke-virtual {p2, v1, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 4
    .param p1, "request"    # I

    .prologue
    const/4 v3, 0x0

    .line 80
    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 81
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    invoke-virtual {v1, p1, v3, v3}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private showFinalConfirmation()V
    .locals 4

    .prologue
    .line 103
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 104
    .local v0, "preference":Landroid/preference/Preference;
    const-class v1, Lcom/android/settings_ex/MasterClearConfirm;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 105
    const v1, 0x7f090558

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 106
    invoke-virtual {v0}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "erase_sd"

    iget-object v3, p0, Lcom/android/settings_ex/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 107
    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/SettingsActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/android/settings_ex/SettingsActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    .line 108
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 87
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 89
    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 95
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 96
    invoke-direct {p0}, Lcom/android/settings_ex/MasterClear;->showFinalConfirmation()V

    goto :goto_0

    .line 98
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/MasterClear;->establishInitialState()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 276
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->isOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    const-string v1, "no_factory_reset"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    :cond_0
    const v0, 0x7f04005a

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 285
    :goto_0
    return-object v0

    .line 282
    :cond_1
    const v0, 0x7f040057

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/MasterClear;->mContentView:Landroid/view/View;

    .line 284
    invoke-direct {p0}, Lcom/android/settings_ex/MasterClear;->establishInitialState()V

    .line 285
    iget-object v0, p0, Lcom/android/settings_ex/MasterClear;->mContentView:Landroid/view/View;

    goto :goto_0
.end method
