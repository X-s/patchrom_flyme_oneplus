.class public Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;
.implements Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;


# static fields
.field private static final DBG:Z = false

.field private static final DIALOG_CANCEL_CONNECT:I = 0x2

.field private static final DIALOG_DELETE_GROUP:I = 0x4

.field private static final DIALOG_DISCONNECT:I = 0x1

.field private static final DIALOG_RENAME:I = 0x3

.field private static final MAX_SAVED_DEVICE_NAME_LEN:I = 0x1f

.field private static final MENU_ID_RENAME:I = 0x2

.field private static final MENU_ID_SEARCH:I = 0x1

.field private static final SAVE_DEVICE_NAME:Ljava/lang/String; = "DEV_NAME"

.field private static final SAVE_DIALOG_PEER:Ljava/lang/String; = "PEER_STATE"

.field private static final SAVE_SELECTED_GROUP:Ljava/lang/String; = "GROUP_NAME"

.field private static final TAG:Ljava/lang/String; = "WifiP2pSettings"


# instance fields
.field private mCancelConnectListener:Landroid/content/DialogInterface$OnClickListener;

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mConnectedDevices:I

.field private mDeleteGroupListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDeviceNameText:Landroid/widget/EditText;

.field private mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mLastGroupFormed:Z

.field private mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private mPeersGroup:Landroid/preference/PreferenceGroup;

.field private mPersistentGroup:Landroid/preference/PreferenceGroup;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRenameListener:Landroid/content/DialogInterface$OnClickListener;

.field private mSavedDeviceName:Ljava/lang/String;

.field private mSelectedGroup:Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;

.field private mSelectedGroupName:Ljava/lang/String;

.field private mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

.field private mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mThisDevicePref:Landroid/preference/Preference;

.field private mWifiP2pEnabled:Z

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWifiP2pSearching:Z

.field private nameTemp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mLastGroupFormed:Z

    .line 110
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->nameTemp:Ljava/lang/String;

    .line 116
    new-instance v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 167
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->handleP2pStateChanged()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedGroup:Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;)Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedGroup:Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->nameTemp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->nameTemp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Landroid/net/wifi/p2p/WifiP2pDeviceList;)Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->handlePeersChanged()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mLastGroupFormed:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mLastGroupFormed:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->startSearch()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->updateDevicePref()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->updateSearchMenu(Z)V

    return-void
.end method

.method private handleP2pStateChanged()V
    .locals 2

    .prologue
    .line 628
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->updateSearchMenu(Z)V

    .line 629
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/preference/Preference;

    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pEnabled:Z

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 630
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceGroup;

    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pEnabled:Z

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 631
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPersistentGroup:Landroid/preference/PreferenceGroup;

    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pEnabled:Z

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 632
    return-void
.end method

.method private handlePeersChanged()V
    .locals 5

    .prologue
    .line 552
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 554
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mConnectedDevices:I

    .line 556
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 558
    .local v1, "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceGroup;

    new-instance v3, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 559
    iget v2, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mConnectedDevices:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mConnectedDevices:I

    goto :goto_0

    .line 562
    .end local v1    # "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_1
    return-void
.end method

.method private startSearch()V
    .locals 3

    .prologue
    .line 641
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pSearching:Z

    if-nez v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$8;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$8;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 650
    :cond_0
    return-void
.end method

