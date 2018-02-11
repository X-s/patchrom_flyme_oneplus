.class public Lcom/android/settings_ex/notification/ConfigureNotificationSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "ConfigureNotificationSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/notification/ConfigureNotificationSettings$-void_initLockscreenNotificationsForProfile__LambdaImpl0;,
        Lcom/android/settings_ex/notification/ConfigureNotificationSettings$SettingsObserver;
    }
.end annotation


# static fields
.field private static final KEY_LOCK_SCREEN_NOTIFICATIONS:Ljava/lang/String; = "lock_screen_notifications"

.field private static final KEY_LOCK_SCREEN_PROFILE_NOTIFICATIONS:Ljava/lang/String; = "lock_screen_notifications_profile"

.field private static final KEY_NOTIFICATION_PULSE:Ljava/lang/String; = "notification_pulse"

.field private static final TAG:Ljava/lang/String; = "ConfigNotiSettings"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLockscreen:Lcom/android/settings_ex/notification/RestrictedDropDownPreference;

.field private mLockscreenProfile:Lcom/android/settings_ex/notification/RestrictedDropDownPreference;

.field private mLockscreenSelectedValue:I

.field private mLockscreenSelectedValueProfile:I

.field private mNotificationPulse:Landroid/support/v7/preference/TwoStatePreference;

.field private mProfileChallengeUserId:I

.field private mSecure:Z

.field private mSecureProfile:Z

