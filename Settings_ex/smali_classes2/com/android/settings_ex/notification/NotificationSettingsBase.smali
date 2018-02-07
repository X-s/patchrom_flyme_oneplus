.class public abstract Lcom/android/settings_ex/notification/NotificationSettingsBase;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "NotificationSettingsBase.java"


# static fields
.field private static final DEBUG:Z

.field protected static final KEY_BLOCK:Ljava/lang/String; = "block"

.field protected static final KEY_BYPASS_DND:Ljava/lang/String; = "bypass_dnd"

.field protected static final KEY_IMPORTANCE:Ljava/lang/String; = "importance"

.field protected static final KEY_LEVELS:Ljava/lang/String; = "levels"

.field protected static final KEY_MORE:Ljava/lang/String; = "more"

.field protected static final KEY_SILENT:Ljava/lang/String; = "silent"

.field protected static final KEY_VISIBILITY_OVERRIDE:Ljava/lang/String; = "visibility_override"

.field private static final TAG:Ljava/lang/String; = "NotifiSettingsBase"

.field private static final TUNER_SETTING:Ljava/lang/String; = "show_importance_slider"


# instance fields
.field protected final mBackend:Lcom/android/settings_ex/notification/NotificationBackend;

.field protected mBlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

.field protected mContext:Landroid/content/Context;

.field protected mCreated:Z

.field protected mImportance:Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;

.field protected mLevelsCategory:Landroid/support/v7/preference/PreferenceCategory;

.field protected mMoreCategory:Landroid/support/v7/preference/PreferenceCategory;

.field protected mPkg:Ljava/lang/String;

.field protected mPkgInfo:Landroid/content/pm/PackageInfo;

.field protected mPm:Landroid/content/pm/PackageManager;

.field protected mPriority:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

.field protected mShowSlider:Z

.field protected mSilent:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

.field protected mSuspendedAppsAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

.field protected mUid:I

.field protected mUm:Landroid/os/UserManager;

.field protected mUserId:I

.field protected mVisibilityOverride:Lcom/android/settings_ex/notification/RestrictedDropDownPreference;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings_ex/notification/NotificationSettingsBase;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettingsBase;->getGlobalVisibility()I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    const-string/jumbo v0, "NotifiSettingsBase"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->DEBUG:Z

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 71
    new-instance v0, Lcom/android/settings_ex/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings_ex/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mBackend:Lcom/android/settings_ex/notification/NotificationBackend;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mShowSlider:Z

    .line 54
    return-void
.end method

