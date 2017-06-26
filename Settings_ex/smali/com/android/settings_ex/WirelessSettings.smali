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

.field private static final KEY_NFC_CATAGORY:Ljava/lang/String; = "nfc_catagory"

.field private static final KEY_PAYMENT_SETTINGS:Ljava/lang/String; = "android_payment_settings"

.field private static final KEY_PROXY_SETTINGS:Ljava/lang/String; = "proxy_settings"

.field private static final KEY_SMS_APPLICATION:Ljava/lang/String; = "sms_application"

.field private static final KEY_TETHER_SETTINGS:Ljava/lang/String; = "tether_settings"

.field private static final KEY_TOGGLE_AIRPLANE:Ljava/lang/String; = "toggle_airplane"

.field private static final KEY_TOGGLE_NFC:Ljava/lang/String; = "toggle_nfc"

.field private static final KEY_TOGGLE_NSD:Ljava/lang/String; = "toggle_nsd"

.field private static final KEY_VPN_SETTINGS:Ljava/lang/String; = "vpn_settings"

.field private static final KEY_WFC_SETTINGS:Ljava/lang/String; = "wifi_calling_settings"

.field private static final KEY_WIMAX_SETTINGS:Ljava/lang/String; = "wimax_settings"

.field private static final MANAGE_MOBILE_PLAN_DIALOG_ID:I = 0x1

.field private static final MODE_CHANGING_ACTION:Ljava/lang/String; = "com.android.settings.location.MODE_CHANGING"

.field private static final NEW_MODE_KEY:Ljava/lang/String; = "NEW_MODE"

.field private static final OEM_KEY_SIM_APPLICATION_SETTINGS:Ljava/lang/String; = "sim_application_settings"

.field public static final REQUEST_CODE_EXIT_ECM:I = 0x1

.field private static final SAVED_MANAGE_MOBILE_PLAN_MSG:Ljava/lang/String; = "mManageMobilePlanMessage"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static final SIM_INVALID:I = 0x1

.field private static final SIM_VALID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WirelessSettings"


# instance fields
.field private mAirplaneModeEnabler:Lcom/android/settings_ex/AirplaneModeEnabler;

.field private mAirplaneModePreference:Landroid/preference/SwitchPreference;

.field private mButtonWfc:Landroid/preference/PreferenceScreen;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mManageMobilePlanMessage:Ljava/lang/String;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcCategory:Landroid/preference/PreferenceCategory;

.field private mNfcEnabler:Lcom/android/settings_ex/nfc/NfcEnabler;

.field private mNsdEnabler:Lcom/android/settings_ex/NsdEnabler;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mReceiver:Lcom/android/settings_ex/WirelessSettings$SimStateReceive;

.field private mRoot:Landroid/preference/PreferenceScreen;

.field private mSimHandler:Landroid/os/Handler;

.field private mSmsApplicationPreference:Lcom/android/settings_ex/AppListPreference;

.field private mTm:Landroid/telephony/TelephonyManager;

