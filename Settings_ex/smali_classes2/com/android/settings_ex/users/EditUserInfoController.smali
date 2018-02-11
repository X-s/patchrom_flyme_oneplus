.class public Lcom/android/settings_ex/users/EditUserInfoController;
.super Ljava/lang/Object;
.source "EditUserInfoController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/users/EditUserInfoController$OnContentChangedCallback;
    }
.end annotation


# static fields
.field private static final KEY_AWAITING_RESULT:Ljava/lang/String; = "awaiting_result"

.field private static final KEY_SAVED_PHOTO:Ljava/lang/String; = "pending_photo"


# instance fields
.field private mEditUserInfoDialog:Landroid/app/Dialog;

.field private mEditUserPhotoController:Lcom/android/settings_ex/users/EditUserPhotoController;

.field private mSavedPhoto:Landroid/graphics/Bitmap;

.field private mUser:Landroid/os/UserHandle;

.field private mUserManager:Landroid/os/UserManager;

.field private mWaitingForActivityResult:Z


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/users/EditUserInfoController;)Lcom/android/settings_ex/users/EditUserPhotoController;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/users/EditUserInfoController;->mEditUserPhotoController:Lcom/android/settings_ex/users/EditUserPhotoController;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/users/EditUserInfoController;)Landroid/os/UserHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/users/EditUserInfoController;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/users/EditUserInfoController;)Landroid/os/UserManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/users/EditUserInfoController;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/users/EditUserInfoController;->mWaitingForActivityResult:Z

    .line 48
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    iget-object v0, p0, Lcom/android/settings_ex/users/EditUserInfoController;->mEditUserPhotoController:Lcom/android/settings_ex/users/EditUserPhotoController;

    invoke-virtual {v0}, Lcom/android/settings_ex/users/EditUserPhotoController;->removeNewUserPhotoBitmapFile()V

    .line 67
    iput-object v1, p0, Lcom/android/settings_ex/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    .line 68
    iput-object v1, p0, Lcom/android/settings_ex/users/EditUserInfoController;->mSavedPhoto:Landroid/graphics/Bitmap;

    .line 65
    return-void
.end method

