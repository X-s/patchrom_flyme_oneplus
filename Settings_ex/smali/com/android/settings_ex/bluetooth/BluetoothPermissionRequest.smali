.class public final Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPermissionRequest.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final NOTIFICATION_ID:I = 0x1080080

.field private static final NOTIFICATION_TAG_MAP:Ljava/lang/String; = "Message Access"

.field private static final NOTIFICATION_TAG_PBAP:Ljava/lang/String; = "Phonebook Access"

.field private static final NOTIFICATION_TAG_SAP:Ljava/lang/String; = "SIM Access"

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

    .line 39
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    return-void
.end method

.method private checkUserChoice()Z
    .locals 12

    .prologue
    .line 212
    const/4 v6, 0x0

    .line 215
    .local v6, "processed":Z
    iget v9, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_0

    iget v9, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v10, 0x3

    if-eq v9, v10, :cond_0

    iget v9, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v10, 0x4

    if-eq v9, v10, :cond_0

    move v7, v6

    .line 277
    .end local v6    # "processed":Z
    .local v7, "processed":I
    :goto_0
    return v7

    .line 222
    .end local v7    # "processed":I
    .restart local v6    # "processed":Z
    :cond_0
    iget-object v9, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings_ex/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 223
    .local v0, "bluetoothManager":Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;
    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    .line 225
    .local v2, "cachedDeviceManager":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;
    iget-object v9, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v9}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 226
    .local v1, "cachedDevice":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    if-nez v1, :cond_1

    .line 227
    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    move-result-object v9

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v9, v10, v11}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 231
    :cond_1
    const-string v3, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    .line 233
    .local v3, "intentName":Ljava/lang/String;
    iget v9, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_6

    .line 234
    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v5

    .line 236
    .local v5, "phonebookPermission":I
    if-nez v5, :cond_3

    .end local v5    # "phonebookPermission":I
    :cond_2
    :goto_1
    move v7, v6

    .line 277
    .restart local v7    # "processed":I
    goto :goto_0

    .line 238
    .end local v7    # "processed":I
    .restart local v5    # "phonebookPermission":I
    :cond_3
    const/4 v9, 0x1

    if-ne v5, v9, :cond_4

    .line 239
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->sendReplyIntentToReceiver(Z)V

    .line 240
    const/4 v6, 0x1

    goto :goto_1

    .line 241
    :cond_4
    const/4 v9, 0x2

    if-ne v5, v9, :cond_5

    .line 242
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->sendReplyIntentToReceiver(Z)V

    .line 243
    const/4 v6, 0x1

    goto :goto_1

    .line 245
    :cond_5
    const-string v9, "BluetoothPermissionRequest"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad phonebookPermission: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 247
    .end local v5    # "phonebookPermission":I
    :cond_6
    iget v9, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_9

    .line 248
    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result v4

    .line 250
    .local v4, "messagePermission":I
    if-eqz v4, :cond_2

    .line 252
    const/4 v9, 0x1

    if-ne v4, v9, :cond_7

    .line 253
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->sendReplyIntentToReceiver(Z)V

    .line 254
    const/4 v6, 0x1

    goto :goto_1

    .line 255
    :cond_7
    const/4 v9, 0x2

    if-ne v4, v9, :cond_8

    .line 256
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->sendReplyIntentToReceiver(Z)V

    .line 257
    const/4 v6, 0x1

    goto :goto_1

    .line 259
    :cond_8
    const-string v9, "BluetoothPermissionRequest"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad messagePermission: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 261
    .end local v4    # "messagePermission":I
    :cond_9
    iget v9, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_2

    .line 262
    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getSimPermissionChoice()I

    move-result v8

    .line 264
    .local v8, "simPermission":I
    if-eqz v8, :cond_2

    .line 266
    const/4 v9, 0x1

    if-ne v8, v9, :cond_a

    .line 267
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->sendReplyIntentToReceiver(Z)V

    .line 268
    const/4 v6, 0x1

    goto :goto_1

    .line 269
    :cond_a
    const/4 v9, 0x2

    if-ne v8, v9, :cond_b

    .line 270
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->sendReplyIntentToReceiver(Z)V

    .line 271
    const/4 v6, 0x1

    goto :goto_1

    .line 273
    :cond_b
    const-string v9, "BluetoothPermissionRequest"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad simPermission: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private getNotificationTag(I)Ljava/lang/String;
    .locals 2
    .param p1, "requestType"    # I

    .prologue
    .line 196
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 197
    const-string v0, "Phonebook Access"

    .line 203
    :goto_0
    return-object v0

    .line 198
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 199
    const-string v0, "Message Access"

    goto :goto_0

    .line 200
    :cond_1
    iget v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 201
    const-string v0, "SIM Access"

    goto :goto_0

    .line 203
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendReplyIntentToReceiver(Z)V
    .locals 3
    .param p1, "allowed"    # Z

    .prologue
    .line 281
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 283
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    :cond_0
    const-string v2, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 290
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 291
    const-string v1, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    iget v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 292
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 293
    return-void

    .line 287
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
    .line 57
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mContext:Landroid/content/Context;

    .line 58
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, "action":Ljava/lang/String;
    const-string v16, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 63
    const-string v16, "user"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/UserManager;

    .line 65
    .local v14, "um":Landroid/os/UserManager;
    invoke-static {v14}, Lcom/android/settings_ex/Utils;->isManagedProfile(Landroid/os/UserManager;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 193
    .end local v14    # "um":Landroid/os/UserManager;
    :cond_0
    :goto_0
    return-void

    .line 70
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

    .line 71
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

    .line 73
    const-string v16, "android.bluetooth.device.extra.PACKAGE_NAME"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    .line 74
    const-string v16, "android.bluetooth.device.extra.CLASS_NAME"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    .line 90
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->checkUserChoice()Z

    move-result v16

    if-nez v16, :cond_0

    .line 94
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .local v4, "connectionAccessIntent":Landroid/content/Intent;
    const-class v16, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 98
    const/high16 v16, 0x18000000

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 102
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string v16, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 105
    const-string v16, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 106
    const-string v16, "android.bluetooth.device.extra.PACKAGE_NAME"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string v16, "android.bluetooth.device.extra.CLASS_NAME"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 110
    .local v6, "deviceAddress":Ljava/lang/String;
    :goto_1
    const/4 v13, 0x0

    .line 111
    .local v13, "title":Ljava/lang/String;
    const/4 v9, 0x0

    .line 112
    .local v9, "message":Ljava/lang/String;
    const-string v16, "power"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/PowerManager;

    .line 115
    .local v12, "powerManager":Landroid/os/PowerManager;
    invoke-virtual {v12}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v16

    if-eqz v16, :cond_3

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/android/settings_ex/bluetooth/LocalBluetoothPreferences;->shouldShowDialogInForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 118
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 109
    .end local v6    # "deviceAddress":Ljava/lang/String;
    .end local v9    # "message":Ljava/lang/String;
    .end local v12    # "powerManager":Landroid/os/PowerManager;
    .end local v13    # "title":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 121
    .restart local v6    # "deviceAddress":Ljava/lang/String;
    .restart local v9    # "message":Ljava/lang/String;
    .restart local v12    # "powerManager":Landroid/os/PowerManager;
    .restart local v13    # "title":Ljava/lang/String;
    :cond_3
    const v16, 0x3000001a

    const-string v17, "ConnectionAccessActivity"

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v15

    .line 124
    .local v15, "wakeLock":Landroid/os/PowerManager$WakeLock;
    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 125
    invoke-virtual {v15}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 132
    new-instance v5, Landroid/content/Intent;

    const-string v16, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    .local v5, "deleteIntent":Landroid/content/Intent;
    const-string v16, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 134
    const-string v16, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    const/16 v17, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 136
    const-string v16, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v16, v0

    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v7

    .line 138
    .local v7, "deviceName":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_0

    .line 155
    const v16, 0x7f0c033e

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 156
    const v16, 0x7f0c0340

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

    .line 160
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

    const v17, 0x1060064

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v10

    .line 176
    .local v10, "notification":Landroid/app/Notification;
    iget v0, v10, Landroid/app/Notification;->flags:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x20

    move/from16 v0, v16

    iput v0, v10, Landroid/app/Notification;->flags:I

    .line 178
    const-string v16, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationManager;

    .line 181
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

    .line 183
    invoke-virtual {v15}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 137
    .end local v7    # "deviceName":Ljava/lang/String;
    .end local v10    # "notification":Landroid/app/Notification;
    .end local v11    # "notificationManager":Landroid/app/NotificationManager;
    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 140
    .restart local v7    # "deviceName":Ljava/lang/String;
    :pswitch_0
    const v16, 0x7f0c0341

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 141
    const v16, 0x7f0c0342

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

    .line 143
    goto/16 :goto_3

    .line 145
    :pswitch_1
    const v16, 0x7f0c0345

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 146
    const v16, 0x7f0c0346

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

    .line 148
    goto/16 :goto_3

    .line 150
    :pswitch_2
    const v16, 0x7f0c0347

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 151
    const v16, 0x7f0c0348

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

    .line 153
    goto/16 :goto_3

    .line 185
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

    .line 187
    const-string v16, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 189
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

    .line 191
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

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