.field private final mSettingsObserver:Lcom/android/settings_ex/notification/ConfigureNotificationSettings$SettingsObserver;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/notification/ConfigureNotificationSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mLockscreenSelectedValue:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/notification/ConfigureNotificationSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mLockscreenSelectedValueProfile:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/notification/ConfigureNotificationSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/settings_ex/notification/ConfigureNotificationSettings;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mLockscreenSelectedValue:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings_ex/notification/ConfigureNotificationSettings;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mLockscreenSelectedValueProfile:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/notification/ConfigureNotificationSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/notification/ConfigureNotificationSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->updateLockscreenNotifications()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings_ex/notification/ConfigureNotificationSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->updatePulse()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 55
    new-instance v0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/notification/ConfigureNotificationSettings$SettingsObserver;-><init>(Lcom/android/settings_ex/notification/ConfigureNotificationSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mSettingsObserver:Lcom/android/settings_ex/notification/ConfigureNotificationSettings$SettingsObserver;

    .line 47
    return-void
.end method

.method private getLockscreenAllowPrivateNotifications(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 342
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 343
    const-string/jumbo v2, "lock_screen_allow_private_notifications"

    .line 342
    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getLockscreenNotificationsEnabled(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 337
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 338
    const-string/jumbo v2, "lock_screen_show_notifications"

    .line 337
    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private initLockscreenNotifications()V
    .locals 11

    .prologue
    const v10, 0x7f0e0e6d

    const v9, 0x7f0e0e6c

    const v8, 0x7f0e0e6b

    .line 154
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    .line 155
    const-string/jumbo v7, "lock_screen_notifications"

    .line 154
    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;

    iput-object v6, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings_ex/notification/RestrictedDropDownPreference;

    .line 156
    iget-object v6, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings_ex/notification/RestrictedDropDownPreference;

    if-nez v6, :cond_0

    .line 157
    const-string/jumbo v6, "ConfigNotiSettings"

    const-string/jumbo v7, "Preference not found: lock_screen_notifications"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void

    .line 161
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v5, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0, v10}, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-virtual {p0, v8}, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "summaryShowEntry":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 169
    .local v4, "summaryShowEntryValue":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    const/16 v6, 0xc

    .line 171
    invoke-direct {p0, v3, v4, v6}, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 174
    iget-boolean v6, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mSecure:Z

    if-eqz v6, :cond_1

    .line 175
    invoke-virtual {p0, v9}, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "summaryHideEntry":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, "summaryHideEntryValue":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    const/4 v6, 0x4

    .line 180
    invoke-direct {p0, v1, v2, v6}, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 184
    .end local v1    # "summaryHideEntry":Ljava/lang/String;
    .end local v2    # "summaryHideEntryValue":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings_ex/notification/RestrictedDropDownPreference;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 185
    iget-object v7, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings_ex/notification/RestrictedDropDownPreference;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 186
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->updateLockscreenNotifications()V

    .line 187
    iget-object v6, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings_ex/notification/RestrictedDropDownPreference;

    invoke-virtual {v6}, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    .line 188
    iget-object v6, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings_ex/notification/RestrictedDropDownPreference;

    new-instance v7, Lcom/android/settings_ex/notification/ConfigureNotificationSettings$2;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/notification/ConfigureNotificationSettings$2;-><init>(Lcom/android/settings_ex/notification/ConfigureNotificationSettings;)V

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 153
    :goto_0
    return-void

    .line 208
    :cond_2
    iget-object v6, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings_ex/notification/RestrictedDropDownPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private initLockscreenNotificationsForProfile()V
    .locals 11

    .prologue
    const v10, 0x7f0e0e72

    const v9, 0x7f0e0e71

    const v8, 0x7f0e0e70

    .line 214
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    .line 215
    const-string/jumbo v7, "lock_screen_notifications_profile"

    .line 214
    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;

    iput-object v6, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings_ex/notification/RestrictedDropDownPreference;

    .line 216
    iget-object v6, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings_ex/notification/RestrictedDropDownPreference;

    if-nez v6, :cond_0

    .line 217
    const-string/jumbo v6, "ConfigNotiSettings"

    const-string/jumbo v7, "Preference not found: lock_screen_notifications_profile"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return-void

    .line 220
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v5, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0, v10}, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    invoke-virtual {p0, v8}, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 227
    .local v3, "summaryShowEntry":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 229
    .local v4, "summaryShowEntryValue":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    const/16 v6, 0xc

    .line 231
    invoke-direct {p0, v3, v4, v6}, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 234
    iget-boolean v6, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mSecureProfile:Z

    if-eqz v6, :cond_1

    .line 235
    invoke-virtual {p0, v9}, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "summaryHideEntry":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, "summaryHideEntryValue":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    const/4 v6, 0x4

    .line 241
    invoke-direct {p0, v1, v2, v6}, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 245
    .end local v1    # "summaryHideEntry":Ljava/lang/String;
    .end local v2    # "summaryHideEntryValue":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings_ex/notification/RestrictedDropDownPreference;

    .line 246
    new-instance v7, Lcom/android/settings_ex/notification/ConfigureNotificationSettings$-void_initLockscreenNotificationsForProfile__LambdaImpl0;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/notification/ConfigureNotificationSettings$-void_initLockscreenNotificationsForProfile__LambdaImpl0;-><init>(Lcom/android/settings_ex/notification/ConfigureNotificationSettings;)V

    .line 245
    invoke-virtual {v6, v7}, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->setOnPreClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 251
    iget-object v7, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings_ex/notification/RestrictedDropDownPreference;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 252
    iget-object v7, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings_ex/notification/RestrictedDropDownPreference;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 253
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->updateLockscreenNotificationsForProfile()V

    .line 254
    iget-object v6, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings_ex/notification/RestrictedDropDownPreference;

    invoke-virtual {v6}, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    .line 255
    iget-object v6, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings_ex/notification/RestrictedDropDownPreference;

    new-instance v7, Lcom/android/settings_ex/notification/ConfigureNotificationSettings$3;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/notification/ConfigureNotificationSettings$3;-><init>(Lcom/android/settings_ex/notification/ConfigureNotificationSettings;)V

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 213
    :goto_0
    return-void

    .line 278
    :cond_2
    iget-object v6, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings_ex/notification/RestrictedDropDownPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private initPulse()V
    .locals 2

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "notification_pulse"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/TwoStatePreference;

    .line 118
    iput-object v0, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mNotificationPulse:Landroid/support/v7/preference/TwoStatePreference;

    .line 120
    iget-object v0, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mNotificationPulse:Landroid/support/v7/preference/TwoStatePreference;

    if-nez v0, :cond_0

    .line 121
    const-string/jumbo v0, "ConfigNotiSettings"

    const-string/jumbo v1, "Preference not found: notification_pulse"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 125
    const v1, 0x1120045

    .line 124
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mNotificationPulse:Landroid/support/v7/preference/TwoStatePreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 117
    :goto_0
    return-void

    .line 128
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->updatePulse()V

    .line 129
    iget-object v0, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mNotificationPulse:Landroid/support/v7/preference/TwoStatePreference;

    new-instance v1, Lcom/android/settings_ex/notification/ConfigureNotificationSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/notification/ConfigureNotificationSettings$1;-><init>(Lcom/android/settings_ex/notification/ConfigureNotificationSettings;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 4
    .param p1, "entry"    # Ljava/lang/CharSequence;
    .param p2, "entryValue"    # Ljava/lang/CharSequence;
    .param p3, "keyguardNotificationFeatures"    # I

    .prologue
    .line 285
    iget-object v2, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 284
    invoke-static {v2, p3, v3}, Lcom/android/settings_exlib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 286
    .local v0, "admin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings_ex/notification/RestrictedDropDownPreference;

    if-eqz v2, :cond_0

    .line 288
    new-instance v1, Lcom/android/settings_ex/notification/RestrictedDropDownPreference$RestrictedItem;

    invoke-direct {v1, p1, p2, v0}, Lcom/android/settings_ex/notification/RestrictedDropDownPreference$RestrictedItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 289
    .local v1, "item":Lcom/android/settings_ex/notification/RestrictedDropDownPreference$RestrictedItem;
    iget-object v2, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings_ex/notification/RestrictedDropDownPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->addRestrictedItem(Lcom/android/settings_ex/notification/RestrictedDropDownPreference$RestrictedItem;)V

    .line 283
    .end local v1    # "item":Lcom/android/settings_ex/notification/RestrictedDropDownPreference$RestrictedItem;
    :cond_0
    return-void
.end method

.method private updateLockscreenNotifications()V
    .locals 4

    .prologue
    .line 307
    iget-object v2, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings_ex/notification/RestrictedDropDownPreference;

    if-nez v2, :cond_0

    .line 308
    return-void

    .line 310
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->getLockscreenNotificationsEnabled(I)Z

    move-result v1

    .line 311
    .local v1, "enabled":Z
    iget-boolean v2, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mSecure:Z

    if-eqz v2, :cond_1

    .line 312
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->getLockscreenAllowPrivateNotifications(I)Z

    move-result v0

    .line 313
    :goto_0
    if-nez v1, :cond_2

    const v2, 0x7f0e0e6d

    :goto_1
    iput v2, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mLockscreenSelectedValue:I

    .line 316
    iget-object v2, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings_ex/notification/RestrictedDropDownPreference;

    iget v3, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mLockscreenSelectedValue:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->setValue(Ljava/lang/String;)V

    .line 306
    return-void

    .line 311
    :cond_1
    const/4 v0, 0x1

    .local v0, "allowPrivate":Z
    goto :goto_0

    .line 314
    .end local v0    # "allowPrivate":Z
    :cond_2
    if-eqz v0, :cond_3

    const v2, 0x7f0e0e6b

    goto :goto_1

    .line 315
    :cond_3
    const v2, 0x7f0e0e6c

    goto :goto_1
.end method

.method private updateLockscreenNotificationsForProfile()V
    .locals 4

    .prologue
    .line 320
    iget v2, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    const/16 v3, -0x2710

    if-ne v2, v3, :cond_0

    .line 321
    return-void

    .line 323
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings_ex/notification/RestrictedDropDownPreference;

    if-nez v2, :cond_1

    .line 324
    return-void

    .line 326
    :cond_1
    iget v2, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    invoke-direct {p0, v2}, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->getLockscreenNotificationsEnabled(I)Z

    move-result v1

    .line 327
    .local v1, "enabled":Z
    iget-boolean v2, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mSecureProfile:Z

    if-eqz v2, :cond_2

    .line 328
    iget v2, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    invoke-direct {p0, v2}, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->getLockscreenAllowPrivateNotifications(I)Z

    move-result v0

    .line 329
    :goto_0
    if-nez v1, :cond_3

    .line 330
    const v2, 0x7f0e0e72

    .line 329
    :goto_1
    iput v2, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mLockscreenSelectedValueProfile:I

    .line 333
    iget-object v2, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings_ex/notification/RestrictedDropDownPreference;

    iget v3, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mLockscreenSelectedValueProfile:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->setValue(Ljava/lang/String;)V

    .line 319
    return-void

    .line 327
    :cond_2
    const/4 v0, 0x1

    .local v0, "allowPrivate":Z
    goto :goto_0

    .line 331
    .end local v0    # "allowPrivate":Z
    :cond_3
    if-eqz v0, :cond_4

    const v2, 0x7f0e0e70

    goto :goto_1

    .line 332
    :cond_4
    const v2, 0x7f0e0e71

    goto :goto_1
.end method

.method private updatePulse()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 142
    iget-object v2, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mNotificationPulse:Landroid/support/v7/preference/TwoStatePreference;

    if-nez v2, :cond_0

    .line 143
    return-void

    .line 146
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mNotificationPulse:Landroid/support/v7/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 147
    const-string/jumbo v4, "notification_light_pulse"

    .line 146
    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_1
    return-void

    .line 146
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v1, "ConfigNotiSettings"

    const-string/jumbo v2, "notification_light_pulse not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method synthetic -com_android_settings_notification_ConfigureNotificationSettings_lambda$1(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "p"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mContext:Landroid/content/Context;

    .line 247
    iget-object v1, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 248
    iget v2, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    .line 246
    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v0

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 70
    const/16 v0, 0x151

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mContext:Landroid/content/Context;

    .line 78
    iget-object v3, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 77
    invoke-static {v3, v4}, Lcom/android/settings_ex/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    .line 80
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 82
    .local v1, "utils":Lcom/android/internal/widget/LockPatternUtils;
    iget v3, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    .line 84
    .local v0, "isUnified":Z
    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mSecure:Z

    .line 85
    iget v3, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    const/16 v4, -0x2710

    if-eq v3, v4, :cond_0

    .line 86
    iget v3, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mSecure:Z

    .line 85
    :cond_0
    :goto_1
    iput-boolean v2, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mSecureProfile:Z

    .line 88
    const v2, 0x7f08001a

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->addPreferencesFromResource(I)V

    .line 90
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->initPulse()V

    .line 91
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->initLockscreenNotifications()V

    .line 74
    return-void

    .line 82
    .end local v0    # "isUnified":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "isUnified":Z
    goto :goto_0

    .line 86
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 112
    iget-object v0, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mSettingsObserver:Lcom/android/settings_ex/notification/ConfigureNotificationSettings$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/ConfigureNotificationSettings$SettingsObserver;->register(Z)V

    .line 110
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 106
    iget-object v0, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->mSettingsObserver:Lcom/android/settings_ex/notification/ConfigureNotificationSettings$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/ConfigureNotificationSettings$SettingsObserver;->register(Z)V

    .line 104
    return-void
.end method
