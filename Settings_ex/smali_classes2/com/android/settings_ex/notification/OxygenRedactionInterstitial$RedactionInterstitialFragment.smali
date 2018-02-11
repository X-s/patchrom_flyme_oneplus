.class public Lcom/android/settings_ex/notification/OxygenRedactionInterstitial$RedactionInterstitialFragment;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OxygenRedactionInterstitial.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/OxygenRedactionInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RedactionInterstitialFragment"
.end annotation


# instance fields
.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private mRedactSensitiveButton:Lcom/android/settings_ex/RestrictedRadioButton;

.field private mShowAllButton:Lcom/android/settings_ex/RestrictedRadioButton;

.field private mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private checkNotificationFeaturesAndSetDisabled(Lcom/android/settings_ex/RestrictedRadioButton;I)V
    .locals 3
    .param p1, "button"    # Lcom/android/settings_ex/RestrictedRadioButton;
    .param p2, "keyguardNotifications"    # I

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/OxygenRedactionInterstitial$RedactionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/notification/OxygenRedactionInterstitial$RedactionInterstitialFragment;->mUserId:I

    .line 154
    invoke-static {v1, p2, v2}, Lcom/android/settings_exlib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 156
    .local v0, "admin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    invoke-virtual {p1, v0}, Lcom/android/settings_ex/RestrictedRadioButton;->setDisabledByAdmin(Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 153
    return-void
.end method