.field private mUm:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 612
    new-instance v0, Lcom/android/settings_ex/WirelessSettings$2;

    invoke-direct {v0}, Lcom/android/settings_ex/WirelessSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings_ex/WirelessSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 743
    new-instance v0, Lcom/android/settings_ex/WirelessSettings$SimStateReceive;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/WirelessSettings$SimStateReceive;-><init>(Lcom/android/settings_ex/WirelessSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mReceiver:Lcom/android/settings_ex/WirelessSettings$SimStateReceive;

    .line 802
    new-instance v0, Lcom/android/settings_ex/WirelessSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/WirelessSettings$3;-><init>(Lcom/android/settings_ex/WirelessSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mSimHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/WirelessSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/WirelessSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/settings_ex/WirelessSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings_ex/WirelessSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/WirelessSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/settings_ex/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings_ex/WirelessSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/WirelessSettings;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mSimHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/WirelessSettings;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/WirelessSettings;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/WirelessSettings;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private initSmsApplicationSetting()V
    .locals 10

    .prologue
    .line 272
    const-string v8, "initSmsApplicationSetting:"

    invoke-direct {p0, v8}, Lcom/android/settings_ex/WirelessSettings;->log(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v7

    .line 277
    .local v7, "smsApplications":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v1

    .line 278
    .local v1, "count":I
    new-array v5, v1, [Ljava/lang/String;

    .line 279
    .local v5, "packageNames":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 280
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

    .line 281
    .local v6, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    iget-object v8, v6, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    aput-object v8, v5, v3

    .line 282
    add-int/lit8 v3, v3, 0x1

    .line 283
    goto :goto_0

    .line 284
    .end local v6    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_0
    const/4 v2, 0x0

    .line 285
    .local v2, "defaultPackageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 287
    .local v0, "appName":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    .line 288
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 290
    :cond_1
    iget-object v8, p0, Lcom/android/settings_ex/WirelessSettings;->mSmsApplicationPreference:Lcom/android/settings_ex/AppListPreference;

    invoke-virtual {v8, v5, v2}, Lcom/android/settings_ex/AppListPreference;->setPackageNames([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 292
    return-void
.end method

.method private isAppExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 841
    const/4 v2, 0x0

    .line 842
    .local v2, "isExist":Z
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 843
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 845
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, p2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 850
    :goto_0
    if-eqz v0, :cond_0

    .line 851
    const/4 v2, 0x1

    .line 854
    :cond_0
    return v2

    .line 846
    :catch_0
    move-exception v1

    .line 848
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

    .line 325
    invoke-static {p0}, Lcom/android/settings_ex/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 332
    :cond_0
    :goto_0
    return v1

    .line 329
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_toggleable_radios"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 332
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
    .line 338
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 316
    const-string v0, "WirelessSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 582
    const v0, 0x7f0c0bc9

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 321
    const/16 v0, 0x6e

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 568
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 570
    if-eqz p3, :cond_0

    .line 571
    const-string v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 574
    .local v0, "isChoiceYes":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings_ex/AirplaneModeEnabler;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/AirplaneModeEnabler;->setAirplaneModeInECM(ZZ)V

    .line 577
    .end local v0    # "isChoiceYes":Ljava/lang/Boolean;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 578
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 24
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 343
    invoke-super/range {p0 .. p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 344
    if-eqz p1, :cond_0

    .line 345
    const-string v22, "mManageMobilePlanMessage"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    .line 347
    :cond_0
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "onCreate: mManageMobilePlanMessage="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->log(Ljava/lang/String;)V

    .line 349
    const-string v22, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/net/ConnectivityManager;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    .line 350
    const-string v22, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    .line 351
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 352
    const-string v22, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/UserManager;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mUm:Landroid/os/UserManager;

    .line 354
    const v22, 0x7f080088

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->addPreferencesFromResource(I)V

    .line 356
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    .line 357
    .local v13, "myUserId":I
    if-eqz v13, :cond_10

    const/4 v9, 0x1

    .line 358
    .local v9, "isSecondaryUser":Z
    :goto_0
    const/4 v8, 0x1

    .line 360
    .local v8, "isRestrictedUser":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 361
    .local v2, "activity":Landroid/app/Activity;
    const-string v22, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModePreference:Landroid/preference/SwitchPreference;

    .line 362
    const-string v22, "nfc_catagory"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mNfcCategory:Landroid/preference/PreferenceCategory;

    .line 363
    const-string v22, "toggle_nfc"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreference;

    .line 379
    .local v14, "nfc":Landroid/preference/SwitchPreference;
    const-string v22, "android_beam_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    .line 381
    .local v3, "androidBeam":Landroid/preference/PreferenceScreen;
    const-string v22, "android_payment_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceScreen;

    .line 382
    .local v17, "payment":Landroid/preference/PreferenceScreen;
    const-string v22, "toggle_nsd"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/SwitchPreference;

    .line 384
    .local v15, "nsd":Landroid/preference/SwitchPreference;
    new-instance v22, Lcom/android/settings_ex/AirplaneModeEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v2, v1}, Lcom/android/settings_ex/AirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings_ex/AirplaneModeEnabler;

    .line 388
    new-instance v22, Lcom/android/settings_ex/nfc/NfcEnabler;

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v14, v3, v1}, Lcom/android/settings_ex/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mNfcEnabler:Lcom/android/settings_ex/nfc/NfcEnabler;

    .line 390
    const-string v22, "wifi_calling_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mButtonWfc:Landroid/preference/PreferenceScreen;

    .line 391
    const-string v22, "sms_application"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Lcom/android/settings_ex/AppListPreference;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mSmsApplicationPreference:Lcom/android/settings_ex/AppListPreference;

    .line 394
    const-string v22, "sms_application"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 400
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 403
    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "airplane_mode_toggleable_radios"

    invoke-static/range {v22 .. v23}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 407
    .local v21, "toggleable":Ljava/lang/String;
    if-nez v9, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x1120069

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v22

    if-eqz v22, :cond_11

    const/4 v10, 0x1

    .line 409
    .local v10, "isWimaxEnabled":Z
    :goto_1
    if-eqz v10, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v22, v0

    const-string v23, "no_config_mobile_networks"

    invoke-virtual/range {v22 .. v23}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_12

    .line 411
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    .line 412
    .local v20, "root":Landroid/preference/PreferenceScreen;
    const-string v22, "wimax_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    .line 413
    .local v19, "ps":Landroid/preference/Preference;
    if-eqz v19, :cond_2

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 423
    .end local v19    # "ps":Landroid/preference/Preference;
    .end local v20    # "root":Landroid/preference/PreferenceScreen;
    :cond_2
    :goto_2
    if-eqz v21, :cond_3

    const-string v22, "wifi"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_4

    .line 424
    :cond_3
    const-string v22, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    const-string v23, "toggle_airplane"

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 427
    :cond_4
    if-nez v9, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v22, v0

    const-string v23, "no_config_vpn"

    invoke-virtual/range {v22 .. v23}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 432
    :cond_5
    if-eqz v21, :cond_6

    const-string v22, "bluetooth"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_6

    .line 437
    :cond_6
    if-eqz v21, :cond_7

    const-string v22, "nfc"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_8

    .line 438
    :cond_7
    const-string v22, "toggle_nfc"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    const-string v23, "toggle_airplane"

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 439
    const-string v22, "android_beam_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    const-string v23, "toggle_airplane"

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 441
    const-string v22, "android_payment_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    const-string v23, "toggle_airplane"

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 445
    :cond_8
    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    move-object/from16 v22, v0

    if-nez v22, :cond_9

    .line 447
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mNfcCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 450
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mNfcEnabler:Lcom/android/settings_ex/nfc/NfcEnabler;

    .line 462
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f100007

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 464
    .local v7, "isMobilePlanEnabled":Z
    if-nez v7, :cond_a

    .line 465
    const-string v22, "manage_mobile_plan"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    .line 466
    .local v18, "pref":Landroid/preference/Preference;
    if-eqz v18, :cond_a

    .line 467
    const-string v22, "manage_mobile_plan"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 472
    .end local v18    # "pref":Landroid/preference/Preference;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v22, v0

    const-string v23, "android.hardware.type.television"

    invoke-virtual/range {v22 .. v23}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 473
    const-string v22, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 477
    :cond_b
    const-string v22, "proxy_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    .line 478
    .local v12, "mGlobalProxy":Landroid/preference/Preference;
    const-string v22, "device_policy"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/admin/DevicePolicyManager;

    .line 481
    .local v11, "mDPM":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 482
    invoke-virtual {v11}, Landroid/app/admin/DevicePolicyManager;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v22

    if-nez v22, :cond_14

    const/16 v22, 0x1

    :goto_3
    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 485
    const-string v22, "connectivity"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 487
    .local v4, "cm":Landroid/net/ConnectivityManager;
    if-nez v9, :cond_c

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v22

    if-eqz v22, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v22, v0

    const-string v23, "no_config_tethering"

    invoke-virtual/range {v22 .. v23}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_15

    .line 489
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    const-string v23, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 500
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x1120072

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 503
    .local v6, "isCellBroadcastAppLinkEnabled":Z
    if-eqz v6, :cond_d

    .line 504
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v22, v0

    const-string v23, "com.android.cellbroadcastreceiver"

    invoke-virtual/range {v22 .. v23}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_d

    .line 506
    const/4 v6, 0x0

    .line 512
    :cond_d
    :goto_5
    if-eqz v6, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v22, v0

    const-string v23, "no_config_cell_broadcasts"

    invoke-virtual/range {v22 .. v23}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 514
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    .line 515
    .restart local v20    # "root":Landroid/preference/PreferenceScreen;
    const-string v22, "cell_broadcast_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    .line 516
    .restart local v19    # "ps":Landroid/preference/Preference;
    if-eqz v19, :cond_f

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 518
    .end local v19    # "ps":Landroid/preference/Preference;
    .end local v20    # "root":Landroid/preference/PreferenceScreen;
    :cond_f
    return-void

    .line 357
    .end local v2    # "activity":Landroid/app/Activity;
    .end local v3    # "androidBeam":Landroid/preference/PreferenceScreen;
    .end local v4    # "cm":Landroid/net/ConnectivityManager;
    .end local v6    # "isCellBroadcastAppLinkEnabled":Z
    .end local v7    # "isMobilePlanEnabled":Z
    .end local v8    # "isRestrictedUser":Z
    .end local v9    # "isSecondaryUser":Z
    .end local v10    # "isWimaxEnabled":Z
    .end local v11    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    .end local v12    # "mGlobalProxy":Landroid/preference/Preference;
    .end local v14    # "nfc":Landroid/preference/SwitchPreference;
    .end local v15    # "nsd":Landroid/preference/SwitchPreference;
    .end local v17    # "payment":Landroid/preference/PreferenceScreen;
    .end local v21    # "toggleable":Ljava/lang/String;
    :cond_10
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 407
    .restart local v2    # "activity":Landroid/app/Activity;
    .restart local v3    # "androidBeam":Landroid/preference/PreferenceScreen;
    .restart local v8    # "isRestrictedUser":Z
    .restart local v9    # "isSecondaryUser":Z
    .restart local v14    # "nfc":Landroid/preference/SwitchPreference;
    .restart local v15    # "nsd":Landroid/preference/SwitchPreference;
    .restart local v17    # "payment":Landroid/preference/PreferenceScreen;
    .restart local v21    # "toggleable":Ljava/lang/String;
    :cond_11
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 415
    .restart local v10    # "isWimaxEnabled":Z
    :cond_12
    if-eqz v21, :cond_13

    const-string v22, "wimax"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_2

    if-eqz v10, :cond_2

    .line 417
    :cond_13
    const-string v22, "wimax_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    .line 418
    .restart local v19    # "ps":Landroid/preference/Preference;
    const-string v22, "toggle_airplane"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 482
    .end local v19    # "ps":Landroid/preference/Preference;
    .restart local v7    # "isMobilePlanEnabled":Z
    .restart local v11    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    .restart local v12    # "mGlobalProxy":Landroid/preference/Preference;
    :cond_14
    const/16 v22, 0x0

    goto/16 :goto_3

    .line 491
    .restart local v4    # "cm":Landroid/net/ConnectivityManager;
    :cond_15
    const-string v22, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    .line 493
    .local v16, "p":Landroid/preference/Preference;
    const v22, 0x7f0c06fc

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 495
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/settings_ex/TetherSettings;->isProvisioningNeededButUnavailable(Landroid/content/Context;)Z

    move-result v22

    if-nez v22, :cond_16

    const/16 v22, 0x1

    :goto_6
    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_4

    :cond_16
    const/16 v22, 0x0

    goto :goto_6

    .line 509
    .end local v16    # "p":Landroid/preference/Preference;
    .restart local v6    # "isCellBroadcastAppLinkEnabled":Z
    :catch_0
    move-exception v5

    .line 510
    .local v5, "ignored":Ljava/lang/IllegalArgumentException;
    const/4 v6, 0x0

    goto/16 :goto_5
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "dialogId"    # I

    .prologue
    .line 296
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

    .line 297
    packed-switch p1, :pswitch_data_0

    .line 312
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 299
    :pswitch_0
    new-instance v0, Lcom/oneplus/app/OPAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oneplus/app/OPAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/app/OPAlertDialog$Builder;->setCancelable(Z)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings_ex/WirelessSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/WirelessSettings$1;-><init>(Lcom/android/settings_ex/WirelessSettings;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/app/OPAlertDialog$Builder;->create()Lcom/oneplus/app/OPAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 297
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onManageMobilePlanClick()V
    .locals 12

    .prologue
    const v9, 0x7f0c071c

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 207
    const-string v8, "onManageMobilePlanClick:"

    invoke-direct {p0, v8}, Lcom/android/settings_ex/WirelessSettings;->log(Ljava/lang/String;)V

    .line 208
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/settings_ex/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    .line 209
    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 211
    .local v6, "resources":Landroid/content/res/Resources;
    iget-object v8, p0, Lcom/android/settings_ex/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 212
    .local v3, "ni":Landroid/net/NetworkInfo;
    iget-object v8, p0, Lcom/android/settings_ex/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v8

    if-eqz v8, :cond_6

    if-eqz v3, :cond_6

    .line 214
    new-instance v5, Landroid/content/Intent;

    const-string v8, "android.intent.action.ACTION_CARRIER_SETUP"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 215
    .local v5, "provisioningIntent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/settings_ex/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8, v5}, Landroid/telephony/TelephonyManager;->getCarrierPackageNamesForIntent(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    .line 217
    .local v0, "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 218
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-eq v8, v11, :cond_0

    .line 219
    const-string v8, "WirelessSettings"

    const-string v9, "Multiple matching carrier apps found, launching the first."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_0
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/WirelessSettings;->startActivity(Landroid/content/Intent;)V

    .line 269
    .end local v0    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "provisioningIntent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 227
    .restart local v0    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "provisioningIntent":Landroid/content/Intent;
    :cond_2
    iget-object v8, p0, Lcom/android/settings_ex/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v7

    .line 228
    .local v7, "url":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 229
    const-string v8, "android.intent.action.MAIN"

    const-string v9, "android.intent.category.APP_BROWSER"

    invoke-static {v8, v9}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 231
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 232
    const/high16 v8, 0x10400000

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 235
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/WirelessSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    .end local v0    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "provisioningIntent":Landroid/content/Intent;
    .end local v7    # "url":Ljava/lang/String;
    :goto_1
    iget-object v8, p0, Lcom/android/settings_ex/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 266
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

    .line 267
    invoke-virtual {p0, v11}, Lcom/android/settings_ex/WirelessSettings;->showDialog(I)V

    goto :goto_0

    .line 236
    .restart local v0    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v5    # "provisioningIntent":Landroid/content/Intent;
    .restart local v7    # "url":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 237
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

    .line 241
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v8, p0, Lcom/android/settings_ex/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v4

    .line 242
    .local v4, "operatorName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 245
    iget-object v8, p0, Lcom/android/settings_ex/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v4

    .line 246
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 247
    const v8, 0x7f0c071b

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_1

    .line 250
    :cond_4
    new-array v8, v11, [Ljava/lang/Object;

    aput-object v4, v8, v10

    invoke-virtual {v6, v9, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_1

    .line 254
    :cond_5
    new-array v8, v11, [Ljava/lang/Object;

    aput-object v4, v8, v10

    invoke-virtual {v6, v9, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_1

    .line 258
    .end local v0    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "operatorName":Ljava/lang/String;
    .end local v5    # "provisioningIntent":Landroid/content/Intent;
    .end local v7    # "url":Ljava/lang/String;
    :cond_6
    iget-object v8, p0, Lcom/android/settings_ex/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v8

    if-nez v8, :cond_7

    .line 260
    const v8, 0x7f0c071d

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto/16 :goto_1

    .line 263
    :cond_7
    const v8, 0x7f0c071e

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 555
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 557
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings_ex/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/AirplaneModeEnabler;->pause()V

    .line 558
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mNfcEnabler:Lcom/android/settings_ex/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mNfcEnabler:Lcom/android/settings_ex/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/nfc/NfcEnabler;->pause()V

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mNsdEnabler:Lcom/android/settings_ex/NsdEnabler;

    if-eqz v0, :cond_1

    .line 562
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mNsdEnabler:Lcom/android/settings_ex/NsdEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/NsdEnabler;->pause()V

    .line 564
    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 587
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mSmsApplicationPreference:Lcom/android/settings_ex/AppListPreference;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 588
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 590
    const/4 v0, 0x1

    .line 606
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
    .line 732
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 13
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v9, 0x1

    .line 148
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

    .line 149
    iget-object v10, p0, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModePreference:Landroid/preference/SwitchPreference;

    if-ne p2, v10, :cond_1

    const-string v10, "ril.cdma.inecmmode"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 152
    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v10, v9}, Lcom/android/settings_ex/WirelessSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 202
    :cond_0
    :goto_0
    return v9

    .line 156
    :cond_1
    const-string v10, "manage_mobile_plan"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-ne p2, v10, :cond_3

    .line 157
    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->onManageMobilePlanClick()V

    .line 202
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v9

    goto :goto_0

    .line 158
    :cond_3
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v10

    const-string v11, "vpn_settings"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 160
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy-MM-dd"

    invoke-direct {v3, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 162
    .local v3, "formats":Ljava/text/SimpleDateFormat;
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 163
    .local v8, "todayDate":Ljava/util/Date;
    invoke-virtual {v3, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, "currentDate":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "vpn_start_init_date"

    invoke-static {v9, v10, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 170
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

    .line 173
    iget-object v10, p0, Lcom/android/settings_ex/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v10}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    .line 175
    .local v5, "ni":Landroid/net/NetworkInfo;
    iget-object v10, p0, Lcom/android/settings_ex/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v10

    if-eqz v10, :cond_0

    if-eqz v5, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 179
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    const-string v10, "com.android.stk"

    const-string v11, "com.android.stk.StkLauncherActivity"

    invoke-direct {v0, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v6, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v7

    .line 184
    .local v7, "res":I
    if-eqz v7, :cond_5

    if-ne v7, v9, :cond_0

    .line 187
    :cond_5
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    .local v4, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v10, "com.android.stk"

    const-string v11, "com.android.stk.StkLauncherActivity"

    invoke-direct {v1, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .local v1, "componentNames":Landroid/content/ComponentName;
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 192
    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 522
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 524
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings_ex/AirplaneModeEnabler;

    invoke-virtual {v1}, Lcom/android/settings_ex/AirplaneModeEnabler;->resume()V

    .line 525
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mNfcEnabler:Lcom/android/settings_ex/nfc/NfcEnabler;

    if-eqz v1, :cond_0

    .line 526
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mNfcEnabler:Lcom/android/settings_ex/nfc/NfcEnabler;

    invoke-virtual {v1}, Lcom/android/settings_ex/nfc/NfcEnabler;->resume()V

    .line 528
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mNsdEnabler:Lcom/android/settings_ex/NsdEnabler;

    if-eqz v1, :cond_1

    .line 529
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mNsdEnabler:Lcom/android/settings_ex/NsdEnabler;

    invoke-virtual {v1}, Lcom/android/settings_ex/NsdEnabler;->resume()V

    .line 533
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 534
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 535
    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/WirelessSettings;->mButtonWfc:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 537
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mButtonWfc:Landroid/preference/PreferenceScreen;

    invoke-static {v0}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/settings_ex/WifiCallingSettings;->getWfcModeSummary(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 542
    :goto_0
    return-void

    .line 540
    :cond_2
    const-string v1, "wifi_calling_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/WirelessSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 546
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 548
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 549
    const-string v0, "mManageMobilePlanMessage"

    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    :cond_0
    return-void
.end method
