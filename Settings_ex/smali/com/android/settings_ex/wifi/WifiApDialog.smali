.class public Lcom/android/settings_ex/wifi/WifiApDialog;
.super Lcom/oneplus/app/OPAlertDialog;
.source "WifiApDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field static final BUTTON_SUBMIT:I = -0x1

.field private static final MAX_SSID_LEN:I = 0x20

.field public static final OPEN_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WifiApDialog"

.field public static final WPA2_INDEX:I = 0x1


# instance fields
.field private mBandIndex:I

.field private mContext:Landroid/content/Context;

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPassword:Lcom/oneplus/widget/OPEditText;

.field private mSecurityTypeIndex:I

.field private mSsid:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field mWifiManager:Landroid/net/wifi/WifiManager;

.field private ssidTemp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0, p1}, Lcom/oneplus/app/OPAlertDialog;-><init>(Landroid/content/Context;)V

    .line 68
    iput v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->ssidTemp:Ljava/lang/String;

    .line 75
    iput v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mBandIndex:I

    .line 86
    iput-object p2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 87
    iput-object p3, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 88
    if-eqz p3, :cond_0

    .line 89
    invoke-static {p3}, Lcom/android/settings_ex/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 91
    :cond_0
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 92
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wifi/WifiApDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiApDialog;

    .prologue
    .line 56
    iget v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mBandIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/wifi/WifiApDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiApDialog;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mBandIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/wifi/WifiApDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiApDialog;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/wifi/WifiApDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiApDialog;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->ssidTemp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings_ex/wifi/WifiApDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiApDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->ssidTemp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings_ex/wifi/WifiApDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiApDialog;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApDialog;->validate()V

    return-void
.end method

.method public static getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .param p0, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 96
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, 0x1

    .line 99
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showSecurityFields()V
    .locals 2

    .prologue
    const v1, 0x7f120271

    .line 333
    iget v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-nez v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 338
    :goto_0
    return-void

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private validate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 293
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "mSsidString":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Lcom/oneplus/widget/OPEditText;

    invoke-virtual {v1}, Lcom/oneplus/widget/OPEditText;->length()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    const/16 v2, 0x20

    if-le v1, v2, :cond_3

    .line 298
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/wifi/WifiApDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 302
    :goto_0
    return-void

    .line 300
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/wifi/WifiApDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApDialog;->validate()V

    .line 319
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 315
    return-void
.end method

