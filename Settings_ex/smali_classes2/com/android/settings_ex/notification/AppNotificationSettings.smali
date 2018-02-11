.class public Lcom/android/settings_ex/notification/AppNotificationSettings;
.super Lcom/android/settings_ex/notification/NotificationSettingsBase;
.source "AppNotificationSettings.java"

# interfaces
.implements Lcom/android/settings_ex/ui/RadioButtonPreference$OnClickListener;


# static fields
.field private static final APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

.field private static final DEBUG:Z

.field private static final KEY_BLOCK_ALL_NOTIFICATIONS:Ljava/lang/String; = "block_all_notifications"

.field private static final KEY_DENOISE_NOTIFICATION:Ljava/lang/String; = "denoise_notification"

.field private static final KEY_DONOT_SILENCE_OR_BLOCK:Ljava/lang/String; = "donot_silence_or_block"

.field protected static final KEY_LED_ENABLED:Ljava/lang/String; = "led_enabled"

.field private static final TAG:Ljava/lang/String; = "AppNotificationSettings"


# instance fields
.field private mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

.field private mBlockAllNotificationsPreference:Lcom/android/settings_ex/ui/RadioButtonPreference;

.field private mDenoiseNotificationPreference:Lcom/android/settings_ex/ui/RadioButtonPreference;

.field private mDndVisualEffectsSuppressed:Z

.field private mDonotDilenceOrBlockPreference:Lcom/android/settings_ex/ui/RadioButtonPreference;

.field private mINotificationManager:Landroid/app/INotificationManager;

.field private mLedEnabled:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    const-string/jumbo v0, "AppNotificationSettings"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings_ex/notification/AppNotificationSettings;->DEBUG:Z

    .line 67
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    const-string/jumbo v1, "android.intent.category.NOTIFICATION_PREFERENCES"

    .line 67
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 66
    sput-object v0, Lcom/android/settings_ex/notification/AppNotificationSettings;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettingsBase;-><init>()V

    return-void
.end method