.method private loadFromSettings()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 160
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/OxygenRedactionInterstitial$RedactionInterstitialFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 161
    const-string/jumbo v4, "lock_screen_show_notifications"

    iget v5, p0, Lcom/android/settings_ex/notification/OxygenRedactionInterstitial$RedactionInterstitialFragment;->mUserId:I

    .line 160
    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    .line 162
    .local v1, "enabled":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/OxygenRedactionInterstitial$RedactionInterstitialFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 163
    const-string/jumbo v4, "lock_screen_allow_private_notifications"

    iget v5, p0, Lcom/android/settings_ex/notification/OxygenRedactionInterstitial$RedactionInterstitialFragment;->mUserId:I

    const/4 v6, 0x1

    .line 162
    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x1

    .line 165
    .local v2, "show":Z
    :goto_1
    const v0, 0x7f110259

    .line 166
    .local v0, "checkedButtonId":I
    if-eqz v1, :cond_1

    .line 167
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/notification/OxygenRedactionInterstitial$RedactionInterstitialFragment;->mShowAllButton:Lcom/android/settings_ex/RestrictedRadioButton;

    invoke-virtual {v3}, Lcom/android/settings_ex/RestrictedRadioButton;->isDisabledByAdmin()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 169
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/notification/OxygenRedactionInterstitial$RedactionInterstitialFragment;->mRedactSensitiveButton:Lcom/android/settings_ex/RestrictedRadioButton;

    invoke-virtual {v3}, Lcom/android/settings_ex/RestrictedRadioButton;->isDisabledByAdmin()Z

    move-result v3

    if-nez v3, :cond_1

    .line 170
    const v0, 0x7f110257

    .line 174
    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/android/settings_ex/notification/OxygenRedactionInterstitial$RedactionInterstitialFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 159
    return-void

    .line 160
    .end local v0    # "checkedButtonId":I
    .end local v1    # "enabled":Z
    .end local v2    # "show":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "enabled":Z
    goto :goto_0

    .line 162
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "show":Z
    goto :goto_1

    .line 168
    .restart local v0    # "checkedButtonId":I
    :cond_4
    const v0, 0x7f110258

    .line 167
    goto :goto_2
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 94
    const/16 v0, 0x4a

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 8
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 179
    const v2, 0x7f110258

    if-ne p2, v2, :cond_0

    const/4 v1, 0x1

    .line 180
    .local v1, "show":Z
    :goto_0
    const v2, 0x7f110259

    if-eq p2, v2, :cond_1

    const/4 v0, 0x1

    .line 182
    .local v0, "enabled":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/OxygenRedactionInterstitial$RedactionInterstitialFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 183
    const-string/jumbo v6, "lock_screen_allow_private_notifications"

    if-eqz v1, :cond_2

    move v2, v3

    :goto_2
    iget v7, p0, Lcom/android/settings_ex/notification/OxygenRedactionInterstitial$RedactionInterstitialFragment;->mUserId:I

    .line 182
    invoke-static {v5, v6, v2, v7}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 184
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/OxygenRedactionInterstitial$RedactionInterstitialFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 185
    const-string/jumbo v5, "lock_screen_show_notifications"

    if-eqz v0, :cond_3

    :goto_3
    iget v4, p0, Lcom/android/settings_ex/notification/OxygenRedactionInterstitial$RedactionInterstitialFragment;->mUserId:I

    .line 184
    invoke-static {v2, v5, v3, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 178
    return-void

    .line 179
    .end local v0    # "enabled":Z
    .end local v1    # "show":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "show":Z
    goto :goto_0

    .line 180
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_1

    :cond_2
    move v2, v4

    .line 183
    goto :goto_2

    :cond_3
    move v3, v4

    .line 185
    goto :goto_3
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f11025a

    if-ne v1, v2, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/OxygenRedactionInterstitial$RedactionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/notification/OxygenRedactionInterstitial;

    .line 132
    .local v0, "activity":Lcom/android/settings_ex/notification/OxygenRedactionInterstitial;
    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Lcom/android/settings_ex/notification/OxygenRedactionInterstitial;->getResultIntentData()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/settings_ex/notification/OxygenRedactionInterstitial;->setResult(ILandroid/content/Intent;)V

    .line 134
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/OxygenRedactionInterstitial$RedactionInterstitialFragment;->finish()V

    .line 129
    .end local v0    # "activity":Lcom/android/settings_ex/notification/OxygenRedactionInterstitial;
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    const v0, 0x7f04012b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 141
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 144
    iget-object v0, p0, Lcom/android/settings_ex/notification/OxygenRedactionInterstitial$RedactionInterstitialFragment;->mShowAllButton:Lcom/android/settings_ex/RestrictedRadioButton;

    .line 145
    const/16 v1, 0xc

    .line 144
    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/notification/OxygenRedactionInterstitial$RedactionInterstitialFragment;->checkNotificationFeaturesAndSetDisabled(Lcom/android/settings_ex/RestrictedRadioButton;I)V

    .line 147
    iget-object v0, p0, Lcom/android/settings_ex/notification/OxygenRedactionInterstitial$RedactionInterstitialFragment;->mRedactSensitiveButton:Lcom/android/settings_ex/RestrictedRadioButton;

    .line 148
    const/4 v1, 0x4

    .line 147
    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/notification/OxygenRedactionInterstitial$RedactionInterstitialFragment;->checkNotificationFeaturesAndSetDisabled(Lcom/android/settings_ex/RestrictedRadioButton;I)V

    .line 149
    invoke-direct {p0}, Lcom/android/settings_ex/notification/OxygenRedactionInterstitial$RedactionInterstitialFragment;->loadFromSettings()V

    .line 140
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 106
    const v1, 0x7f110256

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/android/settings_ex/notification/OxygenRedactionInterstitial$RedactionInterstitialFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 107
    const v1, 0x7f110258

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/RestrictedRadioButton;

    iput-object v1, p0, Lcom/android/settings_ex/notification/OxygenRedactionInterstitial$RedactionInterstitialFragment;->mShowAllButton:Lcom/android/settings_ex/RestrictedRadioButton;

    .line 109
    const v1, 0x7f110257

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/RestrictedRadioButton;

    .line 108
    iput-object v1, p0, Lcom/android/settings_ex/notification/OxygenRedactionInterstitial$RedactionInterstitialFragment;->mRedactSensitiveButton:Lcom/android/settings_ex/RestrictedRadioButton;

    .line 111
    iget-object v1, p0, Lcom/android/settings_ex/notification/OxygenRedactionInterstitial$RedactionInterstitialFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/OxygenRedactionInterstitial$RedactionInterstitialFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/OxygenRedactionInterstitial$RedactionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 112
    invoke-static {v1, v2}, Lcom/android/settings_ex/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/notification/OxygenRedactionInterstitial$RedactionInterstitialFragment;->mUserId:I

    .line 114
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/OxygenRedactionInterstitial$RedactionInterstitialFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/notification/OxygenRedactionInterstitial$RedactionInterstitialFragment;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/settings_ex/Utils;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    const v1, 0x7f1100c0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 116
    const v2, 0x7f0e0e73

    .line 115
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 117
    iget-object v1, p0, Lcom/android/settings_ex/notification/OxygenRedactionInterstitial$RedactionInterstitialFragment;->mShowAllButton:Lcom/android/settings_ex/RestrictedRadioButton;

    const v2, 0x7f0e0e70

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/RestrictedRadioButton;->setText(I)V

    .line 118
    iget-object v1, p0, Lcom/android/settings_ex/notification/OxygenRedactionInterstitial$RedactionInterstitialFragment;->mRedactSensitiveButton:Lcom/android/settings_ex/RestrictedRadioButton;

    .line 119
    const v2, 0x7f0e0e71

    .line 118
    invoke-virtual {v1, v2}, Lcom/android/settings_ex/RestrictedRadioButton;->setText(I)V

    .line 120
    const v1, 0x7f110259

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 121
    const v2, 0x7f0e0e72

    .line 120
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setText(I)V

    .line 124
    :cond_0
    const v1, 0x7f11025a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 125
    .local v0, "button":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    return-void
.end method
