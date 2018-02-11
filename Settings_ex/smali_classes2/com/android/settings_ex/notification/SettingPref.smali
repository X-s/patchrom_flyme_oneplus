.class public Lcom/android/settings_ex/notification/SettingPref;
.super Ljava/lang/Object;
.source "SettingPref.java"


# static fields
.field public static final TYPE_GLOBAL:I = 0x1

.field public static final TYPE_SYSTEM:I = 0x2


# instance fields
.field protected final mDefault:I

.field protected mDropDown:Landroid/support/v7/preference/DropDownPreference;

.field private final mKey:Ljava/lang/String;

.field protected final mSetting:Ljava/lang/String;

.field protected mTwoState:Landroid/support/v7/preference/TwoStatePreference;

.field protected final mType:I

.field private final mUri:Landroid/net/Uri;

.field private final mValues:[I


# direct methods
.method public varargs constructor <init>(ILjava/lang/String;Ljava/lang/String;I[I)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "setting"    # Ljava/lang/String;
    .param p4, "def"    # I
    .param p5, "values"    # [I

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/android/settings_ex/notification/SettingPref;->mType:I

    .line 49
    iput-object p2, p0, Lcom/android/settings_ex/notification/SettingPref;->mKey:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/android/settings_ex/notification/SettingPref;->mSetting:Ljava/lang/String;

    .line 51
    iput p4, p0, Lcom/android/settings_ex/notification/SettingPref;->mDefault:I

    .line 52
    iput-object p5, p0, Lcom/android/settings_ex/notification/SettingPref;->mValues:[I

    .line 53
    iget v0, p0, Lcom/android/settings_ex/notification/SettingPref;->mType:I

    iget-object v1, p0, Lcom/android/settings_ex/notification/SettingPref;->mSetting:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings_ex/notification/SettingPref;->getUriFor(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/SettingPref;->mUri:Landroid/net/Uri;

    .line 47
    return-void
.end method

.method protected static getInt(ILandroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1
    .param p0, "type"    # I
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "def"    # I

    .prologue
    .line 153
    packed-switch p0, :pswitch_data_0

    .line 159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 155
    :pswitch_0
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 157
    :pswitch_1
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getUriFor(ILjava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "type"    # I
    .param p1, "setting"    # Ljava/lang/String;

    .prologue
    .line 133
    packed-switch p0, :pswitch_data_0

    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 135
    :pswitch_0
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 137
    :pswitch_1
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected static putInt(ILandroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "type"    # I
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    .line 143
    packed-switch p0, :pswitch_data_0

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 145
    :pswitch_0
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 147
    :pswitch_1
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected getCaption(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "value"    # I

    .prologue
    .line 61
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/settings_ex/notification/SettingPref;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/settings_ex/notification/SettingPref;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public init(Lcom/android/settings_ex/SettingsPreferenceFragment;)Landroid/support/v7/preference/Preference;
    .locals 8
    .param p1, "settings"    # Lcom/android/settings_ex/SettingsPreferenceFragment;

    .prologue
    const/4 v7, 0x0

    .line 65
    invoke-virtual {p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 66
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/notification/SettingPref;->mKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    .line 67
    .local v3, "p":Landroid/support/v7/preference/Preference;
    if-eqz v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notification/SettingPref;->isApplicable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 71
    .end local v3    # "p":Landroid/support/v7/preference/Preference;
    :cond_0
    :goto_0
    instance-of v5, v3, Landroid/support/v7/preference/TwoStatePreference;

    if-eqz v5, :cond_3

    move-object v5, v3

    .line 72
    check-cast v5, Landroid/support/v7/preference/TwoStatePreference;

    iput-object v5, p0, Lcom/android/settings_ex/notification/SettingPref;->mTwoState:Landroid/support/v7/preference/TwoStatePreference;

    .line 84
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notification/SettingPref;->update(Landroid/content/Context;)V

    .line 86
    iget-object v5, p0, Lcom/android/settings_ex/notification/SettingPref;->mTwoState:Landroid/support/v7/preference/TwoStatePreference;

    if-eqz v5, :cond_5

    if-eqz v3, :cond_5

    .line 88
    new-instance v5, Lcom/android/settings_ex/notification/SettingPref$1;

    invoke-direct {v5, p0, v0}, Lcom/android/settings_ex/notification/SettingPref$1;-><init>(Lcom/android/settings_ex/notification/SettingPref;Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 95
    iget-object v5, p0, Lcom/android/settings_ex/notification/SettingPref;->mTwoState:Landroid/support/v7/preference/TwoStatePreference;

    return-object v5

    .line 68
    .restart local v3    # "p":Landroid/support/v7/preference/Preference;
    :cond_2
    invoke-virtual {p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 69
    const/4 v3, 0x0

    .local v3, "p":Landroid/support/v7/preference/Preference;
    goto :goto_0

    .line 73
    .end local v3    # "p":Landroid/support/v7/preference/Preference;
    :cond_3
    instance-of v5, v3, Landroid/support/v7/preference/DropDownPreference;

    if-eqz v5, :cond_1

    move-object v5, v3

    .line 74
    check-cast v5, Landroid/support/v7/preference/DropDownPreference;

    iput-object v5, p0, Lcom/android/settings_ex/notification/SettingPref;->mDropDown:Landroid/support/v7/preference/DropDownPreference;

    .line 75
    iget-object v5, p0, Lcom/android/settings_ex/notification/SettingPref;->mValues:[I

    array-length v5, v5

    new-array v1, v5, [Ljava/lang/CharSequence;

    .line 76
    .local v1, "entries":[Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/settings_ex/notification/SettingPref;->mValues:[I

    array-length v5, v5

    new-array v4, v5, [Ljava/lang/CharSequence;

    .line 77
    .local v4, "values":[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v5, p0, Lcom/android/settings_ex/notification/SettingPref;->mValues:[I

    array-length v5, v5

    if-ge v2, v5, :cond_4

    .line 78
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/notification/SettingPref;->mValues:[I

    aget v6, v6, v2

    invoke-virtual {p0, v5, v6}, Lcom/android/settings_ex/notification/SettingPref;->getCaption(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    .line 79
    iget-object v5, p0, Lcom/android/settings_ex/notification/SettingPref;->mValues:[I

    aget v5, v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 81
    :cond_4
    iget-object v5, p0, Lcom/android/settings_ex/notification/SettingPref;->mDropDown:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v5, v1}, Landroid/support/v7/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 82
    iget-object v5, p0, Lcom/android/settings_ex/notification/SettingPref;->mDropDown:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v5, v4}, Landroid/support/v7/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 98
    .end local v1    # "entries":[Ljava/lang/CharSequence;
    .end local v2    # "i":I
    .end local v4    # "values":[Ljava/lang/CharSequence;
    :cond_5
    iget-object v5, p0, Lcom/android/settings_ex/notification/SettingPref;->mDropDown:Landroid/support/v7/preference/DropDownPreference;

    if-eqz v5, :cond_6

    if-eqz v3, :cond_6

    .line 100
    new-instance v5, Lcom/android/settings_ex/notification/SettingPref$2;

    invoke-direct {v5, p0, v0}, Lcom/android/settings_ex/notification/SettingPref$2;-><init>(Lcom/android/settings_ex/notification/SettingPref;Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 106
    iget-object v5, p0, Lcom/android/settings_ex/notification/SettingPref;->mDropDown:Landroid/support/v7/preference/DropDownPreference;

    return-object v5

    .line 108
    :cond_6
    return-object v7
.end method

.method public isApplicable(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method protected setSetting(Landroid/content/Context;I)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "value"    # I

    .prologue
    .line 112
    iget v0, p0, Lcom/android/settings_ex/notification/SettingPref;->mType:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/notification/SettingPref;->mSetting:Ljava/lang/String;

    invoke-static {v0, v1, v2, p2}, Lcom/android/settings_ex/notification/SettingPref;->putInt(ILandroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public update(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 124
    iget v2, p0, Lcom/android/settings_ex/notification/SettingPref;->mType:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/notification/SettingPref;->mSetting:Ljava/lang/String;

    iget v5, p0, Lcom/android/settings_ex/notification/SettingPref;->mDefault:I

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings_ex/notification/SettingPref;->getInt(ILandroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 125
    .local v0, "val":I
    iget-object v2, p0, Lcom/android/settings_ex/notification/SettingPref;->mTwoState:Landroid/support/v7/preference/TwoStatePreference;

    if-eqz v2, :cond_2

    .line 126
    iget-object v2, p0, Lcom/android/settings_ex/notification/SettingPref;->mTwoState:Landroid/support/v7/preference/TwoStatePreference;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    .line 123
    :cond_1
    :goto_0
    return-void

    .line 127
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/notification/SettingPref;->mDropDown:Landroid/support/v7/preference/DropDownPreference;

    if-eqz v1, :cond_1

    .line 128
    iget-object v1, p0, Lcom/android/settings_ex/notification/SettingPref;->mDropDown:Landroid/support/v7/preference/DropDownPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method