.method private applyConfigActivities(Landroid/util/ArrayMap;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings_ex/notification/NotificationBackend$AppRow;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 303
    .local p1, "rows":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/settings_ex/notification/NotificationBackend$AppRow;>;"
    .local p2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-boolean v5, Lcom/android/settings_ex/notification/AppNotificationSettings;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string/jumbo v6, "AppNotificationSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Found "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " preference activities"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 304
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, " ;_;"

    .line 303
    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "ri$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 306
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 307
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 308
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    .line 309
    .local v4, "row":Lcom/android/settings_ex/notification/NotificationBackend$AppRow;
    if-nez v4, :cond_3

    .line 310
    sget-boolean v5, Lcom/android/settings_ex/notification/AppNotificationSettings;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "AppNotificationSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Ignoring notification preference activity ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 311
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 310
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 311
    const-string/jumbo v7, ") for unknown package "

    .line 310
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 312
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 310
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 304
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v3    # "ri$iterator":Ljava/util/Iterator;
    .end local v4    # "row":Lcom/android/settings_ex/notification/NotificationBackend$AppRow;
    :cond_2
    const-string/jumbo v5, ""

    goto :goto_0

    .line 315
    .restart local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "ri$iterator":Ljava/util/Iterator;
    .restart local v4    # "row":Lcom/android/settings_ex/notification/NotificationBackend$AppRow;
    :cond_3
    iget-object v5, v4, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->settingsIntent:Landroid/content/Intent;

    if-eqz v5, :cond_4

    .line 316
    sget-boolean v5, Lcom/android/settings_ex/notification/AppNotificationSettings;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "AppNotificationSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Ignoring duplicate notification preference activity ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 317
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 316
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 317
    const-string/jumbo v7, ") for package "

    .line 316
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 318
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 316
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 321
    :cond_4
    new-instance v5, Landroid/content/Intent;

    sget-object v6, Lcom/android/settings_ex/notification/AppNotificationSettings;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 322
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 321
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->settingsIntent:Landroid/content/Intent;

    goto/16 :goto_1

    .line 302
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v4    # "row":Lcom/android/settings_ex/notification/NotificationBackend$AppRow;
    :cond_5
    return-void
.end method

.method private collectConfigActivities(Landroid/util/ArrayMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings_ex/notification/NotificationBackend$AppRow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 297
    .local p1, "rows":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/settings_ex/notification/NotificationBackend$AppRow;>;"
    invoke-direct {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->queryNotificationConfigActivities()Ljava/util/List;

    move-result-object v0

    .line 298
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->applyConfigActivities(Landroid/util/ArrayMap;Ljava/util/List;)V

    .line 296
    return-void
.end method

.method private queryNotificationConfigActivities()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    sget-boolean v1, Lcom/android/settings_ex/notification/AppNotificationSettings;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "AppNotificationSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "APP_NOTIFICATION_PREFS_CATEGORY_INTENT is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 288
    sget-object v3, Lcom/android/settings_ex/notification/AppNotificationSettings;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    .line 287
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 290
    sget-object v2, Lcom/android/settings_ex/notification/AppNotificationSettings;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    .line 291
    const/4 v3, 0x0

    .line 289
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 293
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    return-object v0
.end method


# virtual methods
.method protected checkCanBeVisible(II)Z
    .locals 2
    .param p1, "minImportanceVisible"    # I
    .param p2, "importance"    # I

    .prologue
    const/4 v0, 0x1

    .line 280
    const/16 v1, -0x3e8

    if-ne p2, v1, :cond_0

    .line 281
    return v0

    .line 283
    :cond_0
    if-lt p2, p1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 98
    const/16 v0, 0x48

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/android/settings_ex/notification/NotificationSettingsBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    if-nez v0, :cond_0

    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget-object v1, v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget-object v2, v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->label:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget-object v3, v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget v4, v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->uid:I

    .line 93
    iget-object v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget-object v5, v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->settingsIntent:Landroid/content/Intent;

    move-object v0, p0

    .line 92
    invoke-static/range {v0 .. v5}, Lcom/android/settings_ex/AppHeader;->createAppHeader(Lcom/android/settings_ex/SettingsPreferenceFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/content/Intent;)V

    .line 89
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 103
    invoke-super {p0, p1}, Lcom/android/settings_ex/notification/NotificationSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 105
    const v2, 0x7f08000d

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/notification/AppNotificationSettings;->addPreferencesFromResource(I)V

    .line 106
    const-string/jumbo v2, "importance"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;

    iput-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mImportance:Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;

    .line 108
    const-string/jumbo v2, "levels"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mLevelsCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 109
    const-string/jumbo v2, "more"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mMoreCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 112
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    const-string/jumbo v4, "bypass_dnd"

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    .line 111
    iput-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mPriority:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    .line 114
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    .line 115
    const-string/jumbo v4, "visibility_override"

    .line 114
    invoke-virtual {v2, v4}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;

    .line 113
    iput-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mVisibilityOverride:Lcom/android/settings_ex/notification/RestrictedDropDownPreference;

    .line 117
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    const-string/jumbo v4, "led_enabled"

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    iput-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mLedEnabled:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    .line 119
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    const-string/jumbo v4, "block"

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    iput-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    .line 120
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    const-string/jumbo v4, "silent"

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    iput-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mSilent:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    .line 122
    const-string/jumbo v2, "donot_silence_or_block"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/ui/RadioButtonPreference;

    iput-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mDonotDilenceOrBlockPreference:Lcom/android/settings_ex/ui/RadioButtonPreference;

    .line 123
    const-string/jumbo v2, "denoise_notification"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/ui/RadioButtonPreference;

    iput-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mDenoiseNotificationPreference:Lcom/android/settings_ex/ui/RadioButtonPreference;

    .line 124
    const-string/jumbo v2, "block_all_notifications"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/ui/RadioButtonPreference;

    iput-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBlockAllNotificationsPreference:Lcom/android/settings_ex/ui/RadioButtonPreference;

    .line 126
    const-string/jumbo v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 125
    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mINotificationManager:Landroid/app/INotificationManager;

    .line 129
    iget-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mPkgInfo:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_1

    .line 130
    iget-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBackend:Lcom/android/settings_ex/notification/NotificationBackend;

    iget-object v4, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mPkgInfo:Landroid/content/pm/PackageInfo;

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/settings_ex/notification/NotificationBackend;->loadAppRow(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    .line 133
    iget-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    .line 134
    .local v0, "policy":Landroid/app/NotificationManager$Policy;
    if-nez v0, :cond_a

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mDndVisualEffectsSuppressed:Z

    .line 137
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 138
    .local v1, "rows":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/settings_ex/notification/NotificationBackend$AppRow;>;"
    iget-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget-object v2, v2, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-direct {p0, v1}, Lcom/android/settings_ex/notification/AppNotificationSettings;->collectConfigActivities(Landroid/util/ArrayMap;)V

    .line 141
    iget-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget-boolean v2, v2, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->systemApp:Z

    iget-object v4, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget v4, v4, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->appImportance:I

    iget-object v5, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget-boolean v5, v5, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->banned:Z

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/settings_ex/notification/AppNotificationSettings;->setupImportancePrefs(ZIZ)V

    .line 142
    iget-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget-boolean v2, v2, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->appBypassDnd:Z

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/notification/AppNotificationSettings;->setupPriorityPref(Z)V

    .line 143
    iget-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget v2, v2, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->appVisOverride:I

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/notification/AppNotificationSettings;->setupVisOverridePref(I)V

    .line 144
    iget-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget v2, v2, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->appImportance:I

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/notification/AppNotificationSettings;->updateDependents(I)V

    .line 146
    iget-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mLedEnabled:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    if-eqz v2, :cond_1

    .line 147
    iget-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mLedEnabled:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    iget-object v4, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget-boolean v4, v4, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->ledEnabled:Z

    invoke-virtual {v2, v4}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setChecked(Z)V

    .line 152
    .end local v0    # "policy":Landroid/app/NotificationManager$Policy;
    .end local v1    # "rows":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/settings_ex/notification/NotificationBackend$AppRow;>;"
    :cond_1
    const-string/jumbo v2, "com.android.dialer"

    iget-object v4, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mPkg:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mLedEnabled:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    if-eqz v2, :cond_2

    .line 153
    iget-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mLedEnabled:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setEnabled(Z)V

    .line 155
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mLedEnabled:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    if-eqz v2, :cond_3

    .line 156
    iget-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mLedEnabled:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    new-instance v3, Lcom/android/settings_ex/notification/AppNotificationSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/notification/AppNotificationSettings$1;-><init>(Lcom/android/settings_ex/notification/AppNotificationSettings;)V

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 166
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mLedEnabled:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    if-eqz v2, :cond_4

    .line 167
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mLedEnabled:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 169
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    if-eqz v2, :cond_5

    .line 170
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 172
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mSilent:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    if-eqz v2, :cond_6

    .line 173
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mSilent:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 175
    :cond_6
    iget-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mDonotDilenceOrBlockPreference:Lcom/android/settings_ex/ui/RadioButtonPreference;

    if-eqz v2, :cond_7

    .line 176
    iget-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mDonotDilenceOrBlockPreference:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v2, p0}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings_ex/ui/RadioButtonPreference$OnClickListener;)V

    .line 178
    :cond_7
    iget-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mDenoiseNotificationPreference:Lcom/android/settings_ex/ui/RadioButtonPreference;

    if-eqz v2, :cond_8

    .line 179
    iget-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mDenoiseNotificationPreference:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v2, p0}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings_ex/ui/RadioButtonPreference$OnClickListener;)V

    .line 181
    :cond_8
    iget-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBlockAllNotificationsPreference:Lcom/android/settings_ex/ui/RadioButtonPreference;

    if-eqz v2, :cond_9

    .line 182
    iget-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBlockAllNotificationsPreference:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v2, p0}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings_ex/ui/RadioButtonPreference$OnClickListener;)V

    .line 102
    :cond_9
    return-void

    .line 134
    .restart local v0    # "policy":Landroid/app/NotificationManager$Policy;
    :cond_a
    iget v2, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public onRadioButtonClicked(Lcom/android/settings_ex/ui/RadioButtonPreference;)V
    .locals 5
    .param p1, "emiter"    # Lcom/android/settings_ex/ui/RadioButtonPreference;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 188
    const/4 v1, 0x0

    .line 189
    .local v1, "oplevel":I
    iget-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mDonotDilenceOrBlockPreference:Lcom/android/settings_ex/ui/RadioButtonPreference;

    if-ne p1, v2, :cond_1

    .line 190
    iget-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mDonotDilenceOrBlockPreference:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v2, v4}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 191
    iget-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mDenoiseNotificationPreference:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 192
    iget-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBlockAllNotificationsPreference:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 193
    const/4 v1, 0x0

    .line 206
    :cond_0
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mINotificationManager:Landroid/app/INotificationManager;

    iget-object v3, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mPkg:Ljava/lang/String;

    iget v4, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mUid:I

    invoke-interface {v2, v3, v4, v1}, Landroid/app/INotificationManager;->setOPLevel(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_1
    return-void

    .line 194
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mDenoiseNotificationPreference:Lcom/android/settings_ex/ui/RadioButtonPreference;

    if-ne p1, v2, :cond_2

    .line 195
    iget-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mDonotDilenceOrBlockPreference:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 196
    iget-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mDenoiseNotificationPreference:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v2, v4}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 197
    iget-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBlockAllNotificationsPreference:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 198
    const/4 v1, 0x1

    goto :goto_0

    .line 199
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBlockAllNotificationsPreference:Lcom/android/settings_ex/ui/RadioButtonPreference;

    if-ne p1, v2, :cond_0

    .line 200
    iget-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mDonotDilenceOrBlockPreference:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 201
    iget-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mDenoiseNotificationPreference:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 202
    iget-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBlockAllNotificationsPreference:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v2, v4}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 203
    const/4 v1, 0x2

    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 215
    invoke-super {p0}, Lcom/android/settings_ex/notification/NotificationSettingsBase;->onResume()V

    .line 216
    const/4 v2, 0x0

    .line 218
    .local v2, "oplevel":I
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mINotificationManager:Landroid/app/INotificationManager;

    iget-object v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mPkg:Ljava/lang/String;

    iget v7, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mUid:I

    invoke-interface {v3, v6, v7}, Landroid/app/INotificationManager;->getOPLevel(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 222
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mDonotDilenceOrBlockPreference:Lcom/android/settings_ex/ui/RadioButtonPreference;

    if-eqz v3, :cond_0

    .line 223
    iget-object v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mDonotDilenceOrBlockPreference:Lcom/android/settings_ex/ui/RadioButtonPreference;

    if-nez v2, :cond_4

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 225
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mDenoiseNotificationPreference:Lcom/android/settings_ex/ui/RadioButtonPreference;

    if-eqz v3, :cond_1

    .line 226
    iget-object v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mDenoiseNotificationPreference:Lcom/android/settings_ex/ui/RadioButtonPreference;

    if-ne v2, v4, :cond_5

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 228
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBlockAllNotificationsPreference:Lcom/android/settings_ex/ui/RadioButtonPreference;

    if-eqz v3, :cond_2

    .line 229
    iget-object v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBlockAllNotificationsPreference:Lcom/android/settings_ex/ui/RadioButtonPreference;

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    move v3, v4

    :goto_3
    invoke-virtual {v6, v3}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 233
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 234
    const-string/jumbo v6, "accessibility_display_inversion_enabled"

    .line 232
    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 235
    .local v1, "mShowImportance":I
    if-ne v1, v4, :cond_3

    .line 236
    iget-object v3, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget v3, v3, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->appImportance:I

    if-nez v3, :cond_7

    .line 237
    iget-object v3, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mDonotDilenceOrBlockPreference:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v3, v5}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 238
    iget-object v3, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mDenoiseNotificationPreference:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v3, v5}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 239
    iget-object v3, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBlockAllNotificationsPreference:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 213
    :cond_3
    :goto_4
    return-void

    .line 219
    .end local v1    # "mShowImportance":I
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    move v3, v5

    .line 223
    goto :goto_1

    :cond_5
    move v3, v5

    .line 226
    goto :goto_2

    :cond_6
    move v3, v5

    .line 229
    goto :goto_3

    .line 240
    .restart local v1    # "mShowImportance":I
    :cond_7
    iget-object v3, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget v3, v3, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->appImportance:I

    if-ne v3, v4, :cond_8

    .line 241
    iget-object v3, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mDonotDilenceOrBlockPreference:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v3, v5}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 242
    iget-object v3, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mDenoiseNotificationPreference:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 243
    iget-object v3, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBlockAllNotificationsPreference:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v3, v5}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    goto :goto_4

    .line 244
    :cond_8
    iget-object v3, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget v3, v3, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->appImportance:I

    if-le v3, v4, :cond_3

    .line 245
    iget-object v3, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget v3, v3, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->appImportance:I

    const/4 v6, 0x5

    if-ge v3, v6, :cond_3

    .line 246
    iget-object v3, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mDonotDilenceOrBlockPreference:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 247
    iget-object v3, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mDenoiseNotificationPreference:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v3, v5}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 248
    iget-object v3, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBlockAllNotificationsPreference:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v3, v5}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    goto :goto_4
