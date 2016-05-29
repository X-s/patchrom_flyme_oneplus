.class public Lcom/android/settings_ex/WirelessSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "WirelessSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/WirelessSettings$SimStateReceive;
    }
.end annotation


# static fields
.field private static final ACTION_SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field private static final CURRENT_MODE_KEY:Ljava/lang/String; = "CURRENT_MODE"

.field public static final EXIT_ECM_RESULT:Ljava/lang/String; = "exit_ecm_result"

.field private static final KEY_ANDROID_BEAM_SETTINGS:Ljava/lang/String; = "android_beam_settings"

.field private static final KEY_CELL_BROADCAST_SETTINGS:Ljava/lang/String; = "cell_broadcast_settings"

.field private static final KEY_DATA_USAGE_SETTINGS:Ljava/lang/String; = "data_usage_settings"

.field private static final KEY_HIGH_ACCURACY:Ljava/lang/String; = "high_accuracy"

.field private static final KEY_MANAGE_MOBILE_PLAN:Ljava/lang/String; = "manage_mobile_plan"

.field private static final KEY_MOBILE_NETWORK_SETTINGS:Ljava/lang/String; = "mobile_network_settings"

.field private static final KEY_PROXY_SETTINGS:Ljava/lang/String; = "proxy_settings"

.field private static final KEY_SIM_APPLICATION_SETTINGS:Ljava/lang/String; = "sim_application_settings"

.field private static final KEY_SMS_APPLICATION:Ljava/lang/String; = "sms_application"

.field private static final KEY_TETHER_SETTINGS:Ljava/lang/String; = "tether_settings"

.field private static final KEY_TOGGLE_AIRPLANE:Ljava/lang/String; = "toggle_airplane"

.field private static final KEY_TOGGLE_NFC:Ljava/lang/String; = "toggle_nfc"

.field private static final KEY_TOGGLE_NSD:Ljava/lang/String; = "toggle_nsd"

.field private static final KEY_VPN_SETTINGS:Ljava/lang/String; = "vpn_settings"

.field private static final KEY_WIMAX_SETTINGS:Ljava/lang/String; = "wimax_settings"

.field private static final MANAGE_MOBILE_PLAN_DIALOG_ID:I = 0x1

.field private static final MODE_CHANGING_ACTION:Ljava/lang/String; = "com.android.settings_ex.location.MODE_CHANGING"

.field private static final NEW_MODE_KEY:Ljava/lang/String; = "NEW_MODE"

.field public static final REQUEST_CODE_EXIT_ECM:I = 0x1

.field private static final SAVED_MANAGE_MOBILE_PLAN_MSG:Ljava/lang/String; = "mManageMobilePlanMessage"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static final SIM_INVALID:I = 0x1

.field private static final SIM_VALID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WirelessSettings"


# instance fields
.field private mAirplaneModeEnabler:Lcom/android/settings_ex/AirplaneModeEnabler;

.field private mAirplaneModePreference:Landroid/preference/SwitchPreference;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mCurrentMode:I

.field private mHighAccuracy:Landroid/preference/SwitchPreference;

.field private mManageMobilePlanMessage:Ljava/lang/String;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcEnabler:Lcom/android/settings_ex/nfc/NfcEnabler;

.field private mNsdEnabler:Lcom/android/settings_ex/NsdEnabler;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mReceiver:Lcom/android/settings_ex/WirelessSettings$SimStateReceive;

.field private mRoot:Landroid/preference/PreferenceScreen;

.field private mSIMApplicationPreference:Landroid/preference/Preference;

.field private mSimHandler:Landroid/os/Handler;

.field private mSmsApplicationPreference:Lcom/android/settings_ex/AppListPreference;

.field private mTm:Landroid/telephony/TelephonyManager;