.method public getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 104
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 112
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 114
    iget v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mBandIndex:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 116
    iget v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurityTypeIndex:I

    packed-switch v2, :pswitch_data_0

    .line 130
    const/4 v0, 0x0

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    :goto_0
    return-object v0

    .line 118
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :pswitch_0
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 122
    :pswitch_1
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 123
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 124
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Lcom/oneplus/widget/OPEditText;

    invoke-virtual {v2}, Lcom/oneplus/widget/OPEditText;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Lcom/oneplus/widget/OPEditText;

    invoke-virtual {v2}, Lcom/oneplus/widget/OPEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "password":Ljava/lang/String;
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 305
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Lcom/oneplus/widget/OPEditText;

    check-cast p1, Lcom/oneplus/widget/button/OPCheckBox;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Lcom/oneplus/widget/button/OPCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x90

    :goto_0
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/oneplus/widget/OPEditText;->setInputType(I)V

    .line 309
    return-void

    .line 305
    :cond_0
    const/16 v0, 0x80

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v11, 0x1090008

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 135
    const/4 v4, 0x1

    .line 136
    .local v4, "mInit":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiApDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f04014e

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    .line 137
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v7, 0x7f120270

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    .line 138
    .local v5, "mSecurity":Landroid/widget/Spinner;
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v7, 0x7f120273

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 140
    .local v3, "mChannel":Landroid/widget/Spinner;
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/wifi/WifiApDialog;->setView(Landroid/view/View;)V

    .line 141
    invoke-virtual {p0, v10}, Lcom/android/settings_ex/wifi/WifiApDialog;->setInverseBackgroundForced(Z)V

    .line 143
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 145
    .local v1, "context":Landroid/content/Context;
    const v6, 0x7f0c0582

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/wifi/WifiApDialog;->setTitle(I)V

    .line 146
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v7, 0x7f1200dd

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 147
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v7, 0x7f12026f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    .line 148
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v7, 0x7f12017b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/oneplus/widget/OPEditText;

    iput-object v6, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Lcom/oneplus/widget/OPEditText;

    .line 151
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, "countryCode":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->isDualBandSupported()Z

    move-result v6

    if-eqz v6, :cond_0

    if-nez v2, :cond_5

    .line 154
    :cond_0
    const-string v7, "WifiApDialog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->isDualBandSupported()Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "Device do not support 5GHz "

    :goto_0
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v2, :cond_4

    const-string v6, " NO country code"

    :goto_1
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " forbid 5GHz"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0018

    invoke-static {v6, v7, v11}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 158
    .local v0, "channelAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput v9, v6, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 165
    :goto_2
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "oem.5gwifi.support"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 167
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v7, 0x7f120272

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 170
    :cond_1
    const v6, 0x1090009

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 172
    const/4 v6, -0x1

    const v7, 0x7f0c0534

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/settings_ex/wifi/WifiApDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 173
    const/4 v6, -0x2

    const v7, 0x7f0c0536

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/settings_ex/wifi/WifiApDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 176
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v6, :cond_2

    .line 177
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v7, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v6, v6, Landroid/net/wifi/WifiConfiguration;->apBand:I

    if-nez v6, :cond_6

    .line 179
    iput v9, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mBandIndex:I

    .line 184
    :goto_3
    iget v6, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurityTypeIndex:I

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 185
    iget v6, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-ne v6, v10, :cond_2

    .line 186
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Lcom/oneplus/widget/OPEditText;

    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v7, v7, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/oneplus/widget/OPEditText;->setText(Ljava/lang/CharSequence;)V

    .line 190
    :cond_2
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 191
    new-instance v6, Lcom/android/settings_ex/wifi/WifiApDialog$1;

    invoke-direct {v6, p0, v3}, Lcom/android/settings_ex/wifi/WifiApDialog$1;-><init>(Lcom/android/settings_ex/wifi/WifiApDialog;Landroid/widget/Spinner;)V

    invoke-virtual {v3, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 227
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    new-instance v7, Lcom/android/settings_ex/wifi/WifiApDialog$2;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/wifi/WifiApDialog$2;-><init>(Lcom/android/settings_ex/wifi/WifiApDialog;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 273
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Lcom/oneplus/widget/OPEditText;

    invoke-virtual {v6, p0}, Lcom/oneplus/widget/OPEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 274
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v7, 0x7f12015c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/oneplus/widget/button/OPCheckBox;

    invoke-virtual {v6, p0}, Lcom/oneplus/widget/button/OPCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    invoke-virtual {v5, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 277
    invoke-super {p0, p1}, Lcom/oneplus/app/OPAlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 279
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApDialog;->showSecurityFields()V

    .line 280
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApDialog;->validate()V

    .line 281
    return-void

    .line 154
    .end local v0    # "channelAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_3
    const-string v6, ""

    goto/16 :goto_0

    :cond_4
    const-string v6, ""

    goto/16 :goto_1

    .line 161
    :cond_5
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0017

    invoke-static {v6, v7, v11}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .restart local v0    # "channelAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    goto/16 :goto_2

    .line 181
    :cond_6
    iput v10, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mBandIndex:I

    goto :goto_3
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
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
    .line 323
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iput p3, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 324
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApDialog;->showSecurityFields()V

    .line 325
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApDialog;->validate()V

    .line 326
    return-void
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
    .line 330
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 284
    invoke-super {p0, p1}, Lcom/oneplus/app/OPAlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 285
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Lcom/oneplus/widget/OPEditText;

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v2, 0x7f12015c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/widget/button/OPCheckBox;

    invoke-virtual {v0}, Lcom/oneplus/widget/button/OPCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x90

    :goto_0
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/oneplus/widget/OPEditText;->setInputType(I)V

    .line 290
    return-void

    .line 285
    :cond_0
    const/16 v0, 0x80

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 312
    return-void
.end method
