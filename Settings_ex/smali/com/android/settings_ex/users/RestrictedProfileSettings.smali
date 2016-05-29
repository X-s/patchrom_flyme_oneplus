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
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;-><init>()V

    .line 48
    new-instance v0, Lcom/android/settings_ex/users/EditUserInfoController;

    invoke-direct {v0}, Lcom/android/settings_ex/users/EditUserInfoController;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mEditUserInfoController:Lcom/android/settings_ex/users/EditUserInfoController;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/users/RestrictedProfileSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/users/RestrictedProfileSettings;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings_ex/users/RestrictedProfileSettings;->removeUser()V

    return-void
.end method

.method private removeUser()V
    .locals 2

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/android/settings_ex/users/RestrictedProfileSettings;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/settings_ex/users/RestrictedProfileSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/users/RestrictedProfileSettings$2;-><init>(Lcom/android/settings_ex/users/RestrictedProfileSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 152
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/android/settings_ex/users/RestrictedProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400e5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    .line 67
    iget-object v0, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/users/RestrictedProfileSettings;->setPinnedHeaderView(Landroid/view/View;)V

    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mUserIconView:Landroid/widget/ImageView;

    .line 70
    iget-object v0, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mUserNameView:Landroid/widget/TextView;

    .line 71
    iget-object v0, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    const v1, 0x7f0f0242

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mDeleteButton:Landroid/widget/ImageView;

    .line 72
    iget-object v0, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mDeleteButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings_ex/users/RestrictedProfileSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 76
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 77
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 108
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 110
    iget-object v0, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mEditUserInfoController:Lcom/android/settings_ex/users/EditUserInfoController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings_ex/users/EditUserInfoController;->onActivityResult(IILandroid/content/Intent;)V

    .line 111
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 116
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/users/RestrictedProfileSettings;->showDialog(I)V

    .line 122
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mDeleteButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 118
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/users/RestrictedProfileSettings;->showDialog(I)V

    goto :goto_0

    .line 120
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    if-eqz p1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mEditUserInfoController:Lcom/android/settings_ex/users/EditUserInfoController;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/users/EditUserInfoController;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 59
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/users/RestrictedProfileSettings;->init(Landroid/os/Bundle;)V

    .line 60
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .param p1, "dialogId"    # I

    .prologue
    .line 126
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mEditUserInfoController:Lcom/android/settings_ex/users/EditUserInfoController;

    iget-object v1, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mUserIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v1, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mUserNameView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x7f09025d

    iget-object v6, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mUser:Landroid/os/UserHandle;

    move-object v1, p0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/users/EditUserInfoController;->createDialog(Landroid/app/Fragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ILcom/android/settings_ex/users/EditUserInfoController$OnContentChangedCallback;Landroid/os/UserHandle;)Landroid/app/Dialog;

    move-result-object v7

    .line 142
    :goto_0
    return-object v7

    .line 130
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/android/settings_ex/users/RestrictedProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    new-instance v2, Lcom/android/settings_ex/users/RestrictedProfileSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/users/RestrictedProfileSettings$1;-><init>(Lcom/android/settings_ex/users/RestrictedProfileSettings;)V

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/Utils;->createRemoveConfirmationDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v7

    .line 139
    .local v7, "dlg":Landroid/app/Dialog;
    goto :goto_0

    .line 142
    .end local v7    # "dlg":Landroid/app/Dialog;
    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public onLabelChanged(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mUserNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    return-void
.end method

.method public onPhotoChanged(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "photo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mUserIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 87
    invoke-super {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->onResume()V

    .line 90
    iget-object v1, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mUser:Landroid/os/UserHandle;

    invoke-static {v1, v2}, Lcom/android/settings_ex/Utils;->getExistingUser(Landroid/os/UserManager;Landroid/os/UserHandle;)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 91
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/android/settings_ex/users/RestrictedProfileSettings;->finishFragment()V

    .line 98
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v1, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    const v2, 0x1020006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings_ex/users/RestrictedProfileSettings;->getCircularUserIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 82
    iget-object v0, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mEditUserInfoController:Lcom/android/settings_ex/users/EditUserInfoController;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/users/EditUserInfoController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 83
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mEditUserInfoController:Lcom/android/settings_ex/users/EditUserInfoController;

    invoke-virtual {v0}, Lcom/android/settings_ex/users/EditUserInfoController;->startingActivityForResult()V

    .line 103
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 104
    return-void
.end method
