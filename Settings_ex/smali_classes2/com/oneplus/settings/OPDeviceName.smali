.class public Lcom/oneplus/settings/OPDeviceName;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OPDeviceName.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/OPDeviceName$Utf8ByteLengthFilter;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_NAME_MAX_LENGTH_BYTES:I = 0x20

.field private static devicename:Ljava/lang/String;

.field private static mDeviceName:Lcom/oneplus/lib/widget/OPEditText;

.field private static mOKView:Landroid/widget/TextView;

.field private static mView:Landroid/view/View;


# instance fields
.field private mOKMenuItem:Landroid/view/MenuItem;

.field private nameTemp:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Lcom/oneplus/lib/widget/OPEditText;
    .locals 1

    sget-object v0, Lcom/oneplus/settings/OPDeviceName;->mDeviceName:Lcom/oneplus/lib/widget/OPEditText;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/settings/OPDeviceName;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/OPDeviceName;->mOKMenuItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic -get2()Landroid/widget/TextView;
    .locals 1

    sget-object v0, Lcom/oneplus/settings/OPDeviceName;->mOKView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/oneplus/settings/OPDeviceName;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/OPDeviceName;->nameTemp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/oneplus/settings/OPDeviceName;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/OPDeviceName;->nameTemp:Ljava/lang/String;

    return-object p1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/OPDeviceName;->nameTemp:Ljava/lang/String;

    .line 38
    return-void
.end method

