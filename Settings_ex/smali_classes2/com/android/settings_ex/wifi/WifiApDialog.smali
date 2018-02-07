.class public Lcom/android/settings_ex/wifi/WifiApDialog;
.super Landroid/app/AlertDialog;
.source "WifiApDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field static final BUTTON_SUBMIT:I = -0x1

.field private static final KEY_BANDINDEX:Ljava/lang/String; = "mBandIndex"

.field public static final OPEN_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WifiApDialog"

.field private static final WIFI_STASAP_CONCURRENCY_DISABLED_VALUE:I = 0x0

.field private static final WIFI_STASAP_CONCURRENCY_ENABLED_VALUE:I = 0x1

.field public static final WPA2_INDEX:I = 0x1

.field private static apBandTemp:I


# instance fields
.field private mBandIndex:I

.field private mContext:Landroid/content/Context;

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPassword:Landroid/widget/EditText;

.field private mSecurityTypeIndex:I

.field private mSsid:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiStaSapConcurrencySupport:Z

.field private nameTemp:Ljava/lang/String;

.field private setWifiStaSapConcurrencyEnabledMethod:Ljava/lang/reflect/Method;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/wifi/WifiApDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mBandIndex:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/wifi/WifiApDialog;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/wifi/WifiApDialog;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->nameTemp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings_ex/wifi/WifiApDialog;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mBandIndex:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings_ex/wifi/WifiApDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->nameTemp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/wifi/WifiApDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApDialog;->validate()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    sput v0, Lcom/android/settings_ex/wifi/WifiApDialog;->apBandTemp:I

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 65
    iput v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 67
    iput v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mBandIndex:I

    .line 78
    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->nameTemp:Ljava/lang/String;

    .line 83
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiStaSapConcurrencySupport:Z

    .line 89
    iput-object p2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 90
    iput-object p3, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 91
    if-eqz p3, :cond_0

    .line 92
    invoke-static {p3}, Lcom/android/settings_ex/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 94
    iget v0, p3, Landroid/net/wifi/WifiConfiguration;->apBand:I

    sput v0, Lcom/android/settings_ex/wifi/WifiApDialog;->apBandTemp:I

    .line 97
    :cond_0
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 98
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    .line 87
    return-void
.end method

