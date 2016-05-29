.class public Lcom/android/settings_ex/location/LocationSettings;
.super Lcom/android/settings_ex/location/LocationSettingsBase;
.source "LocationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings_ex/location/RadioButtonPreference$OnClickListener;
.implements Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/location/LocationSettings$SettingsObserver;
    }
.end annotation


# static fields
.field private static final KEY_BATTERY_SAVING:Ljava/lang/String; = "battery_saving"

.field private static final KEY_ENABLE_LOCATION_SETTINGS:Ljava/lang/String; = "enable_location_settings"

.field private static final KEY_HIGH_ACCURACY:Ljava/lang/String; = "high_accuracy"

.field private static final KEY_LOCATION_MODE:Ljava/lang/String; = "location_mode"

.field private static final KEY_LOCATION_SERVICES:Ljava/lang/String; = "location_services"

.field private static final KEY_MANAGED_PROFILE_CATEGORY:Ljava/lang/String; = "managed_profile_location_category"

.field private static final KEY_MANAGED_PROFILE_PREFERENCE:Ljava/lang/String; = "managed_profile_location_switch"

.field private static final KEY_RECENT_LOCATION_REQUESTS:Ljava/lang/String; = "recent_location_requests"

.field private static final KEY_SENSORS_ONLY:Ljava/lang/String; = "sensors_only"

.field private static final TAG:Ljava/lang/String; = "LocationSettings"


# instance fields
.field private injector:Lcom/android/settings_ex/location/SettingsInjector;

.field private mBatterySaving:Lcom/android/settings_ex/location/RadioButtonPreference;

.field private mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

.field private mEnablePreference:Landroid/preference/SwitchPreference;

.field private mHandler:Landroid/os/Handler;

.field private mHighAccuracy:Lcom/android/settings_ex/location/RadioButtonPreference;

.field private mLocationMode:Landroid/preference/Preference;

.field private mManagedProfile:Landroid/os/UserHandle;

.field private mManagedProfilePreference:Landroid/preference/Preference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSensorsOnly:Lcom/android/settings_ex/location/RadioButtonPreference;

.field private final mSettingsObserver:Lcom/android/settings_ex/location/LocationSettings$SettingsObserver;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

.field private mUm:Landroid/os/UserManager;

.field private mValidListener:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/settings_ex/location/LocationSettingsBase;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mValidListener:Z

    .line 553
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mHandler:Landroid/os/Handler;

    .line 554
    new-instance v0, Lcom/android/settings_ex/location/LocationSettings$SettingsObserver;

    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/location/LocationSettings$SettingsObserver;-><init>(Lcom/android/settings_ex/location/LocationSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mSettingsObserver:Lcom/android/settings_ex/location/LocationSettings$SettingsObserver;

    .line 557
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/location/LocationSettings;)Lcom/android/settings_ex/location/SettingsInjector;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/location/LocationSettings;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->injector:Lcom/android/settings_ex/location/SettingsInjector;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/location/LocationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/location/LocationSettings;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/location/LocationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/location/LocationSettings;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/settings_ex/location/LocationSettings;->updateLocation()V

    return-void
.end method

