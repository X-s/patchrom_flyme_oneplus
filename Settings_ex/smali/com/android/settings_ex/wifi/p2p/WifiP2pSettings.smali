.class public Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;


# static fields
.field private static final DBG:Z = false

.field private static final DIALOG_CANCEL_CONNECT:I = 0x2

.field private static final DIALOG_DELETE_GROUP:I = 0x4

.field private static final DIALOG_DISCONNECT:I = 0x1

.field private static final DIALOG_RENAME:I = 0x3

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

.field private mStaDisconnectedScanIntervalWhenP2pConnected:I

.field private mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mThisDevicePref:Landroid/preference/Preference;

.field private mWifiP2pEnabled:Z

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWifiP2pSearching:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 70
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mLastGroupFormed:Z

    .line 101
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 105
    const v0, 0x2bf20

    iput v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mStaDisconnectedScanIntervalWhenP2pConnected:I

    .line 107
    new-instance v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 158
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->handleP2pStateChanged()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedGroup:Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;)Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedGroup:Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Landroid/net/wifi/p2p/WifiP2pDeviceList;)Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->handlePeersChanged()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mLastGroupFormed:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mLastGroupFormed:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->startSearch()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->updateDevicePref()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->updateSearchMenu(Z)V

    return-void
.end method

.method private handleP2pStateChanged()V
    .locals 2

    .prologue
    .line 563
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->updateSearchMenu(Z)V

    .line 564
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/preference/Preference;

    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pEnabled:Z

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 565
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceGroup;

    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pEnabled:Z

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 566
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPersistentGroup:Landroid/preference/PreferenceGroup;

    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pEnabled:Z

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 567
    return-void
.end method

.method private handlePeersChanged()V
    .locals 5

    .prologue
    .line 520
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 522
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mConnectedDevices:I

    .line 524
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

    .line 526
    .local v1, "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceGroup;

    new-instance v3, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 527
    iget v2, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mConnectedDevices:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mConnectedDevices:I

    goto :goto_0

    .line 530
    .end local v1    # "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_1
    return-void
.end method

.method private startSearch()V
    .locals 3

    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pSearching:Z

    if-nez v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$7;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$7;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 585
    :cond_0
    return-void
.end method

