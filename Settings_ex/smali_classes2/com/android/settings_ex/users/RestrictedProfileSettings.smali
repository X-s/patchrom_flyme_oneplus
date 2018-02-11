.class public Lcom/android/settings_ex/users/RestrictedProfileSettings;
.super Lcom/android/settings_ex/users/AppRestrictionsFragment;
.source "RestrictedProfileSettings.java"

# interfaces
.implements Lcom/android/settings_ex/users/EditUserInfoController$OnContentChangedCallback;


# static fields
.field private static final DIALOG_CONFIRM_REMOVE:I = 0x2

.field static final DIALOG_ID_EDIT_USER_INFO:I = 0x1

.field public static final FILE_PROVIDER_AUTHORITY:Ljava/lang/String; = "com.android.settings_ex.files"


# instance fields
.field private mDeleteButton:Landroid/widget/ImageView;

.field private mEditUserInfoController:Lcom/android/settings_ex/users/EditUserInfoController;

.field private mHeaderView:Landroid/view/View;

.field private mUserIconView:Landroid/widget/ImageView;

.field private mUserNameView:Landroid/widget/TextView;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings_ex/users/RestrictedProfileSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/users/RestrictedProfileSettings;->removeUser()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;-><init>()V

    .line 45
    new-instance v0, Lcom/android/settings_ex/users/EditUserInfoController;

    invoke-direct {v0}, Lcom/android/settings_ex/users/EditUserInfoController;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mEditUserInfoController:Lcom/android/settings_ex/users/EditUserInfoController;

    .line 32
    return-void
.end method

.method private removeUser()V
    .locals 2

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/android/settings_ex/users/RestrictedProfileSettings;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/settings_ex/users/RestrictedProfileSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/users/RestrictedProfileSettings$2;-><init>(Lcom/android/settings_ex/users/RestrictedProfileSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 136
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    const v0, 0x7f040206

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/users/RestrictedProfileSettings;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    .line 61
    iget-object v0, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mUserIconView:Landroid/widget/ImageView;

    .line 63
    iget-object v0, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mUserNameView:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    const v1, 0x7f11036a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mDeleteButton:Landroid/widget/ImageView;

    .line 65
    iget-object v0, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mDeleteButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-super {p0, p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 59
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 99
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 101
    iget-object v0, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mEditUserInfoController:Lcom/android/settings_ex/users/EditUserInfoController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings_ex/users/EditUserInfoController;->onActivityResult(IILandroid/content/Intent;)V

    .line 98
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 107
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/users/RestrictedProfileSettings;->showDialog(I)V

    .line 105
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mDeleteButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 109
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/users/RestrictedProfileSettings;->showDialog(I)V

    goto :goto_0

    .line 111
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    if-eqz p1, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mEditUserInfoController:Lcom/android/settings_ex/users/EditUserInfoController;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/users/EditUserInfoController;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 55
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/users/RestrictedProfileSettings;->init(Landroid/os/Bundle;)V

    .line 48
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .param p1, "dialogId"    # I

    .prologue
    .line 117
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mEditUserInfoController:Lcom/android/settings_ex/users/EditUserInfoController;

    iget-object v1, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mUserIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 119
    iget-object v1, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mUserNameView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 120
    iget-object v6, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mUser:Landroid/os/UserHandle;

    .line 119
    const v4, 0x7f0e05ff

    move-object v1, p0

    move-object v5, p0

    .line 118
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/users/EditUserInfoController;->createDialog(Landroid/app/Fragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ILcom/android/settings_ex/users/EditUserInfoController$OnContentChangedCallback;Landroid/os/UserHandle;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 121
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 123
    invoke-virtual {p0}, Lcom/android/settings_ex/users/RestrictedProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 124
    new-instance v2, Lcom/android/settings_ex/users/RestrictedProfileSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/users/RestrictedProfileSettings$1;-><init>(Lcom/android/settings_ex/users/RestrictedProfileSettings;)V

    .line 123
    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/users/UserDialogs;->createRemoveDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v7

    .line 130
    .local v7, "dlg":Landroid/app/Dialog;
    return-object v7

    .line 133
    .end local v7    # "dlg":Landroid/app/Dialog;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public onLabelChanged(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mUserNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    return-void
.end method

.method public onPhotoChanged(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "photo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mUserIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 78
    invoke-super {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->onResume()V

    .line 81
    iget-object v1, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mUser:Landroid/os/UserHandle;

    invoke-static {v1, v2}, Lcom/android/settings_ex/Utils;->getExistingUser(Landroid/os/UserManager;Landroid/os/UserHandle;)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 82
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/android/settings_ex/users/RestrictedProfileSettings;->finishFragment()V

    .line 77
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v1, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    const v2, 0x1020006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 87
    invoke-virtual {p0}, Lcom/android/settings_ex/users/RestrictedProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mUserManager:Landroid/os/UserManager;

    invoke-static {v2, v3, v0}, Lcom/android/settings_exlib/Utils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Lcom/android/settings_exlib/drawable/UserIconDrawable;

    move-result-object v2

    .line 86
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 73
    iget-object v0, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mEditUserInfoController:Lcom/android/settings_ex/users/EditUserInfoController;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/users/EditUserInfoController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 71
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mEditUserInfoController:Lcom/android/settings_ex/users/EditUserInfoController;

    invoke-virtual {v0}, Lcom/android/settings_ex/users/EditUserInfoController;->startingActivityForResult()V

    .line 94
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 92
    return-void
.end method
