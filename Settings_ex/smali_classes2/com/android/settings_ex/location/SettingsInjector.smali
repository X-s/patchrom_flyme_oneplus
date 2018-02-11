.class Lcom/android/settings_ex/location/SettingsInjector;
.super Ljava/lang/Object;
.source "SettingsInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/location/SettingsInjector$ServiceSettingClickedListener;,
        Lcom/android/settings_ex/location/SettingsInjector$Setting;,
        Lcom/android/settings_ex/location/SettingsInjector$StatusLoadingHandler;
    }
.end annotation


# static fields
.field private static final INJECTED_STATUS_UPDATE_TIMEOUT_MILLIS:J = 0x3e8L

.field static final TAG:Ljava/lang/String; = "SettingsInjector"

.field private static final WHAT_RECEIVED_STATUS:I = 0x2

.field private static final WHAT_RELOAD:I = 0x1

.field private static final WHAT_TIMEOUT:I = 0x3


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mSettings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/settings_ex/location/SettingsInjector$Setting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/location/SettingsInjector;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/location/SettingsInjector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/location/SettingsInjector;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/location/SettingsInjector;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/location/SettingsInjector;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/location/SettingsInjector;->mSettings:Ljava/util/Set;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/android/settings_ex/location/SettingsInjector;->mContext:Landroid/content/Context;

    .line 102
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/location/SettingsInjector;->mSettings:Ljava/util/Set;

    .line 103
    new-instance v0, Lcom/android/settings_ex/location/SettingsInjector$StatusLoadingHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/location/SettingsInjector$StatusLoadingHandler;-><init>(Lcom/android/settings_ex/location/SettingsInjector;Lcom/android/settings_ex/location/SettingsInjector$StatusLoadingHandler;)V

    iput-object v0, p0, Lcom/android/settings_ex/location/SettingsInjector;->mHandler:Landroid/os/Handler;

    .line 100
    return-void
.end method

