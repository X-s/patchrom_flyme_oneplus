.class public Lcom/android/settings_ex/wifi/WifiConfigController;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/oneplus/widget/button/OPCompoundButton$OnCheckedChangeListener;


# static fields
.field private static final ASCII:I = 0x0

.field private static final DEFAULT_CERTIFICATE_PATH:Ljava/lang/String; = "/data/wapi_certificate"

.field private static final DHCP:I = 0x0

.field private static final HEX:I = 0x1

.field public static final PROXY_NONE:I = 0x0

.field public static final PROXY_PAC:I = 0x2

.field public static final PROXY_STATIC:I = 0x1

.field private static final STATIC_IP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WifiConfigController"

.field public static final WIFI_EAP_METHOD_AKA:I = 0x5

.field public static final WIFI_EAP_METHOD_AKA_PRIME:I = 0x6

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

.field private final mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

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

.field private mEapAnonymousView:Landroid/widget/TextView;

.field private mEapCaCertSpinner:Landroid/widget/Spinner;

.field private mEapIdentityView:Landroid/widget/TextView;

.field private mEapMethodSpinner:Landroid/widget/Spinner;

.field private mEapUserCertSpinner:Landroid/widget/Spinner;

.field private mEdit:Z

.field private mGatewayView:Landroid/widget/TextView;

.field private mHttpProxy:Landroid/net/ProxyInfo;

.field private mIpAddressView:Landroid/widget/TextView;

.field private mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

.field private mIpSettingsSpinner:Landroid/widget/Spinner;

