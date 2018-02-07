.class public Lcom/android/settings_ex/location/LocationSettings;
.super Lcom/android/settings_ex/location/LocationSettingsBase;
.source "LocationSettings.java"

# interfaces
.implements Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/location/LocationSettings$1;,
        Lcom/android/settings_ex/location/LocationSettings$2;,
        Lcom/android/settings_ex/location/LocationSettings$3;,
        Lcom/android/settings_ex/location/LocationSettings$4;,
        Lcom/android/settings_ex/location/LocationSettings$PackageEntryClickedListener;,
        Lcom/android/settings_ex/location/LocationSettings$SummaryProvider;
    }
.end annotation


# static fields
.field private static final EXTRA_PREF_KEY:Ljava/lang/String; = "pref_key"

.field private static final KEY_LOCATION_MODE:Ljava/lang/String; = "location_mode"

.field private static final KEY_LOCATION_SERVICES:Ljava/lang/String; = "location_services"

.field private static final KEY_MANAGED_PROFILE_SWITCH:Ljava/lang/String; = "managed_profile_location_switch"

.field private static final KEY_PREFERENCE_DIVIDER_LINE:Ljava/lang/String; = "preference_divider_line"

.field private static final KEY_RECENT_LOCATION_REQUESTS:Ljava/lang/String; = "recent_location_requests"

.field private static final MENU_SCANNING:I = 0x1

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static final TAG:Ljava/lang/String; = "LocationSettings"


# instance fields
.field private injector:Lcom/android/settings_ex/location/SettingsInjector;

.field private mCategoryRecentLocationRequests:Landroid/support/v7/preference/PreferenceCategory;

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private final mHighPowerChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLocationMode:Landroid/support/v7/preference/Preference;

.field private mManagedProfile:Landroid/os/UserHandle;

.field private mManagedProfileSwitch:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

.field private mManagedProfileSwitchClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

.field private mOPPreferenceDivider:Lcom/oneplus/settings/ui/OPPreferenceDivider;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mState:Lcom/android/settings_exlib/applications/ApplicationsState;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

.field private mUm:Landroid/os/UserManager;