.method private addServiceSetting(Ljava/util/List;Lcom/android/settings_ex/location/InjectedSetting;)Landroid/support/v7/preference/Preference;
    .locals 8
    .param p2, "info"    # Lcom/android/settings_ex/location/InjectedSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/preference/Preference;",
            ">;",
            "Lcom/android/settings_ex/location/InjectedSetting;",
            ")",
            "Landroid/support/v7/preference/Preference;"
        }
    .end annotation

    .prologue
    .local p1, "prefs":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/preference/Preference;>;"
    const/4 v7, 0x0

    .line 271
    iget-object v5, p0, Lcom/android/settings_ex/location/SettingsInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 272
    .local v3, "pm":Landroid/content/pm/PackageManager;
    iget-object v5, p2, Lcom/android/settings_ex/location/InjectedSetting;->packageName:Ljava/lang/String;

    iget v6, p2, Lcom/android/settings_ex/location/InjectedSetting;->iconId:I

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 273
    .local v0, "appIcon":Landroid/graphics/drawable/Drawable;
    iget-object v5, p2, Lcom/android/settings_ex/location/InjectedSetting;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 274
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v5, p2, Lcom/android/settings_ex/location/InjectedSetting;->title:Ljava/lang/String;

    iget-object v6, p2, Lcom/android/settings_ex/location/InjectedSetting;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 275
    .local v1, "badgedAppLabel":Ljava/lang/CharSequence;
    iget-object v5, p2, Lcom/android/settings_ex/location/InjectedSetting;->title:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 278
    const/4 v1, 0x0

    .line 281
    .end local v1    # "badgedAppLabel":Ljava/lang/CharSequence;
    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/location/SettingsInjector;->mContext:Landroid/content/Context;

    .line 280
    invoke-static {v5, v1, p2}, Lcom/android/settings_ex/location/DimmableIZatIconPreference;->newInstance(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/android/settings_ex/location/InjectedSetting;)Lcom/android/settings_ex/DimmableIconPreference;

    move-result-object v4

    .line 282
    .local v4, "pref":Landroid/support/v7/preference/Preference;
    iget-object v5, p2, Lcom/android/settings_ex/location/InjectedSetting;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 283
    invoke-virtual {v4, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 284
    invoke-virtual {v4, v2}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 285
    new-instance v5, Lcom/android/settings_ex/location/SettingsInjector$ServiceSettingClickedListener;

    invoke-direct {v5, p0, p2}, Lcom/android/settings_ex/location/SettingsInjector$ServiceSettingClickedListener;-><init>(Lcom/android/settings_ex/location/SettingsInjector;Lcom/android/settings_ex/location/InjectedSetting;)V

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 287
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    return-object v4
.end method

.method private getSettings(Landroid/os/UserHandle;)Ljava/util/List;
    .locals 14
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/location/InjectedSetting;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x3

    .line 117
    iget-object v10, p0, Lcom/android/settings_ex/location/SettingsInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 118
    .local v3, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v10, "android.location.SettingInjectorService"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 122
    .local v4, "profileId":I
    const/16 v10, 0x80

    invoke-virtual {v3, v2, v10, v4}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v7

    .line 123
    .local v7, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string/jumbo v10, "SettingsInjector"

    invoke-static {v10, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 124
    const-string/jumbo v10, "SettingsInjector"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Found services for profile id "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 127
    .local v9, "settings":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/location/InjectedSetting;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "resolveInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 129
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    :try_start_0
    invoke-direct {p0, v5, p1, v3}, Lcom/android/settings_ex/location/SettingsInjector;->parseServiceInfo(Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;Landroid/content/pm/PackageManager;)Lcom/android/settings_ex/location/InjectedSetting;

    move-result-object v8

    .line 130
    .local v8, "setting":Lcom/android/settings_ex/location/InjectedSetting;
    if-nez v8, :cond_1

    .line 131
    const-string/jumbo v10, "SettingsInjector"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unable to load service info "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 135
    .end local v8    # "setting":Lcom/android/settings_ex/location/InjectedSetting;
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v10, "SettingsInjector"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unable to load service info "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 133
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v8    # "setting":Lcom/android/settings_ex/location/InjectedSetting;
    :cond_1
    :try_start_1
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 137
    .end local v8    # "setting":Lcom/android/settings_ex/location/InjectedSetting;
    :catch_1
    move-exception v0

    .line 138
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v10, "SettingsInjector"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unable to load service info "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 141
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    const-string/jumbo v10, "SettingsInjector"

    invoke-static {v10, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 142
    const-string/jumbo v10, "SettingsInjector"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Loaded settings for profile id "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_3
    return-object v9
.end method

.method private static parseAttributes(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/res/Resources;Landroid/util/AttributeSet;)Lcom/android/settings_ex/location/InjectedSetting;
    .locals 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 210
    sget-object v0, Landroid/R$styleable;->SettingInjectorService:[I

    invoke-virtual {p3, p4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 214
    .local v6, "sa":Landroid/content/res/TypedArray;
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 216
    .local v2, "title":Ljava/lang/String;
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 218
    .local v3, "iconId":I
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 219
    .local v5, "settingsActivity":Ljava/lang/String;
    const-string/jumbo v0, "SettingsInjector"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    const-string/jumbo v0, "SettingsInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parsed title: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", iconId: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 221
    const-string/jumbo v4, ", settingsActivity: "

    .line 220
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    .line 223
    invoke-static/range {v0 .. v5}, Lcom/android/settings_ex/location/InjectedSetting;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/lang/String;)Lcom/android/settings_ex/location/InjectedSetting;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 226
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 223
    return-object v0

    .line 225
    .end local v2    # "title":Ljava/lang/String;
    .end local v3    # "iconId":I
    .end local v5    # "settingsActivity":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 226
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 225
    throw v0
.end method

.method private parseServiceInfo(Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;Landroid/content/pm/PackageManager;)Lcom/android/settings_ex/location/InjectedSetting;
    .locals 12
    .param p1, "service"    # Landroid/content/pm/ResolveInfo;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .param p3, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 157
    iget-object v6, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 158
    .local v6, "si":Landroid/content/pm/ServiceInfo;
    iget-object v0, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 160
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v8, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_0

    .line 161
    const-string/jumbo v8, "SettingsInjector"

    const/4 v9, 0x5

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 162
    const-string/jumbo v8, "SettingsInjector"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Ignoring attempt to inject setting from app not in system image: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-object v11

    .line 166
    :cond_0
    iget-object v8, p0, Lcom/android/settings_ex/location/SettingsInjector;->mContext:Landroid/content/Context;

    iget-object v9, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/android/settings_ex/location/DimmableIZatIconPreference;->showIzat(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 167
    return-object v11

    .line 170
    :cond_1
    const/4 v4, 0x0

    .line 172
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string/jumbo v8, "android.location.SettingInjectorService"

    invoke-virtual {v6, p3, v8}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 173
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v4, :cond_3

    .line 174
    new-instance v8, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "No android.location.SettingInjectorService meta-data for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 175
    const-string/jumbo v10, ": "

    .line 174
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v2

    .line 195
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    new-instance v8, Lorg/xmlpull/v1/XmlPullParserException;

    .line 196
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unable to load resources for package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 195
    invoke-direct {v8, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v8

    .line 198
    if-eqz v4, :cond_2

    .line 199
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 197
    :cond_2
    throw v8

    .line 178
    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_3
    :try_start_2
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 181
    .local v1, "attrs":Landroid/util/AttributeSet;
    :cond_4
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    .local v7, "type":I
    const/4 v8, 0x1

    if-eq v7, v8, :cond_5

    .line 182
    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    .line 185
    :cond_5
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 186
    .local v3, "nodeName":Ljava/lang/String;
    const-string/jumbo v8, "injected-location-setting"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 187
    new-instance v8, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v9, "Meta-data does not start with injected-location-setting tag"

    invoke-direct {v8, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 191
    :cond_6
    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 192
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    .line 191
    invoke-virtual {p3, v8, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v5

    .line 193
    .local v5, "res":Landroid/content/res/Resources;
    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v9, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v8, v9, p2, v5, v1}, Lcom/android/settings_ex/location/SettingsInjector;->parseAttributes(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/res/Resources;Landroid/util/AttributeSet;)Lcom/android/settings_ex/location/InjectedSetting;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .line 198
    if-eqz v4, :cond_7

    .line 199
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 193
    :cond_7
    return-object v8
.end method


# virtual methods
.method public getInjectedSettings(I)Ljava/util/List;
    .locals 13
    .param p1, "profileId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    iget-object v10, p0, Lcom/android/settings_ex/location/SettingsInjector;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "user"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    .line 238
    .local v8, "um":Landroid/os/UserManager;
    invoke-virtual {v8}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v4

    .line 239
    .local v4, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v2, "prefs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/preference/Preference;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 241
    .local v3, "profileCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 242
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/UserHandle;

    .line 243
    .local v9, "userHandle":Landroid/os/UserHandle;
    const/4 v10, -0x2

    if-eq p1, v10, :cond_0

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    if-ne p1, v10, :cond_1

    .line 244
    :cond_0
    invoke-direct {p0, v9}, Lcom/android/settings_ex/location/SettingsInjector;->getSettings(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v7

    .line 245
    .local v7, "settings":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/settings_ex/location/InjectedSetting;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "setting$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings_ex/location/InjectedSetting;

    .line 246
    .local v5, "setting":Lcom/android/settings_ex/location/InjectedSetting;
    invoke-direct {p0, v2, v5}, Lcom/android/settings_ex/location/SettingsInjector;->addServiceSetting(Ljava/util/List;Lcom/android/settings_ex/location/InjectedSetting;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 247
    .local v1, "pref":Landroid/support/v7/preference/Preference;
    iget-object v10, p0, Lcom/android/settings_ex/location/SettingsInjector;->mSettings:Ljava/util/Set;

    new-instance v11, Lcom/android/settings_ex/location/SettingsInjector$Setting;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v5, v1, v12}, Lcom/android/settings_ex/location/SettingsInjector$Setting;-><init>(Lcom/android/settings_ex/location/SettingsInjector;Lcom/android/settings_ex/location/InjectedSetting;Landroid/support/v7/preference/Preference;Lcom/android/settings_ex/location/SettingsInjector$Setting;)V

    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 241
    .end local v1    # "pref":Landroid/support/v7/preference/Preference;
    .end local v5    # "setting":Lcom/android/settings_ex/location/InjectedSetting;
    .end local v6    # "setting$iterator":Ljava/util/Iterator;
    .end local v7    # "settings":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/settings_ex/location/InjectedSetting;>;"
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    .end local v9    # "userHandle":Landroid/os/UserHandle;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/location/SettingsInjector;->reloadStatusMessages()V

    .line 254
    return-object v2
.end method

.method public reloadStatusMessages()V
    .locals 3

    .prologue
    .line 261
    const-string/jumbo v0, "SettingsInjector"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    const-string/jumbo v0, "SettingsInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reloadingStatusMessages: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/location/SettingsInjector;->mSettings:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/location/SettingsInjector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/location/SettingsInjector;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 260
    return-void
.end method
