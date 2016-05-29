.class public Lcom/android/settings_ex/wifi/WifiConfigController;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final ASCII:I = 0x0

.field private static final DEFAULT_CERTIFICATE_PATH:Ljava/lang/String; = "/data/wapi_certificate"

.field private static final DHCP:I = 0x0

.field private static final EAP_AKA_METHOD_STRING:Ljava/lang/String; = "AKA"

.field private static final EAP_SIM_METHOD_STRING:Ljava/lang/String; = "SIM"

.field private static final HEX:I = 0x1

.field public static final PROXY_NONE:I = 0x0

.field public static final PROXY_PAC:I = 0x2

.field public static final PROXY_STATIC:I = 0x1

.field private static final STATIC_IP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WifiConfigController"

.field public static final WIFI_EAP_METHOD_AKA:I = 0x5

.field public static final WIFI_EAP_METHOD_PEAP:I = 0x0

.field public static final WIFI_EAP_METHOD_PWD:I = 0x3

.field public static final WIFI_EAP_METHOD_SIM:I = 0x4

.field public static final WIFI_EAP_METHOD_TLS:I = 0x1

.field public static final WIFI_EAP_METHOD_TTLS:I = 0x2

.field public static final WIFI_PEAP_PHASE2_GTC:I = 0x2

.field public static final WIFI_PEAP_PHASE2_MSCHAPV2:I = 0x1

.field public static final WIFI_PEAP_PHASE2_NONE:I

.field private static final unspecifiedCertIndex:I


# instance fields
.field private final PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

.field private mAccessPointSecurity:I

.field private mCerPathString:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mCert_Cnt:I

.field private mCert_Set:Z

.field private mCertificateAs:Ljava/lang/String;

.field private mCertificateAsPath:Ljava/lang/String;

.field private mCertificateSpinner:Landroid/widget/Spinner;

.field private mCertificateText:Landroid/widget/TextView;

.field private mCertificateUser:Ljava/lang/String;

.field private mCertificateUserPath:Ljava/lang/String;

.field private mCfgCertificateSpinner:Landroid/widget/Spinner;

.field private final mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

.field private mContext:Landroid/content/Context;

.field private mDns1View:Landroid/widget/TextView;

.field private mDns2View:Landroid/widget/TextView;

.field private mEapAkaAvailableSimName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEapAnonymousView:Landroid/widget/TextView;

.field private mEapCaCertSpinner:Landroid/widget/Spinner;

.field private mEapIdentityView:Landroid/widget/TextView;

.field private mEapMethodAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEapMethodSpinner:Landroid/widget/Spinner;

