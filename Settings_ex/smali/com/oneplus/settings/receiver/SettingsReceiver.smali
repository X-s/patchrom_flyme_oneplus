.class public Lcom/oneplus/settings/receiver/SettingsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingsReceiver.java"


# static fields
.field public static final ACTION_OEM_BOOT_COMPLETED:Ljava/lang/String; = "com.oem.intent.action.BOOT_COMPLETED"

.field public static final ACTION_THREE_KEY_BOOT:Ljava/lang/String; = "com.oem.intent.action.THREE_KEY_MODE_BOOT"

.field private static final BOOT_BROADCAST:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field private static final CMD_OEM_QDCM_MODE_10:Ljava/lang/String; = "oem:qdcm:mode_10"

.field private static final CMD_OEM_QDCM_MODE_5:Ljava/lang/String; = "oem:qdcm:mode_5"

.field private static final CMD_OEM_QDCM_MODE_6:Ljava/lang/String; = "oem:qdcm:mode_6"

.field private static final CMD_OEM_QDCM_MODE_7:Ljava/lang/String; = "oem:qdcm:mode_7"

.field private static final CMD_OEM_QDCM_MODE_8:Ljava/lang/String; = "oem:qdcm:mode_8"

.field private static final CMD_OEM_QDCM_MODE_9:Ljava/lang/String; = "oem:qdcm:mode_9"

.field private static final CURRENT_MODE_KEY:Ljava/lang/String; = "CURRENT_MODE"

.field private static final MODE_CHANGING_ACTION:Ljava/lang/String; = "com.android.settings_ex.location.MODE_CHANGING"

.field private static final NEW_MODE_KEY:Ljava/lang/String; = "NEW_MODE"

.field private static OEM_FINGER_CHECK_ONEPLUS_ACCOUNT:Ljava/lang/String; = null

.field private static OEM_FINGER_LOCKSCREEN:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "SettingsReceiver"

.field private static final TYPE_ONE:Ljava/lang/String; = "oem:qdcm:mode_1"

.field private static final TYPE_SERVER:Ljava/lang/String; = "pps"

.field private static final TYPE_THREE:Ljava/lang/String; = "oem:qdcm:mode_3"

.field private static final TYPE_TWO:Ljava/lang/String; = "oem:qdcm:mode_2"


# instance fields
.field private M_TYPE_STRING:Ljava/lang/String;

.field private localSocket:Landroid/net/LocalSocket;

.field private mBetterStatus:I

.field private mContext:Landroid/content/Context;

.field private mOPFingerDataManager:Lcom/oneplus/settings/opfinger/OPFingerDataManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "oem_finger_lockscreen"

    sput-object v0, Lcom/oneplus/settings/receiver/SettingsReceiver;->OEM_FINGER_LOCKSCREEN:Ljava/lang/String;

    .line 33
    const-string v0, "oem_finger_check_oneplus_account"

    sput-object v0, Lcom/oneplus/settings/receiver/SettingsReceiver;->OEM_FINGER_CHECK_ONEPLUS_ACCOUNT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 68
    const-string v0, "oem:qdcm:mode_1"

    iput-object v0, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->M_TYPE_STRING:Ljava/lang/String;

    .line 69
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mBetterStatus:I

    .line 82
    new-instance v0, Lcom/oneplus/settings/opfinger/OPFingerDataManager;

    invoke-direct {v0}, Lcom/oneplus/settings/opfinger/OPFingerDataManager;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mOPFingerDataManager:Lcom/oneplus/settings/opfinger/OPFingerDataManager;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/receiver/SettingsReceiver;)Landroid/net/LocalSocket;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/receiver/SettingsReceiver;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->localSocket:Landroid/net/LocalSocket;

    return-object v0
.end method

.method static synthetic access$002(Lcom/oneplus/settings/receiver/SettingsReceiver;Landroid/net/LocalSocket;)Landroid/net/LocalSocket;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/receiver/SettingsReceiver;
    .param p1, "x1"    # Landroid/net/LocalSocket;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->localSocket:Landroid/net/LocalSocket;

    return-object p1
.end method