.method private updateDevicePref()V
    .locals 5

    .prologue
    .line 653
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v2, :cond_2

    .line 657
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_oneplus_modified_devicename"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 659
    .local v1, "modified":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_oneplus_devicename"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 661
    .local v0, "mDeviceName":Ljava/lang/String;
    if-nez v1, :cond_3

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

    if-eqz v2, :cond_3

    .line 663
    :cond_0
    const-string v2, "ro.display.series"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 664
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_oneplus_devicename"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 665
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_oneplus_modified_devicename"

    const-string v4, "1"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 673
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/preference/Preference;

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 674
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 675
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->setDeviceName(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 679
    .end local v0    # "mDeviceName":Ljava/lang/String;
    .end local v1    # "modified":Ljava/lang/String;
    :cond_2
    return-void

    .line 667
    .restart local v0    # "mDeviceName":Ljava/lang/String;
    .restart local v1    # "modified":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x20

    if-le v2, v3, :cond_1

    .line 668
    const/4 v2, 0x0

    const/16 v3, 0x1f

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 669
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_oneplus_devicename"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private updateSearchMenu(Z)V
    .locals 1
    .param p1, "searching"    # Z

    .prologue
    .line 635
    iput-boolean p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pSearching:Z

    .line 636
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 637
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 638
    :cond_0
    return-void
.end method

.method private utfToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "utf"    # Ljava/lang/String;

    .prologue
    .line 565
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 566
    .local v6, "utfBytes":[B
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 567
    .local v0, "decodedBytes":Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    .line 568
    .local v4, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v8, v6

    if-ge v1, v8, :cond_1

    .line 569
    aget-byte v8, v6, v1

    const/16 v9, 0x5c

    if-ne v8, v9, :cond_0

    add-int/lit8 v8, v1, 0x1

    aget-byte v8, v6, v8

    const/16 v9, 0x78

    if-ne v8, v9, :cond_0

    .line 570
    add-int/lit8 v8, v1, 0x2

    add-int/lit8 v9, v1, 0x4

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    .line 571
    .local v7, "value":I
    int-to-byte v8, v7

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 572
    add-int/lit8 v1, v1, 0x3

    .line 576
    .end local v7    # "value":I
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 568
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 574
    :cond_0
    aget-byte v8, v6, v1

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 579
    :cond_1
    :try_start_0
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 580
    .local v3, "sink":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    if-ge v2, v4, :cond_2

    .line 581
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 580
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 583
    :cond_2
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-direct {v8, v9, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    .end local v2    # "j":I
    .end local v3    # "sink":Ljava/nio/ByteBuffer;
    :goto_3
    return-object v8

    .line 584
    :catch_0
    move-exception v5

    .line 585
    .local v5, "uee":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 587
    const/4 v8, 0x0

    goto :goto_3
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 171
    const v3, 0x7f060076

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->addPreferencesFromResource(I)V

    .line 173
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.p2p.PERSISTENT_GROUPS_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 181
    .local v0, "activity":Landroid/app/Activity;
    const-string v3, "wifip2p"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 182
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v3, :cond_4

    .line 183
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v3, v0, v4, v7}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 184
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v3, :cond_0

    .line 186
    const-string v3, "WifiP2pSettings"

    const-string v4, "Failed to set up connection with wifi p2p service"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iput-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 193
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    const-string v3, "PEER_STATE"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 194
    const-string v3, "PEER_STATE"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 195
    .local v1, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    new-instance v3, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    iput-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    .line 197
    .end local v1    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_1
    if-eqz p1, :cond_2

    const-string v3, "DEV_NAME"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 198
    const-string v3, "DEV_NAME"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSavedDeviceName:Ljava/lang/String;

    .line 200
    :cond_2
    if-eqz p1, :cond_3

    const-string v3, "GROUP_NAME"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 201
    const-string v3, "GROUP_NAME"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedGroupName:Ljava/lang/String;

    .line 204
    :cond_3
    new-instance v3, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$2;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$2;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V

    iput-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mRenameListener:Landroid/content/DialogInterface$OnClickListener;

    .line 227
    new-instance v3, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$3;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$3;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V

    iput-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

    .line 246
    new-instance v3, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$4;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$4;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V

    iput-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mCancelConnectListener:Landroid/content/DialogInterface$OnClickListener;

    .line 266
    new-instance v3, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$5;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$5;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V

    iput-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeleteGroupListener:Landroid/content/DialogInterface$OnClickListener;

    .line 297
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->setHasOptionsMenu(Z)V

    .line 299
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 300
    .local v2, "preferenceScreen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 301
    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 303
    new-instance v3, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/preference/Preference;

    .line 304
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 305
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 306
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 308
    new-instance v3, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceGroup;

    .line 309
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceGroup;

    const v4, 0x7f0903ff

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 310
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 312
    new-instance v3, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPersistentGroup:Landroid/preference/PreferenceGroup;

    .line 313
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPersistentGroup:Landroid/preference/PreferenceGroup;

    const v4, 0x7f090400

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 314
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPersistentGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 316
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 317
    return-void

    .line 190
    .end local v2    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    :cond_4
    const-string v3, "WifiP2pSettings"

    const-string v4, "mWifiP2pManager is null !"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 13
    .param p1, "id"    # I

    .prologue
    const v12, 0x7f09062a

    const v11, 0x7f090629

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 433
    if-ne p1, v10, :cond_3

    .line 434
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v6, v6, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v6, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v6, v6, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 438
    .local v0, "deviceName":Ljava/lang/String;
    :goto_0
    iget v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mConnectedDevices:I

    if-le v6, v10, :cond_2

    .line 439
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f090405

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v9

    iget v9, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mConnectedDevices:I

    add-int/lit8 v9, v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 444
    .local v3, "msg":Ljava/lang/String;
    :goto_1
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f090403

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 535
    .end local v0    # "deviceName":Ljava/lang/String;
    .end local v3    # "msg":Ljava/lang/String;
    :cond_0
    :goto_2
    return-object v1

    .line 434
    :cond_1
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v6, v6, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    goto :goto_0

    .line 442
    .restart local v0    # "deviceName":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f090404

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v0, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "msg":Ljava/lang/String;
    goto :goto_1

    .line 451
    .end local v0    # "deviceName":Ljava/lang/String;
    .end local v3    # "msg":Ljava/lang/String;
    :cond_3
    const/4 v6, 0x2

    if-ne p1, v6, :cond_5

    .line 452
    const v4, 0x7f090407

    .line 453
    .local v4, "stringId":I
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v6, v6, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v6, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v6, v6, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 457
    .restart local v0    # "deviceName":Ljava/lang/String;
    :goto_3
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f090406

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v0, v8, v9

    invoke-virtual {v7, v4, v8}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mCancelConnectListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 463
    .local v1, "dialog":Landroid/app/AlertDialog;
    goto :goto_2

    .line 453
    .end local v0    # "deviceName":Ljava/lang/String;
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    :cond_4
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v6, v6, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    goto :goto_3

    .line 464
    .end local v4    # "stringId":I
    :cond_5
    const/4 v6, 0x3

    if-ne p1, v6, :cond_8

    .line 467
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 469
    .local v2, "layoutInflater":Landroid/view/LayoutInflater;
    const v6, 0x7f040040

    invoke-virtual {v2, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 470
    .local v5, "view":Landroid/view/View;
    const v6, 0x7f0f00a4

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    .line 473
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    new-instance v7, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$7;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$7;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 507
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSavedDeviceName:Ljava/lang/String;

    if-eqz v6, :cond_7

    .line 508
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSavedDeviceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 509
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSavedDeviceName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    .line 514
    :cond_6
    :goto_4
    iput-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSavedDeviceName:Ljava/lang/String;

    .line 515
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0903fe

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mRenameListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 522
    .restart local v1    # "dialog":Landroid/app/AlertDialog;
    goto/16 :goto_2

    .line 510
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    :cond_7
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v6, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 511
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v7, v7, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 512
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v7, v7, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v9, v7}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_4

    .line 524
    .end local v2    # "layoutInflater":Landroid/view/LayoutInflater;
    .end local v5    # "view":Landroid/view/View;
    :cond_8
    const/4 v6, 0x4

    if-ne p1, v6, :cond_0

    .line 525
    const v4, 0x7f090408

    .line 527
    .restart local v4    # "stringId":I
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeleteGroupListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeleteGroupListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 533
    .restart local v1    # "dialog":Landroid/app/AlertDialog;
    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 339
    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pSearching:Z

    if-eqz v1, :cond_0

    const v0, 0x7f0903fd

    .line 341
    .local v0, "textId":I
    :goto_0
    invoke-interface {p1, v3, v4, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pEnabled:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 344
    const/4 v1, 0x2

    const v2, 0x7f0903fe

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pEnabled:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 347
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 348
    return-void

    .line 339
    .end local v0    # "textId":I
    :cond_0
    const v0, 0x7f0903fc

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x1

    .line 371
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 382
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 373
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->startSearch()V

    move v0, v6

    .line 374
    goto :goto_0

    .line 377
    :pswitch_1
    const-string v2, "com.oneplus.settings.OPDeviceName"

    const v3, 0x7f090b66

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    move v0, v6

    .line 380
    goto :goto_0

    .line 371
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 330
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 331
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 334
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 335
    return-void
.end method

.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 0
    .param p1, "peers"    # Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .prologue
    .line 623
    iput-object p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 624
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->handlePeersChanged()V

    .line 625
    return-void
.end method

.method public onPersistentGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroupList;)V
    .locals 9
    .param p1, "groups"    # Landroid/net/wifi/p2p/WifiP2pGroupList;

    .prologue
    .line 591
    const-string v0, "\\x"

    .line 592
    .local v0, "cs":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPersistentGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 594
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getGroupList()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 595
    .local v1, "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v3

    .line 596
    .local v3, "networkName":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 597
    invoke-direct {p0, v3}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->utfToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 598
    .local v4, "string":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 599
    invoke-virtual {v1, v4}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkName(Ljava/lang/String;)V

    .line 603
    .end local v4    # "string":Ljava/lang/String;
    :cond_1
    new-instance v5, Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    .line 604
    .local v5, "wppg":Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPersistentGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 605
    invoke-virtual {v5}, Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;->getGroupName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedGroupName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 607
    iput-object v5, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedGroup:Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;

    .line 608
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedGroupName:Ljava/lang/String;

    goto :goto_0

    .line 611
    .end local v1    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    .end local v3    # "networkName":Ljava/lang/String;
    .end local v5    # "wppg":Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;
    :cond_2
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedGroupName:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 616
    const-string v6, "WifiP2pSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " Selected group "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedGroupName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " disappered on next query "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_3
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 387
    instance-of v2, p2, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    if-eqz v2, :cond_6

    move-object v2, p2

    .line 388
    check-cast v2, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    .line 389
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v2, :cond_1

    .line 390
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    .line 428
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    .line 391
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-ne v2, v3, :cond_2

    .line 392
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    goto :goto_0

    .line 394
    :cond_2
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 395
    .local v0, "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 397
    const-string v2, "wifidirect.wps"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 399
    .local v1, "forceWps":I
    if-eq v1, v4, :cond_3

    .line 400
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v1, v2, Landroid/net/wifi/WpsInfo;->setup:I

    .line 411
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v4, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$6;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$6;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v2, v3, v0, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0

    .line 402
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsPbcSupported()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 403
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v3, 0x0

    iput v3, v2, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1

    .line 404
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsKeypadSupported()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 405
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v5, v2, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1

    .line 407
    :cond_5
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v3, v2, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1

    .line 424
    .end local v0    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    .end local v1    # "forceWps":I
    :cond_6
    instance-of v2, p2, Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;

    if-eqz v2, :cond_0

    move-object v2, p2

    .line 425
    check-cast v2, Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedGroup:Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;

    .line 426
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 352
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 353
    .local v1, "searchMenu":Landroid/view/MenuItem;
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 354
    .local v0, "renameMenu":Landroid/view/MenuItem;
    iget-boolean v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pEnabled:Z

    if-eqz v2, :cond_0

    .line 355
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 356
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 362
    :goto_0
    iget-boolean v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pSearching:Z

    if-eqz v2, :cond_1

    .line 363
    const v2, 0x7f0903fd

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 367
    :goto_1
    return-void

    .line 358
    :cond_0
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 359
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 365
    :cond_1
    const v2, 0x7f0903fc

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 321
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 322
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 323
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 326
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    if-eqz v0, :cond_0

    .line 541
    const-string v0, "PEER_STATE"

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v1, v1, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 544
    const-string v0, "DEV_NAME"

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedGroup:Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;

    if-eqz v0, :cond_2

    .line 547
    const-string v0, "GROUP_NAME"

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedGroup:Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;->getGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    :cond_2
    return-void
.end method