.field private mValidListener:Z


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/location/LocationSettings;)Lcom/android/settings_ex/location/SettingsInjector;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->injector:Lcom/android/settings_ex/location/SettingsInjector;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/location/LocationSettings;)Landroid/os/UserHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/location/LocationSettings;)Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mManagedProfileSwitch:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings_ex/location/LocationSettings;)Landroid/os/UserManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mUm:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/location/LocationSettings;)Landroid/support/v7/preference/PreferenceScreen;
    .locals 1

    invoke-direct {p0}, Lcom/android/settings_ex/location/LocationSettings;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(I)I
    .locals 1
    .param p0, "mode"    # I

    .prologue
    invoke-static {p0}, Lcom/android/settings_ex/location/LocationSettings;->getLocationString(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/settings_ex/location/LocationSettings;Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;Lcom/oneplus/settings/ui/OPButtonPreference;)V
    .locals 0
    .param p1, "mAppEntry"    # Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .param p2, "pref"    # Lcom/oneplus/settings/ui/OPButtonPreference;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/location/LocationSettings;->forceStopPackage(Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;Lcom/oneplus/settings/ui/OPButtonPreference;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 674
    new-instance v0, Lcom/android/settings_ex/location/LocationSettings$4;

    invoke-direct {v0}, Lcom/android/settings_ex/location/LocationSettings$4;-><init>()V

    .line 673
    sput-object v0, Lcom/android/settings_ex/location/LocationSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 97
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/settings_ex/location/LocationSettingsBase;-><init>()V

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mValidListener:Z

    .line 387
    new-instance v0, Lcom/android/settings_ex/location/LocationSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/location/LocationSettings$1;-><init>(Lcom/android/settings_ex/location/LocationSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    .line 407
    new-instance v0, Lcom/android/settings_ex/location/LocationSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/location/LocationSettings$2;-><init>(Lcom/android/settings_ex/location/LocationSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mHighPowerChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 613
    new-instance v0, Lcom/android/settings_ex/location/LocationSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/location/LocationSettings$3;-><init>(Lcom/android/settings_ex/location/LocationSettings;)V

    .line 612
    iput-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mManagedProfileSwitchClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    .line 97
    return-void
.end method

.method private addLocationServices(Landroid/content/Context;Landroid/support/v7/preference/PreferenceScreen;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Landroid/support/v7/preference/PreferenceScreen;
    .param p3, "lockdownOnLocationAccess"    # Z

    .prologue
    .line 474
    const-string/jumbo v3, "location_services"

    invoke-virtual {p2, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    .line 475
    .local v0, "categoryLocationServices":Landroid/support/v7/preference/PreferenceCategory;
    new-instance v3, Lcom/android/settings_ex/location/SettingsInjector;

    invoke-direct {v3, p1}, Lcom/android/settings_ex/location/SettingsInjector;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings_ex/location/LocationSettings;->injector:Lcom/android/settings_ex/location/SettingsInjector;

    .line 478
    iget-object v4, p0, Lcom/android/settings_ex/location/LocationSettings;->injector:Lcom/android/settings_ex/location/SettingsInjector;

    if-eqz p3, :cond_0

    .line 479
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 478
    :goto_0
    invoke-virtual {v4, v3}, Lcom/android/settings_ex/location/SettingsInjector;->getInjectedSettings(I)Ljava/util/List;

    move-result-object v2

    .line 481
    .local v2, "locationServices":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/preference/Preference;>;"
    new-instance v3, Lcom/android/settings_ex/location/LocationSettings$8;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/location/LocationSettings$8;-><init>(Lcom/android/settings_ex/location/LocationSettings;)V

    iput-object v3, p0, Lcom/android/settings_ex/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 491
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 492
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.location.InjectedSettingChanged"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 493
    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 495
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 496
    invoke-direct {p0, v2, v0}, Lcom/android/settings_ex/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Landroid/support/v7/preference/PreferenceGroup;)V

    .line 498
    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings;->mOPPreferenceDivider:Lcom/oneplus/settings/ui/OPPreferenceDivider;

    invoke-virtual {p2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 472
    :goto_1
    return-void

    .line 479
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "locationServices":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/preference/Preference;>;"
    :cond_0
    const/4 v3, -0x2

    goto :goto_0

    .line 502
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    .restart local v2    # "locationServices":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/preference/Preference;>;"
    :cond_1
    invoke-virtual {p2, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 504
    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings;->mOPPreferenceDivider:Lcom/oneplus/settings/ui/OPPreferenceDivider;

    invoke-virtual {p2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1
.end method

.method private addPreferencesSorted(Ljava/util/List;Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 3
    .param p2, "container"    # Landroid/support/v7/preference/PreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/preference/Preference;",
            ">;",
            "Landroid/support/v7/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .line 213
    .local p1, "prefs":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/preference/Preference;>;"
    new-instance v2, Lcom/android/settings_ex/location/LocationSettings$5;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/location/LocationSettings$5;-><init>(Lcom/android/settings_ex/location/LocationSettings;)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 219
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/Preference;

    .line 220
    .local v0, "entry":Landroid/support/v7/preference/Preference;
    invoke-virtual {p2, v0}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 211
    .end local v0    # "entry":Landroid/support/v7/preference/Preference;
    :cond_0
    return-void
.end method

.method private changeManagedProfileLocationAccessStatus(Z)V
    .locals 8
    .param p1, "mainSwitchOn"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 436
    iget-object v5, p0, Lcom/android/settings_ex/location/LocationSettings;->mManagedProfileSwitch:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    if-nez v5, :cond_0

    .line 437
    return-void

    .line 439
    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/location/LocationSettings;->mManagedProfileSwitch:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v5, v6}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 440
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 441
    const-string/jumbo v6, "no_share_location"

    iget-object v7, p0, Lcom/android/settings_ex/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 440
    invoke-static {v5, v6, v7}, Lcom/android/settings_exlib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 442
    .local v0, "admin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    invoke-direct {p0}, Lcom/android/settings_ex/location/LocationSettings;->isManagedProfileRestrictedByBase()Z

    move-result v2

    .line 443
    .local v2, "isRestrictedByBase":Z
    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    .line 444
    iget-object v5, p0, Lcom/android/settings_ex/location/LocationSettings;->mManagedProfileSwitch:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v5, v0}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 445
    iget-object v5, p0, Lcom/android/settings_ex/location/LocationSettings;->mManagedProfileSwitch:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v5, v4}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setChecked(Z)V

    .line 435
    :goto_0
    return-void

    .line 447
    :cond_1
    move v1, p1

    .line 448
    .local v1, "enabled":Z
    iget-object v5, p0, Lcom/android/settings_ex/location/LocationSettings;->mManagedProfileSwitch:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v5, p1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setEnabled(Z)V

    .line 450
    const v3, 0x7f0e0eb9

    .line 451
    .local v3, "summaryResId":I
    if-nez p1, :cond_2

    .line 452
    iget-object v5, p0, Lcom/android/settings_ex/location/LocationSettings;->mManagedProfileSwitch:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v5, v4}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setChecked(Z)V

    .line 460
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/location/LocationSettings;->mManagedProfileSwitch:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v4, v3}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 454
    :cond_2
    iget-object v5, p0, Lcom/android/settings_ex/location/LocationSettings;->mManagedProfileSwitch:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    if-eqz v2, :cond_3

    :goto_2
    invoke-virtual {v5, v4}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setChecked(Z)V

    .line 455
    if-eqz v2, :cond_4

    .line 456
    const v3, 0x7f0e0eb9

    .line 457
    :goto_3
    iget-object v4, p0, Lcom/android/settings_ex/location/LocationSettings;->mManagedProfileSwitch:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    .line 458
    iget-object v5, p0, Lcom/android/settings_ex/location/LocationSettings;->mManagedProfileSwitchClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    .line 457
    invoke-virtual {v4, v5}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_1

    .line 454
    :cond_3
    const/4 v4, 0x1

    goto :goto_2

    .line 456
    :cond_4
    const v3, 0x7f0e0eb8

    goto :goto_3
.end method

.method private createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;
    .locals 23

    .prologue
    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/SettingsActivity;

    .line 226
    .local v4, "activity":Lcom/android/settings_ex/SettingsActivity;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/location/LocationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v19

    .line 227
    .local v19, "root":Landroid/support/v7/preference/PreferenceScreen;
    if-eqz v19, :cond_0

    .line 228
    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 230
    :cond_0
    const v20, 0x7f080039

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/location/LocationSettings;->addPreferencesFromResource(I)V

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/location/LocationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v19

    .line 233
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings_ex/location/LocationSettings;->setupManagedProfileCategory(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 234
    const-string/jumbo v20, "location_mode"

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/location/LocationSettings;->mLocationMode:Landroid/support/v7/preference/Preference;

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/location/LocationSettings;->mLocationMode:Landroid/support/v7/preference/Preference;

    move-object/from16 v20, v0

    .line 236
    new-instance v21, Lcom/android/settings_ex/location/LocationSettings$6;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/android/settings_ex/location/LocationSettings$6;-><init>(Lcom/android/settings_ex/location/LocationSettings;Lcom/android/settings_ex/SettingsActivity;)V

    .line 235
    invoke-virtual/range {v20 .. v21}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 248
    const-string/jumbo v20, "recent_location_requests"

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/support/v7/preference/PreferenceCategory;

    .line 247
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/support/v7/preference/PreferenceCategory;

    .line 250
    const-string/jumbo v20, "preference_divider_line"

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v20

    check-cast v20, Lcom/oneplus/settings/ui/OPPreferenceDivider;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/location/LocationSettings;->mOPPreferenceDivider:Lcom/oneplus/settings/ui/OPPreferenceDivider;

    .line 252
    new-instance v14, Lcom/android/settings_exlib/location/RecentLocationApps;

    invoke-direct {v14, v4}, Lcom/android/settings_exlib/location/RecentLocationApps;-><init>(Landroid/content/Context;)V

    .line 255
    .local v14, "recentApps":Lcom/android/settings_exlib/location/RecentLocationApps;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/location/LocationSettings;->getCurrentUsingGpsList()Ljava/util/List;

    move-result-object v7

    .line 256
    .local v7, "currentUsingGpsPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_2

    .line 257
    const-string/jumbo v20, "LocationSettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "getCurrentProviderPackageList.size()="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :goto_0
    invoke-virtual {v14}, Lcom/android/settings_exlib/location/RecentLocationApps;->getAppList()Ljava/util/List;

    move-result-object v16

    .line 264
    .local v16, "recentLocationRequests":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_exlib/location/RecentLocationApps$Request;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 265
    .local v15, "recentLocationPrefs":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/preference/Preference;>;"
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "request$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings_exlib/location/RecentLocationApps$Request;

    .line 269
    .local v17, "request":Lcom/android/settings_exlib/location/RecentLocationApps$Request;
    new-instance v13, Lcom/oneplus/settings/ui/OPButtonPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/location/LocationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Lcom/oneplus/settings/ui/OPButtonPreference;-><init>(Landroid/content/Context;)V

    .line 270
    .local v13, "pref":Lcom/oneplus/settings/ui/OPButtonPreference;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "-"

    const-string/jumbo v22, ""

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 271
    .local v8, "key":Ljava/lang/String;
    invoke-virtual {v13, v8}, Lcom/oneplus/settings/ui/OPButtonPreference;->setKey(Ljava/lang/String;)V

    .line 272
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings_exlib/location/RecentLocationApps$Request;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/oneplus/settings/ui/OPButtonPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 273
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings_exlib/location/RecentLocationApps$Request;->label:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/oneplus/settings/ui/OPButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 275
    if-eqz v7, :cond_4

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings_exlib/location/RecentLocationApps$Request;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 276
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    .line 277
    .local v11, "mUserId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/location/LocationSettings;->mState:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings_exlib/location/RecentLocationApps$Request;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v11}, Lcom/android/settings_exlib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    move-result-object v5

    .line 278
    .local v5, "appEntry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    const-string/jumbo v21, "no_control_apps"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v22

    invoke-static/range {v20 .. v22}, Lcom/android/settings_exlib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v10

    .line 279
    .local v10, "mAppsControlDisallowedBySystem":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/location/LocationSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings_exlib/location/RecentLocationApps$Request;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v12

    .line 280
    .local v12, "packageHasActiveAdmins":Z
    if-nez v12, :cond_1

    if-eqz v10, :cond_3

    .line 281
    :cond_1
    const-string/jumbo v20, "LocationSettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "packageHasActiveAdmins:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ", mAppsControlDisallowedBySystem:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/oneplus/settings/ui/OPButtonPreference;->setButtonEnable(Z)V

    .line 283
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/oneplus/settings/ui/OPButtonPreference;->setButtonVisible(Z)V

    .line 311
    .end local v5    # "appEntry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .end local v10    # "mAppsControlDisallowedBySystem":Z
    .end local v11    # "mUserId":I
    .end local v12    # "packageHasActiveAdmins":Z
    :goto_2
    new-instance v20, Lcom/android/settings_ex/location/LocationSettings$PackageEntryClickedListener;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings_exlib/location/RecentLocationApps$Request;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings_exlib/location/RecentLocationApps$Request;->userHandle:Landroid/os/UserHandle;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/location/LocationSettings$PackageEntryClickedListener;-><init>(Lcom/android/settings_ex/location/LocationSettings;Ljava/lang/String;Landroid/os/UserHandle;)V

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/oneplus/settings/ui/OPButtonPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 312
    invoke-interface {v15, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 259
    .end local v8    # "key":Ljava/lang/String;
    .end local v13    # "pref":Lcom/oneplus/settings/ui/OPButtonPreference;
    .end local v15    # "recentLocationPrefs":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/preference/Preference;>;"
    .end local v16    # "recentLocationRequests":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_exlib/location/RecentLocationApps$Request;>;"
    .end local v17    # "request":Lcom/android/settings_exlib/location/RecentLocationApps$Request;
    .end local v18    # "request$iterator":Ljava/util/Iterator;
    :cond_2
    const-string/jumbo v20, "LocationSettings"

    const-string/jumbo v21, "getCurrentProviderPackageList.size() is null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 285
    .restart local v5    # "appEntry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .restart local v8    # "key":Ljava/lang/String;
    .restart local v10    # "mAppsControlDisallowedBySystem":Z
    .restart local v11    # "mUserId":I
    .restart local v12    # "packageHasActiveAdmins":Z
    .restart local v13    # "pref":Lcom/oneplus/settings/ui/OPButtonPreference;
    .restart local v15    # "recentLocationPrefs":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/preference/Preference;>;"
    .restart local v16    # "recentLocationRequests":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_exlib/location/RecentLocationApps$Request;>;"
    .restart local v17    # "request":Lcom/android/settings_exlib/location/RecentLocationApps$Request;
    .restart local v18    # "request$iterator":Ljava/util/Iterator;
    :cond_3
    const v20, 0x7f0e03be

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/oneplus/settings/ui/OPButtonPreference;->setSummary(I)V

    .line 286
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/oneplus/settings/ui/OPButtonPreference;->setButtonVisible(Z)V

    .line 287
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/oneplus/settings/ui/OPButtonPreference;->setButtonEnable(Z)V

    .line 288
    const v20, 0x7f0e03bd

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/location/LocationSettings;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/oneplus/settings/ui/OPButtonPreference;->setButtonString(Ljava/lang/String;)V

    .line 289
    new-instance v20, Lcom/android/settings_ex/location/LocationSettings$7;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v13}, Lcom/android/settings_ex/location/LocationSettings$7;-><init>(Lcom/android/settings_ex/location/LocationSettings;Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;Lcom/oneplus/settings/ui/OPButtonPreference;)V

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/oneplus/settings/ui/OPButtonPreference;->setOnButtonClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 300
    .end local v5    # "appEntry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .end local v10    # "mAppsControlDisallowedBySystem":Z
    .end local v11    # "mUserId":I
    .end local v12    # "packageHasActiveAdmins":Z
    :cond_4
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/oneplus/settings/ui/OPButtonPreference;->setButtonVisible(Z)V

    goto :goto_2

    .line 315
    .end local v8    # "key":Ljava/lang/String;
    .end local v13    # "pref":Lcom/oneplus/settings/ui/OPButtonPreference;
    .end local v17    # "request":Lcom/android/settings_exlib/location/RecentLocationApps$Request;
    :cond_5
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_7

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v15, v1}, Lcom/android/settings_ex/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Landroid/support/v7/preference/PreferenceGroup;)V

    .line 326
    :goto_3
    const/4 v9, 0x0

    .line 330
    .local v9, "lockdownOnLocationAccess":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/location/LocationSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v20, v0

    const-string/jumbo v21, "no_share_location"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v20

    .line 330
    if-eqz v20, :cond_6

    .line 332
    const/4 v9, 0x1

    .line 334
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v4, v1, v9}, Lcom/android/settings_ex/location/LocationSettings;->addLocationServices(Landroid/content/Context;Landroid/support/v7/preference/PreferenceScreen;Z)V

    .line 336
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/location/LocationSettings;->refreshLocationMode()V

    .line 337
    return-object v19

    .line 319
    .end local v9    # "lockdownOnLocationAccess":Z
    :cond_7
    new-instance v6, Landroid/support/v7/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/location/LocationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v6, v0}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 320
    .local v6, "banner":Landroid/support/v7/preference/Preference;
    const v20, 0x7f0400a7

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/support/v7/preference/Preference;->setLayoutResource(I)V

    .line 321
    const v20, 0x7f0e0950

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 322
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_3
.end method