.field private mEapMethods:[Ljava/lang/String;

.field private mEapSimAvailableSimName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEapUserCertSpinner:Landroid/widget/Spinner;

.field private mEdit:Z

.field private mGatewayView:Landroid/widget/TextView;

.field private mHttpProxy:Landroid/net/ProxyInfo;

.field private final mInXlSetupWizard:Z

.field private mIpAddressView:Landroid/widget/TextView;

.field private mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

.field private mIpSettingsSpinner:Landroid/widget/Spinner;

.field private mLevels:[Ljava/lang/String;

.field private mNetworkPrefixLengthView:Landroid/widget/TextView;

.field private mPasswordView:Landroid/widget/TextView;

.field private mPhase2Adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhase2Spinner:Landroid/widget/Spinner;

.field private mProxyExclusionListView:Landroid/widget/TextView;

.field private mProxyHostView:Landroid/widget/TextView;

.field private mProxyPacView:Landroid/widget/TextView;

.field private mProxyPortView:Landroid/widget/TextView;

.field private mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

.field private mProxySettingsSpinner:Landroid/widget/Spinner;

.field public mPsk_key_type:I

.field private mSecuritySpinner:Landroid/widget/Spinner;

.field private mSimCardSpinner:Landroid/widget/Spinner;

.field private mSimDisplayNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSsidView:Landroid/widget/TextView;

.field private mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

.field private final mTextViewChangedHandler:Landroid/os/Handler;

.field private final mView:Landroid/view/View;

.field private mWapiKeyTypeSpinner:Landroid/widget/Spinner;

.field private mWifiEapSimInfo:Landroid/net/wifi/WifiEapSimInfo;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private unspecifiedCert:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settings_ex/wifi/AccessPoint;Z)V
    .locals 22
    .param p1, "parent"    # Lcom/android/settings_ex/wifi/WifiConfigUiBase;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "accessPoint"    # Lcom/android/settings_ex/wifi/AccessPoint;
    .param p4, "edit"    # Z

    .prologue
    .line 203
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const-string v18, "unspecified"

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    .line 167
    sget-object v18, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 168
    sget-object v18, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 169
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 170
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 197
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mCert_Set:Z

    .line 198
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mCert_Cnt:I

    .line 199
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mPsk_key_type:I

    .line 204
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    .line 205
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mInXlSetupWizard:Z

    .line 207
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    .line 208
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    .line 209
    if-nez p3, :cond_3

    const/16 v18, 0x0

    :goto_0
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 211
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mEdit:Z

    .line 213
    new-instance v18, Landroid/os/Handler;

    invoke-direct/range {v18 .. v18}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mTextViewChangedHandler:Landroid/os/Handler;

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 216
    .local v12, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "wifi"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiManager;->getSimInfo()Landroid/net/wifi/WifiEapSimInfo;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mWifiEapSimInfo:Landroid/net/wifi/WifiEapSimInfo;

    .line 218
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapSimAvailableSimName:Ljava/util/ArrayList;

    .line 219
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapAkaAvailableSimName:Ljava/util/ArrayList;

    .line 220
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mSimDisplayNames:Ljava/util/ArrayList;

    .line 222
    const v18, 0x7f0b001b

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    .line 223
    const v18, 0x7f0b0025

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethods:[Ljava/lang/String;

    .line 224
    new-instance v18, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x1090008

    const v21, 0x7f0b0026

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v18 .. v21}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    move-object/from16 v18, v0

    const v19, 0x1090009

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 229
    new-instance v18, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x1090008

    const v21, 0x7f0b0027

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v18 .. v21}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    move-object/from16 v18, v0

    const v19, 0x1090009

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f09039b

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0f0178

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Spinner;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0f016f

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Spinner;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v18, v0

    if-nez v18, :cond_5

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v18, v0

    const v19, 0x7f090366

    invoke-interface/range {v18 .. v19}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->setTitle(I)V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0f0169

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0f0167

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0f0168

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0f0151

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0f0152

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Spinner;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 253
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mInXlSetupWizard:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0f0256

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0f0259

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 258
    new-instance v4, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0400f2

    const v20, 0x1020014

    const v21, 0x7f0b0015

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 261
    .local v4, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 266
    .end local v4    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->showIpConfigFields()V

    .line 267
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->showProxyFields()V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0f016a

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0f016b

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/CheckBox;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v18, v0

    const v19, 0x7f0903c2

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 388
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEdit:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v18, v0

    if-eqz v18, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings_ex/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v18

    if-nez v18, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings_ex/wifi/AccessPoint;->getLevel()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_17

    .line 390
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v18, v0

    const v19, 0x7f0903c4

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    .line 394
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v18

    if-eqz v18, :cond_2

    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 397
    :cond_2
    return-void

    .line 209
    .end local v12    # "res":Landroid/content/res/Resources;
    :cond_3
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    move/from16 v18, v0

    goto/16 :goto_0

    .line 263
    .restart local v12    # "res":Landroid/content/res/Resources;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0f00f4

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 275
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0f0150

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 279
    .local v8, "group":Landroid/view/ViewGroup;
    const/4 v13, 0x0

    .line 280
    .local v13, "showAdvancedFields":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    .line 282
    .local v6, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v18

    sget-object v19, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Spinner;->setSelection(I)V

    .line 284
    const/4 v13, 0x1

    .line 286
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v16

    .line 287
    .local v16, "staticConfig":Landroid/net/StaticIpConfiguration;
    if-eqz v16, :cond_6

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    .line 288
    const v18, 0x7f09038e

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v8, v1, v2}, Lcom/android/settings_ex/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 306
    .end local v16    # "staticConfig":Landroid/net/StaticIpConfiguration;
    :cond_6
    :goto_4
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v18

    sget-object v19, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Spinner;->setSelection(I)V

    .line 308
    const/4 v13, 0x1

    .line 317
    .end local v6    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings_ex/wifi/AccessPoint;->isActive()Z

    move-result v18

    if-eqz v18, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEdit:Z

    move/from16 v18, v0

    if-eqz v18, :cond_a

    .line 319
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->showSecurityFields()V

    .line 320
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->showIpConfigFields()V

    .line 321
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->showProxyFields()V

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0f016a

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0f016b

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/CheckBox;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 325
    if-eqz v13, :cond_a

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0f016b

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/CheckBox;

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0f016c

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 331
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEdit:Z

    move/from16 v18, v0

    if-eqz v18, :cond_e

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v18, v0

    const v19, 0x7f0903c2

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 292
    .restart local v6    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Spinner;->setSelection(I)V

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings_ex/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v17

    .line 294
    .local v17, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v17, :cond_6

    .line 295
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v10

    .line 296
    .local v10, "ipAddr":I
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 297
    .local v11, "ipBuf":Ljava/lang/StringBuffer;
    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v18

    const/16 v19, 0x2e

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v18

    ushr-int/lit8 v10, v10, 0x8

    and-int/lit16 v0, v10, 0xff

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v18

    const/16 v19, 0x2e

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v18

    ushr-int/lit8 v10, v10, 0x8

    and-int/lit16 v0, v10, 0xff

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v18

    const/16 v19, 0x2e

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v18

    ushr-int/lit8 v10, v10, 0x8

    and-int/lit16 v0, v10, 0xff

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 301
    const v18, 0x7f09038e

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v8, v1, v2}, Lcom/android/settings_ex/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto/16 :goto_4

    .line 309
    .end local v10    # "ipAddr":I
    .end local v11    # "ipBuf":Ljava/lang/StringBuffer;
    .end local v17    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_c
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v18

    sget-object v19, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_d

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Spinner;->setSelection(I)V

    .line 311
    const/4 v13, 0x1

    goto/16 :goto_5

    .line 313
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_5

    .line 334
    .end local v6    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings_ex/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v15

    .line 335
    .local v15, "state":Landroid/net/NetworkInfo$DetailedState;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->getSignalString()Ljava/lang/String;

    move-result-object v14

    .line 337
    .local v14, "signalLevel":Ljava/lang/String;
    if-nez v15, :cond_10

    if-eqz v14, :cond_10

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v18, v0

    const v19, 0x7f0903be

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 381
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings_ex/wifi/AccessPoint;->isActive()Z

    move-result v18

    if-eqz v18, :cond_0

    :cond_f
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v18

    if-nez v18, :cond_0

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v18, v0

    const v19, 0x7f0903c0

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 340
    :cond_10
    if-eqz v15, :cond_11

    .line 345
    const v18, 0x7f09038b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v15}, Lcom/android/settings_ex/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v8, v1, v2}, Lcom/android/settings_ex/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 350
    :cond_11
    if-eqz v14, :cond_12

    .line 351
    const v18, 0x7f09038a

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v8, v1, v14}, Lcom/android/settings_ex/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 354
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings_ex/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v9

    .line 355
    .local v9, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v9, :cond_13

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_13

    .line 356
    const v18, 0x7f09038c

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "Mbps"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v8, v1, v2}, Lcom/android/settings_ex/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 360
    :cond_13
    if-eqz v9, :cond_14

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_14

    .line 361
    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v7

    .line 362
    .local v7, "frequency":I
    const/4 v5, 0x0

    .line 364
    .local v5, "band":Ljava/lang/String;
    const/16 v18, 0x960

    move/from16 v0, v18

    if-lt v7, v0, :cond_15

    const/16 v18, 0x9c4

    move/from16 v0, v18

    if-ge v7, v0, :cond_15

    .line 366
    const v18, 0x7f090336

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 373
    :goto_7
    if-eqz v5, :cond_14

    .line 374
    const v18, 0x7f09038d

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v8, v1, v5}, Lcom/android/settings_ex/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 378
    .end local v5    # "band":Ljava/lang/String;
    .end local v7    # "frequency":I
    :cond_14
    const v18, 0x7f090389

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings_ex/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v8, v1, v2}, Lcom/android/settings_ex/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0f0177

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 367
    .restart local v5    # "band":Ljava/lang/String;
    .restart local v7    # "frequency":I
    :cond_15
    const/16 v18, 0x1324

    move/from16 v0, v18

    if-lt v7, v0, :cond_16

    const/16 v18, 0x170c

    move/from16 v0, v18

    if-ge v7, v0, :cond_16

    .line 369
    const v18, 0x7f090337

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    .line 371
    :cond_16
    const-string v18, "WifiConfigController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unexpected frequency "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 392
    .end local v5    # "band":Ljava/lang/String;
    .end local v7    # "frequency":I
    .end local v8    # "group":Landroid/view/ViewGroup;
    .end local v9    # "info":Landroid/net/wifi/WifiInfo;
    .end local v13    # "showAdvancedFields":Z
    .end local v14    # "signalLevel":Ljava/lang/String;
    .end local v15    # "state":Landroid/net/NetworkInfo$DetailedState;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v18, v0

    const v19, 0x7f09032b

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 4
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "name"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 400
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040085

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 401
    .local v0, "row":Landroid/view/View;
    const v1, 0x7f0f0029

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 402
    const v1, 0x7f0f017f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 404
    return-void