.method private addLocationServices(Landroid/content/Context;Landroid/preference/PreferenceScreen;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Landroid/preference/PreferenceScreen;
    .param p3, "lockdownOnLocationAccess"    # Z

    .prologue
    .line 393
    const-string v3, "location_services"

    invoke-virtual {p2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 395
    .local v0, "categoryLocationServices":Landroid/preference/PreferenceCategory;
    new-instance v3, Lcom/android/settings_ex/location/SettingsInjector;

    invoke-direct {v3, p1}, Lcom/android/settings_ex/location/SettingsInjector;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings_ex/location/LocationSettings;->injector:Lcom/android/settings_ex/location/SettingsInjector;

    .line 399
    iget-object v4, p0, Lcom/android/settings_ex/location/LocationSettings;->injector:Lcom/android/settings_ex/location/SettingsInjector;

    if-eqz p3, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    :goto_0
    invoke-virtual {v4, v3}, Lcom/android/settings_ex/location/SettingsInjector;->getInjectedSettings(I)Ljava/util/List;

    move-result-object v2

    .line 403
    .local v2, "locationServices":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    new-instance v3, Lcom/android/settings_ex/location/LocationSettings$3;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/location/LocationSettings$3;-><init>(Lcom/android/settings_ex/location/LocationSettings;)V

    iput-object v3, p0, Lcom/android/settings_ex/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 413
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 414
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.location.InjectedSettingChanged"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 415
    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 417
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 418
    invoke-direct {p0, v2, v0}, Lcom/android/settings_ex/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 423
    :goto_1
    return-void

    .line 399
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "locationServices":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    :cond_0
    const/4 v3, -0x2

    goto :goto_0

    .line 421
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    .restart local v2    # "locationServices":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    :cond_1
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V
    .locals 3
    .param p2, "container"    # Landroid/preference/PreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;",
            "Landroid/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "prefs":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    new-instance v2, Lcom/android/settings_ex/location/LocationSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/location/LocationSettings$1;-><init>(Lcom/android/settings_ex/location/LocationSettings;)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 187
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 188
    .local v0, "entry":Landroid/preference/Preference;
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 190
    .end local v0    # "entry":Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method private changeManagedProfileLocationAccessStatus(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "summaryResId"    # I

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    if-nez v0, :cond_0

    .line 382
    :goto_0
    return-void

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 381
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 193
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 194
    .local v0, "activity":Lcom/android/settings_ex/SettingsActivity;
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 195
    .local v6, "root":Landroid/preference/PreferenceScreen;
    if-eqz v6, :cond_0

    .line 196
    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 198
    :cond_0
    const v7, 0x7f06003d

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/location/LocationSettings;->addPreferencesFromResource(I)V

    .line 199
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 201
    invoke-direct {p0, v6}, Lcom/android/settings_ex/location/LocationSettings;->setupManagedProfileCategory(Landroid/preference/PreferenceScreen;)V

    .line 202
    const-string v7, "location_mode"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    .line 203
    iget-object v7, p0, Lcom/android/settings_ex/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    new-instance v8, Lcom/android/settings_ex/location/LocationSettings$2;

    invoke-direct {v8, p0, v0}, Lcom/android/settings_ex/location/LocationSettings$2;-><init>(Lcom/android/settings_ex/location/LocationSettings;Lcom/android/settings_ex/SettingsActivity;)V

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 218
    iget-object v7, p0, Lcom/android/settings_ex/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 221
    const-string v7, "recent_location_requests"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    iput-object v7, p0, Lcom/android/settings_ex/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    .line 226
    new-instance v4, Lcom/android/settings_ex/location/RecentLocationApps;

    invoke-direct {v4, v0, p0}, Lcom/android/settings_ex/location/RecentLocationApps;-><init>(Lcom/android/settings_ex/SettingsActivity;Lcom/android/settings_ex/SettingsPreferenceFragment;)V

    .line 228
    .local v4, "recentApps":Lcom/android/settings_ex/location/RecentLocationApps;
    invoke-virtual {v4}, Lcom/android/settings_ex/location/RecentLocationApps;->getAppList()Ljava/util/List;

    move-result-object v5

    .line 229
    .local v5, "recentLocationRequests":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 230
    iget-object v7, p0, Lcom/android/settings_ex/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v5, v7}, Lcom/android/settings_ex/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 241
    :goto_0
    const/4 v2, 0x0

    .line 246
    .local v2, "lockdownOnLocationAccess":Z
    iget-object v7, p0, Lcom/android/settings_ex/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/settings_ex/location/LocationSettings;->mUm:Landroid/os/UserManager;

    const-string v8, "no_share_location"

    iget-object v9, p0, Lcom/android/settings_ex/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    invoke-virtual {v7, v8, v9}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 249
    const/4 v2, 0x1

    .line 251
    :cond_1
    invoke-direct {p0, v0, v6, v2}, Lcom/android/settings_ex/location/LocationSettings;->addLocationServices(Landroid/content/Context;Landroid/preference/PreferenceScreen;Z)V

    .line 258
    const-string v7, "enable_location_settings"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/android/settings_ex/location/LocationSettings;->mEnablePreference:Landroid/preference/SwitchPreference;

    .line 260
    iget-object v7, p0, Lcom/android/settings_ex/location/LocationSettings;->mEnablePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 262
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "location_mode"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 266
    .local v3, "mode":I
    if-nez v3, :cond_3

    .line 267
    iget-object v7, p0, Lcom/android/settings_ex/location/LocationSettings;->mEnablePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 272
    :goto_1
    const-string v7, "high_accuracy"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/location/LocationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/settings_ex/location/RadioButtonPreference;

    iput-object v7, p0, Lcom/android/settings_ex/location/LocationSettings;->mHighAccuracy:Lcom/android/settings_ex/location/RadioButtonPreference;

    .line 273
    const-string v7, "battery_saving"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/location/LocationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/settings_ex/location/RadioButtonPreference;

    iput-object v7, p0, Lcom/android/settings_ex/location/LocationSettings;->mBatterySaving:Lcom/android/settings_ex/location/RadioButtonPreference;

    .line 274
    const-string v7, "sensors_only"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/location/LocationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/settings_ex/location/RadioButtonPreference;

    iput-object v7, p0, Lcom/android/settings_ex/location/LocationSettings;->mSensorsOnly:Lcom/android/settings_ex/location/RadioButtonPreference;

    .line 275
    iget-object v7, p0, Lcom/android/settings_ex/location/LocationSettings;->mHighAccuracy:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v7, p0}, Lcom/android/settings_ex/location/RadioButtonPreference;->setOnClickListener(Lcom/android/settings_ex/location/RadioButtonPreference$OnClickListener;)V

    .line 276
    iget-object v7, p0, Lcom/android/settings_ex/location/LocationSettings;->mBatterySaving:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v7, p0}, Lcom/android/settings_ex/location/RadioButtonPreference;->setOnClickListener(Lcom/android/settings_ex/location/RadioButtonPreference$OnClickListener;)V

    .line 277
    iget-object v7, p0, Lcom/android/settings_ex/location/LocationSettings;->mSensorsOnly:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v7, p0}, Lcom/android/settings_ex/location/RadioButtonPreference;->setOnClickListener(Lcom/android/settings_ex/location/RadioButtonPreference$OnClickListener;)V

    .line 279
    iget-object v7, p0, Lcom/android/settings_ex/location/LocationSettings;->mEnablePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/settings_ex/location/LocationSettings;->enableRadioButtons(Z)V

    .line 281
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->refreshLocationMode()V

    .line 283
    return-object v6

    .line 234
    .end local v2    # "lockdownOnLocationAccess":Z
    .end local v3    # "mode":I
    :cond_2
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 235
    .local v1, "banner":Landroid/preference/Preference;
    const v7, 0x7f04004e

    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 236
    const v7, 0x7f090593

    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setTitle(I)V

    .line 237
    invoke-virtual {v1, v10}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 238
    iget-object v7, p0, Lcom/android/settings_ex/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 269
    .end local v1    # "banner":Landroid/preference/Preference;
    .restart local v2    # "lockdownOnLocationAccess":Z
    .restart local v3    # "mode":I
    :cond_3
    iget-object v7, p0, Lcom/android/settings_ex/location/LocationSettings;->mEnablePreference:Landroid/preference/SwitchPreference;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1