.end method

.method protected updateDependents(I)V
    .locals 7
    .param p1, "importance"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 256
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 257
    .local v2, "utils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    .line 258
    .local v0, "lockscreenSecure":Z
    iget-object v3, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 259
    .local v1, "parentUser":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    .line 260
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    or-int/2addr v0, v3

    .line 263
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v6}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 264
    iget-object v3, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mSilent:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {p0, v4, p1}, Lcom/android/settings_ex/notification/AppNotificationSettings;->checkCanBeVisible(II)Z

    move-result v6

    invoke-virtual {p0, v3, v6}, Lcom/android/settings_ex/notification/AppNotificationSettings;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    .line 265
    iget-object v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mSilent:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setChecked(Z)V

    .line 270
    :cond_1
    iget-object v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mPriority:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    const/4 v3, 0x3

    invoke-virtual {p0, v3, p1}, Lcom/android/settings_ex/notification/AppNotificationSettings;->checkCanBeVisible(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 271
    iget-boolean v3, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mDndVisualEffectsSuppressed:Z

    if-eqz v3, :cond_3

    move v3, v5

    .line 270
    :goto_1
    invoke-virtual {p0, v6, v3}, Lcom/android/settings_ex/notification/AppNotificationSettings;->setVisibleForMore(Landroid/support/v7/preference/Preference;Z)V

    .line 274
    iget-object v3, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mVisibilityOverride:Lcom/android/settings_ex/notification/RestrictedDropDownPreference;

    .line 275
    invoke-virtual {p0, v4, p1}, Lcom/android/settings_ex/notification/AppNotificationSettings;->checkCanBeVisible(II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 274
    .end local v0    # "lockscreenSecure":Z
    :goto_2
    invoke-virtual {p0, v3, v0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->setVisibleForMore(Landroid/support/v7/preference/Preference;Z)V

    .line 255
    return-void

    .restart local v0    # "lockscreenSecure":Z
    :cond_2
    move v3, v5

    .line 265
    goto :goto_0

    :cond_3
    move v3, v4

    .line 271
    goto :goto_1

    :cond_4
    move v3, v5

    .line 270
    goto :goto_1

    :cond_5
    move v0, v5

    .line 275
    goto :goto_2
.end method
