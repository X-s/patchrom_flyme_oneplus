.class public abstract Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;
.super Lcom/android/settings_ex/notification/ZenModeSettingsBase;
.source "ZenModeRuleSettingsBase.java"

# interfaces
.implements Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;


# static fields
.field protected static final DEBUG:Z

.field private static final KEY_RULE_NAME:Ljava/lang/String; = "rule_name"

.field private static final KEY_ZEN_MODE:Ljava/lang/String; = "zen_mode"

.field protected static final TAG:Ljava/lang/String; = "ZenModeSettings"


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mDeleting:Z

.field protected mDisableListeners:Z

.field private mEnabledToast:Landroid/widget/Toast;

.field protected mId:Ljava/lang/String;

.field protected mRule:Landroid/app/AutomaticZenRule;

.field private mRuleName:Landroid/support/v7/preference/Preference;

.field private mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

.field private mZenMode:Landroid/support/v7/preference/DropDownPreference;


# direct methods
.method static synthetic -set0(Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mDeleting:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->showRuleNameDialog()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->DEBUG:Z

    sput-boolean v0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->DEBUG:Z

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeSettingsBase;-><init>()V

    return-void
.end method

.method private getZenRule()Landroid/app/AutomaticZenRule;
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;

    move-result-object v0

    return-object v0
.end method

.method private refreshRuleOrFinish()Z
    .locals 3

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->getZenRule()Landroid/app/AutomaticZenRule;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    .line 229
    sget-boolean v0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ZenModeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mRule="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->setRule(Landroid/app/AutomaticZenRule;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 231
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->toastAndFinish()V

    .line 232
    const/4 v0, 0x1

    return v0

    .line 234
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private showDeleteRuleDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 238
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 239
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v4}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f0e0ea4

    invoke-virtual {p0, v4, v3}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 238
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 240
    const v3, 0x7f0e05c0

    .line 238
    invoke-virtual {v2, v3, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 241
    new-instance v3, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase$4;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase$4;-><init>(Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;)V

    const v4, 0x7f0e0ea5

    .line 238
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 250
    .local v0, "dialog":Landroid/app/AlertDialog;
    const v2, 0x102000b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 251
    .local v1, "messageView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 252
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/View;->setTextDirection(I)V

    .line 237
    :cond_0
    return-void
.end method

.method private showRuleNameDialog()V
    .locals 3

    .prologue
    .line 218
    new-instance v0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase$3;

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v2}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase$3;-><init>(Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase$3;->show()V

    .line 217
    return-void
.end method

.method private toastAndFinish()V
    .locals 3

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mDeleting:Z

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0eb6

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 256
    return-void
.end method

.method private updateControls()V
    .locals 2

    .prologue
    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mDisableListeners:Z

    .line 275
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->updateRuleName()V

    .line 276
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->updateControlsInternal()V

    .line 277
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mZenMode:Landroid/support/v7/preference/DropDownPreference;

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->getInterruptionFilter()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 281
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mDisableListeners:Z

    .line 273
    return-void
.end method

.method private updateRuleName()V
    .locals 2

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mRuleName:Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 264
    return-void
.end method


# virtual methods
.method protected abstract getEnabledToastText()I
.end method

.method protected abstract getZenModeDependency()Ljava/lang/String;
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 147
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 148
    .local v0, "activity":Lcom/android/settings_ex/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsActivity;->getSwitchBar()Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    .line 149
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 150
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/SwitchBar;->show()V

    .line 144
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 75
    invoke-super {p0, p1}, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    .line 79
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 80
    .local v0, "intent":Landroid/content/Intent;
    sget-boolean v2, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "ZenModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreate getIntent()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    if-nez v0, :cond_1

    .line 82
    const-string/jumbo v2, "ZenModeSettings"

    const-string/jumbo v3, "No intent"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->toastAndFinish()V

    .line 84
    return-void

    .line 87
    :cond_1
    const-string/jumbo v2, "android.service.notification.extra.RULE_ID"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    .line 88
    sget-boolean v2, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "ZenModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->refreshRuleOrFinish()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 90
    return-void

    .line 93
    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->setHasOptionsMenu(Z)V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->onCreateInternal()V

    .line 97
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    .line 98
    .local v1, "root":Landroid/support/v7/preference/PreferenceScreen;
    const-string/jumbo v2, "rule_name"

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mRuleName:Landroid/support/v7/preference/Preference;

    .line 99
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mRuleName:Landroid/support/v7/preference/Preference;

    new-instance v3, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase$1;-><init>(Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 107
    const-string/jumbo v2, "zen_mode"

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/DropDownPreference;

    iput-object v2, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mZenMode:Landroid/support/v7/preference/DropDownPreference;

    .line 108
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mZenMode:Landroid/support/v7/preference/DropDownPreference;

    new-array v3, v7, [Ljava/lang/CharSequence;

    .line 109
    const v4, 0x7f0e0e61

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 110
    const v4, 0x7f0e0e62

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 111
    const v4, 0x7f0e0e63

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 108
    invoke-virtual {v2, v3}, Landroid/support/v7/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 113
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mZenMode:Landroid/support/v7/preference/DropDownPreference;

    new-array v3, v7, [Ljava/lang/CharSequence;

    .line 114
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 115
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 116
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 113
    invoke-virtual {v2, v3}, Landroid/support/v7/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 118
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mZenMode:Landroid/support/v7/preference/DropDownPreference;

    new-instance v3, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase$2;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase$2;-><init>(Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/DropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 130
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mZenMode:Landroid/support/v7/preference/DropDownPreference;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/DropDownPreference;->setOrder(I)V

    .line 131
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mZenMode:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->getZenModeDependency()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/DropDownPreference;->setDependency(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method protected abstract onCreateInternal()V
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 202
    sget-boolean v0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ZenModeSettings"

    const-string/jumbo v1, "onCreateOptionsMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    const v0, 0x7f140009

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 201
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0}, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->onDestroyView()V

    .line 156
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 157
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->hide()V

    .line 154
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 208
    sget-boolean v0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ZenModeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onOptionsItemSelected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f11036a

    if-ne v0, v1, :cond_1

    .line 210
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    const/16 v1, 0xae

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 211
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->showDeleteRuleDialog()V

    .line 212
    const/4 v0, 0x1

    return v0

    .line 214
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->onResume()V

    .line 137
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    return-void

    .line 140
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->updateControls()V

    .line 135
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 6
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v5, 0x0

    .line 162
    sget-boolean v2, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "ZenModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSwitchChanged "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    iget-boolean v2, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mDisableListeners:Z

    if-eqz v2, :cond_1

    return-void

    .line 164
    :cond_1
    move v0, p2

    .line 165
    .local v0, "enabled":Z
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v2}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v2

    if-ne p2, v2, :cond_2

    return-void

    .line 166
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    const/16 v3, 0xb0

    invoke-static {v2, v3, p2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 167
    sget-boolean v2, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "ZenModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSwitchChanged enabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v2, p2}, Landroid/app/AutomaticZenRule;->setEnabled(Z)V

    .line 169
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->setZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    .line 170
    if-eqz p2, :cond_5

    .line 171
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->getEnabledToastText()I

    move-result v1

    .line 172
    .local v1, "toastText":I
    if-eqz v1, :cond_4

    .line 173
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mEnabledToast:Landroid/widget/Toast;

    .line 174
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mEnabledToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 161
    .end local v1    # "toastText":I
    :cond_4
    :goto_0
    return-void

    .line 177
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mEnabledToast:Landroid/widget/Toast;

    if-eqz v2, :cond_4

    .line 178
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mEnabledToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    goto :goto_0
.end method

.method protected onZenModeChanged()V
    .locals 0

    .prologue
    .line 189
    return-void
.end method

.method protected onZenModeConfigChanged()V
    .locals 1

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->refreshRuleOrFinish()Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->updateControls()V

    .line 194
    :cond_0
    return-void
.end method

.method protected abstract setRule(Landroid/app/AutomaticZenRule;)Z
.end method

.method protected abstract updateControlsInternal()V
.end method

.method protected updateRule(Landroid/net/Uri;)V
    .locals 2
    .param p1, "newConditionId"    # Landroid/net/Uri;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0, p1}, Landroid/app/AutomaticZenRule;->setConditionId(Landroid/net/Uri;)V

    .line 185
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->setZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    .line 183
    return-void
.end method
