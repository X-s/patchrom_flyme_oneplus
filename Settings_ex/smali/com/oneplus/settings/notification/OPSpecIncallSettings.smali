.class public Lcom/oneplus/settings/notification/OPSpecIncallSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OPSpecIncallSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final ANYONE_NOT_DISTURB_KEY:Ljava/lang/String; = "anyone_not_disturb"

.field private static final COLLECTIONS_CONTACTS_KEY:Ljava/lang/String; = "collections_contacts"

.field private static final PEOPLE_IN_CONTACTS_KEY:Ljava/lang/String; = "people_in_contacts"


# instance fields
.field private mAnyoneRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

.field private mCollectionRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

.field private mContext:Landroid/content/Context;

.field private mPeopleRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

.field private mSelectID:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/notification/OPSpecIncallSettings;->mSelectID:I

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v0, 0x7f060046

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPSpecIncallSettings;->addPreferencesFromResource(I)V

    .line 33
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPSpecIncallSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPSpecIncallSettings;->mContext:Landroid/content/Context;

    .line 35
    const-string v0, "collections_contacts"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPSpecIncallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/location/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPSpecIncallSettings;->mCollectionRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    .line 36
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSpecIncallSettings;->mCollectionRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/location/RadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 38
    const-string v0, "people_in_contacts"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPSpecIncallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/location/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPSpecIncallSettings;->mPeopleRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    .line 39
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSpecIncallSettings;->mPeopleRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/location/RadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 41
    const-string v0, "anyone_not_disturb"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPSpecIncallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/location/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPSpecIncallSettings;->mAnyoneRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    .line 42
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSpecIncallSettings;->mAnyoneRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/location/RadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 44
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 79
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "collections_contacts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    iput v3, p0, Lcom/oneplus/settings/notification/OPSpecIncallSettings;->mSelectID:I

    .line 83
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSpecIncallSettings;->mCollectionRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 84
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSpecIncallSettings;->mPeopleRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 85
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSpecIncallSettings;->mAnyoneRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 105
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSpecIncallSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_agree_incall_people"

    iget v2, p0, Lcom/oneplus/settings/notification/OPSpecIncallSettings;->mSelectID:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 110
    return v3

    .line 87
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "people_in_contacts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    iput v2, p0, Lcom/oneplus/settings/notification/OPSpecIncallSettings;->mSelectID:I

    .line 91
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSpecIncallSettings;->mCollectionRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 92
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSpecIncallSettings;->mPeopleRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 93
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSpecIncallSettings;->mAnyoneRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "anyone_not_disturb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, 0x2

    iput v0, p0, Lcom/oneplus/settings/notification/OPSpecIncallSettings;->mSelectID:I

    .line 99
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSpecIncallSettings;->mCollectionRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 100
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSpecIncallSettings;->mPeopleRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 101
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSpecIncallSettings;->mAnyoneRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 51
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSpecIncallSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_agree_incall_people"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/notification/OPSpecIncallSettings;->mSelectID:I

    .line 54
    iget v0, p0, Lcom/oneplus/settings/notification/OPSpecIncallSettings;->mSelectID:I

    packed-switch v0, :pswitch_data_0

    .line 73
    :goto_0
    return-void

    .line 56
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSpecIncallSettings;->mCollectionRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 57
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSpecIncallSettings;->mPeopleRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 58
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSpecIncallSettings;->mAnyoneRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 61
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSpecIncallSettings;->mCollectionRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 62
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSpecIncallSettings;->mPeopleRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 63
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSpecIncallSettings;->mAnyoneRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 66
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSpecIncallSettings;->mCollectionRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 67
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSpecIncallSettings;->mPeopleRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 68
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSpecIncallSettings;->mAnyoneRadioPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