.end method

.method private checkEapSimInfo()V
    .locals 6

    .prologue
    .line 895
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWifiEapSimInfo:Landroid/net/wifi/WifiEapSimInfo;

    iget v3, v3, Landroid/net/wifi/WifiEapSimInfo;->mNumOfSims:I

    if-ge v1, v3, :cond_3

    .line 896
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 898
    .local v2, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 900
    .local v0, "displayname":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSimDisplayNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 901
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWifiEapSimInfo:Landroid/net/wifi/WifiEapSimInfo;

    iget-object v3, v3, Landroid/net/wifi/WifiEapSimInfo;->mSimTypes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 902
    const-string v3, "WifiConfigController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sim "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " type is SIM_2G"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapSimAvailableSimName:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 895
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 898
    .end local v0    # "displayname":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Default Sub "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 904
    .restart local v0    # "displayname":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWifiEapSimInfo:Landroid/net/wifi/WifiEapSimInfo;

    iget-object v3, v3, Landroid/net/wifi/WifiEapSimInfo;->mSimTypes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 905
    const-string v3, "WifiConfigController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sim "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " type is SIM_3G"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapSimAvailableSimName:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 907
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapAkaAvailableSimName:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 909
    :cond_2
    const-string v3, "WifiConfigController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sim "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " type is Unknown"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 912
    .end local v0    # "displayname":Ljava/lang/String;
    .end local v2    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_3
    return-void
.end method

