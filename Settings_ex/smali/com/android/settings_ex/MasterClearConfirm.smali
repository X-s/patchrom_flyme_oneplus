.class public Lcom/android/settings_ex/MasterClearConfirm;
.super Lcom/android/settings_ex/OptionsMenuFragment;
.source "MasterClearConfirm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/MasterClearConfirm$1;
    }
.end annotation


# instance fields
.field private mContentView:Landroid/view/View;

.field private mEraseSdCard:Z

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mPowerOnPsw:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings_ex/MasterClearConfirm;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/MasterClearConfirm;->doMasterClear()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/settings_ex/OptionsMenuFragment;-><init>()V

    .line 68
    new-instance v0, Lcom/android/settings_ex/MasterClearConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/MasterClearConfirm$1;-><init>(Lcom/android/settings_ex/MasterClearConfirm;)V

    iput-object v0, p0, Lcom/android/settings_ex/MasterClearConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 56
    return-void
.end method

.method private doMasterClear()V
    .locals 6

    .prologue
    .line 141
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settings_ex/MasterClearConfirm;->mEraseSdCard:Z

    if-eqz v1, :cond_2

    .line 154
    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->isSurportNoNeedPowerOnPassword(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 156
    const-string/jumbo v2, "MasterClearConfirm"

    const-string/jumbo v3, "--wipe_data"

    iget-object v4, p0, Lcom/android/settings_ex/MasterClearConfirm;->mPowerOnPsw:Ljava/lang/String;

    const/4 v5, 0x0

    .line 155
    invoke-static {v1, v5, v2, v3, v4}, Lcom/oneplus/settings/OPRebootWipeUserdata;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClearConfirm;->checkIfNeedPasswordToPowerOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 160
    const-string/jumbo v2, "MasterClearConfirm"

    const-string/jumbo v3, "--wipe_data"

    iget-object v4, p0, Lcom/android/settings_ex/MasterClearConfirm;->mPowerOnPsw:Ljava/lang/String;

    const/4 v5, 0x0

    .line 159
    invoke-static {v1, v5, v2, v3, v4}, Lcom/oneplus/settings/OPRebootWipeUserdata;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 188
    const-string/jumbo v1, "MasterClearConfim"

    const-string/jumbo v2, "bootCommand Reboot failed (no permissions?)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 162
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 163
    const-string/jumbo v2, "MasterClearConfirm"

    const-string/jumbo v3, "--wipe_data"

    const-string/jumbo v4, ""

    const/4 v5, 0x0

    .line 162
    invoke-static {v1, v5, v2, v3, v4}, Lcom/oneplus/settings/OPRebootWipeUserdata;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 167
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->isSurportNoNeedPowerOnPassword(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 168
    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 169
    const-string/jumbo v2, "OPMasterClearConfirm"

    const-string/jumbo v3, "--delete_data"

    iget-object v4, p0, Lcom/android/settings_ex/MasterClearConfirm;->mPowerOnPsw:Ljava/lang/String;

    .line 168
    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v3, v4}, Lcom/oneplus/settings/OPRebootWipeUserdata;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClearConfirm;->checkIfNeedPasswordToPowerOn()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 172
    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 173
    const-string/jumbo v2, "OPMasterClearConfirm"

    const-string/jumbo v3, "--delete_data"

    iget-object v4, p0, Lcom/android/settings_ex/MasterClearConfirm;->mPowerOnPsw:Ljava/lang/String;

    .line 172
    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v3, v4}, Lcom/oneplus/settings/OPRebootWipeUserdata;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 176
    const-string/jumbo v2, "OPMasterClearConfirm"

    const-string/jumbo v3, "--delete_data"

    const-string/jumbo v4, ""

    .line 175
    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v3, v4}, Lcom/oneplus/settings/OPRebootWipeUserdata;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private establishFinalConfirmationState()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/settings_ex/MasterClearConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f11019e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lcom/android/settings_ex/MasterClearConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 204
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    return-void
.end method

.method private setAccessibilityTitle()V
    .locals 5

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 231
    .local v2, "currentTitle":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/settings_ex/MasterClearConfirm;->mContentView:Landroid/view/View;

    const v4, 0x7f11019d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 232
    .local v1, "confirmationMessage":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 233
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 234
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 233
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "accessibileText":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v0}, Lcom/android/settings_ex/Utils;->createAccessibleSequence(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 228
    .end local v0    # "accessibileText":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public checkIfNeedPasswordToPowerOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 195
    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 196
    const-string/jumbo v3, "require_password_to_decrypt"

    .line 195
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 197
    goto :goto_0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 253
    const/16 v0, 0x43

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 241
    invoke-super {p0, p1}, Lcom/android/settings_ex/OptionsMenuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 243
    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClearConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 244
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 245
    if-eqz v0, :cond_1

    .line 246
    const-string/jumbo v1, "erase_sd"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 245
    :goto_0
    iput-boolean v1, p0, Lcom/android/settings_ex/MasterClearConfirm;->mEraseSdCard:Z

    .line 247
    const-string/jumbo v1, "power_on_psw"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/MasterClearConfirm;->mPowerOnPsw:Ljava/lang/String;

    .line 240
    :cond_0
    return-void

    .line 245
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 212
    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "no_factory_reset"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 211
    invoke-static {v2, v3, v4}, Lcom/android/settings_exlib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 213
    .local v0, "admin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 214
    const-string/jumbo v3, "no_factory_reset"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 213
    invoke-static {v2, v3, v4}, Lcom/android/settings_exlib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 215
    const v2, 0x7f0400af

    invoke-virtual {p1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    return-object v2

    .line 216
    :cond_0
    if-eqz v0, :cond_1

    .line 217
    const v2, 0x7f040020

    invoke-virtual {p1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 218
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1, v0, v6}, Lcom/android/settings_ex/ShowAdminSupportDetailsDialog;->setAdminSupportDetails(Landroid/app/Activity;Landroid/view/View;Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;Z)V

    .line 219
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 220
    return-object v1

    .line 222
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    const v2, 0x7f0400ae

    invoke-virtual {p1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/MasterClearConfirm;->mContentView:Landroid/view/View;

    .line 223
    invoke-direct {p0}, Lcom/android/settings_ex/MasterClearConfirm;->establishFinalConfirmationState()V

    .line 224
    invoke-direct {p0}, Lcom/android/settings_ex/MasterClearConfirm;->setAccessibilityTitle()V

    .line 225
    iget-object v2, p0, Lcom/android/settings_ex/MasterClearConfirm;->mContentView:Landroid/view/View;

    return-object v2
.end method