.method private updateDevicePref()V
    .locals 5

    .prologue
    .line 588
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v2, :cond_2

    .line 592
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_oneplus_modified_devicename"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 594
    .local v1, "modified":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_oneplus_devicename"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 596
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

    .line 598
    :cond_0
    const-string v2, "ro.display.series"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 599
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_oneplus_devicename"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 600
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_oneplus_modified_devicename"

    const-string v4, "1"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 608
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/preference/Preference;

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 609
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 610
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->setDeviceName(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 614
    .end local v0    # "mDeviceName":Ljava/lang/String;
    .end local v1    # "modified":Ljava/lang/String;
    :cond_2
    return-void

    .line 602
    .restart local v0    # "mDeviceName":Ljava/lang/String;
    .restart local v1    # "modified":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x20

    if-le v2, v3, :cond_1

    .line 603
    const/4 v2, 0x0

    const/16 v3, 0x1f

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 604
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
    .line 570
    iput-boolean p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pSearching:Z

    .line 571
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 572
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 573
    :cond_0
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 503
    const/16 v0, 0x6d

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 162
    const v3, 0x7f080086

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->addPreferencesFromResource(I)V

    .line 164
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.p2p.PERSISTENT_GROUPS_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 172
    .local v0, "activity":Landroid/app/Activity;
    const-string v3, "wifip2p"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 173
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v3, :cond_4

    .line 174
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v3, v0, v4, v7}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 175
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v3, :cond_0

    .line 177
    const-string v3, "WifiP2pSettings"

    const-string v4, "Failed to set up connection with wifi p2p service"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iput-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 184
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    const-string v3, "PEER_STATE"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 185
    const-string v3, "PEER_STATE"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 186
    .local v1, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    new-instance v3, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    iput-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    .line 188
    .end local v1    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_1
    if-eqz p1, :cond_2

    const-string v3, "DEV_NAME"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 189
    const-string v3, "DEV_NAME"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSavedDeviceName:Ljava/lang/String;

    .line 191
    :cond_2
    if-eqz p1, :cond_3

    const-string v3, "GROUP_NAME"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 192
    const-string v3, "GROUP_NAME"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedGroupName:Ljava/lang/String;

    .line 195
    :cond_3
    new-instance v3, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$2;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$2;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V

    iput-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mRenameListener:Landroid/content/DialogInterface$OnClickListener;

    .line 231
    new-instance v3, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$3;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$3;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V

    iput-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

    .line 250
    new-instance v3, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$4;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$4;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V

    iput-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mCancelConnectListener:Landroid/content/DialogInterface$OnClickListener;

    .line 270
    new-instance v3, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$5;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$5;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V

    iput-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeleteGroupListener:Landroid/content/DialogInterface$OnClickListener;

    .line 301
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->setHasOptionsMenu(Z)V

    .line 303
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 304
    .local v2, "preferenceScreen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 305
    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 307
    new-instance v3, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/preference/Preference;

    .line 308
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 309
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 310
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 312
    new-instance v3, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceGroup;

    .line 313
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceGroup;

    const v4, 0x7f0c0571

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 314
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 316
    new-instance v3, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPersistentGroup:Landroid/preference/PreferenceGroup;

    .line 317
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPersistentGroup:Landroid/preference/PreferenceGroup;

    const v4, 0x7f0c0572

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 318
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPersistentGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 319
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_scan_interval_p2p_connected_ms"

    iget v5, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mStaDisconnectedScanIntervalWhenP2pConnected:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 322
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 323
    return-void

    .line 181
    .end local v2    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    :cond_4
    const-string v3, "WifiP2pSettings"

    const-string v4, "mWifiP2pManager is null !"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 12
    .param p1, "id"    # I

    .prologue
    const v11, 0x7f0c07c8

    const v10, 0x7f0c07c7

    const/4 v1, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 439
    if-ne p1, v8, :cond_3

    .line 440
    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v4, v4, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v4, v4, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 444
    .local v0, "deviceName":Ljava/lang/String;
    :goto_0
    iget v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mConnectedDevices:I

    if-le v4, v8, :cond_2

    .line 445
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0c0577

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v9

    iget v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mConnectedDevices:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 450
    .local v2, "msg":Ljava/lang/String;
    :goto_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0c0575

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 498
    .end local v0    # "deviceName":Ljava/lang/String;
    .end local v2    # "msg":Ljava/lang/String;
    :cond_0
    :goto_2
    return-object v1

    .line 440
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v4, v4, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    goto :goto_0

    .line 448
    .restart local v0    # "deviceName":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0c0576

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "msg":Ljava/lang/String;
    goto :goto_1

    .line 457
    .end local v0    # "deviceName":Ljava/lang/String;
    .end local v2    # "msg":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x2

    if-ne p1, v4, :cond_5

    .line 458
    const v3, 0x7f0c0579

    .line 459
    .local v3, "stringId":I
    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v4, v4, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v4, v4, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 463
    .restart local v0    # "deviceName":Ljava/lang/String;
    :goto_3
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0c0578

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v9

    invoke-virtual {v5, v3, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mCancelConnectListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 469
    .local v1, "dialog":Landroid/app/AlertDialog;
    goto :goto_2

    .line 459
    .end local v0    # "deviceName":Ljava/lang/String;
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    :cond_4
    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v4, v4, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    goto :goto_3

    .line 470
    .end local v3    # "stringId":I
    :cond_5
    const/4 v4, 0x3

    if-ne p1, v4, :cond_8

    .line 471
    new-instance v4, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    .line 472
    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    new-array v5, v8, [Landroid/text/InputFilter;

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    const/16 v7, 0x1e

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v5, v9

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 473
    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSavedDeviceName:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 474
    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSavedDeviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 475
    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSavedDeviceName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 480
    :cond_6
    :goto_4
    iput-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSavedDeviceName:Ljava/lang/String;

    .line 481
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0c0570

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mRenameListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 487
    .restart local v1    # "dialog":Landroid/app/AlertDialog;
    goto/16 :goto_2

    .line 476
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    :cond_7
    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 477
    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 478
    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v9, v5}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_4

    .line 488
    :cond_8
    const/4 v4, 0x4

    if-ne p1, v4, :cond_0

    .line 489
    const v3, 0x7f0c057a

    .line 491
    .restart local v3    # "stringId":I
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeleteGroupListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeleteGroupListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 496
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

    .line 345
    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pSearching:Z

    if-eqz v1, :cond_0

    const v0, 0x7f0c056f

    .line 347
    .local v0, "textId":I
    :goto_0
    invoke-interface {p1, v3, v4, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pEnabled:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 350
    const/4 v1, 0x2

    const v2, 0x7f0c0570

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pEnabled:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 353
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 354
    return-void

    .line 345
    .end local v0    # "textId":I
    :cond_0
    const v0, 0x7f0c056e

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x1

    .line 377
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 388
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 379
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->startSearch()V

    move v0, v6

    .line 380
    goto :goto_0

    .line 383
    :pswitch_1
    const-string v2, "com.oneplus.settings.OPDeviceName"

    const v3, 0x7f0c01ca

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    move v0, v6

    .line 386
    goto :goto_0

    .line 377
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 336
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 337
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 340
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 341
    return-void
.end method

.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 0
    .param p1, "peers"    # Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .prologue
    .line 558
    iput-object p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 559
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->handlePeersChanged()V

    .line 560
    return-void
.end method

.method public onPersistentGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroupList;)V
    .locals 6
    .param p1, "groups"    # Landroid/net/wifi/p2p/WifiP2pGroupList;

    .prologue
    .line 534
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPersistentGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 536
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getGroupList()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 538
    .local v0, "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    new-instance v2, Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    .line 539
    .local v2, "wppg":Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPersistentGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 540
    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;->getGroupName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedGroupName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 542
    iput-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedGroup:Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;

    .line 543
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedGroupName:Ljava/lang/String;

    goto :goto_0

    .line 546
    .end local v0    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    .end local v2    # "wppg":Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedGroupName:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 551
    const-string v3, "WifiP2pSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Selected group "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedGroupName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " disappered on next query "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :cond_2
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

    .line 393
    instance-of v2, p2, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    if-eqz v2, :cond_6

    move-object v2, p2

    .line 394
    check-cast v2, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    .line 395
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v2, :cond_1

    .line 396
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    .line 434
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    .line 397
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-ne v2, v3, :cond_2

    .line 398
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    goto :goto_0

    .line 400
    :cond_2
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 401
    .local v0, "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 403
    const-string v2, "wifidirect.wps"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 405
    .local v1, "forceWps":I
    if-eq v1, v4, :cond_3

    .line 406
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v1, v2, Landroid/net/wifi/WpsInfo;->setup:I

    .line 417
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v4, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$6;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$6;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v2, v3, v0, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0

    .line 408
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsPbcSupported()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 409
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v3, 0x0

    iput v3, v2, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1

    .line 410
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsKeypadSupported()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 411
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v5, v2, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1

    .line 413
    :cond_5
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v3, v2, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1

    .line 430
    .end local v0    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    .end local v1    # "forceWps":I
    :cond_6
    instance-of v2, p2, Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;

    if-eqz v2, :cond_0

    move-object v2, p2

    .line 431
    check-cast v2, Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedGroup:Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;

    .line 432
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

    .line 358
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 359
    .local v1, "searchMenu":Landroid/view/MenuItem;
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 360
    .local v0, "renameMenu":Landroid/view/MenuItem;
    iget-boolean v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pEnabled:Z

    if-eqz v2, :cond_0

    .line 361
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 362
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 368
    :goto_0
    iget-boolean v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pSearching:Z

    if-eqz v2, :cond_1

    .line 369
    const v2, 0x7f0c056f

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 373
    :goto_1
    return-void

    .line 364
    :cond_0
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 365
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 371
    :cond_1
    const v2, 0x7f0c056e

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 327
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 328
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 329
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 332
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    if-eqz v0, :cond_0

    .line 509
    const-string v0, "PEER_STATE"

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v1, v1, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 512
    const-string v0, "DEV_NAME"

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedGroup:Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;

    if-eqz v0, :cond_2

    .line 515
    const-string v0, "GROUP_NAME"

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedGroup:Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;->getGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    :cond_2
    return-void
.end method
