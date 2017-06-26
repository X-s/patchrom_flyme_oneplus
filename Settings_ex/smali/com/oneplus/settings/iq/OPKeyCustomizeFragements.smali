.class public Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OPKeyCustomizeFragements.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final CUSTOMIZE_KEY:Ljava/lang/String; = "key_customize"

.field private static final KEYCUSTOMIZE_KEY:Ljava/lang/String; = "key_view_guild"

.field private static final LEFT_HAND_PHONE_KEY:Ljava/lang/String; = "left_hand_phone"

.field private static final LEFT_HAND_PHONE_RADIO_KEY:Ljava/lang/String; = "left_hand_phone_radio"

.field private static final RADIO_CATEGORY_KEY:Ljava/lang/String; = "key_radio_category"

.field private static final RIGHT_HAND_PHONE_KEY:Ljava/lang/String; = "right_hand_phone"

.field private static final RIGHT_HAND_PHONE_RADIO_KEY:Ljava/lang/String; = "right_hand_phone_radio"


# instance fields
.field private isKeyMark:Z

.field private isRightHandEnable:Z

.field private mKeyCheckboxCategory:Landroid/preference/PreferenceCategory;

.field private mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

.field private mLeftHandPhonePreference:Landroid/preference/CheckBoxPreference;

.field private mLeftHandPhoneRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

.field private mLeftRadioButton:Landroid/widget/RadioButton;

.field private mRadioButtonPreference:Lcom/android/settings_ex/ui/OPRadioButtonPreference;

.field private mRightHandPhonePreference:Landroid/preference/CheckBoxPreference;

.field private mRightHandPhoneRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 28
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 58
    iput-boolean v0, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->isRightHandEnable:Z

    .line 60
    iput-boolean v0, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->isKeyMark:Z

    return-void
.end method