.field private mLevels:[Ljava/lang/String;

.field private mModify:Z

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

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mTextViewChangedHandler:Landroid/os/Handler;

.field private final mView:Landroid/view/View;

.field private mWapiKeyTypeSpinner:Landroid/widget/Spinner;

.field private selectedSimCardName:Ljava/lang/String;

.field private selectedSimCardNumber:I

.field private unspecifiedCert:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settings_exlib/wifi/AccessPoint;ZZ)V
    .locals 24
    .param p1, "parent"    # Lcom/android/settings_ex/wifi/WifiConfigUiBase;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "accessPoint"    # Lcom/android/settings_exlib/wifi/AccessPoint;
    .param p4, "edit"    # Z
    .param p5, "modify"    # Z

    .prologue
    .line 196
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const-string v19, "unspecified"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    .line 157
    sget-object v19, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 158
    sget-object v19, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 159
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 160
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 169
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 189
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mCert_Set:Z

    .line 190
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mCert_Cnt:I

    .line 191
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mPsk_key_type:I

    .line 197
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    .line 199
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    .line 200
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    .line 201
    if-nez p3, :cond_2

    const/16 v19, 0x0

    :goto_0
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 203
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mEdit:Z

    .line 204
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mModify:Z

    .line 206
    new-instance v19, Landroid/os/Handler;

    invoke-direct/range {v19 .. v19}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mTextViewChangedHandler:Landroid/os/Handler;

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 210
    .local v12, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "phone"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 211
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mSimDisplayNames:Ljava/util/ArrayList;

    .line 212
    const v19, 0x7f0a001c

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    .line 213
    new-instance v19, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x1090008

    const v22, 0x7f0a0026

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v19 .. v22}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    move-object/from16 v19, v0

    const v20, 0x1090009

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 218
    new-instance v19, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x1090008

    const v22, 0x7f0a0027

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v19 .. v22}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    move-object/from16 v19, v0

    const v20, 0x1090009

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f0c0523

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f120299

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Spinner;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f120290

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Spinner;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    move-object/from16 v19, v0

    if-nez v19, :cond_3

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v19, v0

    const v20, 0x7f0c04ea

    invoke-interface/range {v19 .. v20}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->setTitle(I)V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f12028a

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f120288

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f120289

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f12026f

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f120270

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Spinner;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f1200dd

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 244
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->showIpConfigFields()V

    .line 245
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->showProxyFields()V

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f12028b

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f12028c

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/oneplus/widget/button/OPCheckBox;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/oneplus/widget/button/OPCheckBox;->setOnCheckedChangeListener(Lcom/oneplus/widget/button/OPCompoundButton$OnCheckedChangeListener;)V

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v19, v0

    const v20, 0x7f0c0534

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 371
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v19, v0

    const v20, 0x7f0c0536

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v19

    if-eqz v19, :cond_1

    .line 373
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 375
    :cond_1
    return-void

    .line 201
    .end local v12    # "res":Landroid/content/res/Resources;
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSecurity()I

    move-result v19

    goto/16 :goto_0

    .line 253
    .restart local v12    # "res":Landroid/content/res/Resources;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f12026e

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 257
    .local v6, "group":Landroid/view/ViewGroup;
    const/4 v13, 0x0

    .line 258
    .local v13, "showAdvancedFields":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings_exlib/wifi/AccessPoint;->isSaved()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings_exlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 260
    .local v4, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v19

    sget-object v20, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Spinner;->setSelection(I)V

    .line 262
    const/4 v13, 0x1

    .line 264
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v16

    .line 265
    .local v16, "staticConfig":Landroid/net/StaticIpConfiguration;
    if-eqz v16, :cond_4

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    .line 266
    const v19, 0x7f0c0511

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v6, v1, v2}, Lcom/android/settings_ex/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 284
    .end local v16    # "staticConfig":Landroid/net/StaticIpConfiguration;
    :cond_4
    :goto_2
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v19

    sget-object v20, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Spinner;->setSelection(I)V

    .line 286
    const/4 v13, 0x1

    .line 293
    :goto_3
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 294
    const v19, 0x7f0c0513

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f0c0514

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v6, v1, v2}, Lcom/android/settings_ex/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 299
    .end local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings_exlib/wifi/AccessPoint;->isSaved()Z

    move-result v19

    if-nez v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings_exlib/wifi/AccessPoint;->isActive()Z

    move-result v19

    if-eqz v19, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEdit:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 301
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->showSecurityFields()V

    .line 302
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->showIpConfigFields()V

    .line 303
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->showProxyFields()V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f12028b

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f12028c

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/oneplus/widget/button/OPCheckBox;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/oneplus/widget/button/OPCheckBox;->setOnCheckedChangeListener(Lcom/oneplus/widget/button/OPCompoundButton$OnCheckedChangeListener;)V

    .line 307
    if-eqz v13, :cond_8

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f12028c

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/oneplus/widget/button/OPCheckBox;

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/oneplus/widget/button/OPCheckBox;->setChecked(Z)V

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f12028d

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 313
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mModify:Z

    move/from16 v19, v0

    if-eqz v19, :cond_c

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v19, v0

    const v20, 0x7f0c0534

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 270
    .restart local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Spinner;->setSelection(I)V

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings_exlib/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v18

    .line 272
    .local v18, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v18, :cond_4

    .line 273
    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v8

    .line 274
    .local v8, "ipAddr":I
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 275
    .local v9, "ipBuf":Ljava/lang/StringBuffer;
    and-int/lit16 v0, v8, 0xff

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v19

    const/16 v20, 0x2e

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v19

    ushr-int/lit8 v8, v8, 0x8

    and-int/lit16 v0, v8, 0xff

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v19

    const/16 v20, 0x2e

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v19

    ushr-int/lit8 v8, v8, 0x8

    and-int/lit16 v0, v8, 0xff

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v19

    const/16 v20, 0x2e

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v19

    ushr-int/lit8 v8, v8, 0x8

    and-int/lit16 v0, v8, 0xff

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 279
    const v19, 0x7f0c0511

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v6, v1, v2}, Lcom/android/settings_ex/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 287
    .end local v8    # "ipAddr":I
    .end local v9    # "ipBuf":Ljava/lang/StringBuffer;
    .end local v18    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_a
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v19

    sget-object v20, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Spinner;->setSelection(I)V

    .line 289
    const/4 v13, 0x1

    goto/16 :goto_3

    .line 291
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_3

    .line 316
    .end local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings_exlib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v15

    .line 317
    .local v15, "state":Landroid/net/NetworkInfo$DetailedState;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->getSignalString()Ljava/lang/String;

    move-result-object v14

    .line 319
    .local v14, "signalLevel":Ljava/lang/String;
    if-nez v15, :cond_e

    if-eqz v14, :cond_e

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v19, v0

    const v20, 0x7f0c0530

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 365
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings_exlib/wifi/AccessPoint;->isSaved()Z

    move-result v19

    if-nez v19, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings_exlib/wifi/AccessPoint;->isActive()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 366
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v19, v0

    const v20, 0x7f0c0532

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 322
    :cond_e
    if-eqz v15, :cond_10

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings_exlib/wifi/AccessPoint;->isEphemeral()Z

    move-result v10

    .line 324
    .local v10, "isEphemeral":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings_exlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 325
    .restart local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v11, 0x0

    .line 326
    .local v11, "providerFriendlyName":Ljava/lang/String;
    if-eqz v4, :cond_f

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v19

    if-eqz v19, :cond_f

    .line 327
    iget-object v11, v4, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    .line 329
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v15, v10, v11}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSummary(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 331
    .local v17, "summary":Ljava/lang/String;
    const v19, 0x7f0c050e

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v17

    invoke-direct {v0, v6, v1, v2}, Lcom/android/settings_ex/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 334
    .end local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v10    # "isEphemeral":Z
    .end local v11    # "providerFriendlyName":Ljava/lang/String;
    .end local v17    # "summary":Ljava/lang/String;
    :cond_10
    if-eqz v14, :cond_11

    .line 335
    const v19, 0x7f0c050d

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v6, v1, v14}, Lcom/android/settings_ex/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 338
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings_exlib/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    .line 339
    .local v7, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v7, :cond_12

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_12

    .line 340
    const v19, 0x7f0c050f

    const v20, 0x7f0c04bd

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v6, v1, v2}, Lcom/android/settings_ex/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 344
    :cond_12
    if-eqz v7, :cond_13

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_13

    .line 345
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v5

    .line 346
    .local v5, "frequency":I
    const/4 v3, 0x0

    .line 348
    .local v3, "band":Ljava/lang/String;
    const/16 v19, 0x960

    move/from16 v0, v19

    if-lt v5, v0, :cond_14

    const/16 v19, 0x9c4

    move/from16 v0, v19

    if-ge v5, v0, :cond_14

    .line 350
    const v19, 0x7f0c04bb

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 357
    :goto_5
    if-eqz v3, :cond_13

    .line 358
    const v19, 0x7f0c0510

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v6, v1, v3}, Lcom/android/settings_ex/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 362
    .end local v3    # "band":Ljava/lang/String;
    .end local v5    # "frequency":I
    :cond_13
    const v19, 0x7f0c050c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v6, v1, v2}, Lcom/android/settings_ex/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f120298

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 351
    .restart local v3    # "band":Ljava/lang/String;
    .restart local v5    # "frequency":I
    :cond_14
    const/16 v19, 0x1324

    move/from16 v0, v19

    if-lt v5, v0, :cond_15

    const/16 v19, 0x170c

    move/from16 v0, v19

    if-ge v5, v0, :cond_15

    .line 353
    const v19, 0x7f0c04bc

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 355
    :cond_15
    const-string v19, "WifiConfigController"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Unexpected frequency "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 4
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "name"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 378
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040152

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 379
    .local v0, "row":Landroid/view/View;
    const v1, 0x7f120029

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 380
    const v1, 0x7f1202a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 382
    return-void