.method public static getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .param p0, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 102
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const/4 v0, 0x1

    return v0

    .line 105
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private setWifiStaSapConcurrencyEnabled(I)V
    .locals 7
    .param p1, "value"    # I

    .prologue
    .line 165
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "oem_share_wifi"

    const/4 v4, -0x2

    invoke-static {v2, v3, p1, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 166
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    .line 168
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 169
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v2, "setWifiStaSapConcurrencyEnabled"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->setWifiStaSapConcurrencyEnabledMethod:Ljava/lang/reflect/Method;

    .line 170
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->setWifiStaSapConcurrencyEnabledMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v1

    .line 172
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private showSecurityFields()V
    .locals 3

    .prologue
    const v2, 0x7f11038a

    const/4 v1, 0x0

    .line 398
    iget v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-nez v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 400
    return-void

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 397
    return-void
.end method

.method private validate()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 347
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, "mSsidString":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 355
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/wifi/WifiApDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 346
    :goto_0
    return-void

    .line 352
    :cond_1
    iget v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-ne v1, v5, :cond_2

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 353
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 354
    const-string/jumbo v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    const/16 v2, 0x20

    if-gt v1, v2, :cond_0

    .line 357
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/wifi/WifiApDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApDialog;->validate()V

    .line 382
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 379
    return-void
.end method

.method public cancelConfig()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    sget v1, Lcom/android/settings_ex/wifi/WifiApDialog;->apBandTemp:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 140
    :cond_0
    return-void
.end method

.method public confirmConfig()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 147
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mBandIndex:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v1, 0x7f11038f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    invoke-direct {p0, v3}, Lcom/android/settings_ex/wifi/WifiApDialog;->setWifiStaSapConcurrencyEnabled(I)V

    .line 155
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v1, 0x7f110390

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 157
    const-string/jumbo v1, "hotspot_auto_shut_down"

    .line 156
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 146
    :goto_1
    return-void

    .line 153
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/settings_ex/wifi/WifiApDialog;->setWifiStaSapConcurrencyEnabled(I)V

    goto :goto_0

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 160
    const-string/jumbo v1, "hotspot_auto_shut_down"

    .line 159
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 110
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 118
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 120
    iget v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mBandIndex:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 122
    iget v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurityTypeIndex:I

    packed-switch v2, :pswitch_data_0

    .line 136
    const/4 v2, 0x0

    return-object v2

    .line 124
    :pswitch_0
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 125
    return-object v0

    .line 128
    :pswitch_1
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 129
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 130
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "password":Ljava/lang/String;
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 134
    .end local v1    # "password":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 122
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
    .line 363
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f11038f

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f110390

    if-ne v0, v1, :cond_1

    .line 364
    :cond_0
    return-void

    .line 367
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    .line 368
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 369
    const/16 v0, 0x90

    .line 368
    :goto_0
    or-int/lit8 v0, v0, 0x1

    .line 367
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 372
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 361
    return-void

    .line 370
    :cond_2
    const/16 v0, 0x80

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 180
    const/4 v5, 0x1

    .line 181
    .local v5, "mInit":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiApDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f040209

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    .line 182
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v9, 0x7f110389

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    .line 183
    .local v6, "mSecurity":Landroid/widget/Spinner;
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v9, 0x7f11038c

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 185
    .local v3, "mChannel":Landroid/widget/Spinner;
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/wifi/WifiApDialog;->setView(Landroid/view/View;)V

    .line 186
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/wifi/WifiApDialog;->setInverseBackgroundForced(Z)V

    .line 188
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 190
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string/jumbo v9, "oem.wifi.stasap.concurrency.support"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiStaSapConcurrencySupport:Z

    .line 192
    const v8, 0x7f0e078f

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/wifi/WifiApDialog;->setTitle(I)V

    .line 193
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v9, 0x7f1101a0

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 194
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v9, 0x7f110388

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    .line 195
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v9, 0x7f110373

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    .line 198
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "countryCode":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->isDualBandSupported()Z

    move-result v8

    if-eqz v8, :cond_0

    if-nez v2, :cond_6

    .line 201
    :cond_0
    const-string/jumbo v9, "WifiApDialog"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->isDualBandSupported()Z

    move-result v8

    if-nez v8, :cond_4

    const-string/jumbo v8, "Device do not support 5GHz "

    :goto_0
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 202
    if-nez v2, :cond_5

    const-string/jumbo v8, " NO country code"

    .line 201
    :goto_1
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 202
    const-string/jumbo v10, " forbid 5GHz"

    .line 201
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    .line 204
    const v9, 0x7f0a003d

    const v10, 0x1090008

    .line 203
    invoke-static {v8, v9, v10}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 206
    .local v0, "channelAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v8, :cond_1

    .line 207
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v9, 0x0

    iput v9, v8, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 214
    :cond_1
    :goto_2
    const v8, 0x1090009

    invoke-virtual {v0, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 216
    const v8, 0x7f0e075e

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v10, -0x1

    invoke-virtual {p0, v10, v8, v9}, Lcom/android/settings_ex/wifi/WifiApDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 218
    const v8, 0x7f0e0760

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 217
    const/4 v10, -0x2

    invoke-virtual {p0, v10, v8, v9}, Lcom/android/settings_ex/wifi/WifiApDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 220
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v8, :cond_2

    .line 221
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v9, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v8, v8, Landroid/net/wifi/WifiConfiguration;->apBand:I

    if-nez v8, :cond_7

    .line 223
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mBandIndex:I

    .line 228
    :goto_3
    iget v8, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurityTypeIndex:I

    invoke-virtual {v6, v8}, Landroid/widget/Spinner;->setSelection(I)V

    .line 229
    iget v8, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurityTypeIndex:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 230
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v9, v9, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 234
    :cond_2
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 236
    new-instance v8, Lcom/android/settings_ex/wifi/WifiApDialog$1;

    invoke-direct {v8, p0, v3}, Lcom/android/settings_ex/wifi/WifiApDialog$1;-><init>(Lcom/android/settings_ex/wifi/WifiApDialog;Landroid/widget/Spinner;)V

    .line 235
    invoke-virtual {v3, v8}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 266
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    .line 267
    new-instance v9, Lcom/android/settings_ex/wifi/WifiApDialog$2;

    invoke-direct {v9, p0}, Lcom/android/settings_ex/wifi/WifiApDialog$2;-><init>(Lcom/android/settings_ex/wifi/WifiApDialog;)V

    .line 266
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 299
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v8, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 300
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v9, 0x7f11038b

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    invoke-virtual {v8, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    iget-boolean v8, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiStaSapConcurrencySupport:Z

    if-eqz v8, :cond_3

    .line 303
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v9, 0x7f11038e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 304
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v9, 0x7f11038f

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 306
    :cond_3
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v9, 0x7f11038f

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    invoke-virtual {v8, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "oem_share_wifi"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_8

    const/4 v7, 0x1

    .line 308
    .local v7, "mShareWiFiValue":Z
    :goto_4
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v9, 0x7f11038f

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    invoke-virtual {v8, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 309
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v9, 0x7f110390

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    invoke-virtual {v8, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "hotspot_auto_shut_down"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_9

    const/4 v4, 0x1

    .line 311
    .local v4, "mHotspotAutoShutDownValue":Z
    :goto_5
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v9, 0x7f110390

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    invoke-virtual {v8, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 313
    invoke-virtual {v6, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 315
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 317
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApDialog;->showSecurityFields()V

    .line 318
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApDialog;->validate()V

    .line 179
    return-void

    .line 201
    .end local v0    # "channelAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v4    # "mHotspotAutoShutDownValue":Z
    .end local v7    # "mShareWiFiValue":Z
    :cond_4
    const-string/jumbo v8, ""

    goto/16 :goto_0

    .line 202
    :cond_5
    const-string/jumbo v8, ""

    goto/16 :goto_1

    .line 210
    :cond_6
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    .line 211
    const v9, 0x7f0a003c

    const v10, 0x1090008

    .line 210
    invoke-static {v8, v9, v10}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .restart local v0    # "channelAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    goto/16 :goto_2

    .line 225
    :cond_7
    const/4 v8, 0x1

    iput v8, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mBandIndex:I

    goto/16 :goto_3

    .line 307
    :cond_8
    const/4 v7, 0x0

    .restart local v7    # "mShareWiFiValue":Z
    goto :goto_4

    .line 310
    :cond_9
    const/4 v4, 0x0

    .restart local v4    # "mHotspotAutoShutDownValue":Z
    goto :goto_5
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
    .line 388
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iput p3, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 389
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApDialog;->showSecurityFields()V

    .line 390
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApDialog;->validate()V

    .line 387
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
    .line 394
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 322
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 323
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    .line 325
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v2, 0x7f11038b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    const/16 v0, 0x90

    .line 324
    :goto_0
    or-int/lit8 v0, v0, 0x1

    .line 323
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 329
    const-string/jumbo v0, "mBandIndex"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mBandIndex:I

    .line 330
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mBandIndex:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 321
    :cond_0
    return-void

    .line 327
    :cond_1
    const/16 v0, 0x80

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 340
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 341
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "mBandIndex"

    iget v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mBandIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 342
    return-object v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 376
    return-void
.end method