.method static synthetic access$100(Lcom/oneplus/settings/receiver/SettingsReceiver;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/receiver/SettingsReceiver;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->M_TYPE_STRING:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/receiver/SettingsReceiver;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/receiver/SettingsReceiver;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/receiver/SettingsReceiver;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/receiver/SettingsReceiver;

    .prologue
    .line 31
    iget v0, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mBetterStatus:I

    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 88
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "action":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/settings/receiver/SettingsReceiver;->mContext:Landroid/content/Context;

    .line 91
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "oem_oneplus_modified_devicename"

    invoke-static {v14, v15}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 94
    .local v12, "modified":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "oem_oneplus_devicename"

    invoke-static {v14, v15}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 96
    .local v8, "mDeviceName":Ljava/lang/String;
    if-nez v12, :cond_5

    if-eqz v8, :cond_0

    const-string v14, "oneplus"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string v14, "ONE E1001"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string v14, "ONE E1003"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string v14, "ONE E1005"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 101
    :cond_0
    const-string v14, "ro.display.series"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 102
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "oem_oneplus_devicename"

    invoke-static {v14, v15, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 105
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "oem_oneplus_modified_devicename"

    const-string v16, "1"

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 115
    :cond_1
    :goto_0
    const-string v14, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 117
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    sget-object v15, Lcom/oneplus/settings/receiver/SettingsReceiver;->OEM_FINGER_LOCKSCREEN:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mOPFingerDataManager:Lcom/oneplus/settings/opfinger/OPFingerDataManager;

    move-object/from16 v16, v0

    sget-object v17, Lcom/oneplus/settings/receiver/SettingsReceiver;->OEM_FINGER_LOCKSCREEN:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Lcom/oneplus/settings/opfinger/OPFingerDataManager;->getToggleValue(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 120
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    sget-object v15, Lcom/oneplus/settings/receiver/SettingsReceiver;->OEM_FINGER_CHECK_ONEPLUS_ACCOUNT:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mOPFingerDataManager:Lcom/oneplus/settings/opfinger/OPFingerDataManager;

    move-object/from16 v16, v0

    sget-object v17, Lcom/oneplus/settings/receiver/SettingsReceiver;->OEM_FINGER_CHECK_ONEPLUS_ACCOUNT:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Lcom/oneplus/settings/opfinger/OPFingerDataManager;->getToggleValue(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 236
    :cond_2
    :goto_1
    const-string v14, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 237
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    .line 238
    .local v3, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v8, :cond_3

    if-eqz v3, :cond_3

    .line 239
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 240
    invoke-virtual {v3, v8}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z

    .line 245
    .end local v3    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_3
    const-string v14, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 248
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mContext:Landroid/content/Context;

    const-string v15, "wifip2p"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 250
    .local v11, "mWifiP2pManager":Landroid/net/wifi/p2p/WifiP2pManager;
    if-eqz v11, :cond_4

    .line 251
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v11, v14, v15, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v7

    .line 253
    .local v7, "mChannel":Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    const/4 v14, 0x0

    invoke-virtual {v11, v7, v8, v14}, Landroid/net/wifi/p2p/WifiP2pManager;->setDeviceName(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 257
    .end local v7    # "mChannel":Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .end local v11    # "mWifiP2pManager":Landroid/net/wifi/p2p/WifiP2pManager;
    :cond_4
    return-void

    .line 108
    :cond_5
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0x20

    if-le v14, v15, :cond_1

    .line 109
    const/4 v14, 0x0

    const/16 v15, 0x1f

    invoke-virtual {v8, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 110
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "oem_oneplus_devicename"

    invoke-static {v14, v15, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 125
    :cond_6
    const-string v14, "com.oem.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 131
    .local v4, "curTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const-string v15, "oem.threeStageKey.support"

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 133
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "oem_three_key_define"

    const/16 v16, 0x3

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 136
    .local v9, "mStatus":I
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 137
    .local v10, "mThreeIntent":Landroid/content/Intent;
    const-string v14, "com.oem.intent.action.THREE_KEY_MODE_BOOT"

    invoke-virtual {v10, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    const-string v14, "switch_state"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 141
    .end local v9    # "mStatus":I
    .end local v10    # "mThreeIntent":Landroid/content/Intent;
    :cond_7
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "zhuyang--oem-boot--1:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v4

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "oem_eyecare_enable"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 151
    .local v6, "eyeCareStatus":I
    const/4 v14, 0x1

    if-ne v6, v14, :cond_e

    .line 153
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "oem_eyecare_progress_status"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 157
    .local v13, "progress":I
    if-ltz v13, :cond_9

    const/16 v14, 0x64

    if-ge v13, v14, :cond_9

    .line 158
    const-string v14, "oem:qdcm:mode_5"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oneplus/settings/receiver/SettingsReceiver;->M_TYPE_STRING:Ljava/lang/String;

    .line 192
    .end local v13    # "progress":I
    :cond_8
    :goto_2
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "zhuyang--oem-boot--2:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v4

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 193
    new-instance v14, Ljava/lang/Thread;

    new-instance v15, Lcom/oneplus/settings/receiver/SettingsReceiver$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/oneplus/settings/receiver/SettingsReceiver$1;-><init>(Lcom/oneplus/settings/receiver/SettingsReceiver;)V

    invoke-direct {v14, v15}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v14}, Ljava/lang/Thread;->start()V

    .line 231
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "zhuyang--oem-boot--3:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v4

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 159
    .restart local v13    # "progress":I
    :cond_9
    const/16 v14, 0x64

    if-lt v13, v14, :cond_a

    const/16 v14, 0xc8

    if-ge v13, v14, :cond_a

    .line 160
    const-string v14, "oem:qdcm:mode_6"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oneplus/settings/receiver/SettingsReceiver;->M_TYPE_STRING:Ljava/lang/String;

    goto :goto_2

    .line 161
    :cond_a
    const/16 v14, 0xc8

    if-lt v13, v14, :cond_b

    const/16 v14, 0x12c

    if-ge v13, v14, :cond_b

    .line 162
    const-string v14, "oem:qdcm:mode_7"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oneplus/settings/receiver/SettingsReceiver;->M_TYPE_STRING:Ljava/lang/String;

    goto :goto_2

    .line 163
    :cond_b
    const/16 v14, 0x12c

    if-lt v13, v14, :cond_c

    const/16 v14, 0x190

    if-ge v13, v14, :cond_c

    .line 164
    const-string v14, "oem:qdcm:mode_8"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oneplus/settings/receiver/SettingsReceiver;->M_TYPE_STRING:Ljava/lang/String;

    goto :goto_2

    .line 165
    :cond_c
    const/16 v14, 0x190

    if-lt v13, v14, :cond_d

    const/16 v14, 0x1f4

    if-ge v13, v14, :cond_d

    .line 166
    const-string v14, "oem:qdcm:mode_9"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oneplus/settings/receiver/SettingsReceiver;->M_TYPE_STRING:Ljava/lang/String;

    goto/16 :goto_2

    .line 167
    :cond_d
    const/16 v14, 0x1f4

    if-lt v13, v14, :cond_8

    const/16 v14, 0x258

    if-gt v13, v14, :cond_8

    .line 168
    const-string v14, "oem:qdcm:mode_10"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oneplus/settings/receiver/SettingsReceiver;->M_TYPE_STRING:Ljava/lang/String;

    goto/16 :goto_2

    .line 173
    .end local v13    # "progress":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "oem_better_status"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mBetterStatus:I

    .line 176
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mBetterStatus:I

    packed-switch v14, :pswitch_data_0

    .line 187
    const-string v14, "oem:qdcm:mode_1"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oneplus/settings/receiver/SettingsReceiver;->M_TYPE_STRING:Ljava/lang/String;

    goto/16 :goto_2

    .line 178
    :pswitch_0
    const-string v14, "oem:qdcm:mode_1"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oneplus/settings/receiver/SettingsReceiver;->M_TYPE_STRING:Ljava/lang/String;

    goto/16 :goto_2

    .line 181
    :pswitch_1
    const-string v14, "oem:qdcm:mode_2"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oneplus/settings/receiver/SettingsReceiver;->M_TYPE_STRING:Ljava/lang/String;

    goto/16 :goto_2

    .line 184
    :pswitch_2
    const-string v14, "oem:qdcm:mode_3"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oneplus/settings/receiver/SettingsReceiver;->M_TYPE_STRING:Ljava/lang/String;

    goto/16 :goto_2

    .line 176
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
