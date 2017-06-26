.class public Lcom/android/settings_ex/MasterClearConfirm;
.super Lcom/android/settings_ex/InstrumentedFragment;
.source "MasterClearConfirm.java"


# instance fields
.field private mContentView:Landroid/view/View;

.field private mEraseSdCard:Z

.field private mFinalClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings_ex/InstrumentedFragment;-><init>()V

    .line 58
    new-instance v0, Lcom/android/settings_ex/MasterClearConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/MasterClearConfirm$1;-><init>(Lcom/android/settings_ex/MasterClearConfirm;)V

    iput-object v0, p0, Lcom/android/settings_ex/MasterClearConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/MasterClearConfirm;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/MasterClearConfirm;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings_ex/MasterClearConfirm;->doMasterClear()V

    return-void
.end method

.method private doMasterClear()V
    .locals 6

    .prologue
    .line 128
    :try_start_0
    iget-boolean v2, p0, Lcom/android/settings_ex/MasterClearConfirm;->mEraseSdCard:Z

    if-eqz v2, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClearConfirm;->checkIfNeedPasswordToPowerOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 132
    const-string v2, "android.intent.extra.REASON"

    const-string v3, "OPMasterClearConfirm"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string v2, "android.intent.extra.WIPE_EXTERNAL_STORAGE"

    iget-boolean v3, p0, Lcom/android/settings_ex/MasterClearConfirm;->mEraseSdCard:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 135
    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 161
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "MasterClearConfirm"

    const-string v5, "--wipe_media"

    invoke-static {v2, v3, v4, v5}, Lcom/oneplus/settings/OPRebootWipeUserdata;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 147
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "OPMasterClearConfirm"

    const-string v5, "--delete_data"

    invoke-static {v2, v3, v4, v5}, Lcom/oneplus/settings/OPRebootWipeUserdata;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private establishFinalConfirmationState()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/settings_ex/MasterClearConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f1200da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/MasterClearConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    return-void
.end method

.method private setAccessibilityTitle()V
    .locals 5

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 192
    .local v2, "currentTitle":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/settings_ex/MasterClearConfirm;->mContentView:Landroid/view/View;

    const v4, 0x7f1200d9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 194
    .local v1, "confirmationMessage":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "accessibileText":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v0}, Lcom/android/settings_ex/Utils;->createAccessibleSequence(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 199
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

    .line 164
    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "require_password_to_decrypt"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 212
    const/16 v0, 0x43

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 203
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 205
    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClearConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 206
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "erase_sd"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings_ex/MasterClearConfirm;->mEraseSdCard:Z

    .line 208
    return-void

    .line 206
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 180
    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    const-string v1, "no_factory_reset"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    const v0, 0x7f04007c

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 187
    :goto_0
    return-object v0

    .line 184
    :cond_0
    const v0, 0x7f04007b

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/MasterClearConfirm;->mContentView:Landroid/view/View;

    .line 185
    invoke-direct {p0}, Lcom/android/settings_ex/MasterClearConfirm;->establishFinalConfirmationState()V

    .line 186
    invoke-direct {p0}, Lcom/android/settings_ex/MasterClearConfirm;->setAccessibilityTitle()V

    .line 187
    iget-object v0, p0, Lcom/android/settings_ex/MasterClearConfirm;->mContentView:Landroid/view/View;

    goto :goto_0
.end method