.field private mUm:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 660
    new-instance v0, Lcom/android/settings_ex/WirelessSettings$3;

    invoke-direct {v0}, Lcom/android/settings_ex/WirelessSettings$3;-><init>()V

    sput-object v0, Lcom/android/settings_ex/WirelessSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 800
    new-instance v0, Lcom/android/settings_ex/WirelessSettings$SimStateReceive;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/WirelessSettings$SimStateReceive;-><init>(Lcom/android/settings_ex/WirelessSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mReceiver:Lcom/android/settings_ex/WirelessSettings$SimStateReceive;

    .line 859
    new-instance v0, Lcom/android/settings_ex/WirelessSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/WirelessSettings$4;-><init>(Lcom/android/settings_ex/WirelessSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mSimHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/WirelessSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/WirelessSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/settings_ex/WirelessSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings_ex/WirelessSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/WirelessSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/settings_ex/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings_ex/WirelessSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/WirelessSettings;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings_ex/WirelessSettings;->initSmsApplicationSetting()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/WirelessSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/WirelessSettings;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mSimHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/WirelessSettings;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/WirelessSettings;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/WirelessSettings;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private initSmsApplicationSetting()V
    .locals 10

    .prologue
    .line 285
    const-string v8, "initSmsApplicationSetting:"

    invoke-direct {p0, v8}, Lcom/android/settings_ex/WirelessSettings;->log(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v7

    .line 290
    .local v7, "smsApplications":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v1

    .line 291
    .local v1, "count":I
    new-array v5, v1, [Ljava/lang/String;

    .line 292
    .local v5, "packageNames":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 293
    .local v3, "i":I
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 294
    .local v6, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    iget-object v8, v6, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    aput-object v8, v5, v3

    .line 295
    add-int/lit8 v3, v3, 0x1

    .line 296
    goto :goto_0

    .line 297
    .end local v6    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_0
    const/4 v2, 0x0

    .line 298
    .local v2, "defaultPackageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 300
    .local v0, "appName":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    .line 301
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 303
    :cond_1
    iget-object v8, p0, Lcom/android/settings_ex/WirelessSettings;->mSmsApplicationPreference:Lcom/android/settings_ex/AppListPreference;

    invoke-virtual {v8, v5, v2}, Lcom/android/settings_ex/AppListPreference;->setPackageNames([Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method private isAppExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 898
    const/4 v2, 0x0

    .line 899
    .local v2, "isExist":Z
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 900
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 902
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, p2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 907
    :goto_0
    if-eqz v0, :cond_0

    .line 908
    const/4 v2, 0x1

    .line 911
    :cond_0
    return v2

    .line 903
    :catch_0
    move-exception v1

    .line 905
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 334
    invoke-static {p0}, Lcom/android/settings_ex/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 341
    :cond_0
    :goto_0
    return v1

    .line 338
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_toggleable_radios"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, "toggleable":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSmsSupported()Z
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 330
    const-string v0, "WirelessSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 630
    const v0, 0x7f090a1c

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 619
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 620
    const-string v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 622
    .local v0, "isChoiceYes":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings_ex/AirplaneModeEnabler;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/AirplaneModeEnabler;->setAirplaneModeInECM(ZZ)V

    .line 625
    .end local v0    # "isChoiceYes":Ljava/lang/Boolean;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 626
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 34
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 352
    invoke-super/range {p0 .. p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 353
    if-eqz p1, :cond_0

    .line 354
    const-string v29, "mManageMobilePlanMessage"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    .line 356
    :cond_0
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "onCreate: mManageMobilePlanMessage="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->log(Ljava/lang/String;)V

    .line 358
    const-string v29, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/net/ConnectivityManager;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    .line 359
    const-string v29, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    .line 360
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 361
    const-string v29, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/os/UserManager;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mUm:Landroid/os/UserManager;

    .line 363
    const v29, 0x7f060078

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->addPreferencesFromResource(I)V

    .line 365
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v19

    .line 366
    .local v19, "myUserId":I
    const/4 v14, 0x1

    .line 367
    .local v14, "isSecondaryUser":Z
    const/4 v13, 0x1

    .line 369
    .local v13, "isRestrictedUser":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 370
    .local v2, "activity":Landroid/app/Activity;
    const-string v29, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    check-cast v29, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModePreference:Landroid/preference/SwitchPreference;

    .line 371
    const-string v29, "toggle_nfc"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/SwitchPreference;

    .line 373
    .local v20, "nfc":Landroid/preference/SwitchPreference;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_1

    .line 375
    const-string v29, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/PreferenceScreen;

    .line 378
    .local v18, "manageSub":Landroid/preference/PreferenceScreen;
    if-eqz v18, :cond_1

    .line 379
    invoke-virtual/range {v18 .. v18}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 380
    .local v10, "intent":Landroid/content/Intent;
    const-string v29, "com.android.phone"

    const-string v30, "com.android.phone.SelectSubscription"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    const-string v29, "PACKAGE"

    const-string v30, "com.android.phone"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    const-string v29, "TARGET_CLASS"

    const-string v30, "com.android.phone.MSimMobileNetworkSubSettings"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v18    # "manageSub":Landroid/preference/PreferenceScreen;
    :cond_1
    const-string v29, "android_beam_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    .line 390
    .local v3, "androidBeam":Landroid/preference/PreferenceScreen;
    const-string v29, "toggle_nsd"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/SwitchPreference;

    .line 392
    .local v21, "nsd":Landroid/preference/SwitchPreference;
    new-instance v29, Lcom/android/settings_ex/AirplaneModeEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-direct {v0, v2, v1}, Lcom/android/settings_ex/AirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings_ex/AirplaneModeEnabler;

    .line 393
    new-instance v29, Lcom/android/settings_ex/nfc/NfcEnabler;

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-direct {v0, v2, v1, v3}, Lcom/android/settings_ex/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mNfcEnabler:Lcom/android/settings_ex/nfc/NfcEnabler;

    .line 395
    const-string v29, "sms_application"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    check-cast v29, Lcom/android/settings_ex/AppListPreference;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mSmsApplicationPreference:Lcom/android/settings_ex/AppListPreference;

    .line 398
    const-string v29, "sms_application"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 405
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 408
    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "airplane_mode_toggleable_radios"

    invoke-static/range {v29 .. v30}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 412
    .local v27, "toggleable":Ljava/lang/String;
    const/4 v15, 0x0

    .line 414
    .local v15, "isWimaxEnabled":Z
    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v29, v0

    const-string v30, "no_config_mobile_networks"

    invoke-virtual/range {v29 .. v30}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_10

    .line 416
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    .line 417
    .local v24, "root":Landroid/preference/PreferenceScreen;
    const-string v29, "wimax_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    .line 418
    .local v23, "ps":Landroid/preference/Preference;
    if-eqz v23, :cond_3

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 428
    .end local v23    # "ps":Landroid/preference/Preference;
    .end local v24    # "root":Landroid/preference/PreferenceScreen;
    :cond_3
    :goto_0
    if-eqz v27, :cond_4

    const-string v29, "wifi"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_5

    .line 429
    :cond_4
    const-string v29, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    const-string v30, "toggle_airplane"

    invoke-virtual/range {v29 .. v30}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 437
    :cond_5
    if-eqz v27, :cond_6

    const-string v29, "bluetooth"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_6

    .line 442
    :cond_6
    if-eqz v27, :cond_7

    const-string v29, "nfc"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_8

    .line 443
    :cond_7
    const-string v29, "toggle_nfc"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    const-string v30, "toggle_airplane"

    invoke-virtual/range {v29 .. v30}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 444
    const-string v29, "android_beam_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    const-string v30, "toggle_airplane"

    invoke-virtual/range {v29 .. v30}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 448
    :cond_8
    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    move-object/from16 v29, v0

    if-nez v29, :cond_9

    .line 450
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 451
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 452
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mNfcEnabler:Lcom/android/settings_ex/nfc/NfcEnabler;

    .line 459
    :cond_9
    const-string v29, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 460
    const-string v29, "manage_mobile_plan"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 464
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f0c0006

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    .line 466
    .local v12, "isMobilePlanEnabled":Z
    if-nez v12, :cond_a

    .line 467
    const-string v29, "manage_mobile_plan"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    .line 468
    .local v22, "pref":Landroid/preference/Preference;
    if-eqz v22, :cond_a

    .line 469
    const-string v29, "manage_mobile_plan"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 474
    .end local v22    # "pref":Landroid/preference/Preference;
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->isSmsSupported()Z

    move-result v29

    if-nez v29, :cond_b

    .line 475
    const-string v29, "sms_application"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 479
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v29, v0

    const-string v30, "android.hardware.type.television"

    invoke-virtual/range {v29 .. v30}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_c

    .line 480
    const-string v29, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 484
    :cond_c
    const-string v29, "proxy_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    .line 485
    .local v17, "mGlobalProxy":Landroid/preference/Preference;
    const-string v29, "device_policy"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/admin/DevicePolicyManager;

    .line 488
    .local v16, "mDPM":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 489
    invoke-virtual/range {v16 .. v16}, Landroid/app/admin/DevicePolicyManager;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v29

    if-nez v29, :cond_12

    const/16 v29, 0x1

    :goto_1
    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 492
    const-string v29, "connectivity"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 496
    .local v4, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v29

    const-string v30, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 507
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x112006b

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    .line 510
    .local v11, "isCellBroadcastAppLinkEnabled":Z
    if-eqz v11, :cond_d

    .line 511
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v29, v0

    const-string v30, "com.android.cellbroadcastreceiver"

    invoke-virtual/range {v29 .. v30}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v29

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_d

    .line 513
    const/4 v11, 0x0

    .line 521
    :cond_d
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    .line 522
    .restart local v24    # "root":Landroid/preference/PreferenceScreen;
    const-string v29, "cell_broadcast_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    .line 523
    .restart local v23    # "ps":Landroid/preference/Preference;
    if-eqz v23, :cond_e

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 526
    :cond_e
    const-string v29, "data_usage_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 527
    const-string v29, "sim_application_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 529
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "vpn_start_init_date"

    invoke-static/range {v29 .. v30}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 532
    .local v28, "vpndate":Ljava/lang/String;
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v29, "yyyy-MM-dd"

    move-object/from16 v0, v29

    invoke-direct {v8, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 534
    .local v8, "formats":Ljava/text/SimpleDateFormat;
    new-instance v26, Ljava/util/Date;

    invoke-direct/range {v26 .. v26}, Ljava/util/Date;-><init>()V

    .line 535
    .local v26, "todayDate":Ljava/util/Date;
    const/16 v25, 0x0

    .line 536
    .local v25, "saveDate":Ljava/util/Date;
    const-wide/16 v6, 0x0

    .line 539
    .local v6, "day":J
    :try_start_1
    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v25

    .line 541
    invoke-virtual/range {v26 .. v26}, Ljava/util/Date;->getTime()J

    move-result-wide v30

    invoke-virtual/range {v25 .. v25}, Ljava/util/Date;->getTime()J

    move-result-wide v32

    sub-long v30, v30, v32

    const-wide/32 v32, 0x5265c00

    div-long v6, v30, v32

    .line 544
    const-wide/16 v30, 0x1e

    cmp-long v29, v6, v30

    if-gez v29, :cond_f

    .line 545
    const-string v29, "preference_divider_line"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 546
    const-string v29, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->removePreference(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 553
    :cond_f
    :goto_3
    return-void

    .line 420
    .end local v4    # "cm":Landroid/net/ConnectivityManager;
    .end local v6    # "day":J
    .end local v8    # "formats":Ljava/text/SimpleDateFormat;
    .end local v11    # "isCellBroadcastAppLinkEnabled":Z
    .end local v12    # "isMobilePlanEnabled":Z
    .end local v16    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    .end local v17    # "mGlobalProxy":Landroid/preference/Preference;
    .end local v23    # "ps":Landroid/preference/Preference;
    .end local v24    # "root":Landroid/preference/PreferenceScreen;
    .end local v25    # "saveDate":Ljava/util/Date;
    .end local v26    # "todayDate":Ljava/util/Date;
    .end local v28    # "vpndate":Ljava/lang/String;
    :cond_10
    if-eqz v27, :cond_11

    const-string v29, "wimax"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_3

    if-eqz v15, :cond_3

    .line 422
    :cond_11
    const-string v29, "wimax_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    .line 423
    .restart local v23    # "ps":Landroid/preference/Preference;
    const-string v29, "toggle_airplane"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 489
    .end local v23    # "ps":Landroid/preference/Preference;
    .restart local v12    # "isMobilePlanEnabled":Z
    .restart local v16    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    .restart local v17    # "mGlobalProxy":Landroid/preference/Preference;
    :cond_12
    const/16 v29, 0x0

    goto/16 :goto_1

    .line 516
    .restart local v4    # "cm":Landroid/net/ConnectivityManager;
    .restart local v11    # "isCellBroadcastAppLinkEnabled":Z
    :catch_0
    move-exception v9

    .line 517
    .local v9, "ignored":Ljava/lang/IllegalArgumentException;
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 549
    .end local v9    # "ignored":Ljava/lang/IllegalArgumentException;
    .restart local v6    # "day":J
    .restart local v8    # "formats":Ljava/text/SimpleDateFormat;
    .restart local v23    # "ps":Landroid/preference/Preference;
    .restart local v24    # "root":Landroid/preference/PreferenceScreen;
    .restart local v25    # "saveDate":Ljava/util/Date;
    .restart local v26    # "todayDate":Ljava/util/Date;
    .restart local v28    # "vpndate":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 551
    .local v5, "e":Ljava/text/ParseException;
    invoke-virtual {v5}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_3
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "dialogId"    # I

    .prologue
    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateDialog: dialogId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/WirelessSettings;->log(Ljava/lang/String;)V

    .line 310
    packed-switch p1, :pswitch_data_0

    .line 326
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 312
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings_ex/WirelessSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/WirelessSettings$1;-><init>(Lcom/android/settings_ex/WirelessSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 310
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onManageMobilePlanClick()V
    .locals 12

    .prologue
    const v9, 0x7f090586

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 212
    const-string v8, "onManageMobilePlanClick:"

    invoke-direct {p0, v8}, Lcom/android/settings_ex/WirelessSettings;->log(Ljava/lang/String;)V

    .line 213
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/settings_ex/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    .line 214
    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 216
    .local v6, "resources":Landroid/content/res/Resources;
    iget-object v8, p0, Lcom/android/settings_ex/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getProvisioningOrActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 217
    .local v3, "ni":Landroid/net/NetworkInfo;
    iget-object v8, p0, Lcom/android/settings_ex/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v8

    if-eqz v8, :cond_6

    if-eqz v3, :cond_6

    .line 219
    new-instance v5, Landroid/content/Intent;

    const-string v8, "android.intent.action.ACTION_CARRIER_SETUP"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 221
    .local v5, "provisioningIntent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/settings_ex/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8, v5}, Landroid/telephony/TelephonyManager;->getCarrierPackageNamesForIntent(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    .line 223
    .local v0, "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 224
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-eq v8, v11, :cond_0

    .line 225
    const-string v8, "WirelessSettings"

    const-string v9, "Multiple matching carrier apps found, launching the first."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/WirelessSettings;->startActivity(Landroid/content/Intent;)V

    .line 282
    .end local v0    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "provisioningIntent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 234
    .restart local v0    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "provisioningIntent":Landroid/content/Intent;
    :cond_2
    iget-object v8, p0, Lcom/android/settings_ex/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v7

    .line 235
    .local v7, "url":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 236
    const-string v8, "android.intent.action.MAIN"

    const-string v9, "android.intent.category.APP_BROWSER"

    invoke-static {v8, v9}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 238
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 239
    const/high16 v8, 0x10400000

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 242
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/WirelessSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    .end local v0    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "provisioningIntent":Landroid/content/Intent;
    .end local v7    # "url":Ljava/lang/String;
    :goto_1
    iget-object v8, p0, Lcom/android/settings_ex/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 279
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onManageMobilePlanClick: message="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/settings_ex/WirelessSettings;->log(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p0, v11}, Lcom/android/settings_ex/WirelessSettings;->showDialog(I)V

    goto :goto_0

    .line 243
    .restart local v0    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v5    # "provisioningIntent":Landroid/content/Intent;
    .restart local v7    # "url":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 244
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v8, "WirelessSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onManageMobilePlanClick: startActivity failed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 249
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v8, p0, Lcom/android/settings_ex/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v4

    .line 250
    .local v4, "operatorName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 255
    iget-object v8, p0, Lcom/android/settings_ex/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v4

    .line 256
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 257
    const v8, 0x7f090585

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_1

    .line 260
    :cond_4
    new-array v8, v11, [Ljava/lang/Object;

    aput-object v4, v8, v10

    invoke-virtual {v6, v9, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_1

    .line 265
    :cond_5
    new-array v8, v11, [Ljava/lang/Object;

    aput-object v4, v8, v10

    invoke-virtual {v6, v9, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_1

    .line 269
    .end local v0    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "operatorName":Ljava/lang/String;
    .end local v5    # "provisioningIntent":Landroid/content/Intent;
    .end local v7    # "url":Ljava/lang/String;
    :cond_6
    iget-object v8, p0, Lcom/android/settings_ex/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v8

    if-nez v8, :cond_7

    .line 271
    const v8, 0x7f090587

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto/16 :goto_1

    .line 275
    :cond_7
    const v8, 0x7f090588

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 599
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 601
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings_ex/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/AirplaneModeEnabler;->pause()V

    .line 602
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mNfcEnabler:Lcom/android/settings_ex/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mNfcEnabler:Lcom/android/settings_ex/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/nfc/NfcEnabler;->pause()V

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mNsdEnabler:Lcom/android/settings_ex/NsdEnabler;

    if-eqz v0, :cond_1

    .line 606
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mNsdEnabler:Lcom/android/settings_ex/NsdEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/NsdEnabler;->pause()V

    .line 612
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mReceiver:Lcom/android/settings_ex/WirelessSettings$SimStateReceive;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings$SimStateReceive;->register(Z)V

    .line 615
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 635
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mSmsApplicationPreference:Lcom/android/settings_ex/AppListPreference;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 636
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 638
    const/4 v0, 0x1

    .line 654
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 789
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 13
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v9, 0x1

    .line 150
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onPreferenceTreeClick: preference="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings_ex/WirelessSettings;->log(Ljava/lang/String;)V

    .line 151
    iget-object v10, p0, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModePreference:Landroid/preference/SwitchPreference;

    if-ne p2, v10, :cond_1

    const-string v10, "ril.cdma.inecmmode"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 155
    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v10, v9}, Lcom/android/settings_ex/WirelessSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 206
    :cond_0
    :goto_0
    return v9

    .line 160
    :cond_1
    const-string v10, "manage_mobile_plan"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-ne p2, v10, :cond_3

    .line 161
    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->onManageMobilePlanClick()V

    .line 206
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v9

    goto :goto_0

    .line 162
    :cond_3
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v10

    const-string v11, "vpn_settings"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 164
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy-MM-dd"

    invoke-direct {v3, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 166
    .local v3, "formats":Ljava/text/SimpleDateFormat;
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 167
    .local v8, "todayDate":Ljava/util/Date;
    invoke-virtual {v3, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "currentDate":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "vpn_start_init_date"

    invoke-static {v9, v10, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 174
    .end local v2    # "currentDate":Ljava/lang/String;
    .end local v3    # "formats":Ljava/text/SimpleDateFormat;
    .end local v8    # "todayDate":Ljava/util/Date;
    :cond_4
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v10

    const-string v11, "sim_application_settings"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 177
    iget-object v10, p0, Lcom/android/settings_ex/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v10}, Landroid/net/ConnectivityManager;->getProvisioningOrActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    .line 179
    .local v5, "ni":Landroid/net/NetworkInfo;
    iget-object v10, p0, Lcom/android/settings_ex/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v10

    if-eqz v10, :cond_0

    if-eqz v5, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 183
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    const-string v10, "com.android.stk"

    const-string v11, "com.android.stk.StkLauncherActivity"

    invoke-direct {v0, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v6, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v7

    .line 188
    .local v7, "res":I
    if-eqz v7, :cond_5

    if-ne v7, v9, :cond_0

    .line 191
    :cond_5
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    .local v4, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v10, "com.android.stk"

    const-string v11, "com.android.stk.StkLauncherActivity"

    invoke-direct {v1, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .local v1, "componentNames":Landroid/content/ComponentName;
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 196
    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 570
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 572
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings_ex/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/AirplaneModeEnabler;->resume()V

    .line 573
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mNfcEnabler:Lcom/android/settings_ex/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mNfcEnabler:Lcom/android/settings_ex/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/nfc/NfcEnabler;->resume()V

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mNsdEnabler:Lcom/android/settings_ex/NsdEnabler;

    if-eqz v0, :cond_1

    .line 577
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mNsdEnabler:Lcom/android/settings_ex/NsdEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/NsdEnabler;->resume()V

    .line 583
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mReceiver:Lcom/android/settings_ex/WirelessSettings$SimStateReceive;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings$SimStateReceive;->register(Z)V

    .line 585
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 589
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 591
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 592
    const-string v0, "mManageMobilePlanMessage"

    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 557
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onStart()V

    .line 558
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings_ex/WirelessSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/WirelessSettings$2;-><init>(Lcom/android/settings_ex/WirelessSettings;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 566
    return-void
.end method
