.class public Lcom/android/settings_ex/wifi/WifiApDialog;
.super Landroid/app/AlertDialog;
.source "WifiApDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field static final BUTTON_SUBMIT:I = -0x1

.field private static final MAX_SSID_LEN:I = 0x20

.field public static final OPEN_INDEX:I = 0x0

.field public static final WPA2_INDEX:I = 0x1


# instance fields
.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPassword:Landroid/widget/EditText;

.field private mSecurityTypeIndex:I

.field private mSsid:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private ssidTemp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->ssidTemp:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 73
    iput-object p3, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 74
    if-eqz p3, :cond_0

    .line 75
    invoke-static {p3}, Lcom/android/settings_ex/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 77
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wifi/WifiApDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiApDialog;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/wifi/WifiApDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiApDialog;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->ssidTemp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings_ex/wifi/WifiApDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiApDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->ssidTemp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings_ex/wifi/WifiApDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiApDialog;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApDialog;->validate()V

    return-void
.end method

.method public static getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .param p0, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 80
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const/4 v0, 0x1

    .line 83
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showSecurityFields()V
    .locals 2

    .prologue
    const v1, 0x7f0f0153

    .line 254
    iget v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-nez v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 259
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private validate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 215
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_2

    .line 217
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/WifiApDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 221
    :goto_0
    return-void

    .line 219
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/WifiApDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApDialog;->validate()V

    .line 239
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 235
    return-void
.end method

.method public getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 88
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 95
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 97
    iget v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurityTypeIndex:I

    packed-switch v2, :pswitch_data_0

    .line 111
    const/4 v0, 0x0

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    :goto_0
    return-object v0

    .line 99
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :pswitch_0
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 103
    :pswitch_1
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 104
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 105
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "password":Ljava/lang/String;
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 97
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
    .line 224
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    check-cast p1, Landroid/widget/CheckBox;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x90

    :goto_0
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 228
    return-void

    .line 224
    :cond_0
    const/16 v0, 0x80

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 117
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiApDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040083

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    .line 118
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0f0152

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 120
    .local v1, "mSecurity":Landroid/widget/Spinner;
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/WifiApDialog;->setView(Landroid/view/View;)V

    .line 121
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/wifi/WifiApDialog;->setInverseBackgroundForced(Z)V

    .line 123
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 125
    .local v0, "context":Landroid/content/Context;
    const v2, 0x7f090410

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/WifiApDialog;->setTitle(I)V

    .line 126
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0f00f4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0f0151

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    .line 128
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0f014e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    .line 130
    const/4 v2, -0x1

    const v3, 0x7f0903c2

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/settings_ex/wifi/WifiApDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 132
    const/4 v2, -0x2

    const v3, 0x7f0903c4

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/settings_ex/wifi/WifiApDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 135
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_0

    .line 136
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 138
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    .line 139
    iget v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurityTypeIndex:I

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 140
    iget v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-ne v2, v5, :cond_0

    .line 141
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 156
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    new-instance v3, Lcom/android/settings_ex/wifi/WifiApDialog$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/wifi/WifiApDialog$1;-><init>(Lcom/android/settings_ex/wifi/WifiApDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 203
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 204
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0f012b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 208
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 210
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApDialog;->showSecurityFields()V

    .line 211
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApDialog;->validate()V

    .line 212
    return-void
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
    .line 244
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iput p3, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 245
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApDialog;->showSecurityFields()V

    .line 246
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApDialog;->validate()V

    .line 247
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
    .line 251
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
    .line 231
    return-void
.end method
