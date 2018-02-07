.class public Lcom/android/settings_ex/WirelessSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "WirelessSettings.java"

# interfaces
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/WirelessSettings$1;,
        Lcom/android/settings_ex/WirelessSettings$2;,
        Lcom/android/settings_ex/WirelessSettings$3;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static final EXIT_ECM_RESULT:Ljava/lang/String; = "exit_ecm_result"

.field private static final KEY_ANDROID_BEAM_SETTINGS:Ljava/lang/String; = "android_beam_settings"

.field private static final KEY_MANAGE_MOBILE_PLAN:Ljava/lang/String; = "manage_mobile_plan"

.field private static final KEY_MOBILE_NETWORK_SETTINGS:Ljava/lang/String; = "mobile_network_settings"

.field private static final KEY_PROXY_SETTINGS:Ljava/lang/String; = "proxy_settings"

.field private static final KEY_TETHER_SETTINGS:Ljava/lang/String; = "tether_settings"

.field private static final KEY_TOGGLE_AIRPLANE:Ljava/lang/String; = "toggle_airplane"

.field private static final KEY_TOGGLE_NFC:Ljava/lang/String; = "toggle_nfc"

.field private static final KEY_VPN_SETTINGS:Ljava/lang/String; = "vpn_settings"

.field private static final KEY_WFC_ENHANCED_SETTINGS:Ljava/lang/String; = "wifi_calling_enhanced_settings"

.field private static final KEY_WFC_SETTINGS:Ljava/lang/String; = "wifi_calling_settings"

.field private static final KEY_WIMAX_SETTINGS:Ljava/lang/String; = "wimax_settings"

.field private static final MANAGE_MOBILE_PLAN_DIALOG_ID:I = 0x1

.field public static final REQUEST_CODE_EXIT_ECM:I = 0x1

.field private static final SAVED_MANAGE_MOBILE_PLAN_MSG:Ljava/lang/String; = "mManageMobilePlanMessage"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "WirelessSettings"

.field private static final VOICE_OVER_LTE:Ljava/lang/String; = "voice_over_lte"


# instance fields
.field private mAirplaneModeEnabler:Lcom/android/settings_ex/AirplaneModeEnabler;

.field private mAirplaneModePreference:Landroid/support/v14/preference/SwitchPreference;

.field private mButtonWfc:Landroid/support/v7/preference/PreferenceScreen;

.field private mCallback:Lorg/codeaurora/wfcservice/IWFCServiceCB;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mEnhancedWFCSettingsEnabled:Z

.field mIsNetworkSettingsAvailable:Z

.field private mLteEnabled:Z

.field private mManageMobilePlanMessage:Ljava/lang/String;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcEnabler:Lcom/android/settings_ex/nfc/NfcEnabler;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mTm:Landroid/telephony/TelephonyManager;

.field private mUm:Landroid/os/UserManager;

.field private mVoLtePreference:Landroid/support/v14/preference/SwitchPreference;

