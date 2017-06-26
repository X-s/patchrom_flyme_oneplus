.class public Lcom/android/settings_ex/notification/AppNotificationSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "AppNotificationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

.field private static final DEBUG:Z

.field public static final EXTRA_HAS_SETTINGS_INTENT:Ljava/lang/String; = "has_settings_intent"

.field public static final EXTRA_SETTINGS_INTENT:Ljava/lang/String; = "settings_intent"

.field private static final KEY_APP_SETTINGS:Ljava/lang/String; = "app_settings"

.field private static final KEY_BLOCK:Ljava/lang/String; = "block"

.field private static final KEY_NORMAL:Ljava/lang/String; = "normal"

.field private static final KEY_NOTIFICATION_EXAMPLE:Ljava/lang/String; = "opnotification_example"

.field private static final KEY_PEEKABLE:Ljava/lang/String; = "peekable"

.field private static final KEY_PRIORITY:Ljava/lang/String; = "priority"

.field private static final TAG:Ljava/lang/String; = "AppNotificationSettings"


# instance fields
.field private mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

.field private final mBackend:Lcom/android/settings_ex/notification/NotificationBackend;

.field private mBlock:Lcom/android/settings_ex/location/RadioButtonPreference;

.field private mContext:Landroid/content/Context;

.field private mCreated:Z

.field private mIsSystemPackage:Z

.field private mNormal:Lcom/android/settings_ex/location/RadioButtonPreference;

.field private mOPNotificationExamplePreference:Lcom/android/settings_ex/ui/OPNotificationExamplePreference;

.field private mPeekable:Lcom/android/settings_ex/location/RadioButtonPreference;

.field private mPriority:Lcom/android/settings_ex/location/RadioButtonPreference;

.field private mUid:I

.field private pkg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 68
    const-string v0, "AppNotificationSettings"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings_ex/notification/AppNotificationSettings;->DEBUG:Z

    .line 80
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
    .line 65
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 84
    new-instance v0, Lcom/android/settings_ex/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings_ex/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBackend:Lcom/android/settings_ex/notification/NotificationBackend;

    return-void
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
    .line 354
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

    .line 356
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

    .line 357
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 358
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 359
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    .line 360
    .local v4, "row":Lcom/android/settings_ex/notification/NotificationBackend$AppRow;
    if-nez v4, :cond_3

    .line 361
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

    .line 354
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v4    # "row":Lcom/android/settings_ex/notification/NotificationBackend$AppRow;
    :cond_2
    const-string v5, ""

    goto :goto_0

    .line 366
    .restart local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v4    # "row":Lcom/android/settings_ex/notification/NotificationBackend$AppRow;
    :cond_3
    iget-object v5, v4, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->settingsIntent:Landroid/content/Intent;

    if-eqz v5, :cond_4

    .line 367
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

    .line 372
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

    .line 375
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v4    # "row":Lcom/android/settings_ex/notification/NotificationBackend$AppRow;
    :cond_5
    return-void
.end method

