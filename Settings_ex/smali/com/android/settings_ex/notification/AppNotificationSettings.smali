.class public Lcom/android/settings_ex/notification/AppNotificationSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "AppNotificationSettings.java"


# static fields
.field private static final APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

.field private static final DEBUG:Z

.field private static final KEY_APP_SETTINGS:Ljava/lang/String; = "app_settings"

.field private static final KEY_BLOCK:Ljava/lang/String; = "block"

.field private static final KEY_LED_ENABLED:Ljava/lang/String; = "led_enabled"

.field private static final KEY_NO_ONGOING_ON_KEYGUARD:Ljava/lang/String; = "no_ongoing_on_keyguard"

.field private static final KEY_PEEKABLE:Ljava/lang/String; = "peekable"

.field private static final KEY_PRIORITY:Ljava/lang/String; = "priority"

.field private static final KEY_SENSITIVE:Ljava/lang/String; = "sensitive"

.field private static final KEY_SHOW_ON_KEYGUARD:Ljava/lang/String; = "show_on_keyguard"

.field private static final PACKAGENAME_CALENDAR:Ljava/lang/String; = "com.google.android.calendar"

.field private static final PACKAGENAME_CONTACTS:Ljava/lang/String; = "com.android.contacts"

.field private static final PACKAGENAME_DESKCOLCK:Ljava/lang/String; = "com.oneplus.deskclock"

.field private static final PACKAGENAME_OP_CALENDAR:Ljava/lang/String; = "com.oneplus.calendar"

.field private static final TAG:Ljava/lang/String; = "AppNotificationSettings"


# instance fields
.field private mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

.field private final mBackend:Lcom/android/settings_ex/notification/NotificationBackend;

.field private mBlock:Landroid/preference/SwitchPreference;

.field private mContext:Landroid/content/Context;

.field private mCreated:Z

.field private mIsSystemPackage:Z

.field private mLedEnabled:Landroid/preference/SwitchPreference;

.field private mPeekable:Landroid/preference/SwitchPreference;

.field private mPriority:Landroid/preference/SwitchPreference;

.field private mSensitive:Landroid/preference/SwitchPreference;

.field private mShowNoOngoingOnKeyguard:Landroid/preference/SwitchPreference;

.field private mShowOnKeyguard:Landroid/preference/SwitchPreference;

.field private mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    const-string v0, "AppNotificationSettings"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings_ex/notification/AppNotificationSettings;->DEBUG:Z

    .line 71
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.NOTIFICATION_PREFERENCES"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/notification/AppNotificationSettings;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 75
    new-instance v0, Lcom/android/settings_ex/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings_ex/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBackend:Lcom/android/settings_ex/notification/NotificationBackend;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/notification/AppNotificationSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/AppNotificationSettings;

    .prologue
    .line 54
    iget v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mUid:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/notification/AppNotificationSettings;)Lcom/android/settings_ex/notification/NotificationBackend;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/AppNotificationSettings;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBackend:Lcom/android/settings_ex/notification/NotificationBackend;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/notification/AppNotificationSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/AppNotificationSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/settings_ex/notification/AppNotificationSettings;->updateDependents(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/notification/AppNotificationSettings;)Lcom/android/settings_ex/notification/NotificationBackend$AppRow;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/AppNotificationSettings;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/notification/AppNotificationSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/AppNotificationSettings;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static applyConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;Ljava/util/List;)V
    .locals 8
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
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
    .line 371
    .local p1, "rows":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/settings_ex/notification/NotificationBackend$AppRow;>;"
    .local p2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-boolean v5, Lcom/android/settings_ex/notification/AppNotificationSettings;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v6, "AppNotificationSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " preference activities"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    const-string v5, " ;_;"

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 374
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 375
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 376
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    .line 377
    .local v4, "row":Lcom/android/settings_ex/notification/NotificationBackend$AppRow;
    if-nez v4, :cond_3

    .line 378
    sget-boolean v5, Lcom/android/settings_ex/notification/AppNotificationSettings;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "AppNotificationSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring notification preference activity ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") for unknown package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 371
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v4    # "row":Lcom/android/settings_ex/notification/NotificationBackend$AppRow;
    :cond_2
    const-string v5, ""

    goto :goto_0

    .line 383
    .restart local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v4    # "row":Lcom/android/settings_ex/notification/NotificationBackend$AppRow;
    :cond_3
    iget-object v5, v4, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->settingsIntent:Landroid/content/Intent;

    if-eqz v5, :cond_4

    .line 384
    sget-boolean v5, Lcom/android/settings_ex/notification/AppNotificationSettings;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "AppNotificationSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring duplicate notification preference activity ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") for package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 389
    :cond_4
    new-instance v5, Landroid/content/Intent;

    sget-object v6, Lcom/android/settings_ex/notification/AppNotificationSettings;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->settingsIntent:Landroid/content/Intent;

    goto/16 :goto_1

    .line 392
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v4    # "row":Lcom/android/settings_ex/notification/NotificationBackend$AppRow;
    :cond_5
    return-void
