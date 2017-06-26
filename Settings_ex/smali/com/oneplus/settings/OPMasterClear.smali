.class public Lcom/oneplus/settings/OPMasterClear;
.super Lcom/android/settings_ex/InstrumentedFragment;
.source "OPMasterClear.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final ENV_SECONDARY_STORAGE:Ljava/lang/String; = "SECONDARY_STORAGE"

.field private static final ERASE_EXTERNAL_EXTRA:Ljava/lang/String; = "erase_sd"

.field private static final KEYGUARD_REQUEST:I = 0x37


# instance fields
.field private mContentView:Landroid/view/View;

.field private mInitiateButton:Lcom/oneplus/widget/button/OPButton;

.field private final mInitiateListener:Landroid/view/View$OnClickListener;

.field private mOptionalSwitchPreference:Lcom/oneplus/widget/preference/OPSwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings_ex/InstrumentedFragment;-><init>()V

    .line 112
    new-instance v0, Lcom/oneplus/settings/OPMasterClear$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/OPMasterClear$1;-><init>(Lcom/oneplus/settings/OPMasterClear;)V

    iput-object v0, p0, Lcom/oneplus/settings/OPMasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/OPMasterClear;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/OPMasterClear;
    .param p1, "x1"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPMasterClear;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/OPMasterClear;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/OPMasterClear;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/oneplus/settings/OPMasterClear;->showFinalConfirmation()V

    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 140
    const-string v1, "op_optional_reset"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/OPMasterClear;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/oneplus/widget/preference/OPSwitchPreference;

    iput-object v1, p0, Lcom/oneplus/settings/OPMasterClear;->mOptionalSwitchPreference:Lcom/oneplus/widget/preference/OPSwitchPreference;

    .line 141
    iget-object v1, p0, Lcom/oneplus/settings/OPMasterClear;->mOptionalSwitchPreference:Lcom/oneplus/widget/preference/OPSwitchPreference;

    invoke-virtual {v1, v3}, Lcom/oneplus/widget/preference/OPSwitchPreference;->setChecked(Z)V

    .line 142
    iget-object v1, p0, Lcom/oneplus/settings/OPMasterClear;->mOptionalSwitchPreference:Lcom/oneplus/widget/preference/OPSwitchPreference;

    invoke-virtual {v1, p0}, Lcom/oneplus/widget/preference/OPSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 143
    const-string v1, "SECONDARY_STORAGE"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "dev":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/OPMasterClear;->checkIfNeedPasswordToPowerOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    iget-object v1, p0, Lcom/oneplus/settings/OPMasterClear;->mOptionalSwitchPreference:Lcom/oneplus/widget/preference/OPSwitchPreference;

    const v2, 0x7f0c0291

    invoke-virtual {v1, v2}, Lcom/oneplus/widget/preference/OPSwitchPreference;->setSummary(I)V

    .line 149
    iget-object v1, p0, Lcom/oneplus/settings/OPMasterClear;->mOptionalSwitchPreference:Lcom/oneplus/widget/preference/OPSwitchPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oneplus/widget/preference/OPSwitchPreference;->setChecked(Z)V

    .line 150
    iget-object v1, p0, Lcom/oneplus/settings/OPMasterClear;->mOptionalSwitchPreference:Lcom/oneplus/widget/preference/OPSwitchPreference;

    invoke-virtual {v1, v3}, Lcom/oneplus/widget/preference/OPSwitchPreference;->setEnabled(Z)V

    .line 152
    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/OPMasterClear;->mContentView:Landroid/view/View;

    const v2, 0x7f1200da

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/widget/button/OPButton;

    iput-object v1, p0, Lcom/oneplus/settings/OPMasterClear;->mInitiateButton:Lcom/oneplus/widget/button/OPButton;

    .line 154
    iget-object v1, p0, Lcom/oneplus/settings/OPMasterClear;->mInitiateButton:Lcom/oneplus/widget/button/OPButton;

    iget-object v2, p0, Lcom/oneplus/settings/OPMasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/oneplus/widget/button/OPButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3
    .param p1, "request"    # I

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/oneplus/settings/OPMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 131
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/oneplus/settings/OPMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const v2, 0x7f0c06e9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private setAccessibilityTitle()V
    .locals 5

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/oneplus/settings/OPMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 159
    .local v2, "currentTitle":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/oneplus/settings/OPMasterClear;->mContentView:Landroid/view/View;

    const v4, 0x7f1200d9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 161
    .local v1, "confirmationMessage":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 162
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

    .line 165
    .local v0, "accessibileText":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/oneplus/settings/OPMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v0}, Lcom/android/settings_ex/Utils;->createAccessibleSequence(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 169
    .end local v0    # "accessibileText":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private showFinalConfirmation()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 100
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 101
    .local v2, "args":Landroid/os/Bundle;
    const-string v0, "erase_sd"

    iget-object v1, p0, Lcom/oneplus/settings/OPMasterClear;->mOptionalSwitchPreference:Lcom/oneplus/widget/preference/OPSwitchPreference;

    invoke-virtual {v1}, Lcom/oneplus/widget/preference/OPSwitchPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 102
    invoke-virtual {p0}, Lcom/oneplus/settings/OPMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    const-class v1, Lcom/android/settings_ex/MasterClearConfirm;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0250

    const/4 v6, 0x0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 105
    return-void
.end method


# virtual methods
.method public checkIfNeedPasswordToPowerOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 172
    invoke-virtual {p0}, Lcom/oneplus/settings/OPMasterClear;->getActivity()Landroid/app/Activity;

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
    .line 201
    const/16 v0, 0x43

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 179
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/InstrumentedFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 181
    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 186
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 187
    invoke-direct {p0}, Lcom/oneplus/settings/OPMasterClear;->showFinalConfirmation()V

    goto :goto_0

    .line 189
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/settings/OPMasterClear;->establishFinalConfirmationState()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const v0, 0x7f08004a

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPMasterClear;->addPreferencesFromResource(I)V

    .line 81
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-virtual {p0}, Lcom/oneplus/settings/OPMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    const-string v1, "no_factory_reset"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const v0, 0x7f04007c

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    .line 92
    :cond_0
    const v0, 0x7f0400a2

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPMasterClear;->mContentView:Landroid/view/View;

    .line 94
    invoke-direct {p0}, Lcom/oneplus/settings/OPMasterClear;->establishFinalConfirmationState()V

    .line 95
    invoke-direct {p0}, Lcom/oneplus/settings/OPMasterClear;->setAccessibilityTitle()V

    .line 96
    iget-object v0, p0, Lcom/oneplus/settings/OPMasterClear;->mContentView:Landroid/view/View;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 196
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onDestroy()V

    .line 197
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 207
    iget-object v0, p0, Lcom/oneplus/settings/OPMasterClear;->mOptionalSwitchPreference:Lcom/oneplus/widget/preference/OPSwitchPreference;

    if-ne p1, v0, :cond_0

    .line 210
    :cond_0
    return v1
.end method