.method private changeNotificationExampleVisibility(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 113
    if-eqz p1, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mOPNotificationExamplePreference:Lcom/android/settings_ex/ui/OPNotificationExamplePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mOPNotificationExamplePreference:Lcom/android/settings_ex/ui/OPNotificationExamplePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
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
    .line 348
    .local p1, "rows":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/settings_ex/notification/NotificationBackend$AppRow;>;"
    invoke-static {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->queryNotificationConfigActivities(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v0

    .line 349
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {p0, p1, v0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->applyConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;Ljava/util/List;)V

    .line 350
    return-void
.end method

.method private static findPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 8
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 320
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 321
    .local v4, "packages":[Ljava/lang/String;
    if-eqz v4, :cond_1

    if-eqz p1, :cond_1

    .line 322
    array-length v0, v4

    .line 323
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 324
    aget-object v3, v4, v2

    .line 325
    .local v3, "p":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 327
    const/16 v5, 0x40

    :try_start_0
    invoke-virtual {p0, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 334
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "p":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 328
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    .restart local v3    # "p":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 329
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

    .line 323
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 334
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

    .line 310
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

    .line 305
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
    .line 338
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

    .line 340
    :cond_0
    sget-object v1, Lcom/android/settings_ex/notification/AppNotificationSettings;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 344
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    return-object v0
.end method

.method private setRadioPreferenceSelected(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 379
    const-string v0, "block"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    iget-object v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mOPNotificationExamplePreference:Lcom/android/settings_ex/ui/OPNotificationExamplePreference;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/ui/OPNotificationExamplePreference;->setStyle(I)V

    .line 381
    iget-object v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBlock:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 382
    iget-object v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mPriority:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 383
    iget-object v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mNormal:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    const-string v0, "normal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 385
    iget-object v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mOPNotificationExamplePreference:Lcom/android/settings_ex/ui/OPNotificationExamplePreference;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/OPNotificationExamplePreference;->setStyle(I)V

    .line 386
    iget-object v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBlock:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 387
    iget-object v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mPriority:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 388
    iget-object v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mNormal:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 389
    :cond_2
    const-string v0, "priority"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mOPNotificationExamplePreference:Lcom/android/settings_ex/ui/OPNotificationExamplePreference;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/OPNotificationExamplePreference;->setStyle(I)V

    .line 391
    iget-object v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBlock:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 392
    iget-object v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mPriority:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 393
    iget-object v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mNormal:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private setVisible(Landroid/preference/Preference;Z)V
    .locals 3
    .param p1, "p"    # Landroid/preference/Preference;
    .param p2, "visible"    # Z

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 296
    .local v0, "isVisible":Z
    :goto_0
    if-ne v0, p2, :cond_0

    .line 302
    :cond_0
    return-void

    .line 295
    .end local v0    # "isVisible":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private toastAndFinish()V
    .locals 3

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f0c07ca

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 316
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 317
    return-void
.end method

.method private updateDependents(Z)V
    .locals 7
    .param p1, "banned"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 281
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    .line 283
    .local v2, "lockscreenSecure":Z
    invoke-direct {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getLockscreenNotificationsEnabled()Z

    move-result v1

    .line 284
    .local v1, "lockscreenNotificationsEnabled":Z
    invoke-direct {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getLockscreenAllowPrivateNotifications()Z

    move-result v0

    .line 286
    .local v0, "allowPrivate":Z
    iget-object v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBlock:Lcom/android/settings_ex/location/RadioButtonPreference;

    iget-boolean v3, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mIsSystemPackage:Z

    if-nez v3, :cond_2

    move v3, v4

    :goto_0
    invoke-direct {p0, v6, v3}, Lcom/android/settings_ex/notification/AppNotificationSettings;->setVisible(Landroid/preference/Preference;Z)V

    .line 287
    iget-object v3, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mPriority:Lcom/android/settings_ex/location/RadioButtonPreference;

    iget-boolean v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mIsSystemPackage:Z

    if-nez v6, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v5, v4

    :cond_1
    invoke-direct {p0, v3, v5}, Lcom/android/settings_ex/notification/AppNotificationSettings;->setVisible(Landroid/preference/Preference;Z)V

    .line 292
    return-void

    :cond_2
    move v3, v5

    .line 286
    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 122
    const/16 v0, 0x48

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 100
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

    .line 101
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mCreated:Z

    if-eqz v0, :cond_2

    .line 102
    const-string v0, "AppNotificationSettings"

    const-string v1, "onActivityCreated: ignoring duplicate call"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_1
    :goto_0
    return-void

    .line 105
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mCreated:Z

    .line 106
    iget-object v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget-object v1, v1, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->label:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget-object v2, v2, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/android/settings_ex/applications/AppInfoWithHeader;->getInfoIntent(Landroid/app/Fragment;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/android/settings_ex/AppHeader;->createAppHeader(Lcom/android/settings_ex/SettingsPreferenceFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 109
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget-object v1, v1, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v11, -0x1

    const/4 v8, 0x0

    .line 127
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mContext:Landroid/content/Context;

    .line 129
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 130
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 131
    .local v0, "args":Landroid/os/Bundle;
    sget-boolean v6, Lcom/android/settings_ex/notification/AppNotificationSettings;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "AppNotificationSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCreate getIntent()="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    if-nez v2, :cond_1

    if-nez v0, :cond_1

    .line 133
    const-string v6, "AppNotificationSettings"

    const-string v7, "No intent"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-direct {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->toastAndFinish()V

    .line 268
    :goto_0
    return-void

    .line 138
    :cond_1
    if-eqz v0, :cond_3

    const-string v6, "package"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "package"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_1
    iput-object v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->pkg:Ljava/lang/String;

    .line 141
    if-eqz v0, :cond_4

    const-string v6, "uid"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "uid"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    :goto_2
    iput v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mUid:I

    .line 144
    iget v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mUid:I

    if-eq v6, v11, :cond_2

    iget-object v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->pkg:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 145
    :cond_2
    const-string v6, "AppNotificationSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Missing extras: app_package was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->pkg:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "app_uid"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-direct {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->toastAndFinish()V

    goto :goto_0

    .line 138
    :cond_3
    const-string v6, "app_package"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 141
    :cond_4
    const-string v6, "app_uid"

    invoke-virtual {v2, v6, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    goto :goto_2

    .line 151
    :cond_5
    sget-boolean v6, Lcom/android/settings_ex/notification/AppNotificationSettings;->DEBUG:Z

    if-eqz v6, :cond_6

    const-string v6, "AppNotificationSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Load details for pkg="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->pkg:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " uid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mUid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 153
    .local v4, "pm":Landroid/content/pm/PackageManager;
    iget-object v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->pkg:Ljava/lang/String;

    iget v9, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mUid:I

    invoke-static {v4, v6, v9}, Lcom/android/settings_ex/notification/AppNotificationSettings;->findPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 154
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_7

    .line 155
    const-string v6, "AppNotificationSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to find package info: app_package was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->pkg:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "app_uid"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-direct {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->toastAndFinish()V

    goto/16 :goto_0

    .line 160
    :cond_7
    invoke-static {v4, v1}, Lcom/android/settings_ex/Utils;->isSystemPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mIsSystemPackage:Z

    .line 162
    const v6, 0x7f080034

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/notification/AppNotificationSettings;->addPreferencesFromResource(I)V

    .line 163
    const-string v6, "block"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings_ex/location/RadioButtonPreference;

    iput-object v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBlock:Lcom/android/settings_ex/location/RadioButtonPreference;

    .line 164
    const-string v6, "priority"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings_ex/location/RadioButtonPreference;

    iput-object v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mPriority:Lcom/android/settings_ex/location/RadioButtonPreference;

    .line 167
    const-string v6, "normal"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings_ex/location/RadioButtonPreference;

    iput-object v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mNormal:Lcom/android/settings_ex/location/RadioButtonPreference;

    .line 168
    const-string v6, "opnotification_example"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings_ex/ui/OPNotificationExamplePreference;

    iput-object v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mOPNotificationExamplePreference:Lcom/android/settings_ex/ui/OPNotificationExamplePreference;

    .line 169
    iget-object v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBackend:Lcom/android/settings_ex/notification/NotificationBackend;

    iget-object v9, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v4, v9}, Lcom/android/settings_ex/notification/NotificationBackend;->loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    .line 172
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 173
    .local v5, "rows":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/settings_ex/notification/NotificationBackend$AppRow;>;"
    iget-object v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget-object v6, v6, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    invoke-virtual {v5, v6, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/android/settings_ex/notification/AppNotificationSettings;->collectConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;)V

    .line 176
    iget-object v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBlock:Lcom/android/settings_ex/location/RadioButtonPreference;

    iget-object v9, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget-boolean v9, v9, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->banned:Z

    invoke-virtual {v6, v9}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 178
    iget-object v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mPriority:Lcom/android/settings_ex/location/RadioButtonPreference;

    iget-object v9, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget-boolean v9, v9, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->priority:Z

    invoke-virtual {v6, v9}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 181
    iget-object v9, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mNormal:Lcom/android/settings_ex/location/RadioButtonPreference;

    iget-object v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget-boolean v6, v6, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->banned:Z

    if-nez v6, :cond_c

    iget-object v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget-boolean v6, v6, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->priority:Z

    if-nez v6, :cond_c

    move v6, v7

    :goto_3
    invoke-virtual {v9, v6}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 182
    iget-object v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBlock:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v6, p0}, Lcom/android/settings_ex/location/RadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 183
    iget-object v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mNormal:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v6, p0}, Lcom/android/settings_ex/location/RadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 184
    iget-object v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mPriority:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v6, p0}, Lcom/android/settings_ex/location/RadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 225
    invoke-static {v4, v1}, Lcom/android/settings_ex/Utils;->isSystemPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v3

    .line 228
    .local v3, "isSystemPkg":Z
    if-eqz v3, :cond_8

    .line 229
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v9, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBlock:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 230
    iget-object v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mPriority:Lcom/android/settings_ex/location/RadioButtonPreference;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/android/settings_ex/location/RadioButtonPreference;->setDependency(Ljava/lang/String;)V

    .line 233
    :cond_8
    iget-object v6, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v6}, Lcom/oneplus/settings/notification/OPNotificationSettingsUtil;->shouldNotModifyNotificationSettingOptions(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 235
    iget-object v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBlock:Lcom/android/settings_ex/location/RadioButtonPreference;

    if-eqz v6, :cond_9

    .line 236
    iget-object v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBlock:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v6, v8}, Lcom/android/settings_ex/location/RadioButtonPreference;->setEnabled(Z)V

    .line 238
    :cond_9
    iget-object v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mPriority:Lcom/android/settings_ex/location/RadioButtonPreference;

    if-eqz v6, :cond_a

    .line 239
    iget-object v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mPriority:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v6, v8}, Lcom/android/settings_ex/location/RadioButtonPreference;->setEnabled(Z)V

    .line 241
    :cond_a
    iget-object v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mNormal:Lcom/android/settings_ex/location/RadioButtonPreference;

    if-eqz v6, :cond_b

    .line 242
    iget-object v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mNormal:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v6, v8}, Lcom/android/settings_ex/location/RadioButtonPreference;->setEnabled(Z)V

    .line 260
    :cond_b
    iget-object v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget-boolean v6, v6, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->banned:Z

    if-eqz v6, :cond_d

    .line 261
    iget-object v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mOPNotificationExamplePreference:Lcom/android/settings_ex/ui/OPNotificationExamplePreference;

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/ui/OPNotificationExamplePreference;->initStyle(I)V

    goto/16 :goto_0

    .end local v3    # "isSystemPkg":Z
    :cond_c
    move v6, v8

    .line 181
    goto :goto_3

    .line 262
    .restart local v3    # "isSystemPkg":Z
    :cond_d
    iget-object v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget-boolean v6, v6, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->priority:Z

    if-eqz v6, :cond_e

    .line 263
    iget-object v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mOPNotificationExamplePreference:Lcom/android/settings_ex/ui/OPNotificationExamplePreference;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/ui/OPNotificationExamplePreference;->initStyle(I)V

    goto/16 :goto_0

    .line 265
    :cond_e
    iget-object v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mOPNotificationExamplePreference:Lcom/android/settings_ex/ui/OPNotificationExamplePreference;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/ui/OPNotificationExamplePreference;->initStyle(I)V

    goto/16 :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 400
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, "key":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->setRadioPreferenceSelected(Ljava/lang/String;)V

    .line 402
    const-string v1, "block"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 403
    iget-object v1, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBackend:Lcom/android/settings_ex/notification/NotificationBackend;

    iget-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->pkg:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mUid:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/settings_ex/notification/NotificationBackend;->setHighPriority(Ljava/lang/String;IZ)Z

    .line 404
    iget-object v1, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBackend:Lcom/android/settings_ex/notification/NotificationBackend;

    iget-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->pkg:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mUid:I

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/settings_ex/notification/NotificationBackend;->setNotificationsBanned(Ljava/lang/String;IZ)Z

    .line 405
    const-string v1, "AppNotificationSettings"

    const-string v2, "zhuyang--notification--block--setHighPriority false , setNotificationsBanned true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_0
    :goto_0
    return v4

    .line 406
    :cond_1
    const-string v1, "priority"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 407
    iget-object v1, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBackend:Lcom/android/settings_ex/notification/NotificationBackend;

    iget-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->pkg:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mUid:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/settings_ex/notification/NotificationBackend;->setNotificationsBanned(Ljava/lang/String;IZ)Z

    .line 408
    iget-object v1, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBackend:Lcom/android/settings_ex/notification/NotificationBackend;

    iget-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->pkg:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mUid:I

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/settings_ex/notification/NotificationBackend;->setHighPriority(Ljava/lang/String;IZ)Z

    .line 409
    const-string v1, "AppNotificationSettings"

    const-string v2, "zhuyang--notification--priority--setHighPriority true , setNotificationsBanned false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 410
    :cond_2
    const-string v1, "normal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 411
    iget-object v1, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBackend:Lcom/android/settings_ex/notification/NotificationBackend;

    iget-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->pkg:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mUid:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/settings_ex/notification/NotificationBackend;->setNotificationsBanned(Ljava/lang/String;IZ)Z

    .line 412
    iget-object v1, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBackend:Lcom/android/settings_ex/notification/NotificationBackend;

    iget-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->pkg:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mUid:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/settings_ex/notification/NotificationBackend;->setHighPriority(Ljava/lang/String;IZ)Z

    .line 413
    const-string v1, "AppNotificationSettings"

    const-string v2, "zhuyang--notification--normal--setHighPriority false , setNotificationsBanned false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 272
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 273
    iget v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mUid:I

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->finish()V

    .line 278
    :cond_0
    return-void
.end method
