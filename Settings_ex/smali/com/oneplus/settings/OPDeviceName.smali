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

.field private static mDeviceName:Landroid/widget/EditText;

.field private static mOKView:Landroid/widget/TextView;

.field private static mView:Landroid/view/View;


# instance fields
.field private nameTemp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/OPDeviceName;->nameTemp:Ljava/lang/String;

    .line 243
    return-void
.end method

.method static synthetic access$000()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/oneplus/settings/OPDeviceName;->mDeviceName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/OPDeviceName;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/OPDeviceName;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oneplus/settings/OPDeviceName;->nameTemp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/oneplus/settings/OPDeviceName;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/OPDeviceName;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/oneplus/settings/OPDeviceName;->nameTemp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/oneplus/settings/OPDeviceName;->mOKView:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 143
    .local v3, "id":I
    const v4, 0x7f0f010d

    if-ne v3, v4, :cond_0

    .line 145
    sget-object v4, Lcom/oneplus/settings/OPDeviceName;->mDeviceName:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "dn":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    .line 148
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 150
    .local v0, "cur":C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v4, 0x2d

    if-eq v0, v4, :cond_1

    const/16 v4, 0x5f

    if-eq v0, v4, :cond_1

    const/16 v4, 0x20

    if-eq v0, v4, :cond_1

    .line 152
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceName;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f090402

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 165
    .end local v0    # "cur":C
    .end local v1    # "dn":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_0
    :goto_1
    return-void

    .line 148
    .restart local v0    # "cur":C
    .restart local v1    # "dn":Ljava/lang/String;
    .restart local v2    # "i":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 159
    .end local v0    # "cur":C
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceName;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "oem_oneplus_devicename"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 163
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceName;->finish()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceName;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 49
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 169
    const v0, 0x7f0900ed

    .line 170
    .local v0, "textId":I
    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 174
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 175
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 56
    const v2, 0x7f040067

    invoke-virtual {p1, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    sput-object v2, Lcom/oneplus/settings/OPDeviceName;->mView:Landroid/view/View;

    .line 57
    sget-object v2, Lcom/oneplus/settings/OPDeviceName;->mView:Landroid/view/View;

    const v3, 0x7f0f010b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    sput-object v2, Lcom/oneplus/settings/OPDeviceName;->mDeviceName:Landroid/widget/EditText;

    .line 62
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceName;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_oneplus_modified_devicename"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "modified":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceName;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_oneplus_devicename"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "mOPDeviceName":Ljava/lang/String;
    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    const-string v2, "oneplus"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ONE E1001"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ONE E1003"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ONE E1005"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    :cond_0
    const-string v2, "ro.display.series"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceName;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_oneplus_devicename"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 70
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceName;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_oneplus_modified_devicename"

    const-string v4, "1"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 75
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x20

    if-le v2, v3, :cond_2

    .line 76
    const/16 v2, 0x1f

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceName;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_oneplus_devicename"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 80
    :cond_2
    sget-object v2, Lcom/oneplus/settings/OPDeviceName;->mDeviceName:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 81
    if-eqz v0, :cond_3

    .line 82
    sget-object v2, Lcom/oneplus/settings/OPDeviceName;->mDeviceName:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 83
    :cond_3
    sget-object v2, Lcom/oneplus/settings/OPDeviceName;->mDeviceName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->selectAll()V

    .line 84
    sget-object v2, Lcom/oneplus/settings/OPDeviceName;->mDeviceName:Landroid/widget/EditText;

    new-instance v3, Lcom/oneplus/settings/OPDeviceName$1;

    invoke-direct {v3, p0}, Lcom/oneplus/settings/OPDeviceName$1;-><init>(Lcom/oneplus/settings/OPDeviceName;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 132
    sget-object v2, Lcom/oneplus/settings/OPDeviceName;->mView:Landroid/view/View;

    const v3, 0x7f0f010d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/oneplus/settings/OPDeviceName;->mOKView:Landroid/widget/TextView;

    .line 133
    sget-object v2, Lcom/oneplus/settings/OPDeviceName;->mOKView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/OPDeviceName;->setHasOptionsMenu(Z)V

    .line 136
    sget-object v2, Lcom/oneplus/settings/OPDeviceName;->mView:Landroid/view/View;

    return-object v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    .line 179
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 213
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    :goto_0
    return v6

    .line 181
    :pswitch_0
    sget-object v7, Lcom/oneplus/settings/OPDeviceName;->mDeviceName:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "dn":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_3

    .line 183
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 184
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 185
    .local v1, "cur":C
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-nez v7, :cond_0

    const/16 v7, 0x2d

    if-eq v1, v7, :cond_0

    const/16 v7, 0x5f

    if-eq v1, v7, :cond_0

    const/16 v7, 0x20

    if-eq v1, v7, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceName;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f090402

    invoke-static {v7, v8, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 183
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 194
    .end local v1    # "cur":C
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceName;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "oem_oneplus_devicename"

    invoke-static {v7, v8, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 195
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceName;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "oem_oneplus_modified_devicename"

    const-string v9, "1"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 197
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 198
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_2

    .line 199
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z

    .line 203
    :cond_2
    const-string v7, "wifip2p"

    invoke-virtual {p0, v7}, Lcom/oneplus/settings/OPDeviceName;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 204
    .local v5, "mWifiP2pManager":Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceName;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceName;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-virtual {v5, v7, v8, v10}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v4

    .line 205
    .local v4, "mChannel":Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    if-eqz v5, :cond_3

    .line 206
    invoke-virtual {v5, v4, v2, v10}, Landroid/net/wifi/p2p/WifiP2pManager;->setDeviceName(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 209
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v3    # "i":I
    .end local v4    # "mChannel":Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .end local v5    # "mWifiP2pManager":Landroid/net/wifi/p2p/WifiP2pManager;
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceName;->finish()V

    goto/16 :goto_0

    .line 179
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 240
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 241
    return-void
.end method