.method private getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 661
    :try_start_0
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    check-cast v1, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 663
    :goto_0
    return-object v1

    .line 662
    :catch_0
    move-exception v0

    .line 663
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 662
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private getSignalString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 407
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/AccessPoint;->getLevel()I

    move-result v0

    .line 409
    .local v0, "level":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    aget-object v1, v1, v0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleCertificateChange(I)V
    .locals 4
    .param p1, "Certificate"    # I

    .prologue
    .line 1323
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCerPathString:Ljava/util/ArrayList;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object v0, v2

    check-cast v0, [Ljava/lang/String;

    move-object v1, v0

    .line 1324
    .local v1, "string":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/user.cer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCertificateUser:Ljava/lang/String;

    .line 1326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v1, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/user.cer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCertificateUserPath:Ljava/lang/String;

    .line 1328
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/as.cer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCertificateAs:Ljava/lang/String;

    .line 1330
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v1, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/as.cer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCertificateAsPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1335
    .end local v1    # "string":[Ljava/lang/String;
    :goto_0
    return-void

    .line 1332
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private ipAndProxyFieldsAreValid()Z
    .locals 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 611
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v9

    if-ne v9, v11, :cond_0

    sget-object v9, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    :goto_0
    iput-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 615
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v12, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v9, v12, :cond_1

    .line 616
    new-instance v9, Landroid/net/StaticIpConfiguration;

    invoke-direct {v9}, Landroid/net/StaticIpConfiguration;-><init>()V

    iput-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 617
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    invoke-direct {p0, v9}, Lcom/android/settings_ex/wifi/WifiConfigController;->validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I

    move-result v5

    .line 618
    .local v5, "result":I
    if-eqz v5, :cond_1

    move v9, v10

    .line 656
    .end local v5    # "result":I
    :goto_1
    return v9

    .line 611
    :cond_0
    sget-object v9, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_0

    .line 623
    :cond_1
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    .line 624
    .local v6, "selectedPosition":I
    sget-object v9, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 625
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 626
    if-ne v6, v11, :cond_4

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v9, :cond_4

    .line 627
    sget-object v9, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 628
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 629
    .local v2, "host":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 630
    .local v4, "portStr":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 631
    .local v1, "exclusionList":Ljava/lang/String;
    const/4 v3, 0x0

    .line 632
    .local v3, "port":I
    const/4 v5, 0x0

    .line 634
    .restart local v5    # "result":I
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 635
    invoke-static {v2, v4, v1}, Lcom/android/settings_ex/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 639
    :goto_2
    if-nez v5, :cond_3

    .line 640
    new-instance v9, Landroid/net/ProxyInfo;

    invoke-direct {v9, v2, v3, v1}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    .end local v1    # "exclusionList":Ljava/lang/String;
    .end local v2    # "host":Ljava/lang/String;
    .end local v3    # "port":I
    .end local v4    # "portStr":Ljava/lang/String;
    .end local v5    # "result":I
    :cond_2
    :goto_3
    move v9, v11

    .line 656
    goto :goto_1

    .line 636
    .restart local v1    # "exclusionList":Ljava/lang/String;
    .restart local v2    # "host":Ljava/lang/String;
    .restart local v3    # "port":I
    .restart local v4    # "portStr":Ljava/lang/String;
    .restart local v5    # "result":I
    :catch_0
    move-exception v0

    .line 637
    .local v0, "e":Ljava/lang/NumberFormatException;
    const v5, 0x7f0901db

    goto :goto_2

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    move v9, v10

    .line 642
    goto :goto_1

    .line 644
    .end local v1    # "exclusionList":Ljava/lang/String;
    .end local v2    # "host":Ljava/lang/String;
    .end local v3    # "port":I
    .end local v4    # "portStr":Ljava/lang/String;
    .end local v5    # "result":I
    :cond_4
    const/4 v9, 0x2

    if-ne v6, v9, :cond_2

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    if-eqz v9, :cond_2

    .line 645
    sget-object v9, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 646
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    .line 647
    .local v8, "uriSequence":Ljava/lang/CharSequence;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    move v9, v10

    .line 648
    goto :goto_1

    .line 650
    :cond_5
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 651
    .local v7, "uri":Landroid/net/Uri;
    if-nez v7, :cond_6

    move v9, v10

    .line 652
    goto :goto_1

    .line 654
    :cond_6
    new-instance v9, Landroid/net/ProxyInfo;

    invoke-direct {v9, v7}, Landroid/net/ProxyInfo;-><init>(Landroid/net/Uri;)V

    iput-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    goto :goto_3
.end method

.method private loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 8
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1168
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    invoke-interface {v4}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1170
    .local v3, "context":Landroid/content/Context;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    const/16 v5, 0x3f2

    invoke-virtual {v4, p2, v5}, Landroid/security/KeyStore;->saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 1171
    .local v2, "certs":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v4, v2

    if-nez v4, :cond_1

    .line 1172
    :cond_0
    new-array v2, v7, [Ljava/lang/String;

    .end local v2    # "certs":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    aput-object v4, v2, v6

    .line 1180
    .restart local v2    # "certs":[Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    invoke-direct {v0, v3, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1182
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v4, 0x1090009

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1183
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1184
    return-void

    .line 1174
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_1
    array-length v4, v2

    add-int/lit8 v4, v4, 0x1

    new-array v1, v4, [Ljava/lang/String;

    .line 1175
    .local v1, "array":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    aput-object v4, v1, v6

    .line 1176
    array-length v4, v2

    invoke-static {v2, v6, v1, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1177
    move-object v2, v1

    goto :goto_0
.end method

.method private setAnonymousIdentInvisible()V
    .locals 2

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0f0162

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1048
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1049
    return-void
.end method

.method private setCaCertInvisible()V
    .locals 2

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0f015c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1038
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1039
    return-void
.end method

.method private setCertificateSpinnerAdapter()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1201
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    invoke-interface {v8}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 1203
    .local v6, "context":Landroid/content/Context;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1204
    .local v3, "cerString":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCerPathString:Ljava/util/ArrayList;

    .line 1206
    iput-boolean v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCert_Set:Z

    .line 1207
    iput v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCert_Cnt:I

    .line 1209
    new-instance v5, Ljava/io/File;

    const-string v8, "/data/wapi_certificate"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1211
    .local v5, "certificatePath":Ljava/io/File;
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1212
    const-string v8, "WifiConfigController"

    const-string v9, " WifiConfigController.java->setCertificateSpinnerAdapter(), No Install Directory Present !! "

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    :goto_0
    return-void

    .line 1216
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 1217
    .local v4, "certificateList":[Ljava/io/File;
    array-length v8, v4

    iput v8, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCert_Cnt:I

    .line 1218
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v8, v4

    if-ge v7, v8, :cond_2

    .line 1219
    aget-object v8, v4, v7

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1220
    new-instance v0, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v4, v7

    invoke-virtual {v9}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/as.cer"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1221
    .local v0, "ASCertFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v4, v7

    invoke-virtual {v9}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/user.cer"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1222
    .local v1, "UserCertFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1223
    aget-object v8, v4, v7

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1224
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCerPathString:Ljava/util/ArrayList;

    aget-object v9, v4, v7

    invoke-virtual {v9}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1218
    .end local v0    # "ASCertFile":Ljava/io/File;
    .end local v1    # "UserCertFile":Ljava/io/File;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1228
    :cond_2
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCert_Set:Z

    .line 1229
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v9, 0x1090008

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    check-cast v8, [Ljava/lang/String;

    invoke-direct {v2, v6, v9, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1232
    .local v2, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v8, 0x1090009

    invoke-virtual {v2, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1233
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCertificateSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1235
    .end local v2    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v4    # "certificateList":[Ljava/io/File;
    .end local v7    # "i":I
    :catch_0
    move-exception v8

    goto/16 :goto_0
.end method

.method private setIdentityInvisible()V
    .locals 2

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0f0160

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1028
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1029
    return-void
.end method

.method private setPasswordInvisible()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1052
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1053
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0f0164

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1054
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0f0166

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1055
    return-void
.end method

.method private setPhase2Invisible()V
    .locals 2

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0f015a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1033
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1034
    return-void
.end method

.method private setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 3
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1187
    if-eqz p2, :cond_0

    .line 1189
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 1190
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1191
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1192
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1197
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 1190
    .restart local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private setSimCardInvisible()V
    .locals 2

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0f0158

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1024
    return-void
.end method

.method private setUserCertInvisible()V
    .locals 2

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0f015e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1043
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1044
    return-void
.end method

.method private setVisibility(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "visibility"    # I

    .prologue
    .line 1161
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1162
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1163
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1165
    :cond_0
    return-void
.end method

.method private showEapFieldsByMethod(I)V
    .locals 11
    .param p1, "eapMethod"    # I

    .prologue
    const v10, 0x1090009

    const v9, 0x1090008

    const/16 v8, 0x8

    const v7, 0x7f0f016a

    const/4 v6, 0x0

    .line 937
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0f0156

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 938
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0f0160

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 939
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 943
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0f015c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 944
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0f0164

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 945
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0f0166

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 947
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    invoke-interface {v3}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 948
    .local v0, "context":Landroid/content/Context;
    packed-switch p1, :pswitch_data_0

    .line 1020
    :goto_0
    return-void

    .line 950
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 951
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setCaCertInvisible()V

    .line 952
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 953
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 954
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setSimCardInvisible()V

    goto :goto_0

    .line 957
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0f015e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 958
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 959
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 960
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setPasswordInvisible()V

    .line 961
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setSimCardInvisible()V

    goto :goto_0

    .line 965
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    if-eq v3, v4, :cond_0

    .line 966
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 967
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 969
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0f015a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 970
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0f0162

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 971
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 972
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setSimCardInvisible()V

    goto :goto_0

    .line 976
    :pswitch_3
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    if-eq v3, v4, :cond_1

    .line 977
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 978
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 980
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0f015a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 981
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0f0162

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 982
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 983
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setSimCardInvisible()V

    goto/16 :goto_0

    .line 986
    :pswitch_4
    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapSimAvailableSimName:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapSimAvailableSimName:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v3, v9, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 990
    .local v2, "eapSimAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v2, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 992
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSimCardSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 993
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0f0158

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 994
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 995
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 996
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setCaCertInvisible()V

    .line 997
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 998
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 999
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setPasswordInvisible()V

    .line 1000
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setIdentityInvisible()V

    goto/16 :goto_0

    .line 1003
    .end local v2    # "eapSimAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :pswitch_5
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapAkaAvailableSimName:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapAkaAvailableSimName:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v1, v3, v9, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1007
    .local v1, "eapAkaAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v1, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1009
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSimCardSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1010
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0f0158

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1011
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1012
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 1013
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setCaCertInvisible()V

    .line 1014
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 1015
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 1016
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setPasswordInvisible()V

    .line 1017
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setIdentityInvisible()V

    goto/16 :goto_0

    .line 948
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private showIpConfigFields()V
    .locals 7

    .prologue
    const v6, 0x7f0f0179

    const/4 v5, 0x0

    .line 1058
    const/4 v0, 0x0

    .line 1060
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0f0177

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1062
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 1063
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1066
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 1067
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1068
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    if-nez v3, :cond_1

    .line 1069
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0f017a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    .line 1070
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1071
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0f017b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    .line 1072
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1073
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0f017c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    .line 1075
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1076
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0f017d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    .line 1077
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1078
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0f017e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    .line 1079
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1081
    :cond_1
    if-eqz v0, :cond_5

    .line 1082
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v2

    .line 1083
    .local v2, "staticConfig":Landroid/net/StaticIpConfiguration;
    if-eqz v2, :cond_5

    .line 1084
    iget-object v3, v2, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v3, :cond_2

    .line 1085
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    iget-object v4, v2, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1087
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v4, v2, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1091
    :cond_2
    iget-object v3, v2, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-eqz v3, :cond_3

    .line 1092
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    iget-object v4, v2, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1095
    :cond_3
    iget-object v3, v2, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1096
    .local v1, "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1097
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1099
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1100
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1107
    .end local v1    # "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    .end local v2    # "staticConfig":Landroid/net/StaticIpConfiguration;
    :cond_5
    :goto_0
    return-void

    .line 1105
    :cond_6
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showProxyFields()V
    .locals 10

    .prologue
    const v9, 0x7f0f0173

    const v8, 0x7f0f0171

    const v7, 0x7f0f0170

    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 1110
    const/4 v0, 0x0

    .line 1112
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0f016d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1114
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 1115
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1118
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 1119
    invoke-direct {p0, v7, v6}, Lcom/android/settings_ex/wifi/WifiConfigController;->setVisibility(II)V

    .line 1120
    invoke-direct {p0, v9, v6}, Lcom/android/settings_ex/wifi/WifiConfigController;->setVisibility(II)V

    .line 1121
    invoke-direct {p0, v8, v5}, Lcom/android/settings_ex/wifi/WifiConfigController;->setVisibility(II)V

    .line 1122
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-nez v3, :cond_1

    .line 1123
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0f0174

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    .line 1124
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1125
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0f0175

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    .line 1126
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1127
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0f0176

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    .line 1128
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1130
    :cond_1
    if-eqz v0, :cond_2

    .line 1131
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    .line 1132
    .local v2, "proxyProperties":Landroid/net/ProxyInfo;
    if-eqz v2, :cond_2

    .line 1133
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1134
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getPort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1135
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1158
    .end local v2    # "proxyProperties":Landroid/net/ProxyInfo;
    :cond_2
    :goto_0
    return-void

    .line 1138
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 1139
    invoke-direct {p0, v7, v5}, Lcom/android/settings_ex/wifi/WifiConfigController;->setVisibility(II)V

    .line 1140
    invoke-direct {p0, v9, v5}, Lcom/android/settings_ex/wifi/WifiConfigController;->setVisibility(II)V

    .line 1141
    invoke-direct {p0, v8, v6}, Lcom/android/settings_ex/wifi/WifiConfigController;->setVisibility(II)V

    .line 1143
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    if-nez v3, :cond_4

    .line 1144
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0f0172

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    .line 1145
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1147
    :cond_4
    if-eqz v0, :cond_2

    .line 1148
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    .line 1149
    .local v1, "proxyInfo":Landroid/net/ProxyInfo;
    if-eqz v1, :cond_2

    .line 1150
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1154
    .end local v1    # "proxyInfo":Landroid/net/ProxyInfo;
    :cond_5
    invoke-direct {p0, v7, v5}, Lcom/android/settings_ex/wifi/WifiConfigController;->setVisibility(II)V

    .line 1155
    invoke-direct {p0, v9, v5}, Lcom/android/settings_ex/wifi/WifiConfigController;->setVisibility(II)V

    .line 1156
    invoke-direct {p0, v8, v5}, Lcom/android/settings_ex/wifi/WifiConfigController;->setVisibility(II)V

    goto :goto_0
.end method

.method private showSecurityFields()V
    .locals 12

    .prologue
    const v11, 0x7f0f0169

    const v10, 0x7f0f0168

    const v9, 0x7f0f0167

    const/16 v7, 0x8

    const/4 v8, 0x0

    .line 736
    iget-boolean v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mInXlSetupWizard:Z

    if-eqz v4, :cond_0

    .line 738
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    invoke-interface {v4}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    iget v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    invoke-virtual {v4, v5, v6}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->initSecurityFields(Landroid/view/View;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 892
    :goto_0
    return-void

    .line 743
    :cond_0
    iget v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-nez v4, :cond_1

    .line 744
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0f0154

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 746
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 747
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 748
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 752
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0f0154

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 756
    iget v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_2

    .line 758
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-nez v4, :cond_2

    .line 759
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0f014e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    .line 760
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 761
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0f012b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    invoke-virtual {v4, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 762
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWapiKeyTypeSpinner:Landroid/widget/Spinner;

    .line 763
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWapiKeyTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 765
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 766
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    const v5, 0x7f09039a

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setHint(I)V

    .line 767
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 768
    const-string v4, "WifiConfigController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wapiPskType: in  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    iget v6, v6, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWapiKeyTypeSpinner:Landroid/widget/Spinner;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 778
    :cond_2
    :goto_1
    iget v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    .line 779
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0f014e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 780
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0f0165

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 781
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0f012b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 782
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 783
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 784
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 814
    :cond_3
    :goto_2
    iget v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_7

    .line 815
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0f0155

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 771
    :cond_4
    const-string v4, "WifiConfigController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wapiPskType: in  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    iget v6, v6, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWapiKeyTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v8}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 785
    :cond_5
    iget v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_6

    .line 789
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0f014e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 790
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0f0165

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 791
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0f012b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 792
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 794
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCertificateText:Landroid/widget/TextView;

    .line 795
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCertificateSpinner:Landroid/widget/Spinner;

    .line 798
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCertificateSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 799
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setCertificateSpinnerAdapter()V

    .line 800
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 801
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 802
    :cond_6
    iget v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_3

    iget v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_3

    .line 805
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0f014e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 806
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0f0165

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 807
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0f012b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 808
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 809
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 810
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 818
    :cond_7
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0f0155

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 820
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-nez v4, :cond_c

    .line 821
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 822
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->checkEapSimInfo()V

    .line 823
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 824
    .local v2, "methodarray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethods:[Ljava/lang/String;

    invoke-static {v2, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 825
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapSimAvailableSimName:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_8

    .line 826
    const-string v4, "SIM"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    :cond_8
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapAkaAvailableSimName:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_9

    .line 829
    const-string v4, "AKA"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 831
    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethods:[Ljava/lang/String;

    .line 833
    .end local v2    # "methodarray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a
    new-instance v4, Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v6, 0x1090008

    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethods:[Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodAdapter:Landroid/widget/ArrayAdapter;

    .line 836
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodAdapter:Landroid/widget/ArrayAdapter;

    const v5, 0x1090009

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 838
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0f0157

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    .line 839
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 840
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 841
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0f015b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    .line 842
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0f0159

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSimCardSpinner:Landroid/widget/Spinner;

    .line 843
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0f015d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    .line 844
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0f015f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    .line 845
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0f0161

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    .line 846
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0f0163

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    .line 848
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string v5, "CACERT_"

    invoke-direct {p0, v4, v5}, Lcom/android/settings_ex/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 849
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const-string v5, "USRPKEY_"

    invoke-direct {p0, v4, v5}, Lcom/android/settings_ex/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 852
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_b

    .line 853
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    iget-object v1, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 854
    .local v1, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v0

    .line 855
    .local v0, "eapMethod":I
    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v3

    .line 856
    .local v3, "phase2Method":I
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 857
    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    .line 858
    packed-switch v0, :pswitch_data_0

    .line 876
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 879
    :goto_3
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings_ex/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 880
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings_ex/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 881
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 882
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 860
    :pswitch_0
    packed-switch v3, :pswitch_data_1

    .line 871
    :pswitch_1
    const-string v4, "WifiConfigController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid phase 2 method "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 862
    :pswitch_2
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v8}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 865
    :pswitch_3
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 868
    :pswitch_4
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 886
    .end local v0    # "eapMethod":I
    .end local v1    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    .end local v3    # "phase2Method":I
    :cond_b
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v8}, Landroid/widget/Spinner;->setSelection(I)V

    .line 887
    invoke-direct {p0, v8}, Lcom/android/settings_ex/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_0

    .line 890
    :cond_c
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings_ex/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_0

    .line 858
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 860
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private updatePasswordVisibility(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .prologue
    .line 1347
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 1348
    .local v0, "pos":I
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/16 v1, 0x90

    :goto_0
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 1352
    if-ltz v0, :cond_0

    .line 1353
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 1355
    :cond_0
    return-void

    .line 1348
    :cond_1
    const/16 v1, 0x80

    goto :goto_0
.end method

.method private validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I
    .locals 13
    .param p1, "staticIpConfiguration"    # Landroid/net/StaticIpConfiguration;

    .prologue
    .line 668
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    if-nez v10, :cond_0

    const/4 v10, 0x0

    .line 732
    :goto_0
    return v10

    .line 670
    :cond_0
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 671
    .local v7, "ipAddr":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    const v10, 0x7f0903ed

    goto :goto_0

    .line 673
    :cond_1
    invoke-direct {p0, v7}, Lcom/android/settings_ex/wifi/WifiConfigController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v6

    .line 674
    .local v6, "inetAddr":Ljava/net/Inet4Address;
    if-nez v6, :cond_2

    .line 675
    const v10, 0x7f0903ed

    goto :goto_0

    .line 678
    :cond_2
    const/4 v9, -0x1

    .line 680
    .local v9, "networkPrefixLength":I
    :try_start_0
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 681
    if-ltz v9, :cond_3

    const/16 v10, 0x20

    if-le v9, v10, :cond_4

    .line 682
    :cond_3
    const v10, 0x7f0903f0

    goto :goto_0

    .line 684
    :cond_4
    new-instance v10, Landroid/net/LinkAddress;

    invoke-direct {v10, v6, v9}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v10, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 691
    :goto_1
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 692
    .local v4, "gateway":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 695
    :try_start_1
    invoke-static {v6, v9}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v8

    .line 696
    .local v8, "netPart":Ljava/net/InetAddress;
    invoke-virtual {v8}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 697
    .local v0, "addr":[B
    array-length v10, v0

    add-int/lit8 v10, v10, -0x1

    const/4 v11, 0x1

    aput-byte v11, v0, v10

    .line 698
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    .line 710
    .end local v0    # "addr":[B
    .end local v8    # "netPart":Ljava/net/InetAddress;
    :goto_2
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 711
    .local v1, "dns":Ljava/lang/String;
    const/4 v2, 0x0

    .line 713
    .local v2, "dnsAddr":Ljava/net/InetAddress;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 715
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    invoke-interface {v11}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0903f2

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 724
    :goto_3
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->length()I

    move-result v10

    if-lez v10, :cond_a

    .line 725
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 726
    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/WifiConfigController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v2

    .line 727
    if-nez v2, :cond_9

    .line 728
    const v10, 0x7f0903ef

    goto/16 :goto_0

    .line 685
    .end local v1    # "dns":Ljava/lang/String;
    .end local v2    # "dnsAddr":Ljava/net/InetAddress;
    .end local v4    # "gateway":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 687
    .local v3, "e":Ljava/lang/NumberFormatException;
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    invoke-interface {v11}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0903f8

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 703
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "gateway":Ljava/lang/String;
    :cond_5
    invoke-direct {p0, v4}, Lcom/android/settings_ex/wifi/WifiConfigController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v5

    .line 704
    .local v5, "gatewayAddr":Ljava/net/InetAddress;
    if-nez v5, :cond_6

    .line 705
    const v10, 0x7f0903ee

    goto/16 :goto_0

    .line 707
    :cond_6
    iput-object v5, p1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    goto :goto_2

    .line 717
    .end local v5    # "gatewayAddr":Ljava/net/InetAddress;
    .restart local v1    # "dns":Ljava/lang/String;
    .restart local v2    # "dnsAddr":Ljava/net/InetAddress;
    :cond_7
    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/WifiConfigController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v2

    .line 718
    if-nez v2, :cond_8

    .line 719
    const v10, 0x7f0903ef

    goto/16 :goto_0

    .line 721
    :cond_8
    iget-object v10, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 730
    :cond_9
    iget-object v10, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 700
    .end local v1    # "dns":Ljava/lang/String;
    .end local v2    # "dnsAddr":Ljava/net/InetAddress;
    :catch_1
    move-exception v10

    goto :goto_2

    .line 699
    :catch_2
    move-exception v10

    goto :goto_2
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mTextViewChangedHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings_ex/wifi/WifiConfigController$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/wifi/WifiConfigController$1;-><init>(Lcom/android/settings_ex/wifi/WifiConfigController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1252
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 1257
    return-void
.end method

.method enableSubmitIfAppropriate()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    .line 421
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    invoke-interface {v4}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v3

    .line 422
    .local v3, "submit":Landroid/widget/Button;
    if-nez v3, :cond_0

    .line 460
    :goto_0
    return-void

    .line 424
    :cond_0
    const/4 v0, 0x0

    .line 425
    .local v0, "enabled":Z
    const/4 v2, 0x0

    .line 427
    .local v2, "passwordInvalid":Z
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-ne v4, v6, :cond_1

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    iget v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-ge v4, v7, :cond_3

    .line 430
    :cond_2
    const/4 v2, 0x1

    .line 435
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    .line 436
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-lt v4, v7, :cond_9

    .line 437
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWapiKeyTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-ne v4, v6, :cond_5

    .line 438
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 439
    .local v1, "password":Ljava/lang/String;
    const-string v4, "[0-9A-Fa-f]*"

    invoke-virtual {v1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_5

    .line 440
    :cond_4
    const/4 v2, 0x1

    .line 448
    .end local v1    # "password":Ljava/lang/String;
    :cond_5
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-eqz v4, :cond_8

    :cond_6
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_a

    :cond_7
    if-eqz v2, :cond_a

    .line 451
    :cond_8
    const/4 v0, 0x0

    .line 459
    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 443
    :cond_9
    const/4 v2, 0x1

    goto :goto_1

    .line 453
    :cond_a
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->ipAndProxyFieldsAreValid()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 454
    const/4 v0, 0x1

    goto :goto_2

    .line 456
    :cond_b
    const/4 v0, 0x0

    goto :goto_2
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v13, -0x1

    const/4 v10, 0x1

    const/16 v12, 0x22

    const/4 v11, 0x0

    .line 463
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v9, v9, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    if-eq v9, v13, :cond_0

    iget-boolean v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEdit:Z

    if-nez v9, :cond_0

    .line 464
    const/4 v2, 0x0

    .line 607
    :goto_0
    return-object v2

    .line 467
    :cond_0
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 469
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-nez v9, :cond_1

    .line 470
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings_ex/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 473
    iput-boolean v10, v2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 481
    :goto_1
    iget v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    packed-switch v9, :pswitch_data_0

    .line 600
    const/4 v2, 0x0

    goto :goto_0

    .line 474
    :cond_1
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v9, v9, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    if-ne v9, v13, :cond_2

    .line 475
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v9, v9, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/settings_ex/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 478
    :cond_2
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v9, v9, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    iput v9, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_1

    .line 483
    :pswitch_0
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v9, v11}, Ljava/util/BitSet;->set(I)V

    .line 603
    :cond_3
    :goto_2
    new-instance v9, Landroid/net/IpConfiguration;

    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    iget-object v12, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    iget-object v13, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    invoke-virtual {v2, v9}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    goto :goto_0

    .line 487
    :pswitch_1
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v9, v11}, Ljava/util/BitSet;->set(I)V

    .line 488
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v9, v11}, Ljava/util/BitSet;->set(I)V

    .line 489
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v9, v10}, Ljava/util/BitSet;->set(I)V

    .line 490
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->length()I

    move-result v9

    if-eqz v9, :cond_3

    .line 491
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->length()I

    move-result v4

    .line 492
    .local v4, "length":I
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 494
    .local v5, "password":Ljava/lang/String;
    const/16 v9, 0xa

    if-eq v4, v9, :cond_4

    const/16 v9, 0x1a

    if-eq v4, v9, :cond_4

    const/16 v9, 0x3a

    if-ne v4, v9, :cond_5

    :cond_4
    const-string v9, "[0-9A-Fa-f]*"

    invoke-virtual {v5, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 496
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v5, v9, v11

    goto :goto_2

    .line 498
    :cond_5
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    goto :goto_2

    .line 504
    .end local v4    # "length":I
    .end local v5    # "password":Ljava/lang/String;
    :pswitch_2
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v9, v10}, Ljava/util/BitSet;->set(I)V

    .line 505
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->length()I

    move-result v9

    if-eqz v9, :cond_3

    .line 506
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 507
    .restart local v5    # "password":Ljava/lang/String;
    const-string v9, "[0-9A-Fa-f]{64}"

    invoke-virtual {v5, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 508
    iput-object v5, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 510
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 517
    .end local v5    # "password":Ljava/lang/String;
    :pswitch_3
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Ljava/util/BitSet;->set(I)V

    .line 518
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->length()I

    move-result v9

    if-eqz v9, :cond_7

    .line 519
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 520
    .restart local v5    # "password":Ljava/lang/String;
    const-string v9, "[0-9A-Fa-f]{64}"

    invoke-virtual {v5, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 521
    iput-object v5, v2, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    .line 526
    .end local v5    # "password":Ljava/lang/String;
    :cond_7
    :goto_3
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWapiKeyTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v9

    iput v9, v2, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    .line 527
    const-string v9, "WifiConfigController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "wapiPskType  WAPI PSK key type  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v2, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 523
    .restart local v5    # "password":Ljava/lang/String;
    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    goto :goto_3

    .line 531
    .end local v5    # "password":Ljava/lang/String;
    :pswitch_4
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Ljava/util/BitSet;->set(I)V

    .line 532
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCertificateAs:Ljava/lang/String;

    iput-object v9, v2, Landroid/net/wifi/WifiConfiguration;->wapiASCert:Ljava/lang/String;

    .line 533
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCertificateUser:Ljava/lang/String;

    iput-object v9, v2, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    goto/16 :goto_2

    .line 538
    :pswitch_5
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/util/BitSet;->set(I)V

    .line 539
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v9, v14}, Ljava/util/BitSet;->set(I)V

    .line 540
    new-instance v9, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v9}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 541
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    .line 542
    .local v3, "eapMethod":I
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    .line 543
    .local v6, "phase2Method":I
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 544
    packed-switch v3, :pswitch_data_1

    .line 575
    :pswitch_6
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 578
    :goto_4
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 579
    .local v0, "caCert":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const-string v0, ""

    .line 580
    :cond_9
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    .line 581
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 582
    .local v1, "clientCert":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const-string v1, ""

    .line 583
    :cond_a
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    .line 584
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 585
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 588
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->isShown()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 591
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 592
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 549
    .end local v0    # "caCert":Ljava/lang/String;
    .end local v1    # "clientCert":Ljava/lang/String;
    :pswitch_7
    packed-switch v6, :pswitch_data_2

    .line 560
    const-string v9, "WifiConfigController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown phase2 method"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 551
    :pswitch_8
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9, v11}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_4

    .line 554
    :pswitch_9
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_4

    .line 557
    :pswitch_a
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_4

    .line 566
    :pswitch_b
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSimCardSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 567
    .local v7, "selectedSimCardName":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSimDisplayNames:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    add-int/lit8 v8, v9, 0x1

    .line 569
    .local v8, "selectedSimCardNumber":I
    const-string v9, "WifiConfigController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "selectedSimCardNumber is: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iput v8, v2, Landroid/net/wifi/WifiConfiguration;->SIMNum:I

    .line 571
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_4

    .line 596
    .end local v7    # "selectedSimCardName":Ljava/lang/String;
    .end local v8    # "selectedSimCardNumber":I
    .restart local v0    # "caCert":Ljava/lang/String;
    .restart local v1    # "clientCert":Ljava/lang/String;
    :cond_b
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 481
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 544
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_b
        :pswitch_b
    .end packed-switch

    .line 549
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method hideSubmitButton()V
    .locals 2

    .prologue
    .line 413
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v0

    .line 414
    .local v0, "submit":Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 417
    :goto_0
    return-void

    .line 416
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public isEdit()Z
    .locals 1

    .prologue
    .line 1242
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEdit:Z

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "view"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const v3, 0x7f0f016c

    .line 1266
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v1

    const v2, 0x7f0f012b

    if-ne v1, v2, :cond_2

    .line 1267
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 1268
    .local v0, "pos":I
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    const/16 v1, 0x90

    :goto_0
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 1272
    if-ltz v0, :cond_0

    .line 1273
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 1282
    .end local v0    # "pos":I
    :cond_0
    :goto_1
    return-void

    .line 1268
    .restart local v0    # "pos":I
    :cond_1
    const/16 v1, 0x80

    goto :goto_0

    .line 1275
    .end local v0    # "pos":I
    :cond_2
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v1

    const v2, 0x7f0f016b

    if-ne v1, v2, :cond_0

    .line 1276
    if-eqz p2, :cond_3

    .line 1277
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1279
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1286
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    if-ne p1, v1, :cond_2

    .line 1287
    iput p3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 1288
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->showSecurityFields()V

    .line 1314
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCertificateSpinner:Landroid/widget/Spinner;

    if-eq p1, v1, :cond_1

    .line 1316
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 1317
    :cond_1
    return-void

    .line 1289
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-ne p1, v1, :cond_3

    .line 1290
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->showSecurityFields()V

    goto :goto_0

    .line 1291
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v1, :cond_4

    .line 1292
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->showProxyFields()V

    goto :goto_0

    .line 1294
    :cond_4
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCertificateSpinner:Landroid/widget/Spinner;

    if-ne p1, v1, :cond_5

    .line 1295
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCertificateSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 1296
    .local v0, "cert_sel":I
    const-string v1, "WifiConfigController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ############# WifiConfigController.java->onItemSelected() Cert_selected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    if-ltz v0, :cond_0

    iget v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCert_Cnt:I

    if-ge v0, v1, :cond_0

    .line 1298
    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/WifiConfigController;->handleCertificateChange(I)V

    goto :goto_0

    .line 1301
    .end local v0    # "cert_sel":I
    :cond_5
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWapiKeyTypeSpinner:Landroid/widget/Spinner;

    if-ne p1, v1, :cond_6

    .line 1302
    iget v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPsk_key_type:I

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWapiKeyTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1303
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWapiKeyTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPsk_key_type:I

    .line 1304
    const-string v1, "WifiConfigController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wapiPskType  WAPI PSK key type changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPsk_key_type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 1306
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1310
    :cond_6
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->showIpConfigFields()V

    goto/16 :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1341
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 1262
    return-void
.end method