.end method

.method public static collectConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;)V
    .locals 1
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings_ex/notification/NotificationBackend$AppRow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 365
    .local p1, "rows":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/settings_ex/notification/NotificationBackend$AppRow;>;"
    invoke-static {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->queryNotificationConfigActivities(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v0

    .line 366
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {p0, p1, v0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->applyConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;Ljava/util/List;)V

    .line 367
    return-void
.end method

.method private static findPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 8
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 337
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 338
    .local v4, "packages":[Ljava/lang/String;
    if-eqz v4, :cond_1

    if-eqz p1, :cond_1

    .line 339
    array-length v0, v4

    .line 340
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 341
    aget-object v3, v4, v2

    .line 342
    .local v3, "p":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 344
    const/16 v5, 0x40

    :try_start_0
    invoke-virtual {p0, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 351
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "p":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 345
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    .restart local v3    # "p":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 346
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

    .line 340
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 351
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

    .line 327
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

    .line 322
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

.method public static queryNotificationConfigActivities(Landroid/content/pm/PackageManager;)Ljava/util/List;
    .locals 4
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 355
    sget-boolean v1, Lcom/android/settings_ex/notification/AppNotificationSettings;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "AppNotificationSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APP_NOTIFICATION_PREFS_CATEGORY_INTENT is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/settings_ex/notification/AppNotificationSettings;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_0
    sget-object v1, Lcom/android/settings_ex/notification/AppNotificationSettings;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 361
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    return-object v0
.end method

.method private setVisible(Landroid/preference/Preference;Z)V
    .locals 3
    .param p1, "p"    # Landroid/preference/Preference;
    .param p2, "visible"    # Z

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 313
    .local v0, "isVisible":Z
    :goto_0
    if-ne v0, p2, :cond_1

    .line 319
    :goto_1
    return-void

    .line 312
    .end local v0    # "isVisible":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 314
    .restart local v0    # "isVisible":Z
    :cond_1
    if-eqz p2, :cond_2

    .line 315
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 317
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private toastAndFinish()V
    .locals 3

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f0c079b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 333
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 334
    return-void
.end method

.method private updateDependents(Z)V
    .locals 7
    .param p1, "banned"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 295
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    .line 297
    .local v2, "lockscreenSecure":Z
    invoke-direct {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getLockscreenNotificationsEnabled()Z

    move-result v1

    .line 298
    .local v1, "lockscreenNotificationsEnabled":Z
    invoke-direct {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getLockscreenAllowPrivateNotifications()Z

    move-result v0

    .line 300
    .local v0, "allowPrivate":Z
    iget-object v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBlock:Landroid/preference/SwitchPreference;

    iget-boolean v3, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mIsSystemPackage:Z

    if-nez v3, :cond_6

    move v3, v4

    :goto_0
    invoke-direct {p0, v6, v3}, Lcom/android/settings_ex/notification/AppNotificationSettings;->setVisible(Landroid/preference/Preference;Z)V

    .line 301
    iget-object v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mPriority:Landroid/preference/SwitchPreference;

    iget-boolean v3, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mIsSystemPackage:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_7

    :cond_0
    move v3, v4

    :goto_1
    invoke-direct {p0, v6, v3}, Lcom/android/settings_ex/notification/AppNotificationSettings;->setVisible(Landroid/preference/Preference;Z)V

    .line 302
    iget-object v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mPeekable:Landroid/preference/SwitchPreference;

    iget-boolean v3, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mIsSystemPackage:Z

    if-nez v3, :cond_1

    if-nez p1, :cond_8

    :cond_1
    move v3, v4

    :goto_2
    invoke-direct {p0, v6, v3}, Lcom/android/settings_ex/notification/AppNotificationSettings;->setVisible(Landroid/preference/Preference;Z)V

    .line 303
    iget-object v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mSensitive:Landroid/preference/SwitchPreference;

    iget-boolean v3, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mIsSystemPackage:Z

    if-nez v3, :cond_2

    if-nez p1, :cond_9

    if-eqz v2, :cond_9

    if-eqz v1, :cond_9

    if-eqz v0, :cond_9

    :cond_2
    move v3, v4

    :goto_3
    invoke-direct {p0, v6, v3}, Lcom/android/settings_ex/notification/AppNotificationSettings;->setVisible(Landroid/preference/Preference;Z)V

    .line 305
    iget-object v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mShowOnKeyguard:Landroid/preference/SwitchPreference;

    iget-boolean v3, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mIsSystemPackage:Z

    if-nez v3, :cond_3

    if-nez p1, :cond_a

    if-eqz v1, :cond_a

    :cond_3
    move v3, v4

    :goto_4
    invoke-direct {p0, v6, v3}, Lcom/android/settings_ex/notification/AppNotificationSettings;->setVisible(Landroid/preference/Preference;Z)V

    .line 307
    iget-object v3, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mShowNoOngoingOnKeyguard:Landroid/preference/SwitchPreference;

    iget-boolean v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mIsSystemPackage:Z

    if-nez v6, :cond_4

    if-nez p1, :cond_5

    if-eqz v1, :cond_5

    :cond_4
    move v5, v4

    :cond_5
    invoke-direct {p0, v3, v5}, Lcom/android/settings_ex/notification/AppNotificationSettings;->setVisible(Landroid/preference/Preference;Z)V

    .line 309
    return-void

    :cond_6
    move v3, v5

    .line 300
    goto :goto_0

    :cond_7
    move v3, v5

    .line 301
    goto :goto_1

    :cond_8
    move v3, v5

    .line 302
    goto :goto_2

    :cond_9
    move v3, v5

    .line 303
    goto :goto_3

    :cond_a
    move v3, v5

    .line 305
    goto :goto_4
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 107
    const/16 v0, 0x48

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 94
    sget-boolean v0, Lcom/android/settings_ex/notification/AppNotificationSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AppNotificationSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityCreated mCreated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mCreated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mCreated:Z

    if-eqz v0, :cond_2

    .line 96
    const-string v0, "AppNotificationSettings"

    const-string v1, "onActivityCreated: ignoring duplicate call"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_1
    :goto_0
    return-void

    .line 99
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mCreated:Z

    .line 100
    iget-object v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget-object v1, v1, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->label:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget-object v2, v2, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/android/settings_ex/applications/AppInfoWithHeader;->getInfoIntent(Landroid/app/Fragment;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/android/settings_ex/AppHeader;->createAppHeader(Lcom/android/settings_ex/SettingsPreferenceFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v12, -0x1

    const/4 v9, 0x0

    .line 112
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mContext:Landroid/content/Context;

    .line 114
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 115
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 116
    .local v0, "args":Landroid/os/Bundle;
    sget-boolean v7, Lcom/android/settings_ex/notification/AppNotificationSettings;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "AppNotificationSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onCreate getIntent()="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    if-nez v2, :cond_2

    if-nez v0, :cond_2

    .line 118
    const-string v7, "AppNotificationSettings"

    const-string v8, "No intent"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-direct {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->toastAndFinish()V

    .line 283
    :cond_1
    :goto_0
    return-void

    .line 123
    :cond_2
    if-eqz v0, :cond_4

    const-string v7, "package"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "package"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, "pkg":Ljava/lang/String;
    :goto_1
    if-eqz v0, :cond_5

    const-string v7, "uid"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "uid"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    :goto_2
    iput v7, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mUid:I

    .line 129
    iget v7, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mUid:I

    if-eq v7, v12, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 130
    :cond_3
    const-string v7, "AppNotificationSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missing extras: app_package was "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "app_uid"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " was "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mUid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-direct {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->toastAndFinish()V

    goto :goto_0

    .line 123
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_4
    const-string v7, "app_package"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 126
    .restart local v4    # "pkg":Ljava/lang/String;
    :cond_5
    const-string v7, "app_uid"

    invoke-virtual {v2, v7, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    goto :goto_2

    .line 136
    :cond_6
    sget-boolean v7, Lcom/android/settings_ex/notification/AppNotificationSettings;->DEBUG:Z

    if-eqz v7, :cond_7

    const-string v7, "AppNotificationSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Load details for pkg="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mUid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 138
    .local v5, "pm":Landroid/content/pm/PackageManager;
    iget v7, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mUid:I

    invoke-static {v5, v4, v7}, Lcom/android/settings_ex/notification/AppNotificationSettings;->findPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 139
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_8

    .line 140
    const-string v7, "AppNotificationSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to find package info: app_package was "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "app_uid"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " was "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mUid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-direct {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->toastAndFinish()V

    goto/16 :goto_0

    .line 145
    :cond_8
    invoke-static {v5, v1}, Lcom/android/settings_ex/Utils;->isSystemPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mIsSystemPackage:Z

    .line 147
    const v7, 0x7f08000a

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/notification/AppNotificationSettings;->addPreferencesFromResource(I)V

    .line 148
    const-string v7, "block"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBlock:Landroid/preference/SwitchPreference;

    .line 149
    const-string v7, "priority"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mPriority:Landroid/preference/SwitchPreference;

    .line 150
    const-string v7, "peekable"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mPeekable:Landroid/preference/SwitchPreference;

    .line 151
    const-string v7, "sensitive"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mSensitive:Landroid/preference/SwitchPreference;

    .line 152
    const-string v7, "show_on_keyguard"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mShowOnKeyguard:Landroid/preference/SwitchPreference;

    .line 153
    const-string v7, "no_ongoing_on_keyguard"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mShowNoOngoingOnKeyguard:Landroid/preference/SwitchPreference;

    .line 154
    const-string v7, "led_enabled"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mLedEnabled:Landroid/preference/SwitchPreference;

    .line 156
    iget-object v7, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBackend:Lcom/android/settings_ex/notification/NotificationBackend;

    iget-object v10, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v5, v10}, Lcom/android/settings_ex/notification/NotificationBackend;->loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    .line 159
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 160
    .local v6, "rows":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/settings_ex/notification/NotificationBackend$AppRow;>;"
    iget-object v7, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget-object v7, v7, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    invoke-virtual {v6, v7, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/android/settings_ex/notification/AppNotificationSettings;->collectConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;)V

    .line 163
    iget-object v7, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBlock:Landroid/preference/SwitchPreference;

    iget-object v10, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget-boolean v10, v10, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->banned:Z

    invoke-virtual {v7, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 164
    iget-object v7, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget-boolean v7, v7, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->banned:Z

    invoke-direct {p0, v7}, Lcom/android/settings_ex/notification/AppNotificationSettings;->updateDependents(Z)V

    .line 165
    iget-object v7, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mPriority:Landroid/preference/SwitchPreference;

    iget-object v10, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget-boolean v10, v10, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->priority:Z

    invoke-virtual {v7, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 166
    iget-object v7, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mPeekable:Landroid/preference/SwitchPreference;

    iget-object v10, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget-boolean v10, v10, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->peekable:Z

    invoke-virtual {v7, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 167
    iget-object v7, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mSensitive:Landroid/preference/SwitchPreference;

    iget-object v10, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget-boolean v10, v10, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->sensitive:Z

    invoke-virtual {v7, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 169
    const-string v7, "com.oneplus.deskclock"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "com.android.contacts"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "com.google.android.calendar"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "com.oneplus.calendar"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 171
    :cond_9
    iget-object v7, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 172
    iget-object v7, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mPeekable:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 175
    :cond_a
    iget-object v7, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mLedEnabled:Landroid/preference/SwitchPreference;

    if-eqz v7, :cond_b

    .line 176
    iget-object v7, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mLedEnabled:Landroid/preference/SwitchPreference;

    iget-object v10, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget-boolean v10, v10, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->ledEnabled:Z

    invoke-virtual {v7, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 179
    :cond_b
    const-string v7, "com.android.contacts"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mLedEnabled:Landroid/preference/SwitchPreference;

    if-eqz v7, :cond_c

    .line 180
    iget-object v7, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mLedEnabled:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 183
    :cond_c
    iget-object v7, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBlock:Landroid/preference/SwitchPreference;

    new-instance v10, Lcom/android/settings_ex/notification/AppNotificationSettings$1;

    invoke-direct {v10, p0, v4}, Lcom/android/settings_ex/notification/AppNotificationSettings$1;-><init>(Lcom/android/settings_ex/notification/AppNotificationSettings;Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 198
    iget-object v7, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mPriority:Landroid/preference/SwitchPreference;

    new-instance v10, Lcom/android/settings_ex/notification/AppNotificationSettings$2;

    invoke-direct {v10, p0, v4}, Lcom/android/settings_ex/notification/AppNotificationSettings$2;-><init>(Lcom/android/settings_ex/notification/AppNotificationSettings;Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 206
    iget-object v7, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mPeekable:Landroid/preference/SwitchPreference;

    new-instance v10, Lcom/android/settings_ex/notification/AppNotificationSettings$3;

    invoke-direct {v10, p0, v4}, Lcom/android/settings_ex/notification/AppNotificationSettings$3;-><init>(Lcom/android/settings_ex/notification/AppNotificationSettings;Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 214
    iget-object v7, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mSensitive:Landroid/preference/SwitchPreference;

    new-instance v10, Lcom/android/settings_ex/notification/AppNotificationSettings$4;

    invoke-direct {v10, p0, v4}, Lcom/android/settings_ex/notification/AppNotificationSettings$4;-><init>(Lcom/android/settings_ex/notification/AppNotificationSettings;Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 222
    iget-object v7, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mLedEnabled:Landroid/preference/SwitchPreference;

    if-eqz v7, :cond_d

    .line 223
    iget-object v7, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mLedEnabled:Landroid/preference/SwitchPreference;

    new-instance v10, Lcom/android/settings_ex/notification/AppNotificationSettings$5;

    invoke-direct {v10, p0, v4}, Lcom/android/settings_ex/notification/AppNotificationSettings$5;-><init>(Lcom/android/settings_ex/notification/AppNotificationSettings;Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 232
    :cond_d
    iget-object v7, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget-object v7, v7, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->settingsIntent:Landroid/content/Intent;

    if-eqz v7, :cond_e

    .line 233
    const-string v7, "app_settings"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    new-instance v10, Lcom/android/settings_ex/notification/AppNotificationSettings$6;

    invoke-direct {v10, p0}, Lcom/android/settings_ex/notification/AppNotificationSettings$6;-><init>(Lcom/android/settings_ex/notification/AppNotificationSettings;)V

    invoke-virtual {v7, v10}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 245
    :goto_3
    iget-object v7, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBackend:Lcom/android/settings_ex/notification/NotificationBackend;

    iget v10, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mUid:I

    invoke-virtual {v7, v4, v10}, Lcom/android/settings_ex/notification/NotificationBackend;->getShowNotificationForPackageOnKeyguard(Ljava/lang/String;I)I

    move-result v3

    .line 246
    .local v3, "keyguard":I
    iget-object v10, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mShowOnKeyguard:Landroid/preference/SwitchPreference;

    and-int/lit8 v7, v3, 0x1

    if-eqz v7, :cond_f

    move v7, v8

    :goto_4
    invoke-virtual {v10, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 247
    iget-object v7, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mShowNoOngoingOnKeyguard:Landroid/preference/SwitchPreference;

    and-int/lit8 v10, v3, 0x2

    if-eqz v10, :cond_10

    :goto_5
    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 250
    iget-object v7, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mShowOnKeyguard:Landroid/preference/SwitchPreference;

    new-instance v8, Lcom/android/settings_ex/notification/AppNotificationSettings$7;

    invoke-direct {v8, p0, v4}, Lcom/android/settings_ex/notification/AppNotificationSettings$7;-><init>(Lcom/android/settings_ex/notification/AppNotificationSettings;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 265
    iget-object v7, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mShowNoOngoingOnKeyguard:Landroid/preference/SwitchPreference;

    new-instance v8, Lcom/android/settings_ex/notification/AppNotificationSettings$8;

    invoke-direct {v8, p0, v4}, Lcom/android/settings_ex/notification/AppNotificationSettings$8;-><init>(Lcom/android/settings_ex/notification/AppNotificationSettings;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 279
    const-string v7, "no_ongoing_on_keyguard"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/notification/AppNotificationSettings;->removePreference(Ljava/lang/String;)V

    .line 280
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 281
    const-string v7, "led_enabled"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/notification/AppNotificationSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 242
    .end local v3    # "keyguard":I
    :cond_e
    const-string v7, "app_settings"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/notification/AppNotificationSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_3

    .restart local v3    # "keyguard":I
    :cond_f
    move v7, v9

    .line 246
    goto :goto_4

    :cond_10
    move v8, v9

    .line 247
    goto :goto_5
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 287
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 288
    iget v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mUid:I

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->finish()V

    .line 292
    :cond_0
    return-void
.end method
