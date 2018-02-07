.class public Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;
    }
.end annotation


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

.field private mPeersGroup:Landroid/support/v7/preference/PreferenceGroup;

.field private mPersistentGroup:Landroid/support/v7/preference/PreferenceGroup;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRenameListener:Landroid/content/DialogInterface$OnClickListener;

.field private mSavedDeviceName:Ljava/lang/String;

.field private mSelectedGroup:Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;

.field private mSelectedGroupName:Ljava/lang/String;

.field private mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

.field private mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mThisDevicePref:Landroid/support/v7/preference/Preference;

.field private mWifiP2pEnabled:Z

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWifiP2pSearching:Z


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mLastGroupFormed:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedGroup:Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mLastGroupFormed:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Landroid/net/wifi/p2p/WifiP2pDeviceList;)Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .locals 0

    iput-object p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;)Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;
    .locals 0

    iput-object p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedGroup:Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pEnabled:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->handleP2pStateChanged()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->handlePeersChanged()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->startSearch()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->updateDevicePref()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Z)V
    .locals 0
    .param p1, "searching"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->updateSearchMenu(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 72
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mLastGroupFormed:Z

    .line 103
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 107
    new-instance v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 156
    return-void
.end method

.method private handleP2pStateChanged()V
    .locals 2

    .prologue
    .line 602
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->updateSearchMenu(Z)V

    .line 603
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/support/v7/preference/Preference;

    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pEnabled:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 604
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/support/v7/preference/PreferenceGroup;

    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pEnabled:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->setEnabled(Z)V

    .line 605
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPersistentGroup:Landroid/support/v7/preference/PreferenceGroup;

    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pEnabled:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->setEnabled(Z)V

    .line 601
    return-void
.end method

.method private handlePeersChanged()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 526
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    .line 528
    iput v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mConnectedDevices:I

    .line 530
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "peer$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 532
    .local v0, "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/support/v7/preference/PreferenceGroup;

    new-instance v3, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 533
    iget v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mConnectedDevices:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mConnectedDevices:I

    goto :goto_0

    .line 525
    .end local v0    # "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_1
    return-void
.end method

.method private startSearch()V
    .locals 3

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pSearching:Z

    if-eqz v0, :cond_1

    .line 614
    :cond_0
    :goto_0
    return-void

    .line 616
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$7;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$7;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0
.end method

.method private updateDevicePref()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 627
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v2, :cond_2

    .line 635
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "oem_oneplus_modified_devicename"

    .line 634
    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 637
    .local v1, "modified":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "oem_oneplus_devicename"

    .line 636
    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 638
    .local v0, "mDeviceName":Ljava/lang/String;
    if-nez v1, :cond_3

    if-eqz v0, :cond_0

    const-string/jumbo v2, "oneplus"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "ONE E1001"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 639
    const-string/jumbo v2, "ONE E1003"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 638
    if-nez v2, :cond_0

    .line 639
    const-string/jumbo v2, "Owifi_p2p_menu_renameNE E1005"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 638
    if-eqz v2, :cond_3

    .line 640
    :cond_0
    const-string/jumbo v2, "ro.display.series"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 641
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "oem_oneplus_devicename"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 643
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "oem_oneplus_modified_devicename"

    const-string/jumbo v4, "1"

    .line 642
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 650
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 651
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 652
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v2, v3, v0, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->setDeviceName(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 626
    .end local v0    # "mDeviceName":Ljava/lang/String;
    .end local v1    # "modified":Ljava/lang/String;
    :cond_2
    return-void

    .line 644
    .restart local v0    # "mDeviceName":Ljava/lang/String;
    .restart local v1    # "modified":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x20

    if-le v2, v3, :cond_1

    .line 645
    const/4 v2, 0x0

    const/16 v3, 0x1f

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 646
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "oem_oneplus_devicename"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private updateSearchMenu(Z)V
    .locals 1
    .param p1, "searching"    # Z

    .prologue
    .line 609
    iput-boolean p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pSearching:Z

    .line 610
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 611
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 608
    :cond_0
    return-void
.end method

.method private utfToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "utf"    # Ljava/lang/String;

    .prologue
    .line 539
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 540
    .local v6, "utfBytes":[B
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 541
    .local v0, "decodedBytes":Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    .line 542
    .local v4, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v8, v6

    if-ge v1, v8, :cond_1

    .line 543
    aget-byte v8, v6, v1

    const/16 v9, 0x5c

    if-ne v8, v9, :cond_0

    add-int/lit8 v8, v1, 0x1

    aget-byte v8, v6, v8

    const/16 v9, 0x78

    if-ne v8, v9, :cond_0

    .line 544
    add-int/lit8 v8, v1, 0x2

    add-int/lit8 v9, v1, 0x4

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    .line 545
    .local v7, "value":I
    int-to-byte v8, v7

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 546
    add-int/lit8 v1, v1, 0x3

    .line 550
    .end local v7    # "value":I
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 542
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 548
    :cond_0
    aget-byte v8, v6, v1

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 553
    :cond_1
    :try_start_0
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 554
    .local v3, "sink":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    if-ge v2, v4, :cond_2

    .line 555
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 554
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 557
    :cond_2
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    const-string/jumbo v10, "UTF-8"

    invoke-direct {v8, v9, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v8

    .line 558
    .end local v2    # "j":I
    .end local v3    # "sink":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v5

    .line 559
    .local v5, "uee":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 561
    const/4 v8, 0x0

    return-object v8
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 509
    const/16 v0, 0x6d

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 162
    const v3, 0x7f0800a5

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->addPreferencesFromResource(I)V

    .line 164
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.net.wifi.p2p.PERSISTENT_GROUPS_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 172
    .local v0, "activity":Landroid/app/Activity;
    const-string/jumbo v3, "wifip2p"

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

    invoke-virtual {v3, v0, v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 175
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v3, :cond_0

    .line 177
    const-string/jumbo v3, "WifiP2pSettings"

    const-string/jumbo v4, "Failed to set up connection with wifi p2p service"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iput-object v5, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 184
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    const-string/jumbo v3, "PEER_STATE"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 185
    const-string/jumbo v3, "PEER_STATE"

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

    const-string/jumbo v3, "DEV_NAME"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 189
    const-string/jumbo v3, "DEV_NAME"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSavedDeviceName:Ljava/lang/String;

    .line 191
    :cond_2
    if-eqz p1, :cond_3

    const-string/jumbo v3, "GROUP_NAME"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 192
    const-string/jumbo v3, "GROUP_NAME"

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
    invoke-virtual {p0, v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->setHasOptionsMenu(Z)V

    .line 303
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    .line 304
    .local v2, "preferenceScreen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 305
    invoke-virtual {v2, v7}, Landroid/support/v7/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 307
    new-instance v3, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/support/v7/preference/Preference;

    .line 308
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/Preference;->setPersistent(Z)V

    .line 309
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    .line 310
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 312
    new-instance v3, Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/support/v7/preference/PreferenceGroup;

    .line 313
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/support/v7/preference/PreferenceGroup;

    const v4, 0x7f0e077e

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceGroup;->setTitle(I)V

    .line 315
    new-instance v3, Lcom/oneplus/settings/ui/OPPreferenceDivider;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/oneplus/settings/ui/OPPreferenceDivider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 317
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 319
    new-instance v3, Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPersistentGroup:Landroid/support/v7/preference/PreferenceGroup;

    .line 320
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPersistentGroup:Landroid/support/v7/preference/PreferenceGroup;

    const v4, 0x7f0e077f

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceGroup;->setTitle(I)V

    .line 322
    new-instance v3, Lcom/oneplus/settings/ui/OPPreferenceDivider;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/oneplus/settings/ui/OPPreferenceDivider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 324
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPersistentGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 326
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 161
    return-void

    .line 181
    .end local v2    # "preferenceScreen":Landroid/support/v7/preference/PreferenceScreen;
    :cond_4
    const-string/jumbo v3, "WifiP2pSettings"

    const-string/jumbo v4, "mWifiP2pManager is null !"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 12
    .param p1, "id"    # I

    .prologue
    const v11, 0x7f0e0a07

    const v10, 0x7f0e0a06

    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 445
    if-ne p1, v7, :cond_2

    .line 446
    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v4, v4, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 447
    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v4, v4, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 450
    .local v0, "deviceName":Ljava/lang/String;
    :goto_0
    iget v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mConnectedDevices:I

    if-le v4, v7, :cond_1

    .line 451
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 452
    aput-object v0, v5, v9

    iget v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mConnectedDevices:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 451
    const v6, 0x7f0e0784

    invoke-virtual {v4, v6, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 456
    .local v2, "msg":Ljava/lang/String;
    :goto_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 457
    const v5, 0x7f0e0782

    .line 456
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 459
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

    .line 456
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 460
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 456
    invoke-virtual {v4, v5, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 462
    .local v1, "dialog":Landroid/app/AlertDialog;
    return-object v1

    .line 448
    .end local v0    # "deviceName":Ljava/lang/String;
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    .end local v2    # "msg":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v4, v4, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .restart local v0    # "deviceName":Ljava/lang/String;
    goto :goto_0

    .line 454
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v9

    const v6, 0x7f0e0783

    invoke-virtual {v4, v6, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "msg":Ljava/lang/String;
    goto :goto_1

    .line 463
    .end local v0    # "deviceName":Ljava/lang/String;
    .end local v2    # "msg":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x2

    if-ne p1, v4, :cond_4

    .line 464
    const v3, 0x7f0e0786

    .line 465
    .local v3, "stringId":I
    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v4, v4, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 466
    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v4, v4, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 469
    .restart local v0    # "deviceName":Ljava/lang/String;
    :goto_2
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 470
    const v5, 0x7f0e0785

    .line 469
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 471
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v0, v6, v9

    invoke-virtual {v5, v3, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 469
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 472
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mCancelConnectListener:Landroid/content/DialogInterface$OnClickListener;

    .line 469
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 473
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 469
    invoke-virtual {v4, v5, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 475
    .restart local v1    # "dialog":Landroid/app/AlertDialog;
    return-object v1

    .line 467
    .end local v0    # "deviceName":Ljava/lang/String;
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v4, v4, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .restart local v0    # "deviceName":Ljava/lang/String;
    goto :goto_2

    .line 476
    .end local v0    # "deviceName":Ljava/lang/String;
    .end local v3    # "stringId":I
    :cond_4
    const/4 v4, 0x3

    if-ne p1, v4, :cond_7

    .line 477
    new-instance v4, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    .line 478
    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    new-array v5, v7, [Landroid/text/InputFilter;

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    const/16 v7, 0x1e

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v5, v9

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 479
    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSavedDeviceName:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 480
    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSavedDeviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 481
    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSavedDeviceName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 486
    :cond_5
    :goto_3
    iput-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSavedDeviceName:Ljava/lang/String;

    .line 487
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 488
    const v5, 0x7f0e077d

    .line 487
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 489
    iget-object v5, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    .line 487
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 490
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mRenameListener:Landroid/content/DialogInterface$OnClickListener;

    .line 487
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 491
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 487
    invoke-virtual {v4, v5, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 493
    .restart local v1    # "dialog":Landroid/app/AlertDialog;
    return-object v1

    .line 482
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    :cond_6
    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 483
    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 484
    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v9, v5}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_3

    .line 494
    :cond_7
    const/4 v4, 0x4

    if-ne p1, v4, :cond_8

    .line 495
    const v3, 0x7f0e0787

    .line 497
    .restart local v3    # "stringId":I
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 498
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 497
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 499
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeleteGroupListener:Landroid/content/DialogInterface$OnClickListener;

    .line 497
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 500
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 501
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeleteGroupListener:Landroid/content/DialogInterface$OnClickListener;

    .line 497
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 502
    .restart local v1    # "dialog":Landroid/app/AlertDialog;
    return-object v1

    .line 504
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    .end local v3    # "stringId":I
    :cond_8
    return-object v8
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 349
    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pSearching:Z

    if-eqz v1, :cond_0

    const v0, 0x7f0e077c

    .line 351
    .local v0, "textId":I
    :goto_0
    invoke-interface {p1, v3, v4, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 352
    iget-boolean v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pEnabled:Z

    .line 351
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 354
    const/4 v1, 0x2

    const v2, 0x7f0e077d

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 355
    iget-boolean v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pEnabled:Z

    .line 354
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 357
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 348
    return-void

    .line 350
    .end local v0    # "textId":I
    :cond_0
    const v0, 0x7f0e077b

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x1

    .line 381
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 394
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 383
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->startSearch()V

    .line 384
    return v6

    .line 388
    :pswitch_1
    const-string/jumbo v2, "com.oneplus.settings.OPDeviceName"

    .line 389
    const v3, 0x7f0e0310

    .line 390
    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    .line 388
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 392
    return v6

    .line 381
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 340
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 341
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 344
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 339
    return-void
.end method

.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 0
    .param p1, "peers"    # Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .prologue
    .line 597
    iput-object p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 598
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->handlePeersChanged()V

    .line 595
    return-void
.end method

.method public onPersistentGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroupList;)V
    .locals 9
    .param p1, "groups"    # Landroid/net/wifi/p2p/WifiP2pGroupList;

    .prologue
    const/4 v8, 0x0

    .line 565
    const-string/jumbo v0, "\\x"

    .line 566
    .local v0, "cs":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPersistentGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v6}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    .line 568
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getGroupList()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "group$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 569
    .local v1, "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v3

    .line 570
    .local v3, "networkName":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 571
    invoke-direct {p0, v3}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->utfToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 572
    .local v4, "string":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 573
    invoke-virtual {v1, v4}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkName(Ljava/lang/String;)V

    .line 577
    .end local v4    # "string":Ljava/lang/String;
    :cond_1
    new-instance v5, Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    .line 578
    .local v5, "wppg":Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPersistentGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v6, v5}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 579
    invoke-virtual {v5}, Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;->getGroupName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedGroupName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 581
    iput-object v5, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedGroup:Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;

    .line 582
    iput-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedGroupName:Ljava/lang/String;

    goto :goto_0

    .line 585
    .end local v1    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    .end local v3    # "networkName":Ljava/lang/String;
    .end local v5    # "wppg":Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;
    :cond_2
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedGroupName:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 590
    const-string/jumbo v6, "WifiP2pSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " Selected group "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedGroupName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " disappered on next query "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_3
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 399
    instance-of v2, p1, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    if-eqz v2, :cond_6

    move-object v2, p1

    .line 400
    check-cast v2, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    .line 401
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v2, :cond_1

    .line 402
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    .line 440
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v2

    return v2

    .line 403
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-ne v2, v3, :cond_2

    .line 404
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    goto :goto_0

    .line 406
    :cond_2
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 407
    .local v0, "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 409
    const-string/jumbo v2, "wifidirect.wps"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 411
    .local v1, "forceWps":I
    if-eq v1, v4, :cond_3

    .line 412
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v1, v2, Landroid/net/wifi/WpsInfo;->setup:I

    .line 423
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 424
    new-instance v4, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$6;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$6;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V

    .line 423
    invoke-virtual {v2, v3, v0, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0

    .line 414
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsPbcSupported()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 415
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v5, v2, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1

    .line 416
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsKeypadSupported()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 417
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v6, v2, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1

    .line 419
    :cond_5
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v3, v2, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1

    .line 436
    .end local v0    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    .end local v1    # "forceWps":I
    :cond_6
    instance-of v2, p1, Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;

    if-eqz v2, :cond_0

    move-object v2, p1

    .line 437
    check-cast v2, Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedGroup:Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;

    .line 438
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

    .line 362
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 363
    .local v1, "searchMenu":Landroid/view/MenuItem;
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 364
    .local v0, "renameMenu":Landroid/view/MenuItem;
    iget-boolean v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pEnabled:Z

    if-eqz v2, :cond_0

    .line 365
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 366
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 372
    :goto_0
    iget-boolean v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pSearching:Z

    if-eqz v2, :cond_1

    .line 373
    const v2, 0x7f0e077c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 361
    :goto_1
    return-void

    .line 368
    :cond_0
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 369
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 375
    :cond_1
    const v2, 0x7f0e077b

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 331
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 332
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 333
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 330
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    if-eqz v0, :cond_0

    .line 515
    const-string/jumbo v0, "PEER_STATE"

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v1, v1, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 518
    const-string/jumbo v0, "DEV_NAME"

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedGroup:Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;

    if-eqz v0, :cond_2

    .line 521
    const-string/jumbo v0, "GROUP_NAME"

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedGroup:Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;->getGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    :cond_2
    return-void
.end method
