.class public final Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPermissionRequest.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final NOTIFICATION_ID:I = 0x1080080

.field private static final NOTIFICATION_TAG_MAP:Ljava/lang/String; = "Message Access"

.field private static final NOTIFICATION_TAG_PBAP:Ljava/lang/String; = "Phonebook Access"

.field private static final TAG:Ljava/lang/String; = "BluetoothPermissionRequest"


# instance fields
.field mContext:Landroid/content/Context;

.field mDevice:Landroid/bluetooth/BluetoothDevice;

.field mRequestType:I

.field mReturnClass:Ljava/lang/String;

.field mReturnPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    return-void
.end method

.method private checkUserChoice()Z
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v7, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 202
    const/4 v6, 0x0

    .line 205
    .local v6, "processed":Z
    iget v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    if-eq v8, v12, :cond_0

    iget v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    if-eq v8, v13, :cond_0

    move v7, v6

    .line 257
    :goto_0
    return v7

    .line 211
    :cond_0
    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 212
    .local v0, "bluetoothManager":Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;
    if-nez v0, :cond_1

    .line 213
    const-string v8, "BluetoothPermissionRequest"

    const-string v9, "Error: Can\'t get LocalBluetoothManager"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 216
    :cond_1
    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    .line 218
    .local v2, "cachedDeviceManager":Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;
    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v8}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 219
    .local v1, "cachedDevice":Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;
    if-nez v1, :cond_2

    .line 220
    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v8, v9, v10}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 224
    :cond_2
    const-string v3, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    .line 226
    .local v3, "intentName":Ljava/lang/String;
    iget v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    if-ne v8, v12, :cond_8

    .line 227
    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v5

    .line 229
    .local v5, "phonebookPermission":I
    if-nez v5, :cond_4

    .end local v5    # "phonebookPermission":I
    :cond_3
    :goto_1
    move v7, v6

    .line 257
    goto :goto_0

    .line 231
    .restart local v5    # "phonebookPermission":I
    :cond_4
    if-eq v5, v11, :cond_5

    if-ne v5, v13, :cond_6

    .line 233
    :cond_5
    invoke-direct {p0, v11}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->sendReplyIntentToReceiver(Z)V

    .line 234
    const/4 v6, 0x1

    goto :goto_1

    .line 235
    :cond_6
    if-ne v5, v12, :cond_7

    .line 236
    invoke-direct {p0, v7}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->sendReplyIntentToReceiver(Z)V

    .line 237
    const/4 v6, 0x1

    goto :goto_1

    .line 239
    :cond_7
    const-string v7, "BluetoothPermissionRequest"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad phonebookPermission: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 241
    .end local v5    # "phonebookPermission":I
    :cond_8
    iget v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    if-ne v8, v13, :cond_3

    .line 242
    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result v4

    .line 244
    .local v4, "messagePermission":I
    if-eqz v4, :cond_3

    .line 246
    if-ne v4, v11, :cond_9

    .line 247
    invoke-direct {p0, v11}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->sendReplyIntentToReceiver(Z)V

    .line 248
    const/4 v6, 0x1

    goto :goto_1

    .line 249
    :cond_9
    if-ne v4, v12, :cond_a

    .line 250
    invoke-direct {p0, v7}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->sendReplyIntentToReceiver(Z)V

    .line 251
    const/4 v6, 0x1

    goto :goto_1

    .line 253
    :cond_a
    const-string v7, "BluetoothPermissionRequest"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad messagePermission: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getNotificationTag(I)Ljava/lang/String;
    .locals 2
    .param p1, "requestType"    # I

    .prologue
    .line 188
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 189
    const-string v0, "Phonebook Access"

    .line 193
    :goto_0
    return-object v0

    .line 190
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 191
    const-string v0, "Message Access"

    goto :goto_0

    .line 193
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendReplyIntentToReceiver(Z)V
    .locals 3
    .param p1, "allowed"    # Z

    .prologue
    .line 261
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 264
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    :cond_0
    const-string v2, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 270
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 271
    const-string v1, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    iget v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 272
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 273
    return-void

    .line 267
    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 54
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mContext:Landroid/content/Context;

    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, "action":Ljava/lang/String;
    const-string v16, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 60
    const-string v16, "user"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/UserManager;

    .line 62
    .local v14, "um":Landroid/os/UserManager;
    invoke-static {v14}, Lcom/android/settings_ex/Utils;->isManagedProfile(Landroid/os/UserManager;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 185
    .end local v14    # "um":Landroid/os/UserManager;
    :cond_0
    :goto_0
    return-void

    .line 67
    .restart local v14    # "um":Landroid/os/UserManager;
    :cond_1
    const-string v16, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v16

    check-cast v16, Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 68
    const-string v16, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/16 v17, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    .line 70
    const-string v16, "android.bluetooth.device.extra.PACKAGE_NAME"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    .line 71
    const-string v16, "android.bluetooth.device.extra.CLASS_NAME"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    .line 87
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->checkUserChoice()Z

    move-result v16

    if-nez v16, :cond_0

    .line 91
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    .local v4, "connectionAccessIntent":Landroid/content/Intent;
    const-class v16, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 95
    const/high16 v16, 0x18000000

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 99
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const-string v16, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 102
    const-string v16, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 103
    const-string v16, "android.bluetooth.device.extra.PACKAGE_NAME"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string v16, "android.bluetooth.device.extra.CLASS_NAME"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 107
    .local v6, "deviceAddress":Ljava/lang/String;
    :goto_1
    const/4 v13, 0x0

    .line 108
    .local v13, "title":Ljava/lang/String;
    const/4 v9, 0x0

    .line 109
    .local v9, "message":Ljava/lang/String;
    const-string v16, "power"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/PowerManager;

    .line 112
    .local v12, "powerManager":Landroid/os/PowerManager;
    invoke-virtual {v12}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v16

    if-eqz v16, :cond_3

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/android/settings_ex/bluetooth/LocalBluetoothPreferences;->shouldShowDialogInForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 115
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 106
    .end local v6    # "deviceAddress":Ljava/lang/String;
    .end local v9    # "message":Ljava/lang/String;
    .end local v12    # "powerManager":Landroid/os/PowerManager;
    .end local v13    # "title":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 118
    .restart local v6    # "deviceAddress":Ljava/lang/String;
    .restart local v9    # "message":Ljava/lang/String;
    .restart local v12    # "powerManager":Landroid/os/PowerManager;
    .restart local v13    # "title":Ljava/lang/String;
    :cond_3
    const/4 v15, 0x0

    .line 119
    .local v15, "wakeLock":Landroid/os/PowerManager$WakeLock;
    const v16, 0x3000001a

    const-string v17, "ConnectionAccessActivity"

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v15

    .line 122
    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 123
    invoke-virtual {v15}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 129
    new-instance v5, Landroid/content/Intent;

    const-string v16, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    .local v5, "deleteIntent":Landroid/content/Intent;
    const-string v16, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 131
    const-string v16, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    const/16 v17, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 133
    const-string v16, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v16, v0

    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v7

    .line 135
    .local v7, "deviceName":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_0

    .line 147
    const v16, 0x7f0901b8

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 148
    const v16, 0x7f0901ba

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v7, v17, v18

    const/16 v18, 0x1

    aput-object v7, v17, v18

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 152
    :goto_3
    new-instance v16, Landroid/app/Notification$Builder;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v16

    const v17, 0x1080080

    invoke-virtual/range {v16 .. v17}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v16

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v16

    const/16 v17, 0x2

    invoke-virtual/range {v16 .. v17}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v16

    const/16 v17, -0x1

    invoke-virtual/range {v16 .. v17}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v4, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v5, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1060059

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v10

    .line 168
    .local v10, "notification":Landroid/app/Notification;
    iget v0, v10, Landroid/app/Notification;->flags:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x20

    move/from16 v0, v16

    iput v0, v10, Landroid/app/Notification;->flags:I

    .line 170
    const-string v16, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationManager;

    .line 173
    .local v11, "notificationManager":Landroid/app/NotificationManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->getNotificationTag(I)Ljava/lang/String;

    move-result-object v16

    const v17, 0x1080080

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1, v10}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 175
    invoke-virtual {v15}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 134
    .end local v7    # "deviceName":Ljava/lang/String;
    .end local v10    # "notification":Landroid/app/Notification;
    .end local v11    # "notificationManager":Landroid/app/NotificationManager;
    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 137
    .restart local v7    # "deviceName":Ljava/lang/String;
    :pswitch_0
    const v16, 0x7f0901bb

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 138
    const v16, 0x7f0901bc

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v7, v17, v18

    const/16 v18, 0x1

    aput-object v7, v17, v18

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 140
    goto/16 :goto_3

    .line 142
    :pswitch_1
    const v16, 0x7f0901bf

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 143
    const v16, 0x7f0901c0

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v7, v17, v18

    const/16 v18, 0x1

    aput-object v7, v17, v18

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 145
    goto/16 :goto_3

    .line 177
    .end local v4    # "connectionAccessIntent":Landroid/content/Intent;
    .end local v5    # "deleteIntent":Landroid/content/Intent;
    .end local v6    # "deviceAddress":Ljava/lang/String;
    .end local v7    # "deviceName":Ljava/lang/String;
    .end local v9    # "message":Ljava/lang/String;
    .end local v12    # "powerManager":Landroid/os/PowerManager;
    .end local v13    # "title":Ljava/lang/String;
    .end local v14    # "um":Landroid/os/UserManager;
    .end local v15    # "wakeLock":Landroid/os/PowerManager$WakeLock;
    :cond_5
    const-string v16, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 179
    const-string v16, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 181
    .local v8, "manager":Landroid/app/NotificationManager;
    const-string v16, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/16 v17, 0x2

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    .line 183
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->getNotificationTag(I)Ljava/lang/String;

    move-result-object v16

    const v17, 0x1080080

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