.end method

.method private enableRadioButtons(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mHighAccuracy:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setEnabled(Z)V

    .line 321
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mBatterySaving:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setEnabled(Z)V

    .line 322
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mSensorsOnly:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setEnabled(Z)V

    .line 324
    return-void
.end method

.method private setupManagedProfileCategory(Landroid/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "root"    # Landroid/preference/PreferenceScreen;

    .prologue
    const/4 v1, 0x0

    .line 362
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mUm:Landroid/os/UserManager;

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    .line 363
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    if-nez v0, :cond_0

    .line 365
    const-string v0, "managed_profile_location_category"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 367
    iput-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    .line 373
    :goto_0
    return-void

    .line 369
    :cond_0
    const-string v0, "managed_profile_location_switch"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    .line 371
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method

.method private updateLocation()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 591
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_mode"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 599
    .local v0, "mode":I
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url : updateLocation mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 601
    packed-switch v0, :pswitch_data_0

    .line 626
    :goto_0
    return-void

    .line 603
    :pswitch_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings_ex/location/LocationSettings;->updateRadioButtons(Lcom/android/settings_ex/location/RadioButtonPreference;)V

    .line 604
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mEnablePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 605
    invoke-direct {p0, v5}, Lcom/android/settings_ex/location/LocationSettings;->enableRadioButtons(Z)V

    goto :goto_0

    .line 608
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mSensorsOnly:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/location/LocationSettings;->updateRadioButtons(Lcom/android/settings_ex/location/RadioButtonPreference;)V

    .line 609
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mEnablePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 610
    invoke-direct {p0, v4}, Lcom/android/settings_ex/location/LocationSettings;->enableRadioButtons(Z)V

    goto :goto_0

    .line 613
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mBatterySaving:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/location/LocationSettings;->updateRadioButtons(Lcom/android/settings_ex/location/RadioButtonPreference;)V

    .line 614
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mEnablePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 615
    invoke-direct {p0, v4}, Lcom/android/settings_ex/location/LocationSettings;->enableRadioButtons(Z)V

    goto :goto_0

    .line 618
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mHighAccuracy:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/location/LocationSettings;->updateRadioButtons(Lcom/android/settings_ex/location/RadioButtonPreference;)V

    .line 619
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mEnablePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 620
    invoke-direct {p0, v4}, Lcom/android/settings_ex/location/LocationSettings;->enableRadioButtons(Z)V

    goto :goto_0

    .line 601
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateRadioButtons(Lcom/android/settings_ex/location/RadioButtonPreference;)V
    .locals 4
    .param p1, "activated"    # Lcom/android/settings_ex/location/RadioButtonPreference;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 291
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "url : updateLocation mode : 2-"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 292
    if-nez p1, :cond_1

    .line 293
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mHighAccuracy:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 294
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mBatterySaving:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 295
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mSensorsOnly:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 296
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mEnablePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 314
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mEnablePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/location/LocationSettings;->enableRadioButtons(Z)V

    .line 316
    return-void

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mHighAccuracy:Lcom/android/settings_ex/location/RadioButtonPreference;

    if-ne p1, v0, :cond_2

    .line 298
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mHighAccuracy:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 299
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mBatterySaving:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 300
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mSensorsOnly:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 301
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mEnablePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 302
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mBatterySaving:Lcom/android/settings_ex/location/RadioButtonPreference;

    if-ne p1, v0, :cond_3

    .line 303
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mHighAccuracy:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 304
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mBatterySaving:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 305
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mSensorsOnly:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 306
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mEnablePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 307
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mSensorsOnly:Lcom/android/settings_ex/location/RadioButtonPreference;

    if-ne p1, v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mHighAccuracy:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 309
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mBatterySaving:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 310
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mSensorsOnly:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 311
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mEnablePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 427
    const v0, 0x7f090a26

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x8

    .line 110
    invoke-super {p0, p1}, Lcom/android/settings_ex/location/LocationSettingsBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 113
    .local v0, "activity":Lcom/android/settings_ex/SettingsActivity;
    const-string v1, "user"

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mUm:Landroid/os/UserManager;

    .line 115
    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsActivity;->getSwitchBar()Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    .line 116
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/SwitchBar;->getSwitch()Lcom/android/settings_ex/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    .line 117
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/SwitchBar;->show()V

    .line 122
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/SwitchBar;->hide()V

    .line 123
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setVisibility(I)V

    .line 124
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setVisibility(I)V

    .line 127
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0}, Lcom/android/settings_ex/location/LocationSettingsBase;->onDestroyView()V

    .line 132
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->hide()V

    .line 133
    return-void
.end method

.method public onModeChanged(IZ)V
    .locals 6
    .param p1, "mode"    # I
    .param p2, "restricted"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 432
    packed-switch p1, :pswitch_data_0

    .line 456
    :goto_0
    if-eqz p1, :cond_3

    move v0, v1

    .line 460
    .local v0, "enabled":Z
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    if-nez p2, :cond_4

    move v3, v1

    :goto_2
    invoke-virtual {v4, v3}, Lcom/android/settings_ex/widget/SwitchBar;->setEnabled(Z)V

    .line 461
    iget-object v4, p0, Lcom/android/settings_ex/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    if-eqz v0, :cond_5

    if-nez p2, :cond_5

    move v3, v1

    :goto_3
    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 462
    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 464
    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-eq v0, v3, :cond_1

    .line 467
    iget-boolean v3, p0, Lcom/android/settings_ex/location/LocationSettings;->mValidListener:Z

    if-eqz v3, :cond_0

    .line 468
    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v3, p0}, Lcom/android/settings_ex/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 470
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 471
    iget-boolean v3, p0, Lcom/android/settings_ex/location/LocationSettings;->mValidListener:Z

    if-eqz v3, :cond_1

    .line 472
    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v3, p0}, Lcom/android/settings_ex/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 476
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    if-eqz v3, :cond_2

    .line 477
    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings;->mUm:Landroid/os/UserManager;

    const-string v4, "no_share_location"

    iget-object v5, p0, Lcom/android/settings_ex/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 479
    const v1, 0x7f09058c

    invoke-direct {p0, v2, v1}, Lcom/android/settings_ex/location/LocationSettings;->changeManagedProfileLocationAccessStatus(ZI)V

    .line 496
    :cond_2
    :goto_4
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->injector:Lcom/android/settings_ex/location/SettingsInjector;

    invoke-virtual {v1}, Lcom/android/settings_ex/location/SettingsInjector;->reloadStatusMessages()V

    .line 497
    return-void

    .line 434
    .end local v0    # "enabled":Z
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f090591

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 437
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f090590

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 440
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f09058f

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 444
    :pswitch_3
    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f09058e

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 456
    goto :goto_1

    .restart local v0    # "enabled":Z
    :cond_4
    move v3, v2

    .line 460
    goto :goto_2

    :cond_5
    move v3, v2

    .line 461
    goto :goto_3

    .line 482
    :cond_6
    if-eqz v0, :cond_7

    .line 483
    const v2, 0x7f090afc

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/location/LocationSettings;->changeManagedProfileLocationAccessStatus(ZI)V

    goto :goto_4

    .line 486
    :cond_7
    const v1, 0x7f090afd

    invoke-direct {p0, v2, v1}, Lcom/android/settings_ex/location/LocationSettings;->changeManagedProfileLocationAccessStatus(ZI)V

    goto :goto_4

    .line 432
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 155
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mValidListener:Z

    if-eqz v1, :cond_1

    .line 163
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 164
    iput-boolean v4, p0, Lcom/android/settings_ex/location/LocationSettings;->mValidListener:Z

    .line 170
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mSettingsObserver:Lcom/android/settings_ex/location/LocationSettings$SettingsObserver;

    invoke-virtual {v1, v4}, Lcom/android/settings_ex/location/LocationSettings$SettingsObserver;->register(Z)V

    .line 173
    invoke-super {p0}, Lcom/android/settings_ex/location/LocationSettingsBase;->onPause()V

    .line 174
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "LocationSettings"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    const-string v1, "LocationSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Swallowing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x0

    .line 514
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "enable_location_settings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 516
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mEnablePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 517
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/location/LocationSettings;->setLocationMode(I)V

    .line 522
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mEnablePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/location/LocationSettings;->enableRadioButtons(Z)V

    .line 524
    const/4 v0, 0x1

    .line 526
    :cond_0
    return v0

    .line 519
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/location/LocationSettings;->setLocationMode(I)V

    goto :goto_0