.method private findPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v8, 0x0

    .line 381
    iget-object v5, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 382
    .local v4, "packages":[Ljava/lang/String;
    if-eqz v4, :cond_1

    if-eqz p1, :cond_1

    .line 383
    array-length v0, v4

    .line 384
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 385
    aget-object v3, v4, v2

    .line 386
    .local v3, "p":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 388
    :try_start_0
    iget-object v5, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mPm:Landroid/content/pm/PackageManager;

    const/16 v6, 0x40

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 389
    :catch_0
    move-exception v1

    .line 390
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v5, "NotifiSettingsBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to load package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 384
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 395
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "p":Ljava/lang/String;
    :cond_1
    return-object v8
.end method

.method private getGlobalVisibility()I
    .locals 2

    .prologue
    .line 328
    const/16 v0, -0x3e8

    .line 329
    .local v0, "globalVis":I
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettingsBase;->getLockscreenNotificationsEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 330
    const/4 v0, -0x1

    .line 334
    :cond_0
    :goto_0
    return v0

    .line 331
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettingsBase;->getLockscreenAllowPrivateNotifications()Z

    move-result v1

    if-nez v1, :cond_0

    .line 332
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 4
    .param p1, "entry"    # Ljava/lang/CharSequence;
    .param p2, "entryValue"    # Ljava/lang/CharSequence;
    .param p3, "keyguardNotificationFeatures"    # I

    .prologue
    .line 320
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mUserId:I

    .line 319
    invoke-static {v2, p3, v3}, Lcom/android/settings_exlib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 321
    .local v0, "admin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    if-eqz v0, :cond_0

    .line 322
    new-instance v1, Lcom/android/settings_ex/notification/RestrictedDropDownPreference$RestrictedItem;

    invoke-direct {v1, p1, p2, v0}, Lcom/android/settings_ex/notification/RestrictedDropDownPreference$RestrictedItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 323
    .local v1, "item":Lcom/android/settings_ex/notification/RestrictedDropDownPreference$RestrictedItem;
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mVisibilityOverride:Lcom/android/settings_ex/notification/RestrictedDropDownPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->addRestrictedItem(Lcom/android/settings_ex/notification/RestrictedDropDownPreference$RestrictedItem;)V

    .line 318
    .end local v1    # "item":Lcom/android/settings_ex/notification/RestrictedDropDownPreference$RestrictedItem;
    :cond_0
    return-void
.end method


# virtual methods
.method protected getLockscreenAllowPrivateNotifications()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 343
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 344
    const-string/jumbo v2, "lock_screen_allow_private_notifications"

    .line 343
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected getLockscreenNotificationsEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 338
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 339
    const-string/jumbo v2, "lock_screen_show_notifications"

    .line 338
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected isRemoveLevelsAndImportanceAPP()Z
    .locals 2

    .prologue
    .line 193
    const-string/jumbo v0, "com.oneplus.deskclock"

    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.android.dialer"

    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    const-string/jumbo v0, "com.android.incallui"

    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 193
    if-nez v0, :cond_0

    .line 194
    const-string/jumbo v0, "com.oneplus.opbackup"

    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 193
    if-eqz v0, :cond_1

    .line 195
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 197
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 93
    sget-boolean v0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NotifiSettingsBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityCreated mCreated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mCreated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mCreated:Z

    if-eqz v0, :cond_1

    .line 95
    const-string/jumbo v0, "NotifiSettingsBase"

    const-string/jumbo v1, "onActivityCreated: ignoring duplicate call"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void

    .line 98
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mCreated:Z

    .line 91
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v7, -0x1

    .line 103
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mContext:Landroid/content/Context;

    .line 105
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 106
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettingsBase;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 107
    .local v0, "args":Landroid/os/Bundle;
    sget-boolean v2, Lcom/android/settings_ex/notification/NotificationSettingsBase;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "NotifiSettingsBase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onCreate getIntent()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 109
    const-string/jumbo v2, "NotifiSettingsBase"

    const-string/jumbo v3, "No intent"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettingsBase;->toastAndFinish()V

    .line 111
    return-void

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettingsBase;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mPm:Landroid/content/pm/PackageManager;

    .line 115
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "user"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mUm:Landroid/os/UserManager;

    .line 117
    if-eqz v0, :cond_3

    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 118
    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 117
    :goto_0
    iput-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    .line 120
    if-eqz v0, :cond_4

    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 121
    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 120
    :goto_1
    iput v2, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mUid:I

    .line 123
    iget v2, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mUid:I

    if-eq v2, v7, :cond_2

    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 124
    :cond_2
    const-string/jumbo v2, "NotifiSettingsBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Missing extras: app_package was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 125
    const-string/jumbo v4, "app_uid"

    .line 124
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 125
    const-string/jumbo v4, " was "

    .line 124
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 125
    iget v4, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mUid:I

    .line 124
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettingsBase;->toastAndFinish()V

    .line 127
    return-void

    .line 119
    :cond_3
    const-string/jumbo v2, "app_package"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 122
    :cond_4
    const-string/jumbo v2, "app_uid"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    goto :goto_1

    .line 129
    :cond_5
    iget v2, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mUserId:I

    .line 131
    sget-boolean v2, Lcom/android/settings_ex/notification/NotificationSettingsBase;->DEBUG:Z

    if-eqz v2, :cond_6

    const-string/jumbo v2, "NotifiSettingsBase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Load details for pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_6
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    iget v5, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mUid:I

    invoke-direct {p0, v2, v5}, Lcom/android/settings_ex/notification/NotificationSettingsBase;->findPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mPkgInfo:Landroid/content/pm/PackageInfo;

    .line 133
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mPkgInfo:Landroid/content/pm/PackageInfo;

    if-nez v2, :cond_7

    .line 134
    const-string/jumbo v2, "NotifiSettingsBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to find package info: app_package was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 135
    const-string/jumbo v4, ", "

    .line 134
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 135
    const-string/jumbo v4, "app_uid"

    .line 134
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 135
    const-string/jumbo v4, " was "

    .line 134
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 135
    iget v4, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mUid:I

    .line 134
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettingsBase;->toastAndFinish()V

    .line 137
    return-void

    .line 141
    :cond_7
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    iget v6, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mUserId:I

    .line 140
    invoke-static {v2, v5, v6}, Lcom/android/settings_exlib/RestrictedLockUtils;->checkIfApplicationIsSuspended(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mSuspendedAppsAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    .line 142
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "show_importance_slider"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_8

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mShowSlider:Z

    .line 102
    return-void

    :cond_8
    move v2, v4

    .line 142
    goto :goto_2
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 147
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 148
    iget v0, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettingsBase;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mUid:I

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettingsBase;->finish()V

    .line 151
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mUserId:I

    .line 153
    invoke-static {v0, v1, v2}, Lcom/android/settings_exlib/RestrictedLockUtils;->checkIfApplicationIsSuspended(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mSuspendedAppsAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    .line 155
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mImportance:Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mImportance:Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;

    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mSuspendedAppsAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->setDisabledByAdmin(Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mPriority:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mPriority:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mSuspendedAppsAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mBlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    if-eqz v0, :cond_3

    .line 162
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mBlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mSuspendedAppsAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 165
    :cond_3
    const-string/jumbo v0, "com.oneplus.deskclock"

    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "com.android.dialer"

    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 166
    const-string/jumbo v0, "com.android.incallui"

    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 165
    if-nez v0, :cond_4

    .line 166
    const-string/jumbo v0, "com.google.android.calendar"

    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 165
    if-nez v0, :cond_4

    .line 167
    const-string/jumbo v0, "com.oneplus.calendar"

    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 165
    if-eqz v0, :cond_5

    .line 168
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mBlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v0, v3}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setEnabled(Z)V

    .line 171
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mSilent:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    if-eqz v0, :cond_6

    .line 172
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mSilent:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mSuspendedAppsAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 174
    :cond_6
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mVisibilityOverride:Lcom/android/settings_ex/notification/RestrictedDropDownPreference;

    if-eqz v0, :cond_7

    .line 175
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mVisibilityOverride:Lcom/android/settings_ex/notification/RestrictedDropDownPreference;

    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mSuspendedAppsAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->setDisabledByAdmin(Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 178
    :cond_7
    iget-boolean v0, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mShowSlider:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mLevelsCategory:Landroid/support/v7/preference/PreferenceCategory;

    if-eqz v0, :cond_8

    .line 179
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettingsBase;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mLevelsCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 181
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettingsBase;->isRemoveLevelsAndImportanceAPP()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 182
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mLevelsCategory:Landroid/support/v7/preference/PreferenceCategory;

    if-eqz v0, :cond_9

    .line 183
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettingsBase;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mLevelsCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 185
    :cond_9
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mImportance:Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;

    if-eqz v0, :cond_a

    .line 186
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mImportance:Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;

    invoke-virtual {p0, v0, v3}, Lcom/android/settings_ex/notification/NotificationSettingsBase;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    .line 146
    :cond_a
    return-void
.end method

.method protected setVisible(Landroid/support/v7/preference/Preference;Z)V
    .locals 3
    .param p1, "p"    # Landroid/support/v7/preference/Preference;
    .param p2, "visible"    # Z

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettingsBase;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 351
    .local v0, "isVisible":Z
    :goto_0
    if-ne v0, p2, :cond_1

    return-void

    .line 350
    .end local v0    # "isVisible":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 352
    .restart local v0    # "isVisible":Z
    :cond_1
    if-eqz p2, :cond_2

    .line 353
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettingsBase;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 349
    :goto_1
    return-void

    .line 355
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettingsBase;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1
.end method

.method protected setVisibleForMore(Landroid/support/v7/preference/Preference;Z)V
    .locals 3
    .param p1, "p"    # Landroid/support/v7/preference/Preference;
    .param p2, "visible"    # Z

    .prologue
    const/4 v0, 0x0

    .line 361
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettingsBase;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 362
    .local v0, "isVisible":Z
    :cond_0
    if-ne v0, p2, :cond_1

    return-void

    .line 363
    :cond_1
    if-eqz p2, :cond_3

    .line 364
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettingsBase;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mMoreCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 365
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mMoreCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1, p1}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 369
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mMoreCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 370
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettingsBase;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mMoreCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 360
    :cond_2
    return-void

    .line 367
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mMoreCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1, p1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0
.end method

.method protected setupImportancePrefs(ZIZ)V
    .locals 5
    .param p1, "isSystemApp"    # Z
    .param p2, "importance"    # I
    .param p3, "banned"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 200
    iget-boolean v1, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mShowSlider:Z

    if-eqz v1, :cond_2

    .line 201
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mBlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {p0, v1, v3}, Lcom/android/settings_ex/notification/NotificationSettingsBase;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    .line 202
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mSilent:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {p0, v1, v3}, Lcom/android/settings_ex/notification/NotificationSettingsBase;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    .line 203
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mImportance:Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;

    iget-object v4, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mSuspendedAppsAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v1, v4}, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->setDisabledByAdmin(Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 204
    iget-object v4, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mImportance:Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;

    .line 205
    if-eqz p1, :cond_0

    move v1, v2

    .line 204
    :goto_0
    invoke-virtual {v4, v1}, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->setMinimumProgress(I)V

    .line 206
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mImportance:Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->setMax(I)V

    .line 207
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mImportance:Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;

    invoke-virtual {v1, p2}, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->setProgress(I)V

    .line 208
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mImportance:Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;

    const/16 v4, -0x3e8

    if-ne p2, v4, :cond_1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->setAutoOn(Z)V

    .line 209
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mImportance:Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;

    new-instance v2, Lcom/android/settings_ex/notification/NotificationSettingsBase$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/notification/NotificationSettingsBase$1;-><init>(Lcom/android/settings_ex/notification/NotificationSettingsBase;)V

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->setCallback(Lcom/android/settings_ex/notification/ImportanceSeekBarPreference$Callback;)V

    .line 199
    :goto_2
    return-void

    :cond_0
    move v1, v3

    .line 205
    goto :goto_0

    :cond_1
    move v2, v3

    .line 208
    goto :goto_1

    .line 219
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mImportance:Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;

    invoke-virtual {p0, v1, v3}, Lcom/android/settings_ex/notification/NotificationSettingsBase;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    .line 220
    if-eqz p1, :cond_3

    .line 221
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mBlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {p0, v1, v3}, Lcom/android/settings_ex/notification/NotificationSettingsBase;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    .line 226
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mSilent:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {p0, v1, v3}, Lcom/android/settings_ex/notification/NotificationSettingsBase;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    goto :goto_2

    .line 229
    :cond_3
    if-eqz p2, :cond_4

    move v0, p3

    .line 230
    :goto_3
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mBlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setChecked(Z)V

    .line 231
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mBlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    new-instance v2, Lcom/android/settings_ex/notification/NotificationSettingsBase$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/notification/NotificationSettingsBase$2;-><init>(Lcom/android/settings_ex/notification/NotificationSettingsBase;)V

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 243
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mSilent:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    new-instance v2, Lcom/android/settings_ex/notification/NotificationSettingsBase$3;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/notification/NotificationSettingsBase$3;-><init>(Lcom/android/settings_ex/notification/NotificationSettingsBase;)V

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 253
    if-eqz p3, :cond_5

    :goto_4
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/notification/NotificationSettingsBase;->updateDependents(I)V

    goto :goto_2

    .line 229
    :cond_4
    const/4 v0, 0x1

    .local v0, "blocked":Z
    goto :goto_3

    .end local v0    # "blocked":Z
    :cond_5
    move v3, p2

    .line 253
    goto :goto_4
.end method

.method protected setupPriorityPref(Z)V
    .locals 2
    .param p1, "priority"    # Z

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mPriority:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mSuspendedAppsAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 260
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mPriority:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setChecked(Z)V

    .line 261
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mPriority:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    new-instance v1, Lcom/android/settings_ex/notification/NotificationSettingsBase$4;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/notification/NotificationSettingsBase$4;-><init>(Lcom/android/settings_ex/notification/NotificationSettingsBase;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 258
    return-void
.end method

.method protected setupVisOverridePref(I)V
    .locals 9
    .param p1, "sensitive"    # I

    .prologue
    const/16 v8, -0x3e8

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v5, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v6, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mVisibilityOverride:Lcom/android/settings_ex/notification/RestrictedDropDownPreference;

    invoke-virtual {v6}, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->clearRestrictedItems()V

    .line 275
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettingsBase;->getLockscreenNotificationsEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettingsBase;->getLockscreenAllowPrivateNotifications()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 277
    const v6, 0x7f0e0e3d

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/notification/NotificationSettingsBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 278
    .local v3, "summaryShowEntry":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 279
    .local v4, "summaryShowEntryValue":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    const/16 v6, 0xc

    .line 281
    invoke-direct {p0, v3, v4, v6}, Lcom/android/settings_ex/notification/NotificationSettingsBase;->setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 286
    .end local v3    # "summaryShowEntry":Ljava/lang/String;
    .end local v4    # "summaryShowEntryValue":Ljava/lang/String;
    :cond_0
    const v6, 0x7f0e0e3e

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/notification/NotificationSettingsBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, "summaryHideEntry":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 288
    .local v2, "summaryHideEntryValue":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    const/4 v6, 0x4

    .line 290
    invoke-direct {p0, v1, v2, v6}, Lcom/android/settings_ex/notification/NotificationSettingsBase;->setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 292
    const v6, 0x7f0e0e3f

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/notification/NotificationSettingsBase;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    iget-object v7, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mVisibilityOverride:Lcom/android/settings_ex/notification/RestrictedDropDownPreference;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 295
    iget-object v7, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mVisibilityOverride:Lcom/android/settings_ex/notification/RestrictedDropDownPreference;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 297
    if-ne p1, v8, :cond_1

    .line 298
    iget-object v6, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mVisibilityOverride:Lcom/android/settings_ex/notification/RestrictedDropDownPreference;

    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettingsBase;->getGlobalVisibility()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->setValue(Ljava/lang/String;)V

    .line 302
    :goto_0
    iget-object v6, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mVisibilityOverride:Lcom/android/settings_ex/notification/RestrictedDropDownPreference;

    const-string/jumbo v7, "%s"

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v6, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mVisibilityOverride:Lcom/android/settings_ex/notification/RestrictedDropDownPreference;

    new-instance v7, Lcom/android/settings_ex/notification/NotificationSettingsBase$5;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/notification/NotificationSettingsBase$5;-><init>(Lcom/android/settings_ex/notification/NotificationSettingsBase;)V

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 270
    return-void

    .line 300
    :cond_1
    iget-object v6, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mVisibilityOverride:Lcom/android/settings_ex/notification/RestrictedDropDownPreference;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected toastAndFinish()V
    .locals 3

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0a09

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 377
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 375
    return-void
.end method

.method abstract updateDependents(I)V
.end method