.method private initViews()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 118
    invoke-virtual {p0}, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "oem_acc_key_define"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->isRightHandEnable:Z

    .line 122
    iget-boolean v0, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->isRightHandEnable:Z

    iput-boolean v0, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->isKeyMark:Z

    .line 124
    iget-boolean v0, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->isRightHandEnable:Z

    if-eqz v0, :cond_3

    .line 126
    iget-object v0, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mRightHandPhonePreference:Landroid/preference/CheckBoxPreference;

    iget-boolean v3, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->isRightHandEnable:Z

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 127
    iget-object v3, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mLeftHandPhonePreference:Landroid/preference/CheckBoxPreference;

    iget-boolean v0, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->isRightHandEnable:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 129
    iget-object v0, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mRightHandPhoneRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    iget-boolean v3, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->isRightHandEnable:Z

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 130
    iget-object v0, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mLeftHandPhoneRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    iget-boolean v3, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->isRightHandEnable:Z

    if-nez v3, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v0, v2}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 132
    iget-object v0, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    const v2, 0x7f020134

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setKeyImageRes(I)V

    .line 133
    iget-object v0, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setEnjouRight(Z)V

    .line 148
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 118
    goto :goto_0

    :cond_2
    move v0, v2

    .line 127
    goto :goto_1

    .line 137
    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mRightHandPhonePreference:Landroid/preference/CheckBoxPreference;

    iget-boolean v3, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->isRightHandEnable:Z

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 138
    iget-object v3, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mLeftHandPhonePreference:Landroid/preference/CheckBoxPreference;

    iget-boolean v0, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->isRightHandEnable:Z

    if-nez v0, :cond_4

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 140
    iget-object v0, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mRightHandPhoneRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    iget-boolean v3, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->isRightHandEnable:Z

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 141
    iget-object v0, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mLeftHandPhoneRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    iget-boolean v3, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->isRightHandEnable:Z

    if-nez v3, :cond_5

    :goto_4
    invoke-virtual {v0, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 143
    iget-object v0, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    const v1, 0x7f020133

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setKeyImageRes(I)V

    .line 144
    iget-object v0, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setEnjouRight(Z)V

    goto :goto_2

    :cond_4
    move v0, v2

    .line 138
    goto :goto_3

    :cond_5
    move v1, v2

    .line 141
    goto :goto_4
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 173
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    .line 175
    return-void
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 333
    const/16 v0, 0xf5

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v0, 0x7f080030

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->addPreferencesFromResource(I)V

    .line 69
    const-string v0, "key_view_guild"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    iput-object v0, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    .line 71
    const-string v0, "left_hand_phone"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mLeftHandPhonePreference:Landroid/preference/CheckBoxPreference;

    .line 73
    iget-object v0, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mLeftHandPhonePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 75
    const-string v0, "right_hand_phone"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mRightHandPhonePreference:Landroid/preference/CheckBoxPreference;

    .line 77
    iget-object v0, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mRightHandPhonePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 79
    const-string v0, "left_hand_phone_radio"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/location/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mLeftHandPhoneRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    .line 81
    iget-object v0, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mLeftHandPhoneRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/location/RadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 83
    const-string v0, "right_hand_phone_radio"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/location/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mRightHandPhoneRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    .line 85
    iget-object v0, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mRightHandPhoneRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/location/RadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 87
    const-string v0, "key_radio_category"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mRadioButtonPreference:Lcom/android/settings_ex/ui/OPRadioButtonPreference;

    .line 106
    const-string v0, "key_customize"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mKeyCheckboxCategory:Landroid/preference/PreferenceCategory;

    .line 109
    invoke-virtual {p0}, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mRadioButtonPreference:Lcom/android/settings_ex/ui/OPRadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 111
    iget-object v0, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mKeyCheckboxCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mLeftHandPhonePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 112
    iget-object v0, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mKeyCheckboxCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mRightHandPhonePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 114
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 154
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const v6, 0x7f020134

    const v5, 0x7f020133

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 181
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isKeyMark : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->isKeyMark:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " preference : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "left_hand_phone"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 186
    iget-boolean v2, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->isKeyMark:Z

    if-ne v2, v1, :cond_2

    .line 188
    iget-object v2, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mLeftHandPhonePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    iget-object v2, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mRightHandPhonePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 191
    iget-object v2, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    invoke-virtual {v2, v5}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setKeyImageRes(I)V

    .line 192
    iget-object v2, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    invoke-virtual {v2, v0}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setEnjouRight(Z)V

    .line 202
    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->isKeyMark:Z

    .line 204
    invoke-virtual {p0}, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_acc_key_define"

    iget-object v4, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mLeftHandPhonePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-ne v4, v1, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 327
    :goto_1
    return v1

    .line 196
    :cond_1
    iget-object v2, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mRightHandPhonePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 197
    iget-object v2, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    invoke-virtual {v2, v6}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setKeyImageRes(I)V

    .line 198
    iget-object v2, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setEnjouRight(Z)V

    goto :goto_0

    .line 210
    :cond_2
    iget-object v2, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mLeftHandPhonePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 211
    iget-object v2, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    invoke-virtual {v2, v5}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setKeyImageRes(I)V

    .line 212
    iget-object v2, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    invoke-virtual {v2, v0}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setEnjouRight(Z)V

    goto :goto_1

    .line 218
    :cond_3
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "left_hand_phone_radio"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 220
    iget-boolean v2, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->isKeyMark:Z

    if-ne v2, v1, :cond_6

    .line 221
    iget-object v2, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mLeftHandPhoneRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 222
    iget-object v2, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mLeftHandPhoneRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v2}, Lcom/android/settings_ex/location/RadioButtonPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 224
    iget-object v2, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mRightHandPhoneRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 225
    iget-object v2, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    invoke-virtual {v2, v5}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setKeyImageRes(I)V

    .line 226
    iget-object v2, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    invoke-virtual {v2, v0}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setEnjouRight(Z)V

    .line 236
    :goto_2
    iput-boolean v0, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->isKeyMark:Z

    .line 238
    invoke-virtual {p0}, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_acc_key_define"

    iget-object v4, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mLeftHandPhoneRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v4}, Lcom/android/settings_ex/location/RadioButtonPreference;->isChecked()Z

    move-result v4

    if-ne v4, v1, :cond_4

    move v0, v1

    :cond_4
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 230
    :cond_5
    iget-object v2, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mRightHandPhoneRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 231
    iget-object v2, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    invoke-virtual {v2, v6}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setKeyImageRes(I)V

    .line 232
    iget-object v2, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setEnjouRight(Z)V

    goto :goto_2

    .line 245
    :cond_6
    iget-object v2, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mLeftHandPhoneRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 246
    iget-object v2, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mRightHandPhoneRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 247
    iget-object v2, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    invoke-virtual {v2, v5}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setKeyImageRes(I)V

    .line 248
    iget-object v2, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    invoke-virtual {v2, v0}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setEnjouRight(Z)V

    goto/16 :goto_1

    .line 254
    :cond_7
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "right_hand_phone"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 256
    iget-boolean v2, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->isKeyMark:Z

    if-nez v2, :cond_a

    .line 258
    iget-object v2, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mRightHandPhonePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 260
    iget-object v2, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mLeftHandPhonePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 261
    iget-object v2, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    invoke-virtual {v2, v6}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setKeyImageRes(I)V

    .line 262
    iget-object v2, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setEnjouRight(Z)V

    .line 272
    :goto_3
    iput-boolean v1, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->isKeyMark:Z

    .line 274
    invoke-virtual {p0}, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_acc_key_define"

    iget-object v4, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mRightHandPhonePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-ne v4, v1, :cond_9

    :goto_4
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 266
    :cond_8
    iget-object v2, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mLeftHandPhonePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 267
    iget-object v2, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    invoke-virtual {v2, v5}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setKeyImageRes(I)V

    .line 268
    iget-object v2, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    invoke-virtual {v2, v0}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setEnjouRight(Z)V

    goto :goto_3

    :cond_9
    move v0, v1

    .line 274
    goto :goto_4

    .line 280
    :cond_a
    iget-object v2, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mRightHandPhonePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 281
    iget-object v2, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mLeftHandPhonePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 282
    iget-object v0, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    invoke-virtual {v0, v6}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setKeyImageRes(I)V

    .line 283
    iget-object v0, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setEnjouRight(Z)V

    goto/16 :goto_1

    .line 289
    :cond_b
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "right_hand_phone_radio"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 291
    iget-boolean v2, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->isKeyMark:Z

    if-nez v2, :cond_e

    .line 292
    iget-object v2, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mRightHandPhoneRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 293
    iget-object v2, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mRightHandPhoneRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v2}, Lcom/android/settings_ex/location/RadioButtonPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 295
    iget-object v2, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mLeftHandPhoneRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 296
    iget-object v2, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    invoke-virtual {v2, v6}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setKeyImageRes(I)V

    .line 297
    iget-object v2, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setEnjouRight(Z)V

    .line 307
    :goto_5
    iput-boolean v1, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->isKeyMark:Z

    .line 309
    invoke-virtual {p0}, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_acc_key_define"

    iget-object v4, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mRightHandPhoneRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v4}, Lcom/android/settings_ex/location/RadioButtonPreference;->isChecked()Z

    move-result v4

    if-ne v4, v1, :cond_d

    :goto_6
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 301
    :cond_c
    iget-object v2, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mLeftHandPhoneRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 302
    iget-object v2, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    invoke-virtual {v2, v5}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setKeyImageRes(I)V

    .line 303
    iget-object v2, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    invoke-virtual {v2, v0}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setEnjouRight(Z)V

    goto :goto_5

    :cond_d
    move v0, v1

    .line 309
    goto :goto_6

    .line 316
    :cond_e
    iget-object v2, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mRightHandPhoneRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 317
    iget-object v2, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mLeftHandPhoneRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 318
    iget-object v0, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    invoke-virtual {v0, v6}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setKeyImageRes(I)V

    .line 319
    iget-object v0, p0, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setEnjouRight(Z)V

    goto/16 :goto_1

    :cond_f
    move v1, v0

    .line 327
    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 160
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 165
    invoke-direct {p0}, Lcom/oneplus/settings/iq/OPKeyCustomizeFragements;->initViews()V

    .line 168
    return-void
.end method