.method private isNotEmojiCharacter(C)Z
    .locals 3
    .param p1, "codePoint"    # C

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 189
    if-eqz p1, :cond_0

    const/16 v2, 0x9

    if-ne p1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v2, 0xa

    if-eq p1, v2, :cond_0

    .line 190
    const/16 v2, 0xd

    if-eq p1, v2, :cond_0

    .line 191
    const/16 v2, 0x20

    if-lt p1, v2, :cond_2

    const v2, 0xd7ff

    if-le p1, v2, :cond_0

    .line 192
    :cond_2
    const v2, 0xe000

    if-lt p1, v2, :cond_3

    const v2, 0xfffd

    if-le p1, v2, :cond_0

    .line 193
    :cond_3
    const/high16 v2, 0x10000

    if-lt p1, v2, :cond_4

    const v2, 0x10ffff

    if-le p1, v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 333
    const/16 v0, 0x270f

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 165
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 166
    .local v1, "id":I
    const v2, 0x7f1101f0

    if-ne v1, v2, :cond_1

    .line 168
    sget-object v2, Lcom/oneplus/settings/OPDeviceName;->mDeviceName:Lcom/oneplus/lib/widget/OPEditText;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/OPEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "dn":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceName;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 172
    const-string/jumbo v3, "oem_oneplus_devicename"

    .line 171
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceName;->finish()V

    .line 163
    .end local v0    # "dn":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPDeviceName;->setRetainInstance(Z)V

    .line 54
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceName;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 55
    const/4 v1, 0x5

    .line 54
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 50
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 181
    const v0, 0x7f0e0486

    .line 182
    .local v0, "textId":I
    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/OPDeviceName;->mOKMenuItem:Landroid/view/MenuItem;

    .line 183
    iget-object v1, p0, Lcom/oneplus/settings/OPDeviceName;->mOKMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 185
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 180
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 64
    const v2, 0x7f0400d6

    invoke-virtual {p1, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    sput-object v2, Lcom/oneplus/settings/OPDeviceName;->mView:Landroid/view/View;

    .line 65
    sget-object v2, Lcom/oneplus/settings/OPDeviceName;->mView:Landroid/view/View;

    const v3, 0x7f1101ee

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/OPEditText;

    sput-object v2, Lcom/oneplus/settings/OPDeviceName;->mDeviceName:Lcom/oneplus/lib/widget/OPEditText;

    .line 71
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceName;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 72
    const-string/jumbo v3, "oem_oneplus_modified_devicename"

    .line 70
    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "modified":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceName;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "oem_oneplus_devicename"

    .line 73
    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "mOPDeviceName":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 76
    if-eqz v0, :cond_0

    const-string/jumbo v2, "oneplus"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 77
    const-string/jumbo v2, "ONE E1001"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 76
    if-nez v2, :cond_0

    .line 78
    const-string/jumbo v2, "ONE E1003"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 76
    if-nez v2, :cond_0

    .line 79
    const-string/jumbo v2, "ONE E1005"

    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 75
    if-eqz v2, :cond_1

    .line 80
    :cond_0
    const-string/jumbo v2, "ro.display.series"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceName;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 82
    const-string/jumbo v3, "oem_oneplus_devicename"

    .line 81
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 84
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceName;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 85
    const-string/jumbo v3, "oem_oneplus_modified_devicename"

    .line 86
    const-string/jumbo v4, "1"

    .line 84
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 89
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x20

    if-le v2, v3, :cond_2

    .line 90
    const/16 v2, 0x1f

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceName;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 92
    const-string/jumbo v3, "oem_oneplus_devicename"

    .line 91
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 96
    :cond_2
    sget-object v2, Lcom/oneplus/settings/OPDeviceName;->mDeviceName:Lcom/oneplus/lib/widget/OPEditText;

    invoke-virtual {v2, v0}, Lcom/oneplus/lib/widget/OPEditText;->setText(Ljava/lang/CharSequence;)V

    .line 97
    if-eqz v0, :cond_3

    .line 98
    sget-object v2, Lcom/oneplus/settings/OPDeviceName;->mDeviceName:Lcom/oneplus/lib/widget/OPEditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/OPEditText;->setSelection(I)V

    .line 99
    :cond_3
    sget-object v2, Lcom/oneplus/settings/OPDeviceName;->mDeviceName:Lcom/oneplus/lib/widget/OPEditText;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/OPEditText;->selectAll()V

    .line 100
    sget-object v2, Lcom/oneplus/settings/OPDeviceName;->mDeviceName:Lcom/oneplus/lib/widget/OPEditText;

    new-instance v3, Lcom/oneplus/settings/OPDeviceName$1;

    invoke-direct {v3, p0}, Lcom/oneplus/settings/OPDeviceName$1;-><init>(Lcom/oneplus/settings/OPDeviceName;)V

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/OPEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 155
    sget-object v2, Lcom/oneplus/settings/OPDeviceName;->mView:Landroid/view/View;

    const v3, 0x7f1101f0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/oneplus/settings/OPDeviceName;->mOKView:Landroid/widget/TextView;

    .line 156
    sget-object v2, Lcom/oneplus/settings/OPDeviceName;->mOKView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/OPDeviceName;->setHasOptionsMenu(Z)V

    .line 159
    sget-object v2, Lcom/oneplus/settings/OPDeviceName;->mView:Landroid/view/View;

    return-object v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 198
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 246
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    return v6

    .line 200
    :sswitch_0
    sget-object v6, Lcom/oneplus/settings/OPDeviceName;->mDeviceName:Lcom/oneplus/lib/widget/OPEditText;

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/OPEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "dn":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    .line 205
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 206
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 208
    .local v1, "cur":C
    invoke-direct {p0, v1}, Lcom/oneplus/settings/OPDeviceName;->isNotEmojiCharacter(C)Z

    move-result v6

    if-nez v6, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceName;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0e0781

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 210
    return v10

    .line 205
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 217
    .end local v1    # "cur":C
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceName;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 218
    const-string/jumbo v7, "oem_oneplus_devicename"

    .line 217
    invoke-static {v6, v7, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 219
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceName;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 221
    const-string/jumbo v7, "oem_oneplus_modified_devicename"

    const-string/jumbo v8, "1"

    .line 219
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 222
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 223
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_2

    .line 224
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z

    .line 228
    :cond_2
    const-string/jumbo v6, "wifip2p"

    invoke-virtual {p0, v6}, Lcom/oneplus/settings/OPDeviceName;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 229
    .local v5, "mWifiP2pManager":Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceName;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 230
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceName;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    .line 229
    invoke-virtual {v5, v6, v7, v9}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v4

    .line 231
    .local v4, "mChannel":Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    if-eqz v5, :cond_3

    .line 232
    invoke-virtual {v5, v4, v2, v9}, Landroid/net/wifi/p2p/WifiP2pManager;->setDeviceName(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 235
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v3    # "i":I
    .end local v4    # "mChannel":Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .end local v5    # "mWifiP2pManager":Landroid/net/wifi/p2p/WifiP2pManager;
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceName;->finish()V

    .line 236
    return v10

    .line 240
    .end local v2    # "dn":Ljava/lang/String;
    :sswitch_1
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceName;->finish()V

    .line 241
    return v10

    .line 198
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 265
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 264
    return-void
.end method
