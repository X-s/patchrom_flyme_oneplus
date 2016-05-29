.class public Lcom/android/settings_ex/notification/AppNotificationSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "AppNotificationSettings.java"


# static fields
.field private static final DEBUG:Z

.field static final EXTRA_HAS_SETTINGS_INTENT:Ljava/lang/String; = "has_settings_intent"

.field static final EXTRA_SETTINGS_INTENT:Ljava/lang/String; = "settings_intent"

.field private static final KEY_BLOCK:Ljava/lang/String; = "block"

.field private static final KEY_PRIORITY:Ljava/lang/String; = "priority"

.field private static final KEY_SENSITIVE:Ljava/lang/String; = "sensitive"

.field private static final TAG:Ljava/lang/String; = "AppNotificationSettings"


# instance fields
.field private mAppRow:Lcom/android/settings_ex/notification/NotificationAppList$AppRow;

.field private final mBackend:Lcom/android/settings_ex/notification/NotificationAppList$Backend;

.field private mBlock:Landroid/preference/SwitchPreference;

.field private mContext:Landroid/content/Context;

.field private mCreated:Z

.field private mNotificationExample:Landroid/view/View;

.field private mPriority:Landroid/preference/SwitchPreference;

.field private mSensitive:Landroid/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    const-string v0, "AppNotificationSettings"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings_ex/notification/AppNotificationSettings;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 61
    new-instance v0, Lcom/android/settings_ex/notification/NotificationAppList$Backend;

    invoke-direct {v0}, Lcom/android/settings_ex/notification/NotificationAppList$Backend;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBackend:Lcom/android/settings_ex/notification/NotificationAppList$Backend;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/notification/AppNotificationSettings;)Lcom/android/settings_ex/notification/NotificationAppList$Backend;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/AppNotificationSettings;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBackend:Lcom/android/settings_ex/notification/NotificationAppList$Backend;

    return-object v0
.end method