.method private forceStopPackage(Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;Lcom/oneplus/settings/ui/OPButtonPreference;)V
    .locals 6
    .param p1, "mAppEntry"    # Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .param p2, "pref"    # Lcom/oneplus/settings/ui/OPButtonPreference;

    .prologue
    .line 369
    iget-object v4, p1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 370
    .local v2, "pkgName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "activity"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 371
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 372
    iget-object v4, p1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 373
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/settings_ex/location/LocationSettings;->mState:Lcom/android/settings_exlib/applications/ApplicationsState;

    invoke-virtual {v4, v2, v3}, Lcom/android/settings_exlib/applications/ApplicationsState;->invalidatePackage(Ljava/lang/String;I)V

    .line 374
    iget-object v4, p0, Lcom/android/settings_ex/location/LocationSettings;->mState:Lcom/android/settings_exlib/applications/ApplicationsState;

    invoke-virtual {v4, v2, v3}, Lcom/android/settings_exlib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    move-result-object v1

    .line 375
    .local v1, "newEnt":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    invoke-virtual {p0, v1, p2}, Lcom/android/settings_ex/location/LocationSettings;->checkForceStop(Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;Lcom/oneplus/settings/ui/OPButtonPreference;)V

    .line 368
    return-void
.end method

.method private getCurrentUsingGpsList()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 347
    const-class v1, Landroid/location/LocationManager;

    .line 348
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/location/LocationManager;>;"
    const/4 v2, 0x0

    .line 350
    .local v2, "currentUsingGpsPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    const-string/jumbo v8, "getCurrentProviderPackageList"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v1, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 351
    .local v7, "getCurrentProviderPackageList":Ljava/lang/reflect/Method;
    iget-object v8, p0, Lcom/android/settings_ex/location/LocationSettings;->mLocationManager:Landroid/location/LocationManager;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "gps"

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/util/List;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    .end local v2    # "currentUsingGpsPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "getCurrentProviderPackageList":Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 361
    .restart local v2    # "currentUsingGpsPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v6

    .line 362
    .local v6, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v8, "LocationSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getCurrentUsingGpsList InvocationTargetException:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-virtual {v6}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 358
    .end local v6    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v4

    .line 359
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v8, "LocationSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getCurrentUsingGpsList IllegalArgumentException:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 355
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v3

    .line 356
    .local v3, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v8, "LocationSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getCurrentUsingGpsList IllegalAccessException:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 352
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v5

    .line 353
    .local v5, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v8, "LocationSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getCurrentUsingGpsList NoSuchMethodException:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-virtual {v5}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private static getLocationString(I)I
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 537
    packed-switch p0, :pswitch_data_0

    .line 547
    const/4 v0, 0x0

    return v0

    .line 539
    :pswitch_0
    const v0, 0x7f0e094e

    return v0

    .line 541
    :pswitch_1
    const v0, 0x7f0e094d

    return v0

    .line 543
    :pswitch_2
    const v0, 0x7f0e094c

    return v0

    .line 545
    :pswitch_3
    const v0, 0x7f0e094b

    return v0

    .line 537
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isManagedProfileRestrictedByBase()Z
    .locals 3

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    if-nez v0, :cond_0

    .line 607
    const/4 v0, 0x0

    return v0

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v1, "no_share_location"

    iget-object v2, p0, Lcom/android/settings_ex/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method private setupManagedProfileCategory(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "root"    # Landroid/support/v7/preference/PreferenceScreen;

    .prologue
    const/4 v1, 0x0

    .line 423
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mUm:Landroid/os/UserManager;

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    .line 424
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    if-nez v0, :cond_0

    .line 426
    const-string/jumbo v0, "managed_profile_location_switch"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 427
    iput-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mManagedProfileSwitch:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    .line 420
    :goto_0
    return-void

    .line 430
    :cond_0
    const-string/jumbo v0, "managed_profile_location_switch"

    .line 429
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    iput-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mManagedProfileSwitch:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    .line 431
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mManagedProfileSwitch:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public checkForceStop(Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;Lcom/oneplus/settings/ui/OPButtonPreference;)V
    .locals 9
    .param p1, "mAppEntry"    # Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .param p2, "pref"    # Lcom/oneplus/settings/ui/OPButtonPreference;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 379
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string/jumbo v2, "package"

    iget-object v4, p1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v4, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 380
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "android.intent.extra.PACKAGES"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iget-object v4, p1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v4, v2, v6

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    const-string/jumbo v0, "android.intent.extra.UID"

    iget-object v2, p1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 382
    const-string/jumbo v0, "android.intent.extra.user_handle"

    iget-object v2, p1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 383
    const-string/jumbo v0, "pref_key"

    invoke-virtual {p2}, Lcom/oneplus/settings/ui/OPButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/settings_ex/location/LocationSettings;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/app/Activity;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 378
    return-void
.end method

.method public getHelpResource()I
    .locals 1

    .prologue
    .line 533
    const v0, 0x7f0e0d83

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 142
    const/16 v0, 0x3f

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/android/settings_ex/location/LocationSettingsBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 150
    .local v0, "activity":Lcom/android/settings_ex/SettingsActivity;
    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mUm:Landroid/os/UserManager;

    .line 152
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/location/LocationSettings;->setHasOptionsMenu(Z)V

    .line 153
    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsActivity;->getSwitchBar()Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    .line 154
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/SwitchBar;->getSwitch()Lcom/android/settings_ex/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    .line 155
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/SwitchBar;->show()V

    .line 158
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_exlib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settings_exlib/applications/ApplicationsState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mState:Lcom/android/settings_exlib/applications/ApplicationsState;

    .line 159
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 160
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mLocationManager:Landroid/location/LocationManager;

    .line 161
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.location.HIGH_POWER_REQUEST_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 146
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 511
    const/4 v0, 0x1

    const v1, 0x7f0e0958

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 513
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/location/LocationSettingsBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 510
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 167
    invoke-super {p0}, Lcom/android/settings_ex/location/LocationSettingsBase;->onDestroyView()V

    .line 168
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->hide()V

    .line 166
    return-void
.end method

.method public onModeChanged(IZ)V
    .locals 9
    .param p1, "mode"    # I
    .param p2, "restricted"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 552
    invoke-static {p1}, Lcom/android/settings_ex/location/LocationSettings;->getLocationString(I)I

    move-result v3

    .line 553
    .local v3, "modeDescription":I
    if-eqz v3, :cond_0

    .line 554
    iget-object v4, p0, Lcom/android/settings_ex/location/LocationSettings;->mLocationMode:Landroid/support/v7/preference/Preference;

    invoke-virtual {v4, v3}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 560
    :cond_0
    if-eqz p1, :cond_4

    const/4 v1, 0x1

    .line 561
    .local v1, "enabled":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 562
    const-string/jumbo v7, "no_share_location"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    .line 561
    invoke-static {v4, v7, v8}, Lcom/android/settings_exlib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 563
    .local v0, "admin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 564
    const-string/jumbo v7, "no_share_location"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    .line 563
    invoke-static {v4, v7, v8}, Lcom/android/settings_exlib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    .line 567
    .local v2, "hasBaseUserRestriction":Z
    if-nez v2, :cond_5

    if-eqz v0, :cond_5

    .line 568
    iget-object v4, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v4, v0}, Lcom/android/settings_ex/widget/SwitchBar;->setDisabledByAdmin(Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 572
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/location/LocationSettings;->mLocationMode:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_1

    if-eqz p2, :cond_7

    :cond_1
    :goto_2
    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 573
    iget-object v4, p0, Lcom/android/settings_ex/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v4, v1}, Landroid/support/v7/preference/PreferenceCategory;->setEnabled(Z)V

    .line 575
    iget-object v4, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4}, Landroid/widget/Switch;->isChecked()Z

    move-result v4

    if-eq v1, v4, :cond_3

    .line 577
    iget-boolean v4, p0, Lcom/android/settings_ex/location/LocationSettings;->mValidListener:Z

    if-eqz v4, :cond_2

    .line 578
    iget-object v4, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v4, p0}, Lcom/android/settings_ex/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 580
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 581
    iget-boolean v4, p0, Lcom/android/settings_ex/location/LocationSettings;->mValidListener:Z

    if-eqz v4, :cond_3

    .line 582
    iget-object v4, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v4, p0}, Lcom/android/settings_ex/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 586
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/settings_ex/location/LocationSettings;->changeManagedProfileLocationAccessStatus(Z)V

    .line 590
    iget-object v4, p0, Lcom/android/settings_ex/location/LocationSettings;->injector:Lcom/android/settings_ex/location/SettingsInjector;

    invoke-virtual {v4}, Lcom/android/settings_ex/location/SettingsInjector;->reloadStatusMessages()V

    .line 551
    return-void

    .line 560
    .end local v0    # "admin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    .end local v1    # "enabled":Z
    .end local v2    # "hasBaseUserRestriction":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "enabled":Z
    goto :goto_0

    .line 570
    .restart local v0    # "admin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    .restart local v2    # "hasBaseUserRestriction":Z
    :cond_5
    iget-object v7, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    if-eqz p2, :cond_6

    move v4, v5

    :goto_3
    invoke-virtual {v7, v4}, Lcom/android/settings_ex/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_1

    :cond_6
    move v4, v6

    goto :goto_3

    :cond_7
    move v5, v6

    .line 572
    goto :goto_2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    .line 518
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 519
    .local v0, "activity":Lcom/android/settings_ex/SettingsActivity;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 527
    invoke-super {p0, p1}, Lcom/android/settings_ex/location/LocationSettingsBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 522
    :pswitch_0
    const-class v1, Lcom/android/settings_ex/location/ScanningSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 523
    const v3, 0x7f0e0959

    .line 524
    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    .line 521
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 525
    const/4 v1, 0x1

    return v1

    .line 519
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 5

    .prologue
    .line 188
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings;->mHighPowerChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 204
    :goto_1
    iget-boolean v2, p0, Lcom/android/settings_ex/location/LocationSettings;->mValidListener:Z

    if-eqz v2, :cond_1

    .line 205
    iget-object v2, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v2, p0}, Lcom/android/settings_ex/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 206
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings_ex/location/LocationSettings;->mValidListener:Z

    .line 208
    :cond_1
    invoke-super {p0}, Lcom/android/settings_ex/location/LocationSettingsBase;->onPause()V

    .line 186
    return-void

    .line 189
    :catch_0
    move-exception v1

    .line 191
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "LocationSettings"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    const-string/jumbo v2, "LocationSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Swallowing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 199
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "LocationSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterReceiver(mHighPowerChangeReceiver): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 173
    invoke-super {p0}, Lcom/android/settings_ex/location/LocationSettingsBase;->onResume()V

    .line 174
    invoke-direct {p0}, Lcom/android/settings_ex/location/LocationSettings;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    .line 175
    iget-boolean v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mValidListener:Z

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mValidListener:Z

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mHighPowerChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/location/LocationSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 172
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 598
    if-eqz p2, :cond_0

    .line 599
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/location/LocationSettings;->setLocationMode(I)V

    .line 597
    :goto_0
    return-void

    .line 601
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/location/LocationSettings;->setLocationMode(I)V

    goto :goto_0
.end method