.method public createDialog(Landroid/app/Fragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ILcom/android/settings_ex/users/EditUserInfoController$OnContentChangedCallback;Landroid/os/UserHandle;)Landroid/app/Dialog;
    .locals 18
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "currentUserIcon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "currentUserName"    # Ljava/lang/CharSequence;
    .param p4, "titleResId"    # I
    .param p5, "callback"    # Lcom/android/settings_ex/users/EditUserInfoController$OnContentChangedCallback;
    .param p6, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 114
    invoke-virtual/range {p1 .. p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    .line 115
    .local v14, "activity":Landroid/app/Activity;
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/users/EditUserInfoController;->mUser:Landroid/os/UserHandle;

    .line 116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/users/EditUserInfoController;->mUserManager:Landroid/os/UserManager;

    if-nez v2, :cond_0

    .line 117
    invoke-static {v14}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/users/EditUserInfoController;->mUserManager:Landroid/os/UserManager;

    .line 119
    :cond_0
    invoke-virtual {v14}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v16

    .line 120
    .local v16, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040076

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 122
    .local v15, "content":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/users/EditUserInfoController;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/users/EditUserInfoController;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v17

    .line 124
    .local v17, "info":Landroid/content/pm/UserInfo;
    const v2, 0x7f110150

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    .line 125
    .local v9, "userNameView":Landroid/widget/EditText;
    move-object/from16 v0, v17

    iget-object v2, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 127
    const v2, 0x7f11014f

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 128
    .local v4, "userPhotoView":Landroid/widget/ImageView;
    const/4 v6, 0x0

    .line 129
    .local v6, "drawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/users/EditUserInfoController;->mSavedPhoto:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/users/EditUserInfoController;->mSavedPhoto:Landroid/graphics/Bitmap;

    invoke-static {v14, v2}, Lcom/android/settings_exlib/drawable/CircleFramedDrawable;->getInstance(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/settings_exlib/drawable/CircleFramedDrawable;

    move-result-object v6

    .line 137
    .local v6, "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_0
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    new-instance v2, Lcom/android/settings_ex/users/EditUserPhotoController;

    .line 139
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/users/EditUserInfoController;->mSavedPhoto:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/settings_ex/users/EditUserInfoController;->mWaitingForActivityResult:Z

    move-object/from16 v3, p1

    .line 138
    invoke-direct/range {v2 .. v7}, Lcom/android/settings_ex/users/EditUserPhotoController;-><init>(Landroid/app/Fragment;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/users/EditUserInfoController;->mEditUserPhotoController:Lcom/android/settings_ex/users/EditUserPhotoController;

    .line 140
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 141
    const v3, 0x7f0e05ff

    .line 140
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 143
    const/4 v3, 0x1

    .line 140
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 144
    new-instance v7, Lcom/android/settings_ex/users/EditUserInfoController$1;

    move-object/from16 v8, p0

    move-object/from16 v10, p3

    move-object/from16 v11, p5

    move-object/from16 v12, p2

    move-object/from16 v13, p1

    invoke-direct/range {v7 .. v13}, Lcom/android/settings_ex/users/EditUserInfoController$1;-><init>(Lcom/android/settings_ex/users/EditUserInfoController;Landroid/widget/EditText;Ljava/lang/CharSequence;Lcom/android/settings_ex/users/EditUserInfoController$OnContentChangedCallback;Landroid/graphics/drawable/Drawable;Landroid/app/Fragment;)V

    const v3, 0x104000a

    .line 140
    invoke-virtual {v2, v3, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 183
    new-instance v3, Lcom/android/settings_ex/users/EditUserInfoController$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/settings_ex/users/EditUserInfoController$2;-><init>(Lcom/android/settings_ex/users/EditUserInfoController;)V

    const/high16 v5, 0x1040000

    .line 140
    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    .line 192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 193
    const/4 v3, 0x4

    .line 192
    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    return-object v2

    .line 132
    .local v6, "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    move-object/from16 v6, p2

    .line 133
    .local v6, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez p2, :cond_1

    .line 134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/users/EditUserInfoController;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v0, v17

    invoke-static {v14, v2, v0}, Lcom/android/settings_exlib/Utils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Lcom/android/settings_exlib/drawable/UserIconDrawable;

    move-result-object v6

    goto :goto_0
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings_ex/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/users/EditUserInfoController;->mWaitingForActivityResult:Z

    .line 105
    iget-object v0, p0, Lcom/android/settings_ex/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/settings_ex/users/EditUserInfoController;->mEditUserPhotoController:Lcom/android/settings_ex/users/EditUserPhotoController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings_ex/users/EditUserPhotoController;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    .line 105
    if-eqz v0, :cond_0

    .line 107
    return-void

    .line 102
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 76
    const-string/jumbo v1, "pending_photo"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "pendingPhoto":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 78
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/settings_ex/users/EditUserPhotoController;->loadNewUserPhotoBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/users/EditUserInfoController;->mSavedPhoto:Landroid/graphics/Bitmap;

    .line 80
    :cond_0
    const-string/jumbo v1, "awaiting_result"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/users/EditUserInfoController;->mWaitingForActivityResult:Z

    .line 75
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    iget-object v1, p0, Lcom/android/settings_ex/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/android/settings_ex/users/EditUserInfoController;->mEditUserPhotoController:Lcom/android/settings_ex/users/EditUserPhotoController;

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/android/settings_ex/users/EditUserInfoController;->mEditUserPhotoController:Lcom/android/settings_ex/users/EditUserPhotoController;

    invoke-virtual {v1}, Lcom/android/settings_ex/users/EditUserPhotoController;->saveNewUserPhotoBitmap()Ljava/io/File;

    move-result-object v0

    .line 89
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 90
    const-string/jumbo v1, "pending_photo"

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings_ex/users/EditUserInfoController;->mWaitingForActivityResult:Z

    if-eqz v1, :cond_1

    .line 94
    const-string/jumbo v1, "awaiting_result"

    iget-boolean v2, p0, Lcom/android/settings_ex/users/EditUserInfoController;->mWaitingForActivityResult:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 83
    :cond_1
    return-void
.end method

.method public startingActivityForResult()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/users/EditUserInfoController;->mWaitingForActivityResult:Z

    .line 98
    return-void
.end method