.end method

.method private getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 655
    :try_start_0
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    check-cast v1, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    :goto_0
    return-object v1

    .line 656
    :catch_0
    move-exception v0

    .line 657
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 656
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private getSIMInfo()V
    .locals 8

    .prologue
    .line 1318
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 1319
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1320
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 1322
    .local v2, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_0

    .line 1323
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1327
    .local v0, "displayname":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSimDisplayNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1319
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1325
    .end local v0    # "displayname":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v4, 0x7f0c0c13

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    add-int/lit8 v7, v1, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayname":Ljava/lang/String;
    goto :goto_1

    .line 1329
    .end local v0    # "displayname":Ljava/lang/String;
    .end local v2    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_1
    return-void
.end method

.method private getSignalString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 385
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_exlib/wifi/AccessPoint;->getLevel()I

    move-result v0

    .line 387
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
    .line 1283
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

    .line 1284
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

    .line 1286
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

    .line 1288
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

    .line 1290
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

    .line 1295
    .end local v1    # "string":[Ljava/lang/String;
    :goto_0
    return-void

    .line 1292
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private ipAndProxyFieldsAreValid()Z
    .locals 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 605
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v9

    if-ne v9, v11, :cond_0

    sget-object v9, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    :goto_0
    iput-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 609
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v12, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v9, v12, :cond_1

    .line 610
    new-instance v9, Landroid/net/StaticIpConfiguration;

    invoke-direct {v9}, Landroid/net/StaticIpConfiguration;-><init>()V

    iput-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 611
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    invoke-direct {p0, v9}, Lcom/android/settings_ex/wifi/WifiConfigController;->validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I

    move-result v5

    .line 612
    .local v5, "result":I
    if-eqz v5, :cond_1

    move v9, v10

    .line 650
    .end local v5    # "result":I
    :goto_1
    return v9

    .line 605
    :cond_0
    sget-object v9, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_0

    .line 617
    :cond_1
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    .line 618
    .local v6, "selectedPosition":I
    sget-object v9, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 619
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 620
    if-ne v6, v11, :cond_4

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v9, :cond_4

    .line 621
    sget-object v9, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 622
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 623
    .local v2, "host":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 624
    .local v4, "portStr":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 625
    .local v1, "exclusionList":Ljava/lang/String;
    const/4 v3, 0x0

    .line 626
    .local v3, "port":I
    const/4 v5, 0x0

    .line 628
    .restart local v5    # "result":I
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 629
    invoke-static {v2, v4, v1}, Lcom/android/settings_ex/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 633
    :goto_2
    if-nez v5, :cond_3

    .line 634
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

    .line 650
    goto :goto_1

    .line 630
    .restart local v1    # "exclusionList":Ljava/lang/String;
    .restart local v2    # "host":Ljava/lang/String;
    .restart local v3    # "port":I
    .restart local v4    # "portStr":Ljava/lang/String;
    .restart local v5    # "result":I
    :catch_0
    move-exception v0

    .line 631
    .local v0, "e":Ljava/lang/NumberFormatException;
    const v5, 0x7f0c0363

    goto :goto_2

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    move v9, v10

    .line 636
    goto :goto_1

    .line 638
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

    .line 639
    sget-object v9, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 640
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    .line 641
    .local v8, "uriSequence":Ljava/lang/CharSequence;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    move v9, v10

    .line 642
    goto :goto_1

    .line 644
    :cond_5
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 645
    .local v7, "uri":Landroid/net/Uri;
    if-nez v7, :cond_6

    move v9, v10

    .line 646
    goto :goto_1

    .line 648
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

    .line 1124
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    invoke-interface {v4}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1126
    .local v3, "context":Landroid/content/Context;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    const/16 v5, 0x3f2

    invoke-virtual {v4, p2, v5}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 1127
    .local v2, "certs":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v4, v2

    if-nez v4, :cond_1

    .line 1128
    :cond_0
    new-array v2, v7, [Ljava/lang/String;

    .end local v2    # "certs":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    aput-object v4, v2, v6

    .line 1136
    .restart local v2    # "certs":[Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    invoke-direct {v0, v3, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1138
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v4, 0x1090009

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1139
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1140
    return-void

    .line 1130
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_1
    array-length v4, v2

    add-int/lit8 v4, v4, 0x1

    new-array v1, v4, [Ljava/lang/String;

    .line 1131
    .local v1, "array":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    aput-object v4, v1, v6

    .line 1132
    array-length v4, v2

    invoke-static {v2, v6, v1, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1133
    move-object v2, v1

    goto :goto_0
.end method

.method private setAnonymousIdentInvisible()V
    .locals 2

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f120283

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1004
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1005
    return-void
.end method

.method private setCaCertInvisible()V
    .locals 2

    .prologue
    .line 993
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f12027d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 994
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 995
    return-void
.end method

.method private setCertificateSpinnerAdapter()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1157
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    invoke-interface {v8}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 1159
    .local v6, "context":Landroid/content/Context;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1160
    .local v3, "cerString":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCerPathString:Ljava/util/ArrayList;

    .line 1162
    iput-boolean v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCert_Set:Z

    .line 1163
    iput v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCert_Cnt:I

    .line 1165
    new-instance v5, Ljava/io/File;

    const-string v8, "/data/wapi_certificate"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1167
    .local v5, "certificatePath":Ljava/io/File;
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1168
    const-string v8, "WifiConfigController"

    const-string v9, " WifiConfigController.java->setCertificateSpinnerAdapter(), No Install Directory Present !! "

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    :goto_0
    return-void

    .line 1172
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 1173
    .local v4, "certificateList":[Ljava/io/File;
    array-length v8, v4

    iput v8, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCert_Cnt:I

    .line 1174
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v8, v4

    if-ge v7, v8, :cond_2

    .line 1175
    aget-object v8, v4, v7

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1176
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

    .line 1177
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

    .line 1178
    .local v1, "UserCertFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1179
    aget-object v8, v4, v7

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1180
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCerPathString:Ljava/util/ArrayList;

    aget-object v9, v4, v7

    invoke-virtual {v9}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1174
    .end local v0    # "ASCertFile":Ljava/io/File;
    .end local v1    # "UserCertFile":Ljava/io/File;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1184
    :cond_2
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCert_Set:Z

    .line 1185
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v9, 0x1090008

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    check-cast v8, [Ljava/lang/String;

    invoke-direct {v2, v6, v9, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1188
    .local v2, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v8, 0x1090009

    invoke-virtual {v2, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1189
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCertificateSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1191
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
    .line 983
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f120281

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 984
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 985
    return-void
.end method

.method private setPasswordInvisible()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1008
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1009
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f120285

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1010
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f120287

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1011
    return-void
.end method

.method private setPhase2Invisible()V
    .locals 2

    .prologue
    .line 988
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f12027b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 989
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 990
    return-void
.end method

.method private setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 3
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1143
    if-eqz p2, :cond_0

    .line 1145
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 1146
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1147
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1148
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1153
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 1146
    .restart local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private setSimCardInvisible()V
    .locals 2

    .prologue
    .line 979
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f120279

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 980
    return-void
.end method

.method private setUserCertInvisible()V
    .locals 2

    .prologue
    .line 998
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f12027f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 999
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1000
    return-void
.end method

.method private setVisibility(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "visibility"    # I

    .prologue
    .line 1117
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1118
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1119
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1121
    :cond_0
    return-void
.end method

.method private showEapFieldsByMethod(I)V
    .locals 8
    .param p1, "eapMethod"    # I

    .prologue
    const v6, 0x7f120283

    const v5, 0x7f12027b

    const/4 v7, 0x0

    .line 903
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f120277

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 904
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f120281

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 908
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f12027d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 909
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f120285

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 910
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f120287

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 912
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    invoke-interface {v3}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 913
    .local v1, "context":Landroid/content/Context;
    packed-switch p1, :pswitch_data_0

    .line 976
    :goto_0
    return-void

    .line 915
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 916
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setCaCertInvisible()V

    .line 917
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 918
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 919
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setSimCardInvisible()V

    goto :goto_0

    .line 922
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f12027f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 923
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 924
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 925
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setPasswordInvisible()V

    .line 926
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setSimCardInvisible()V

    goto :goto_0

    .line 930
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    if-eq v3, v4, :cond_0

    .line 931
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 932
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 934
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 935
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 936
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 937
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setSimCardInvisible()V

    goto :goto_0

    .line 941
    :pswitch_3
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    if-eq v3, v4, :cond_1

    .line 942
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 943
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 945
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 946
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 947
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 948
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setSimCardInvisible()V

    goto :goto_0

    .line 953
    :pswitch_4
    const/4 v0, 0x0

    .line 954
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    if-eqz v3, :cond_2

    .line 955
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings_exlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 957
    :cond_2
    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v4, 0x1090008

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSimDisplayNames:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSimDisplayNames:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 961
    .local v2, "eapSimAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v3, 0x1090009

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 963
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSimCardSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 964
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f120279

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 965
    if-eqz v0, :cond_3

    .line 966
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSimCardSpinner:Landroid/widget/Spinner;

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->SIMNum:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 968
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 969
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 970
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setCaCertInvisible()V

    .line 971
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 972
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setPasswordInvisible()V

    .line 973
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setIdentityInvisible()V

    goto/16 :goto_0

    .line 913
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private showIpConfigFields()V
    .locals 7

    .prologue
    const v6, 0x7f12029a

    const/4 v5, 0x0

    .line 1014
    const/4 v0, 0x0

    .line 1016
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f120298

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1018
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings_exlib/wifi/AccessPoint;->isSaved()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1019
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings_exlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1022
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 1023
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1024
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    if-nez v3, :cond_1

    .line 1025
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f12029b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    .line 1026
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1027
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f12029c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    .line 1028
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1029
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f12029d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    .line 1031
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1032
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f12029e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    .line 1033
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1034
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f12029f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    .line 1035
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1037
    :cond_1
    if-eqz v0, :cond_5

    .line 1038
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v2

    .line 1039
    .local v2, "staticConfig":Landroid/net/StaticIpConfiguration;
    if-eqz v2, :cond_5

    .line 1040
    iget-object v3, v2, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v3, :cond_2

    .line 1041
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    iget-object v4, v2, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1043
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v4, v2, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1047
    :cond_2
    iget-object v3, v2, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-eqz v3, :cond_3

    .line 1048
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    iget-object v4, v2, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1051
    :cond_3
    iget-object v3, v2, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1052
    .local v1, "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1053
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1055
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1056
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1063
    .end local v1    # "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    .end local v2    # "staticConfig":Landroid/net/StaticIpConfiguration;
    :cond_5
    :goto_0
    return-void

    .line 1061
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
    const v9, 0x7f120294

    const v8, 0x7f120292

    const v7, 0x7f120291

    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 1066
    const/4 v0, 0x0

    .line 1068
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f12028e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1070
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings_exlib/wifi/AccessPoint;->isSaved()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1071
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings_exlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1074
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 1075
    invoke-direct {p0, v7, v6}, Lcom/android/settings_ex/wifi/WifiConfigController;->setVisibility(II)V

    .line 1076
    invoke-direct {p0, v9, v6}, Lcom/android/settings_ex/wifi/WifiConfigController;->setVisibility(II)V

    .line 1077
    invoke-direct {p0, v8, v5}, Lcom/android/settings_ex/wifi/WifiConfigController;->setVisibility(II)V

    .line 1078
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-nez v3, :cond_1

    .line 1079
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f120295

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    .line 1080
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1081
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f120296

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    .line 1082
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1083
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f120297

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    .line 1084
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1086
    :cond_1
    if-eqz v0, :cond_2

    .line 1087
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    .line 1088
    .local v2, "proxyProperties":Landroid/net/ProxyInfo;
    if-eqz v2, :cond_2

    .line 1089
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1090
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getPort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1091
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1114
    .end local v2    # "proxyProperties":Landroid/net/ProxyInfo;
    :cond_2
    :goto_0
    return-void

    .line 1094
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 1095
    invoke-direct {p0, v7, v5}, Lcom/android/settings_ex/wifi/WifiConfigController;->setVisibility(II)V

    .line 1096
    invoke-direct {p0, v9, v5}, Lcom/android/settings_ex/wifi/WifiConfigController;->setVisibility(II)V

    .line 1097
    invoke-direct {p0, v8, v6}, Lcom/android/settings_ex/wifi/WifiConfigController;->setVisibility(II)V

    .line 1099
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    if-nez v3, :cond_4

    .line 1100
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f120293

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    .line 1101
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1103
    :cond_4
    if-eqz v0, :cond_2

    .line 1104
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    .line 1105
    .local v1, "proxyInfo":Landroid/net/ProxyInfo;
    if-eqz v1, :cond_2

    .line 1106
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1110
    .end local v1    # "proxyInfo":Landroid/net/ProxyInfo;
    :cond_5
    invoke-direct {p0, v7, v5}, Lcom/android/settings_ex/wifi/WifiConfigController;->setVisibility(II)V

    .line 1111
    invoke-direct {p0, v9, v5}, Lcom/android/settings_ex/wifi/WifiConfigController;->setVisibility(II)V

    .line 1112
    invoke-direct {p0, v8, v5}, Lcom/android/settings_ex/wifi/WifiConfigController;->setVisibility(II)V

    goto :goto_0
.end method

.method private showSecurityFields()V
    .locals 14

    .prologue
    const v13, 0x7f12028a

    const v12, 0x7f120289

    const v11, 0x7f120288

    const/4 v10, 0x0

    const/16 v9, 0x8

    .line 733
    iget v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-nez v6, :cond_0

    .line 734
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f120275

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 736
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 737
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 738
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 878
    :goto_0
    return-void

    .line 742
    :cond_0
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f120275

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 746
    iget v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v7, 0x5

    if-eq v6, v7, :cond_1

    .line 748
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-nez v6, :cond_1

    .line 749
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f12017b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    .line 750
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 751
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f12015c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/oneplus/widget/button/OPCheckBox;

    invoke-virtual {v6, p0}, Lcom/oneplus/widget/button/OPCheckBox;->setOnCheckedChangeListener(Lcom/oneplus/widget/button/OPCompoundButton$OnCheckedChangeListener;)V

    .line 752
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWapiKeyTypeSpinner:Landroid/widget/Spinner;

    .line 753
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWapiKeyTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 755
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/settings_exlib/wifi/AccessPoint;->isSaved()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 756
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    const v7, 0x7f0c0522

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setHint(I)V

    .line 757
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/settings_exlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    iget v6, v6, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 758
    const-string v6, "WifiConfigController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wapiPskType: in  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v8}, Lcom/android/settings_exlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    iget v8, v8, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWapiKeyTypeSpinner:Landroid/widget/Spinner;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 767
    :cond_1
    :goto_1
    iget v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_4

    .line 768
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f12017b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 769
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f120286

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 770
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f12015c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 771
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 772
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 773
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 804
    :cond_2
    :goto_2
    iget v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_6

    .line 805
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f120276

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 761
    :cond_3
    const-string v6, "WifiConfigController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wapiPskType: in  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v8}, Lcom/android/settings_exlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    iget v8, v8, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWapiKeyTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v10}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 774
    :cond_4
    iget v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_5

    .line 778
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f12017b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 779
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f120286

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 780
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f12015c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 781
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 783
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCertificateText:Landroid/widget/TextView;

    .line 784
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCertificateSpinner:Landroid/widget/Spinner;

    .line 787
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCertificateSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 788
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setCertificateSpinnerAdapter()V

    .line 789
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 790
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 791
    :cond_5
    iget v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_2

    iget v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v7, 0x5

    if-eq v6, v7, :cond_2

    .line 794
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f12017b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 795
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f120286

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 796
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f12015c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 797
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 798
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 799
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 808
    :cond_6
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f120276

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 810
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-nez v6, :cond_a

    .line 811
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->getSIMInfo()V

    .line 812
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f120278

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    .line 813
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 814
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x11200a5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-nez v6, :cond_8

    .line 816
    :cond_7
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0016

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 818
    .local v2, "eapMethods":[Ljava/lang/String;
    new-instance v5, Landroid/widget/ArrayAdapter;

    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v7, 0x1090008

    invoke-direct {v5, v6, v7, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 820
    .local v5, "spinnerAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v6, 0x1090009

    invoke-virtual {v5, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 822
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 824
    .end local v2    # "eapMethods":[Ljava/lang/String;
    .end local v5    # "spinnerAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_8
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f12027c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    .line 825
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f12027e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    .line 826
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f120280

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    .line 827
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f12027a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSimCardSpinner:Landroid/widget/Spinner;

    .line 828
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f120282

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    .line 829
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f120284

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    .line 831
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string v7, "CACERT_"

    invoke-direct {p0, v6, v7}, Lcom/android/settings_ex/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 832
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const-string v7, "USRPKEY_"

    invoke-direct {p0, v6, v7}, Lcom/android/settings_ex/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 835
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/settings_exlib/wifi/AccessPoint;->isSaved()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 836
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/settings_exlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    iget-object v3, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 837
    .local v3, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v1

    .line 838
    .local v1, "eapMethod":I
    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v4

    .line 839
    .local v4, "phase2Method":I
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 840
    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    .line 841
    packed-switch v1, :pswitch_data_0

    .line 865
    :pswitch_0
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 868
    :goto_3
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/settings_ex/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 869
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/settings_ex/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 870
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 871
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 843
    :pswitch_1
    packed-switch v4, :pswitch_data_1

    .line 854
    :pswitch_2
    const-string v6, "WifiConfigController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid phase 2 method "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 845
    :pswitch_3
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v10}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 848
    :pswitch_4
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 851
    :pswitch_5
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 861
    :pswitch_6
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/settings_exlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 862
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSimCardSpinner:Landroid/widget/Spinner;

    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->SIMNum:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 873
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "eapMethod":I
    .end local v3    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    .end local v4    # "phase2Method":I
    :cond_9
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/settings_ex/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_0

    .line 876
    :cond_a
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/settings_ex/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_0

    .line 841
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    .line 843
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I
    .locals 13
    .param p1, "staticIpConfiguration"    # Landroid/net/StaticIpConfiguration;

    .prologue
    .line 662
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    if-nez v10, :cond_0

    const/4 v10, 0x0

    .line 729
    :goto_0
    return v10

    .line 664
    :cond_0
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 665
    .local v7, "ipAddr":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    const v10, 0x7f0c055f

    goto :goto_0

    .line 667
    :cond_1
    invoke-direct {p0, v7}, Lcom/android/settings_ex/wifi/WifiConfigController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v6

    .line 668
    .local v6, "inetAddr":Ljava/net/Inet4Address;
    if-nez v6, :cond_2

    .line 669
    const v10, 0x7f0c055f

    goto :goto_0

    .line 672
    :cond_2
    const/4 v9, -0x1

    .line 674
    .local v9, "networkPrefixLength":I
    :try_start_0
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 675
    if-ltz v9, :cond_3

    const/16 v10, 0x20

    if-le v9, v10, :cond_4

    .line 676
    :cond_3
    const v10, 0x7f0c0562

    goto :goto_0

    .line 678
    :cond_4
    new-instance v10, Landroid/net/LinkAddress;

    invoke-direct {v10, v6, v9}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v10, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 687
    :goto_1
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 688
    .local v4, "gateway":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 691
    :try_start_1
    invoke-static {v6, v9}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v8

    .line 692
    .local v8, "netPart":Ljava/net/InetAddress;
    invoke-virtual {v8}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 693
    .local v0, "addr":[B
    array-length v10, v0

    add-int/lit8 v10, v10, -0x1

    const/4 v11, 0x1

    aput-byte v11, v0, v10

    .line 694
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    .line 706
    .end local v0    # "addr":[B
    .end local v8    # "netPart":Ljava/net/InetAddress;
    :goto_2
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 707
    .local v1, "dns":Ljava/lang/String;
    const/4 v2, 0x0

    .line 709
    .local v2, "dnsAddr":Ljava/net/InetAddress;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 712
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    invoke-interface {v11}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0c0564

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 721
    :goto_3
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->length()I

    move-result v10

    if-lez v10, :cond_a

    .line 722
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 723
    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/WifiConfigController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v2

    .line 724
    if-nez v2, :cond_9

    .line 725
    const v10, 0x7f0c0561

    goto/16 :goto_0

    .line 679
    .end local v1    # "dns":Ljava/lang/String;
    .end local v2    # "dnsAddr":Ljava/net/InetAddress;
    .end local v4    # "gateway":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 683
    .local v3, "e":Ljava/lang/NumberFormatException;
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    invoke-interface {v11}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0c056a

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 699
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "gateway":Ljava/lang/String;
    :cond_5
    invoke-direct {p0, v4}, Lcom/android/settings_ex/wifi/WifiConfigController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v5

    .line 700
    .local v5, "gatewayAddr":Ljava/net/InetAddress;
    if-nez v5, :cond_6

    .line 701
    const v10, 0x7f0c0560

    goto/16 :goto_0

    .line 703
    :cond_6
    iput-object v5, p1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    goto :goto_2

    .line 714
    .end local v5    # "gatewayAddr":Ljava/net/InetAddress;
    .restart local v1    # "dns":Ljava/lang/String;
    .restart local v2    # "dnsAddr":Ljava/net/InetAddress;
    :cond_7
    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/WifiConfigController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v2

    .line 715
    if-nez v2, :cond_8

    .line 716
    const v10, 0x7f0c0561

    goto/16 :goto_0

    .line 718
    :cond_8
    iget-object v10, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 727
    :cond_9
    iget-object v10, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 729
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 696
    .end local v1    # "dns":Ljava/lang/String;
    .end local v2    # "dnsAddr":Ljava/net/InetAddress;
    :catch_1
    move-exception v10

    goto :goto_2

    .line 695
    :catch_2
    move-exception v10

    goto :goto_2
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mTextViewChangedHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings_ex/wifi/WifiConfigController$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/wifi/WifiConfigController$1;-><init>(Lcom/android/settings_ex/wifi/WifiConfigController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1212
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 1217
    return-void
.end method

.method enableSubmitIfAppropriate()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    .line 406
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    invoke-interface {v4}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v3

    .line 407
    .local v3, "submit":Landroid/widget/Button;
    if-nez v3, :cond_0

    .line 447
    :goto_0
    return-void

    .line 409
    :cond_0
    const/4 v0, 0x0

    .line 410
    .local v0, "enabled":Z
    const/4 v2, 0x0

    .line 412
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

    .line 415
    :cond_2
    const/4 v2, 0x1

    .line 420
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    .line 421
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-lt v4, v7, :cond_9

    .line 422
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWapiKeyTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-ne v4, v6, :cond_5

    .line 423
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 424
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

    .line 425
    :cond_4
    const/4 v2, 0x1

    .line 435
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
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings_exlib/wifi/AccessPoint;->isSaved()Z

    move-result v4

    if-nez v4, :cond_a

    :cond_7
    if-eqz v2, :cond_a

    .line 438
    :cond_8
    const/4 v0, 0x0

    .line 446
    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 428
    :cond_9
    const/4 v2, 0x1

    goto :goto_1

    .line 440
    :cond_a
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->ipAndProxyFieldsAreValid()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 441
    const/4 v0, 0x1

    goto :goto_2

    .line 443
    :cond_b
    const/4 v0, 0x0

    goto :goto_2
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v8, 0x1

    const/16 v10, 0x22

    const/4 v9, 0x0

    .line 450
    iget-boolean v7, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEdit:Z

    if-nez v7, :cond_0

    .line 451
    const/4 v2, 0x0

    .line 601
    :goto_0
    return-object v2

    .line 454
    :cond_0
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 456
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    if-nez v7, :cond_1

    .line 457
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings_exlib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 460
    iput-boolean v8, v2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 468
    :goto_1
    iget v7, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    packed-switch v7, :pswitch_data_0

    .line 594
    const/4 v2, 0x0

    goto :goto_0

    .line 461
    :cond_1
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settings_exlib/wifi/AccessPoint;->isSaved()Z

    move-result v7

    if-nez v7, :cond_2

    .line 462
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings_exlib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 465
    :cond_2
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settings_exlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    iget v7, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v7, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_1

    .line 470
    :pswitch_0
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v9}, Ljava/util/BitSet;->set(I)V

    .line 597
    :cond_3
    :goto_2
    new-instance v7, Landroid/net/IpConfiguration;

    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    invoke-virtual {v2, v7}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    goto :goto_0

    .line 474
    :pswitch_1
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v9}, Ljava/util/BitSet;->set(I)V

    .line 475
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v7, v9}, Ljava/util/BitSet;->set(I)V

    .line 476
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->set(I)V

    .line 477
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->length()I

    move-result v7

    if-eqz v7, :cond_3

    .line 478
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->length()I

    move-result v4

    .line 479
    .local v4, "length":I
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 481
    .local v5, "password":Ljava/lang/String;
    const/16 v7, 0xa

    if-eq v4, v7, :cond_4

    const/16 v7, 0x1a

    if-eq v4, v7, :cond_4

    const/16 v7, 0x3a

    if-ne v4, v7, :cond_5

    :cond_4
    const-string v7, "[0-9A-Fa-f]*"

    invoke-virtual {v5, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 483
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v5, v7, v9

    goto :goto_2

    .line 485
    :cond_5
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    goto :goto_2

    .line 491
    .end local v4    # "length":I
    .end local v5    # "password":Ljava/lang/String;
    :pswitch_2
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->set(I)V

    .line 492
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->length()I

    move-result v7

    if-eqz v7, :cond_3

    .line 493
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 494
    .restart local v5    # "password":Ljava/lang/String;
    const-string v7, "[0-9A-Fa-f]{64}"

    invoke-virtual {v5, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 495
    iput-object v5, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 497
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 504
    .end local v5    # "password":Ljava/lang/String;
    :pswitch_3
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v12}, Ljava/util/BitSet;->set(I)V

    .line 505
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->length()I

    move-result v7

    if-eqz v7, :cond_7

    .line 506
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 507
    .restart local v5    # "password":Ljava/lang/String;
    const-string v7, "[0-9A-Fa-f]{64}"

    invoke-virtual {v5, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 508
    iput-object v5, v2, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    .line 513
    .end local v5    # "password":Ljava/lang/String;
    :cond_7
    :goto_3
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWapiKeyTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    iput v7, v2, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    .line 514
    const-string v7, "WifiConfigController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "wapiPskType  WAPI PSK key type  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 510
    .restart local v5    # "password":Ljava/lang/String;
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    goto :goto_3

    .line 518
    .end local v5    # "password":Ljava/lang/String;
    :pswitch_4
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->set(I)V

    .line 519
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCertificateAs:Ljava/lang/String;

    iput-object v7, v2, Landroid/net/wifi/WifiConfiguration;->wapiASCert:Ljava/lang/String;

    .line 520
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCertificateUser:Ljava/lang/String;

    iput-object v7, v2, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    goto/16 :goto_2

    .line 525
    :pswitch_5
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->set(I)V

    .line 526
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v11}, Ljava/util/BitSet;->set(I)V

    .line 527
    new-instance v7, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v7}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 528
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    .line 529
    .local v3, "eapMethod":I
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    .line 530
    .local v6, "phase2Method":I
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 531
    packed-switch v3, :pswitch_data_1

    .line 561
    :pswitch_6
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 564
    :goto_4
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 565
    .local v0, "caCert":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v0, ""

    .line 566
    :cond_9
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    .line 567
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 568
    .local v1, "clientCert":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const-string v1, ""

    .line 569
    :cond_a
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    .line 570
    if-eq v3, v12, :cond_b

    const/4 v7, 0x5

    if-eq v3, v7, :cond_b

    const/4 v7, 0x6

    if-ne v3, v7, :cond_c

    .line 571
    :cond_b
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 572
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 582
    :goto_5
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->isShown()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 585
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 586
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 536
    .end local v0    # "caCert":Ljava/lang/String;
    .end local v1    # "clientCert":Ljava/lang/String;
    :pswitch_7
    packed-switch v6, :pswitch_data_2

    .line 547
    const-string v7, "WifiConfigController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown phase2 method"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 538
    :pswitch_8
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_4

    .line 541
    :pswitch_9
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v11}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_4

    .line 544
    :pswitch_a
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v12}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_4

    .line 554
    :pswitch_b
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSimCardSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->selectedSimCardName:Ljava/lang/String;

    .line 555
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSimDisplayNames:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->selectedSimCardName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->selectedSimCardNumber:I

    .line 557
    iget v7, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->selectedSimCardNumber:I

    iput v7, v2, Landroid/net/wifi/WifiConfiguration;->SIMNum:I

    goto/16 :goto_4

    .line 573
    .restart local v0    # "caCert":Ljava/lang/String;
    .restart local v1    # "clientCert":Ljava/lang/String;
    :cond_c
    if-ne v3, v11, :cond_d

    .line 574
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 575
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 577
    :cond_d
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 578
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 590
    :cond_e
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 468
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

    .line 531
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch

    .line 536
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method hideForgetButton()V
    .locals 2

    .prologue
    .line 391
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getForgetButton()Landroid/widget/Button;

    move-result-object v0

    .line 392
    .local v0, "forget":Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 395
    :goto_0
    return-void

    .line 394
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method hideSubmitButton()V
    .locals 2

    .prologue
    .line 398
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v0

    .line 399
    .local v0, "submit":Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 402
    :goto_0
    return-void

    .line 401
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public isEdit()Z
    .locals 1

    .prologue
    .line 1198
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEdit:Z

    return v0
.end method

.method public isModify()Z
    .locals 1

    .prologue
    .line 1202
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mModify:Z

    return v0
.end method

.method public onCheckedChanged(Lcom/oneplus/widget/button/OPCompoundButton;Z)V
    .locals 4
    .param p1, "view"    # Lcom/oneplus/widget/button/OPCompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const v3, 0x7f12028d

    .line 1226
    invoke-virtual {p1}, Lcom/oneplus/widget/button/OPCompoundButton;->getId()I

    move-result v1

    const v2, 0x7f12015c

    if-ne v1, v2, :cond_2

    .line 1227
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 1228
    .local v0, "pos":I
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    const/16 v1, 0x90

    :goto_0
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 1232
    if-ltz v0, :cond_0

    .line 1233
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 1242
    .end local v0    # "pos":I
    :cond_0
    :goto_1
    return-void

    .line 1228
    .restart local v0    # "pos":I
    :cond_1
    const/16 v1, 0x80

    goto :goto_0

    .line 1235
    .end local v0    # "pos":I
    :cond_2
    invoke-virtual {p1}, Lcom/oneplus/widget/button/OPCompoundButton;->getId()I

    move-result v1

    const v2, 0x7f12028c

    if-ne v1, v2, :cond_0

    .line 1236
    if-eqz p2, :cond_3

    .line 1237
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1239
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
    .line 1246
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    if-ne p1, v1, :cond_2

    .line 1247
    iput p3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 1248
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->showSecurityFields()V

    .line 1274
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCertificateSpinner:Landroid/widget/Spinner;

    if-eq p1, v1, :cond_1

    .line 1276
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 1277
    :cond_1
    return-void

    .line 1249
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-ne p1, v1, :cond_3

    .line 1250
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->showSecurityFields()V

    goto :goto_0

    .line 1251
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v1, :cond_4

    .line 1252
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->showProxyFields()V

    goto :goto_0

    .line 1254
    :cond_4
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCertificateSpinner:Landroid/widget/Spinner;

    if-ne p1, v1, :cond_5

    .line 1255
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCertificateSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 1256
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

    .line 1257
    if-ltz v0, :cond_0

    iget v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCert_Cnt:I

    if-ge v0, v1, :cond_0

    .line 1258
    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/WifiConfigController;->handleCertificateChange(I)V

    goto :goto_0

    .line 1261
    .end local v0    # "cert_sel":I
    :cond_5
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWapiKeyTypeSpinner:Landroid/widget/Spinner;

    if-ne p1, v1, :cond_6

    .line 1262
    iget v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPsk_key_type:I

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWapiKeyTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1263
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWapiKeyTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPsk_key_type:I

    .line 1264
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

    .line 1265
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 1266
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1270
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
    .line 1301
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
    .line 1222
    return-void
.end method

.method public updatePassword()V
    .locals 3

    .prologue
    .line 1307
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f12017b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1308
    .local v0, "passwdView":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f12015c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/widget/button/OPCheckBox;

    invoke-virtual {v1}, Lcom/oneplus/widget/button/OPCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x90

    :goto_0
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 1313
    return-void

    .line 1308
    :cond_0
    const/16 v1, 0x80

    goto :goto_0
.end method
