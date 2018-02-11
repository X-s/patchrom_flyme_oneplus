.class public Lcom/android/settings_ex/notification/RedactionInterstitial$RedactionInterstitialFragment;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "RedactionInterstitial.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/RedactionInterstitial;
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
    .line 80
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private checkNotificationFeaturesAndSetDisabled(Lcom/android/settings_ex/RestrictedRadioButton;I)V
    .locals 3
    .param p1, "button"    # Lcom/android/settings_ex/RestrictedRadioButton;
    .param p2, "keyguardNotifications"    # I

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/RedactionInterstitial$RedactionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/notification/RedactionInterstitial$RedactionInterstitialFragment;->mUserId:I

    .line 136
    invoke-static {v1, p2, v2}, Lcom/android/settings_exlib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 138
    .local v0, "admin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    invoke-virtual {p1, v0}, Lcom/android/settings_ex/RestrictedRadioButton;->setDisabledByAdmin(Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 135
    return-void
.end method

.method private loadFromSettings()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 142
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/RedactionInterstitial$RedactionInterstitialFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 143
    const-string/jumbo v4, "lock_screen_show_notifications"

    iget v5, p0, Lcom/android/settings_ex/notification/RedactionInterstitial$RedactionInterstitialFragment;->mUserId:I

    .line 142
    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    .line 144
    .local v1, "enabled":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/RedactionInterstitial$RedactionInterstitialFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 145
    const-string/jumbo v4, "lock_screen_allow_private_notifications"

    iget v5, p0, Lcom/android/settings_ex/notification/RedactionInterstitial$RedactionInterstitialFragment;->mUserId:I

    const/4 v6, 0x1

    .line 144
    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x1

    .line 147
    .local v2, "show":Z
    :goto_1
    const v0, 0x7f110259

    .line 148
    .local v0, "checkedButtonId":I
    if-eqz v1, :cond_1

    .line 149
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/notification/RedactionInterstitial$RedactionInterstitialFragment;->mShowAllButton:Lcom/android/settings_ex/RestrictedRadioButton;

    invoke-virtual {v3}, Lcom/android/settings_ex/RestrictedRadioButton;->isDisabledByAdmin()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 151
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/notification/RedactionInterstitial$RedactionInterstitialFragment;->mRedactSensitiveButton:Lcom/android/settings_ex/RestrictedRadioButton;

    invoke-virtual {v3}, Lcom/android/settings_ex/RestrictedRadioButton;->isDisabledByAdmin()Z

    move-result v3

    if-nez v3, :cond_1

    .line 152
    const v0, 0x7f110257

    .line 156
    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/android/settings_ex/notification/RedactionInterstitial$RedactionInterstitialFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 141
    return-void

    .line 142
    .end local v0    # "checkedButtonId":I
    .end local v1    # "enabled":Z
    .end local v2    # "show":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "enabled":Z
    goto :goto_0

    .line 144
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "show":Z
    goto :goto_1

    .line 150
    .restart local v0    # "checkedButtonId":I
    :cond_4
    const v0, 0x7f110258

    .line 149
    goto :goto_2
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 90
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

    .line 161
    const v2, 0x7f110258

    if-ne p2, v2, :cond_0

    const/4 v1, 0x1

    .line 162
    .local v1, "show":Z
    :goto_0
    const v2, 0x7f110259

    if-eq p2, v2, :cond_1

    const/4 v0, 0x1

    .line 164
    .local v0, "enabled":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/RedactionInterstitial$RedactionInterstitialFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 165
    const-string/jumbo v6, "lock_screen_allow_private_notifications"

    if-eqz v1, :cond_2

    move v2, v3

    :goto_2
    iget v7, p0, Lcom/android/settings_ex/notification/RedactionInterstitial$RedactionInterstitialFragment;->mUserId:I

    .line 164
    invoke-static {v5, v6, v2, v7}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 166
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/RedactionInterstitial$RedactionInterstitialFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 167
    const-string/jumbo v5, "lock_screen_show_notifications"

    if-eqz v0, :cond_3

    :goto_3
    iget v4, p0, Lcom/android/settings_ex/notification/RedactionInterstitial$RedactionInterstitialFragment;->mUserId:I

    .line 166
    invoke-static {v2, v5, v3, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 160
    return-void

    .line 161
    .end local v0    # "enabled":Z
    .end local v1    # "show":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "show":Z
    goto :goto_0

    .line 162
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_1

    :cond_2
    move v2, v4

    .line 165
    goto :goto_2

    :cond_3
    move v3, v4

    .line 167
    goto :goto_3
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 96
    const v0, 0x7f04016c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 123
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 126
    iget-object v0, p0, Lcom/android/settings_ex/notification/RedactionInterstitial$RedactionInterstitialFragment;->mShowAllButton:Lcom/android/settings_ex/RestrictedRadioButton;

    .line 127
    const/16 v1, 0xc

    .line 126
    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/notification/RedactionInterstitial$RedactionInterstitialFragment;->checkNotificationFeaturesAndSetDisabled(Lcom/android/settings_ex/RestrictedRadioButton;I)V

    .line 129
    iget-object v0, p0, Lcom/android/settings_ex/notification/RedactionInterstitial$RedactionInterstitialFragment;->mRedactSensitiveButton:Lcom/android/settings_ex/RestrictedRadioButton;

    .line 130
    const/4 v1, 0x4

    .line 129
    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/notification/RedactionInterstitial$RedactionInterstitialFragment;->checkNotificationFeaturesAndSetDisabled(Lcom/android/settings_ex/RestrictedRadioButton;I)V

    .line 131
    invoke-direct {p0}, Lcom/android/settings_ex/notification/RedactionInterstitial$RedactionInterstitialFragment;->loadFromSettings()V

    .line 122
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 102
    const v0, 0x7f110256

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/android/settings_ex/notification/RedactionInterstitial$RedactionInterstitialFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 103
    const v0, 0x7f110258

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/RestrictedRadioButton;

    iput-object v0, p0, Lcom/android/settings_ex/notification/RedactionInterstitial$RedactionInterstitialFragment;->mShowAllButton:Lcom/android/settings_ex/RestrictedRadioButton;

    .line 105
    const v0, 0x7f110257

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/RestrictedRadioButton;

    .line 104
    iput-object v0, p0, Lcom/android/settings_ex/notification/RedactionInterstitial$RedactionInterstitialFragment;->mRedactSensitiveButton:Lcom/android/settings_ex/RestrictedRadioButton;

    .line 107
    iget-object v0, p0, Lcom/android/settings_ex/notification/RedactionInterstitial$RedactionInterstitialFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 109
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/RedactionInterstitial$RedactionInterstitialFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/RedactionInterstitial$RedactionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 108
    invoke-static {v0, v1}, Lcom/android/settings_ex/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/notification/RedactionInterstitial$RedactionInterstitialFragment;->mUserId:I

    .line 110
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/RedactionInterstitial$RedactionInterstitialFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/notification/RedactionInterstitial$RedactionInterstitialFragment;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/settings_ex/Utils;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const v0, 0x7f1100c0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 112
    const v1, 0x7f0e0e73

    .line 111
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 113
    iget-object v0, p0, Lcom/android/settings_ex/notification/RedactionInterstitial$RedactionInterstitialFragment;->mShowAllButton:Lcom/android/settings_ex/RestrictedRadioButton;

    const v1, 0x7f0e0e70

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/RestrictedRadioButton;->setText(I)V

    .line 114
    iget-object v0, p0, Lcom/android/settings_ex/notification/RedactionInterstitial$RedactionInterstitialFragment;->mRedactSensitiveButton:Lcom/android/settings_ex/RestrictedRadioButton;

    .line 115
    const v1, 0x7f0e0e71

    .line 114
    invoke-virtual {v0, v1}, Lcom/android/settings_ex/RestrictedRadioButton;->setText(I)V

    .line 116
    const v0, 0x7f110259

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 117
    const v1, 0x7f0e0e72

    .line 116
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(I)V

    .line 100
    :cond_0
    return-void
.end method
