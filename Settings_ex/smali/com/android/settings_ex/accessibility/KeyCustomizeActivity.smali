.class public Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;
.super Landroid/preference/PreferenceActivity;
.source "KeyCustomizeActivity.java"

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

    .line 27
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 57
    iput-boolean v0, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->isRightHandEnable:Z

    .line 59
    iput-boolean v0, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->isKeyMark:Z

    return-void
.end method

.method private initViews()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 114
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "oem_acc_key_define"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->isRightHandEnable:Z

    .line 118
    iget-boolean v0, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->isRightHandEnable:Z

    iput-boolean v0, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->isKeyMark:Z

    .line 120
    iget-boolean v0, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->isRightHandEnable:Z

    if-eqz v0, :cond_3

    .line 122
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mRightHandPhonePreference:Landroid/preference/CheckBoxPreference;

    iget-boolean v3, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->isRightHandEnable:Z

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 123
    iget-object v3, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mLeftHandPhonePreference:Landroid/preference/CheckBoxPreference;

    iget-boolean v0, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->isRightHandEnable:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 125
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mRightHandPhoneRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    iget-boolean v3, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->isRightHandEnable:Z

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 126
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mLeftHandPhoneRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    iget-boolean v3, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->isRightHandEnable:Z

    if-nez v3, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v0, v2}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 128
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    const v2, 0x7f0200e5

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setKeyImageRes(I)V

    .line 129
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setEnjouRight(Z)V

    .line 144
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 114
    goto :goto_0

    :cond_2
    move v0, v2

    .line 123
    goto :goto_1

    .line 133
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mRightHandPhonePreference:Landroid/preference/CheckBoxPreference;

    iget-boolean v3, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->isRightHandEnable:Z

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 134
    iget-object v3, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mLeftHandPhonePreference:Landroid/preference/CheckBoxPreference;

    iget-boolean v0, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->isRightHandEnable:Z

    if-nez v0, :cond_4

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 136
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mRightHandPhoneRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    iget-boolean v3, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->isRightHandEnable:Z

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 137
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mLeftHandPhoneRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    iget-boolean v3, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->isRightHandEnable:Z

    if-nez v3, :cond_5

    :goto_4
    invoke-virtual {v0, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 139
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    const v1, 0x7f0200e4

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setKeyImageRes(I)V

    .line 140
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setEnjouRight(Z)V

    goto :goto_2

    :cond_4
    move v0, v2

    .line 134
    goto :goto_3

    :cond_5
    move v1, v2

    .line 137
    goto :goto_4
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v0, 0x7f060002

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->addPreferencesFromResource(I)V

    .line 68
    const-string v0, "key_view_guild"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    iput-object v0, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    .line 70
    const-string v0, "left_hand_phone"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mLeftHandPhonePreference:Landroid/preference/CheckBoxPreference;

    .line 74
    const-string v0, "right_hand_phone"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mRightHandPhonePreference:Landroid/preference/CheckBoxPreference;

    .line 78
    const-string v0, "left_hand_phone_radio"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/location/RadioButtonPreference;

    iput-object v0, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mLeftHandPhoneRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    .line 81
    const-string v0, "right_hand_phone_radio"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/location/RadioButtonPreference;

    iput-object v0, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mRightHandPhoneRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    .line 84
    const-string v0, "key_radio_category"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;

    iput-object v0, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mRadioButtonPreference:Lcom/android/settings_ex/ui/OPRadioButtonPreference;

    .line 101
    const-string v0, "key_customize"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mKeyCheckboxCategory:Landroid/preference/PreferenceCategory;

    .line 103
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mRadioButtonPreference:Lcom/android/settings_ex/ui/OPRadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 105
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mKeyCheckboxCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mLeftHandPhonePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 106
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mKeyCheckboxCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mRightHandPhonePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 108
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const v6, 0x7f0200e5

    const v5, 0x7f0200e4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 181
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "left_hand_phone"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 183
    iget-boolean v2, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->isKeyMark:Z

    if-ne v2, v1, :cond_2

    .line 185
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mLeftHandPhonePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 187
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mRightHandPhonePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 188
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    invoke-virtual {v2, v5}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setKeyImageRes(I)V

    .line 189
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    invoke-virtual {v2, v0}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setEnjouRight(Z)V

    .line 199
    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->isKeyMark:Z

    .line 201
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_acc_key_define"

    iget-object v4, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mLeftHandPhonePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-ne v4, v1, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 322
    :goto_1
    return v1

    .line 193
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mRightHandPhonePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 194
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    invoke-virtual {v2, v6}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setKeyImageRes(I)V

    .line 195
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setEnjouRight(Z)V

    goto :goto_0

    .line 207
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mLeftHandPhonePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 208
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    invoke-virtual {v2, v5}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setKeyImageRes(I)V

    .line 209
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    invoke-virtual {v2, v0}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setEnjouRight(Z)V

    goto :goto_1

    .line 215
    :cond_3
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "left_hand_phone_radio"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 217
    iget-boolean v2, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->isKeyMark:Z

    if-ne v2, v1, :cond_6

    .line 218
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mLeftHandPhoneRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 219
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mLeftHandPhoneRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v2}, Lcom/android/settings_ex/location/RadioButtonPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 221
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mRightHandPhoneRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 222
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    invoke-virtual {v2, v5}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setKeyImageRes(I)V

    .line 223
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    invoke-virtual {v2, v0}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setEnjouRight(Z)V

    .line 233
    :goto_2
    iput-boolean v0, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->isKeyMark:Z

    .line 235
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_acc_key_define"

    iget-object v4, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mLeftHandPhoneRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v4}, Lcom/android/settings_ex/location/RadioButtonPreference;->isChecked()Z

    move-result v4

    if-ne v4, v1, :cond_4

    move v0, v1

    :cond_4
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 227
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mRightHandPhoneRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 228
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    invoke-virtual {v2, v6}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setKeyImageRes(I)V

    .line 229
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setEnjouRight(Z)V

    goto :goto_2

    .line 241
    :cond_6
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mLeftHandPhoneRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 242
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mRightHandPhoneRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 243
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    invoke-virtual {v2, v5}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setKeyImageRes(I)V

    .line 244
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    invoke-virtual {v2, v0}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setEnjouRight(Z)V

    goto/16 :goto_1

    .line 250
    :cond_7
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "right_hand_phone"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 252
    iget-boolean v2, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->isKeyMark:Z

    if-nez v2, :cond_a

    .line 254
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mRightHandPhonePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 256
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mLeftHandPhonePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 257
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    invoke-virtual {v2, v6}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setKeyImageRes(I)V

    .line 258
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setEnjouRight(Z)V

    .line 268
    :goto_3
    iput-boolean v1, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->isKeyMark:Z

    .line 270
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_acc_key_define"

    iget-object v4, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mRightHandPhonePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-ne v4, v1, :cond_9

    :goto_4
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 262
    :cond_8
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mLeftHandPhonePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 263
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    invoke-virtual {v2, v5}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setKeyImageRes(I)V

    .line 264
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    invoke-virtual {v2, v0}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setEnjouRight(Z)V

    goto :goto_3

    :cond_9
    move v0, v1

    .line 270
    goto :goto_4

    .line 276
    :cond_a
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mRightHandPhonePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 277
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mLeftHandPhonePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 278
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    invoke-virtual {v0, v6}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setKeyImageRes(I)V

    .line 279
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setEnjouRight(Z)V

    goto/16 :goto_1

    .line 285
    :cond_b
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "right_hand_phone_radio"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 287
    iget-boolean v2, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->isKeyMark:Z

    if-nez v2, :cond_e

    .line 288
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mRightHandPhoneRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 289
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mRightHandPhoneRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v2}, Lcom/android/settings_ex/location/RadioButtonPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 291
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mLeftHandPhoneRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 292
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    invoke-virtual {v2, v6}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setKeyImageRes(I)V

    .line 293
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setEnjouRight(Z)V

    .line 303
    :goto_5
    iput-boolean v1, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->isKeyMark:Z

    .line 305
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_acc_key_define"

    iget-object v4, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mRightHandPhoneRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v4}, Lcom/android/settings_ex/location/RadioButtonPreference;->isChecked()Z

    move-result v4

    if-ne v4, v1, :cond_d

    :goto_6
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 297
    :cond_c
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mLeftHandPhoneRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 298
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    invoke-virtual {v2, v5}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setKeyImageRes(I)V

    .line 299
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    invoke-virtual {v2, v0}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setEnjouRight(Z)V

    goto :goto_5

    :cond_d
    move v0, v1

    .line 305
    goto :goto_6

    .line 311
    :cond_e
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mRightHandPhoneRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 312
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mLeftHandPhoneRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 313
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    invoke-virtual {v0, v6}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setKeyImageRes(I)V

    .line 314
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->mKeycustomizeView:Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->setEnjouRight(Z)V

    goto/16 :goto_1

    :cond_f
    move v1, v0

    .line 322
    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 156
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 162
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/KeyCustomizeActivity;->initViews()V

    .line 165
    return-void
.end method