.field private mWFCService:Lorg/codeaurora/wfcservice/IWFCService;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/WirelessSettings;)Landroid/support/v7/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mButtonWfc:Landroid/support/v7/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/WirelessSettings;)Lorg/codeaurora/wfcservice/IWFCServiceCB;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mCallback:Lorg/codeaurora/wfcservice/IWFCServiceCB;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/WirelessSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings_ex/WirelessSettings;->mEnhancedWFCSettingsEnabled:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/settings_ex/WirelessSettings;)Lorg/codeaurora/wfcservice/IWFCService;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mWFCService:Lorg/codeaurora/wfcservice/IWFCService;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings_ex/WirelessSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings_ex/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/settings_ex/WirelessSettings;Lorg/codeaurora/wfcservice/IWFCService;)Lorg/codeaurora/wfcservice/IWFCService;
    .locals 0

    iput-object p1, p0, Lcom/android/settings_ex/WirelessSettings;->mWFCService:Lorg/codeaurora/wfcservice/IWFCService;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/WirelessSettings;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/WirelessSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 563
    new-instance v0, Lcom/android/settings_ex/WirelessSettings$3;

    invoke-direct {v0}, Lcom/android/settings_ex/WirelessSettings$3;-><init>()V

    .line 562
    sput-object v0, Lcom/android/settings_ex/WirelessSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    .line 75
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 104
    iput-boolean v1, p0, Lcom/android/settings_ex/WirelessSettings;->mIsNetworkSettingsAvailable:Z

    .line 110
    iput-boolean v1, p0, Lcom/android/settings_ex/WirelessSettings;->mEnhancedWFCSettingsEnabled:Z

    .line 113
    new-instance v0, Lcom/android/settings_ex/WirelessSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/WirelessSettings$1;-><init>(Lcom/android/settings_ex/WirelessSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mConnection:Landroid/content/ServiceConnection;

    .line 130
    new-instance v0, Lcom/android/settings_ex/WirelessSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/WirelessSettings$2;-><init>(Lcom/android/settings_ex/WirelessSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mCallback:Lorg/codeaurora/wfcservice/IWFCServiceCB;

    .line 176
    iput-boolean v1, p0, Lcom/android/settings_ex/WirelessSettings;->mLteEnabled:Z

    .line 75
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 308
    const-string/jumbo v0, "WirelessSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return-void
.end method

.method private unbindWFCService()V
    .locals 4

    .prologue
    .line 151
    iget-boolean v1, p0, Lcom/android/settings_ex/WirelessSettings;->mEnhancedWFCSettingsEnabled:Z

    if-nez v1, :cond_0

    .line 152
    return-void

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mWFCService:Lorg/codeaurora/wfcservice/IWFCService;

    if-eqz v1, :cond_1

    .line 156
    :try_start_0
    const-string/jumbo v1, "WirelessSettings"

    const-string/jumbo v2, "WFCService unbindService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mWFCService:Lorg/codeaurora/wfcservice/IWFCService;

    iget-object v2, p0, Lcom/android/settings_ex/WirelessSettings;->mCallback:Lorg/codeaurora/wfcservice/IWFCServiceCB;

    invoke-interface {v1, v2}, Lorg/codeaurora/wfcservice/IWFCService;->unregisterCallback(Lorg/codeaurora/wfcservice/IWFCServiceCB;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/WirelessSettings;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 164
    const-string/jumbo v1, "WirelessSettings"

    const-string/jumbo v2, "WFCService unbind error "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "WirelessSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "WFCService unregister error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateCallback()V
    .locals 2

    .prologue
    .line 147
    const-string/jumbo v0, "WirelessSettings"

    const-string/jumbo v1, "call back from settings is called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 556
    const v0, 0x7f0e0d79

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 313
    const/16 v0, 0x6e

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 545
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 546
    const-string/jumbo v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 548
    .local v0, "isChoiceYes":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings_ex/AirplaneModeEnabler;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 549
    iget-object v3, p0, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v3

    .line 548
    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/AirplaneModeEnabler;->setAirplaneModeInECM(ZZ)V

    .line 551
    .end local v0    # "isChoiceYes":Ljava/lang/Boolean;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 544
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 22
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 318
    invoke-super/range {p0 .. p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 319
    if-eqz p1, :cond_0

    .line 320
    const-string/jumbo v20, "mManageMobilePlanMessage"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    .line 322
    :cond_0
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "onCreate: mManageMobilePlanMessage="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->log(Ljava/lang/String;)V

    .line 324
    const-string/jumbo v20, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/ConnectivityManager;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    .line 325
    const-string/jumbo v20, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    .line 326
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 327
    const-string/jumbo v20, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/UserManager;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mUm:Landroid/os/UserManager;

    .line 329
    const v20, 0x7f0800a7

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->addPreferencesFromResource(I)V

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v7

    .line 333
    .local v7, "isAdmin":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 334
    .local v2, "activity":Landroid/app/Activity;
    const-string/jumbo v20, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModePreference:Landroid/support/v14/preference/SwitchPreference;

    .line 335
    const-string/jumbo v20, "toggle_nfc"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/support/v14/preference/SwitchPreference;

    .line 337
    .local v13, "nfc":Landroid/support/v14/preference/SwitchPreference;
    const-string/jumbo v20, "android_beam_settings"

    .line 336
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings_exlib/RestrictedPreference;

    .line 339
    .local v4, "androidBeam":Lcom/android/settings_exlib/RestrictedPreference;
    new-instance v20, Lcom/android/settings_ex/AirplaneModeEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModePreference:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v2, v1}, Lcom/android/settings_ex/AirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/support/v14/preference/SwitchPreference;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings_ex/AirplaneModeEnabler;

    .line 340
    new-instance v20, Lcom/android/settings_ex/nfc/NfcEnabler;

    move-object/from16 v0, v20

    invoke-direct {v0, v2, v13, v4}, Lcom/android/settings_ex/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/support/v14/preference/SwitchPreference;Lcom/android/settings_exlib/RestrictedPreference;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mNfcEnabler:Lcom/android/settings_ex/nfc/NfcEnabler;

    .line 342
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 343
    const v21, 0x7f0c0044

    .line 342
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/WirelessSettings;->mEnhancedWFCSettingsEnabled:Z

    .line 346
    const-string/jumbo v20, "wifi_calling_enhanced_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/support/v7/preference/PreferenceScreen;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mButtonWfc:Landroid/support/v7/preference/PreferenceScreen;

    .line 347
    const-string/jumbo v20, "wifi_calling_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 349
    const-string/jumbo v20, "wifi_calling_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/support/v7/preference/PreferenceScreen;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mButtonWfc:Landroid/support/v7/preference/PreferenceScreen;

    .line 350
    const-string/jumbo v20, "wifi_calling_enhanced_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 354
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/WirelessSettings;->mEnhancedWFCSettingsEnabled:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 356
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 357
    .local v6, "intentWfc":Landroid/content/Intent;
    const-string/jumbo v20, "com.qualcomm.qti.wfcservice.IWFCService"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    const-string/jumbo v20, "com.qualcomm.qti.wfcservice"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mConnection:Landroid/content/ServiceConnection;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v2, v6, v0, v1}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 362
    .end local v6    # "intentWfc":Landroid/content/Intent;
    :cond_1
    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    .line 363
    const-string/jumbo v21, "airplane_mode_toggleable_radios"

    .line 362
    invoke-static/range {v20 .. v21}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 367
    .local v19, "toggleable":Ljava/lang/String;
    const/4 v10, 0x0

    .line 372
    .local v10, "isWimaxEnabled":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v17

    .line 373
    .local v17, "root":Landroid/support/v7/preference/PreferenceScreen;
    const-string/jumbo v20, "wimax_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v16

    .line 374
    .local v16, "ps":Landroid/support/v7/preference/Preference;
    if-eqz v16, :cond_2

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 384
    :cond_2
    if-eqz v19, :cond_d

    const-string/jumbo v20, "wifi"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 389
    :goto_0
    if-eqz v7, :cond_3

    .line 390
    const-string/jumbo v20, "no_config_vpn"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v21

    .line 389
    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v2, v0, v1}, Lcom/android/settings_exlib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 391
    :cond_3
    const-string/jumbo v20, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 395
    :cond_4
    if-eqz v19, :cond_5

    const-string/jumbo v20, "bluetooth"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 400
    :cond_5
    if-eqz v19, :cond_e

    const-string/jumbo v20, "nfc"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 406
    :goto_1
    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    move-object/from16 v20, v0

    if-nez v20, :cond_6

    .line 408
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 409
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 410
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mNfcEnabler:Lcom/android/settings_ex/nfc/NfcEnabler;

    .line 415
    :cond_6
    if-eqz v7, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v20

    if-nez v20, :cond_7

    .line 417
    const-string/jumbo v20, "no_config_mobile_networks"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v21

    .line 416
    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v2, v0, v1}, Lcom/android/settings_exlib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v20

    .line 415
    if-eqz v20, :cond_f

    .line 418
    :cond_7
    const-string/jumbo v20, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 419
    const-string/jumbo v20, "manage_mobile_plan"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 425
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 426
    const v21, 0x7f0c0014

    .line 425
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 429
    .local v8, "isMobilePlanEnabled":Z
    const-string/jumbo v20, "manage_mobile_plan"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v15

    .line 430
    .local v15, "pref":Landroid/support/v7/preference/Preference;
    if-eqz v15, :cond_8

    .line 431
    const-string/jumbo v20, "manage_mobile_plan"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 437
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v20, v0

    const-string/jumbo v21, "android.hardware.type.television"

    invoke-virtual/range {v20 .. v21}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 438
    const-string/jumbo v20, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 442
    :cond_9
    const-string/jumbo v20, "proxy_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    .line 444
    .local v12, "mGlobalProxy":Landroid/support/v7/preference/Preference;
    const-string/jumbo v20, "device_policy"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 443
    check-cast v11, Landroid/app/admin/DevicePolicyManager;

    .line 446
    .local v11, "mDPM":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 447
    invoke-virtual {v11}, Landroid/app/admin/DevicePolicyManager;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v20

    if-nez v20, :cond_10

    const/16 v20, 0x1

    :goto_3
    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 451
    const-string/jumbo v20, "connectivity"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 453
    .local v5, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 454
    const v21, 0x7f0c0024

    .line 453
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    .line 457
    .local v9, "isRJILlayout":Z
    const-string/jumbo v20, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 461
    const-string/jumbo v20, "no_config_tethering"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v21

    .line 460
    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v2, v0, v1}, Lcom/android/settings_exlib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v20

    if-eqz v20, :cond_11

    const/4 v3, 0x1

    .line 462
    .local v3, "adminDisallowedTetherConfig":Z
    :goto_4
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v20

    if-nez v20, :cond_a

    if-eqz v3, :cond_b

    .line 464
    :cond_a
    const-string/jumbo v20, "no_config_tethering"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v21

    .line 463
    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v2, v0, v1}, Lcom/android/settings_exlib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v20

    .line 462
    if-nez v20, :cond_b

    if-eqz v9, :cond_12

    .line 466
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v20

    const-string/jumbo v21, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 317
    :cond_c
    :goto_5
    return-void

    .line 385
    .end local v3    # "adminDisallowedTetherConfig":Z
    .end local v5    # "cm":Landroid/net/ConnectivityManager;
    .end local v8    # "isMobilePlanEnabled":Z
    .end local v9    # "isRJILlayout":Z
    .end local v11    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    .end local v12    # "mGlobalProxy":Landroid/support/v7/preference/Preference;
    .end local v15    # "pref":Landroid/support/v7/preference/Preference;
    :cond_d
    const-string/jumbo v20, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v20

    const-string/jumbo v21, "toggle_airplane"

    invoke-virtual/range {v20 .. v21}, Landroid/support/v7/preference/Preference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 401
    :cond_e
    const-string/jumbo v20, "toggle_nfc"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v20

    const-string/jumbo v21, "toggle_airplane"

    invoke-virtual/range {v20 .. v21}, Landroid/support/v7/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 402
    const-string/jumbo v20, "android_beam_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v20

    const-string/jumbo v21, "toggle_airplane"

    invoke-virtual/range {v20 .. v21}, Landroid/support/v7/preference/Preference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 421
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings_ex/Utils;->isNetworkSettingsApkAvailable(Landroid/content/Context;)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/WirelessSettings;->mIsNetworkSettingsAvailable:Z

    goto/16 :goto_2

    .line 447
    .restart local v8    # "isMobilePlanEnabled":Z
    .restart local v11    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    .restart local v12    # "mGlobalProxy":Landroid/support/v7/preference/Preference;
    .restart local v15    # "pref":Landroid/support/v7/preference/Preference;
    :cond_10
    const/16 v20, 0x0

    goto/16 :goto_3

    .line 460
    .restart local v5    # "cm":Landroid/net/ConnectivityManager;
    .restart local v9    # "isRJILlayout":Z
    :cond_11
    const/4 v3, 0x0

    .restart local v3    # "adminDisallowedTetherConfig":Z
    goto :goto_4

    .line 467
    :cond_12
    if-nez v3, :cond_c

    .line 468
    const-string/jumbo v20, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v14

    .line 469
    .local v14, "p":Landroid/support/v7/preference/Preference;
    invoke-static {v5}, Lcom/android/settings_exlib/Utils;->getTetheringLabel(Landroid/net/ConnectivityManager;)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 471
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 472
    const v21, 0x7f0c0042

    .line 471
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v20

    if-eqz v20, :cond_13

    move-object/from16 v18, v14

    .line 473
    check-cast v18, Lcom/android/settings_exlib/RestrictedPreference;

    .line 474
    .local v18, "rp":Lcom/android/settings_exlib/RestrictedPreference;
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/RestrictedPreference;->useAdminDisabledSummary(Z)V

    .line 475
    const v20, 0x7f0e107d

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 479
    .end local v18    # "rp":Lcom/android/settings_exlib/RestrictedPreference;
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    .line 478
    invoke-static/range {v20 .. v20}, Lcom/android/settings_ex/TetherSettings;->isProvisioningNeededButUnavailable(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_14

    const/16 v20, 0x0

    :goto_6
    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 480
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0c0034

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/WirelessSettings;->mLteEnabled:Z

    .line 481
    const-string/jumbo v20, "voice_over_lte"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mVoLtePreference:Landroid/support/v14/preference/SwitchPreference;

    .line 482
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/WirelessSettings;->mLteEnabled:Z

    move/from16 v20, v0

    if-eqz v20, :cond_15

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mVoLtePreference:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v20, v0

    .line 484
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z

    move-result v21

    .line 483
    invoke-virtual/range {v20 .. v21}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_5

    .line 478
    :cond_14
    const/16 v20, 0x1

    goto :goto_6

    .line 486
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mVoLtePreference:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_5
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "dialogId"    # I

    .prologue
    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCreateDialog: dialogId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/WirelessSettings;->log(Ljava/lang/String;)V

    .line 289
    packed-switch p1, :pswitch_data_0

    .line 304
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 291
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 292
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    .line 291
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 293
    const/4 v1, 0x0

    .line 291
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 295
    new-instance v1, Lcom/android/settings_ex/WirelessSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/WirelessSettings$4;-><init>(Lcom/android/settings_ex/WirelessSettings;)V

    .line 294
    const v2, 0x104000a

    .line 291
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 289
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/android/settings_ex/WirelessSettings;->unbindWFCService()V

    .line 171
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 168
    return-void
.end method

.method public onManageMobilePlanClick()V
    .locals 13

    .prologue
    const v12, 0x7f0e0945

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 222
    const-string/jumbo v8, "onManageMobilePlanClick:"

    invoke-direct {p0, v8}, Lcom/android/settings_ex/WirelessSettings;->log(Ljava/lang/String;)V

    .line 223
    iput-object v9, p0, Lcom/android/settings_ex/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    .line 224
    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 226
    .local v6, "resources":Landroid/content/res/Resources;
    iget-object v8, p0, Lcom/android/settings_ex/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 227
    .local v3, "ni":Landroid/net/NetworkInfo;
    iget-object v8, p0, Lcom/android/settings_ex/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v8

    if-eqz v8, :cond_7

    if-eqz v3, :cond_7

    .line 229
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.ACTION_CARRIER_SETUP"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 231
    .local v5, "provisioningIntent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/settings_ex/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8, v5}, Landroid/telephony/TelephonyManager;->getCarrierPackageNamesForIntent(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    .line 232
    .local v0, "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 242
    :cond_0
    iget-object v8, p0, Lcom/android/settings_ex/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v7

    .line 243
    .local v7, "url":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 244
    const-string/jumbo v8, "android.intent.action.MAIN"

    .line 245
    const-string/jumbo v9, "android.intent.category.APP_BROWSER"

    .line 244
    invoke-static {v8, v9}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 246
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 247
    const/high16 v8, 0x10400000

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 250
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/WirelessSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    .end local v0    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "provisioningIntent":Landroid/content/Intent;
    .end local v7    # "url":Ljava/lang/String;
    :goto_0
    iget-object v8, p0, Lcom/android/settings_ex/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 281
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onManageMobilePlanClick: message="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/settings_ex/WirelessSettings;->log(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0, v11}, Lcom/android/settings_ex/WirelessSettings;->showDialog(I)V

    .line 221
    :cond_1
    return-void

    .line 233
    .restart local v0    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "provisioningIntent":Landroid/content/Intent;
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-eq v8, v11, :cond_3

    .line 234
    const-string/jumbo v8, "WirelessSettings"

    const-string/jumbo v9, "Multiple matching carrier apps found, launching the first."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_3
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/WirelessSettings;->startActivity(Landroid/content/Intent;)V

    .line 238
    return-void

    .line 251
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v7    # "url":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 252
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v8, "WirelessSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onManageMobilePlanClick: startActivity failed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 256
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v8, p0, Lcom/android/settings_ex/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v4

    .line 257
    .local v4, "operatorName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 260
    iget-object v8, p0, Lcom/android/settings_ex/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v4

    .line 261
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 263
    const v8, 0x7f0e0944

    .line 262
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_0

    .line 265
    :cond_5
    new-array v8, v11, [Ljava/lang/Object;

    .line 266
    aput-object v4, v8, v10

    .line 265
    invoke-virtual {v6, v12, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto/16 :goto_0

    .line 269
    :cond_6
    new-array v8, v11, [Ljava/lang/Object;

    .line 270
    aput-object v4, v8, v10

    .line 269
    invoke-virtual {v6, v12, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto/16 :goto_0

    .line 273
    .end local v0    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "operatorName":Ljava/lang/String;
    .end local v5    # "provisioningIntent":Landroid/content/Intent;
    .end local v7    # "url":Ljava/lang/String;
    :cond_7
    iget-object v8, p0, Lcom/android/settings_ex/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v8

    if-nez v8, :cond_8

    .line 275
    const v8, 0x7f0e0946

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto/16 :goto_0

    .line 278
    :cond_8
    const v8, 0x7f0e0947

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public onMobileNetworkSettingsClick()V
    .locals 3

    .prologue
    .line 214
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    .line 215
    const-string/jumbo v2, "oneplus.intent.action.SIM_AND_NETWORK_SETTINGS"

    .line 214
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/WirelessSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/ActivityNotFoundException;
    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 535
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 537
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings_ex/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/AirplaneModeEnabler;->pause()V

    .line 538
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mNfcEnabler:Lcom/android/settings_ex/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mNfcEnabler:Lcom/android/settings_ex/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/nfc/NfcEnabler;->pause()V

    .line 534
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v3, 0x1

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPreferenceTreeClick: preference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/WirelessSettings;->log(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModePreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v0, :cond_0

    .line 186
    const-string/jumbo v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 188
    invoke-virtual {p0, v0, v3}, Lcom/android/settings_ex/WirelessSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 191
    return v3

    .line 192
    :cond_0
    const-string/jumbo v0, "manage_mobile_plan"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 193
    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->onManageMobilePlanClick()V

    .line 202
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0

    .line 194
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings_ex/WirelessSettings;->mLteEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mVoLtePreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v0, :cond_3

    .line 195
    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mVoLtePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->setEnhanced4gLteModeSetting(Landroid/content/Context;Z)V

    goto :goto_0

    .line 196
    :cond_3
    const-string/jumbo v0, "mobile_network_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 197
    iget-boolean v0, p0, Lcom/android/settings_ex/WirelessSettings;->mIsNetworkSettingsAvailable:Z

    .line 196
    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->onMobileNetworkSettingsClick()V

    .line 199
    return v3
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 494
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 496
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings_ex/AirplaneModeEnabler;

    invoke-virtual {v1}, Lcom/android/settings_ex/AirplaneModeEnabler;->resume()V

    .line 497
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mNfcEnabler:Lcom/android/settings_ex/nfc/NfcEnabler;

    if-eqz v1, :cond_0

    .line 498
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mNfcEnabler:Lcom/android/settings_ex/nfc/NfcEnabler;

    invoke-virtual {v1}, Lcom/android/settings_ex/nfc/NfcEnabler;->resume()V

    .line 502
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 505
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mButtonWfc:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v1, :cond_4

    .line 507
    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/WirelessSettings;->mButtonWfc:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 508
    iget-boolean v1, p0, Lcom/android/settings_ex/WirelessSettings;->mEnhancedWFCSettingsEnabled:Z

    if-nez v1, :cond_2

    .line 509
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mButtonWfc:Landroid/support/v7/preference/PreferenceScreen;

    .line 510
    invoke-static {v0}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;)I

    move-result v2

    .line 509
    invoke-static {v0, v2}, Lcom/android/settings_ex/WifiCallingSettings;->getWfcModeSummary(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    .line 493
    :cond_1
    :goto_0
    return-void

    .line 512
    :cond_2
    invoke-static {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 513
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mButtonWfc:Landroid/support/v7/preference/PreferenceScreen;

    const v2, 0x7f0e09fd

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 515
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mButtonWfc:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v2, "sys.wificall.status.msg"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 519
    :cond_4
    const-string/jumbo v1, "WFC not supported. Remove WFC menu"

    invoke-direct {p0, v1}, Lcom/android/settings_ex/WirelessSettings;->log(Ljava/lang/String;)V

    .line 520
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mButtonWfc:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/WirelessSettings;->mButtonWfc:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 526
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 528
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 529
    const-string/jumbo v0, "mManageMobilePlanMessage"

    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    :cond_0
    return-void
.end method