.end method

.method public onRadioButtonClicked(Lcom/android/settings_ex/location/RadioButtonPreference;)V
    .locals 2
    .param p1, "emiter"    # Lcom/android/settings_ex/location/RadioButtonPreference;

    .prologue
    .line 533
    const/4 v0, 0x0

    .line 534
    .local v0, "mode":I
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mHighAccuracy:Lcom/android/settings_ex/location/RadioButtonPreference;

    if-ne p1, v1, :cond_1

    .line 535
    const/4 v0, 0x3

    .line 542
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settings_ex/location/LocationSettings;->updateRadioButtons(Lcom/android/settings_ex/location/RadioButtonPreference;)V

    .line 544
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/location/LocationSettings;->setLocationMode(I)V

    .line 546
    return-void

    .line 536
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mBatterySaving:Lcom/android/settings_ex/location/RadioButtonPreference;

    if-ne p1, v1, :cond_2

    .line 537
    const/4 v0, 0x2

    goto :goto_0

    .line 538
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mSensorsOnly:Lcom/android/settings_ex/location/RadioButtonPreference;

    if-ne p1, v1, :cond_0

    .line 539
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 137
    invoke-super {p0}, Lcom/android/settings_ex/location/LocationSettingsBase;->onResume()V

    .line 138
    invoke-direct {p0}, Lcom/android/settings_ex/location/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 139
    iget-boolean v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mValidListener:Z

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 141
    iput-boolean v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mValidListener:Z

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mSettingsObserver:Lcom/android/settings_ex/location/LocationSettings$SettingsObserver;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/location/LocationSettings$SettingsObserver;->register(Z)V

    .line 150
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 504
    if-eqz p2, :cond_0

    .line 505
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/location/LocationSettings;->setLocationMode(I)V

    .line 509
    :goto_0
    return-void

    .line 507
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/location/LocationSettings;->setLocationMode(I)V

    goto :goto_0
.end method

.method public refreshLocationMode()V
    .locals 4

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 334
    .local v0, "mode":I
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "url : updateLocation mode : 1-"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 336
    packed-switch v0, :pswitch_data_0

    .line 354
    :goto_0
    return-void

    .line 339
    :pswitch_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings_ex/location/LocationSettings;->updateRadioButtons(Lcom/android/settings_ex/location/RadioButtonPreference;)V

    goto :goto_0

    .line 342
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mSensorsOnly:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/location/LocationSettings;->updateRadioButtons(Lcom/android/settings_ex/location/RadioButtonPreference;)V

    goto :goto_0

    .line 345
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mBatterySaving:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/location/LocationSettings;->updateRadioButtons(Lcom/android/settings_ex/location/RadioButtonPreference;)V

    goto :goto_0

    .line 348
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mHighAccuracy:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/location/LocationSettings;->updateRadioButtons(Lcom/android/settings_ex/location/RadioButtonPreference;)V

    goto :goto_0

    .line 336
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