.method private changeNotificationExampleVisibility(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 109
    if-eqz p1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mNotificationExample:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 113
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mNotificationExample:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private static findPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 8
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 246
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 247
    .local v4, "packages":[Ljava/lang/String;
    if-eqz v4, :cond_1

    if-eqz p1, :cond_1

    .line 248
    array-length v0, v4

    .line 249
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 250
    aget-object v3, v4, v2

    .line 251
    .local v3, "p":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 253
    const/16 v5, 0x40

    :try_start_0
    invoke-virtual {p0, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 260
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "p":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 254
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    .restart local v3    # "p":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 255
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "AppNotificationSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to load package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 249
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 260
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "p":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private getLockscreenAllowPrivateNotifications()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 236
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_allow_private_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getLockscreenNotificationsEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 231
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_show_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private toastAndFinish()V
    .locals 3

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f09062c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 242
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 243
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 73
    sget-boolean v2, Lcom/android/settings_ex/notification/AppNotificationSettings;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "AppNotificationSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityCreated mCreated="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mCreated:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    iget-boolean v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mCreated:Z

    if-eqz v2, :cond_2

    .line 75
    const-string v2, "AppNotificationSettings"

    const-string v3, "onActivityCreated: ignoring duplicate call"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_1
    :goto_0
    return-void

    .line 78
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mCreated:Z

    .line 79
    iget-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationAppList$AppRow;

    if-eqz v2, :cond_1

    .line 80
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0f0213

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 81
    .local v0, "content":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 105
    .local v1, "contentParent":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationAppList$AppRow;

    iget-object v3, v3, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;->label:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mContext:Landroid/content/Context;

    .line 118
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 119
    .local v3, "intent":Landroid/content/Intent;
    sget-boolean v10, Lcom/android/settings_ex/notification/AppNotificationSettings;->DEBUG:Z

    if-eqz v10, :cond_0

    const-string v10, "AppNotificationSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onCreate getIntent()="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    if-nez v3, :cond_2

    .line 121
    const-string v10, "AppNotificationSettings"

    const-string v11, "No intent"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-direct {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->toastAndFinish()V

    .line 228
    :cond_1
    :goto_0
    return-void

    .line 126
    :cond_2
    const-string v10, "app_uid"

    const/4 v11, -0x1

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 127
    .local v9, "uid":I
    const-string v10, "app_package"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 128
    .local v5, "pkg":Ljava/lang/String;
    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 129
    :cond_3
    const-string v10, "AppNotificationSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Missing extras: app_package was "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "app_uid"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " was "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-direct {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->toastAndFinish()V

    goto :goto_0

    .line 135
    :cond_4
    sget-boolean v10, Lcom/android/settings_ex/notification/AppNotificationSettings;->DEBUG:Z

    if-eqz v10, :cond_5

    const-string v10, "AppNotificationSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Load details for pkg="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " uid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 137
    .local v6, "pm":Landroid/content/pm/PackageManager;
    invoke-static {v6, v5, v9}, Lcom/android/settings_ex/notification/AppNotificationSettings;->findPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 138
    .local v2, "info":Landroid/content/pm/PackageInfo;
    if-nez v2, :cond_6

    .line 139
    const-string v10, "AppNotificationSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to find package info: app_package was "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "app_uid"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " was "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-direct {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->toastAndFinish()V

    goto/16 :goto_0

    .line 145
    :cond_6
    const v10, 0x7f06000b

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/notification/AppNotificationSettings;->addPreferencesFromResource(I)V

    .line 146
    const-string v10, "block"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreference;

    iput-object v10, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBlock:Landroid/preference/SwitchPreference;

    .line 147
    const-string v10, "priority"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreference;

    iput-object v10, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mPriority:Landroid/preference/SwitchPreference;

    .line 148
    const-string v10, "sensitive"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreference;

    iput-object v10, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mSensitive:Landroid/preference/SwitchPreference;

    .line 150
    new-instance v10, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v8

    .line 151
    .local v8, "secure":Z
    invoke-direct {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getLockscreenNotificationsEnabled()Z

    move-result v1

    .line 152
    .local v1, "enabled":Z
    invoke-direct {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getLockscreenAllowPrivateNotifications()Z

    move-result v0

    .line 156
    .local v0, "allowPrivate":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mSensitive:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 158
    iget-object v10, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBackend:Lcom/android/settings_ex/notification/NotificationAppList$Backend;

    invoke-static {v6, v10, v11}, Lcom/android/settings_ex/notification/NotificationAppList;->loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/android/settings_ex/notification/NotificationAppList$Backend;)Lcom/android/settings_ex/notification/NotificationAppList$AppRow;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationAppList$AppRow;

    .line 159
    const-string v10, "has_settings_intent"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 161
    const-string v10, "has_settings_intent"

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 162
    iget-object v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationAppList$AppRow;

    const-string v10, "settings_intent"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/content/Intent;

    iput-object v10, v11, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;->settingsIntent:Landroid/content/Intent;

    .line 171
    :cond_7
    :goto_1
    iget-object v10, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBlock:Landroid/preference/SwitchPreference;

    iget-object v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationAppList$AppRow;

    iget-boolean v11, v11, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;->banned:Z

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 172
    iget-object v10, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mPriority:Landroid/preference/SwitchPreference;

    iget-object v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationAppList$AppRow;

    iget-boolean v11, v11, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;->priority:Z

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 173
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0f0215

    invoke-virtual {v10, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mNotificationExample:Landroid/view/View;

    .line 175
    iget-object v10, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mSensitive:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_8

    .line 176
    iget-object v10, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mSensitive:Landroid/preference/SwitchPreference;

    iget-object v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationAppList$AppRow;

    iget-boolean v11, v11, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;->sensitive:Z

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 179
    :cond_8
    iget-object v10, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBlock:Landroid/preference/SwitchPreference;

    new-instance v11, Lcom/android/settings_ex/notification/AppNotificationSettings$1;

    invoke-direct {v11, p0, v5, v9}, Lcom/android/settings_ex/notification/AppNotificationSettings$1;-><init>(Lcom/android/settings_ex/notification/AppNotificationSettings;Ljava/lang/String;I)V

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 187
    iget-object v10, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mPriority:Landroid/preference/SwitchPreference;

    new-instance v11, Lcom/android/settings_ex/notification/AppNotificationSettings$2;

    invoke-direct {v11, p0, v5, v9}, Lcom/android/settings_ex/notification/AppNotificationSettings$2;-><init>(Lcom/android/settings_ex/notification/AppNotificationSettings;Ljava/lang/String;I)V

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 196
    iget-object v10, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mSensitive:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_9

    .line 197
    iget-object v10, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mSensitive:Landroid/preference/SwitchPreference;

    new-instance v11, Lcom/android/settings_ex/notification/AppNotificationSettings$3;

    invoke-direct {v11, p0, v5, v9}, Lcom/android/settings_ex/notification/AppNotificationSettings$3;-><init>(Lcom/android/settings_ex/notification/AppNotificationSettings;Ljava/lang/String;I)V

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 208
    :cond_9
    invoke-static {v6, v2}, Lcom/android/settings_ex/Utils;->isSystemPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v4

    .line 211
    .local v4, "isSystemPkg":Z
    if-eqz v4, :cond_a

    .line 212
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 213
    iget-object v10, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mPriority:Landroid/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setDependency(Ljava/lang/String;)V

    .line 216
    :cond_a
    iget-object v10, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/settings_ex/notification/NotificationSettingsUtil;->shouldNotModifyNotificationSettingOptions(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 218
    iget-object v10, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBlock:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_b

    .line 219
    iget-object v10, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBlock:Landroid/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 221
    :cond_b
    iget-object v10, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mPriority:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_c

    .line 222
    iget-object v10, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mPriority:Landroid/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 224
    :cond_c
    iget-object v10, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mSensitive:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_1

    .line 225
    iget-object v10, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mSensitive:Landroid/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 166
    .end local v4    # "isSystemPkg":Z
    :cond_d
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 167
    .local v7, "rows":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/settings_ex/notification/NotificationAppList$AppRow;>;"
    iget-object v10, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationAppList$AppRow;

    iget-object v10, v10, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;->pkg:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationAppList$AppRow;

    invoke-virtual {v7, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-static {v10, v7}, Lcom/android/settings_ex/notification/NotificationAppList;->collectConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;)V

    goto/16 :goto_1
.end method
