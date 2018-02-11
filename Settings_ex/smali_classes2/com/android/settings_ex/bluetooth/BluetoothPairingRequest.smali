.class public final Lcom/android/settings_ex/bluetooth/BluetoothPairingRequest;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPairingRequest.java"


# static fields
.field private static final NOTIFICATION_ID:I = 0x1080080


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private isScreenLocked(Landroid/content/Context;)Z
    .locals 2
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 141
    const-string/jumbo v1, "keyguard"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 142
    .local v0, "mKeyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    return v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 45
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, "action":Ljava/lang/String;
    const-string/jumbo v19, "android.bluetooth.device.action.PAIRING_REQUEST"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 49
    const-string/jumbo v19, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    .line 50
    .local v6, "device":Landroid/bluetooth/BluetoothDevice;
    const-string/jumbo v19, "android.bluetooth.device.extra.PAIRING_VARIANT"

    .line 51
    const/high16 v20, -0x80000000

    .line 50
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 52
    .local v18, "type":I
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 53
    .local v12, "pairingIntent":Landroid/content/Intent;
    const-class v19, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 54
    const-string/jumbo v19, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 55
    const-string/jumbo v19, "android.bluetooth.device.extra.PAIRING_VARIANT"

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 56
    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 57
    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 59
    :cond_0
    :goto_0
    const-string/jumbo v19, "android.bluetooth.device.extra.PAIRING_KEY"

    .line 60
    const/high16 v20, -0x80000000

    .line 59
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 61
    .local v13, "pairingKey":I
    const-string/jumbo v19, "android.bluetooth.device.extra.PAIRING_KEY"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 63
    .end local v13    # "pairingKey":I
    :cond_1
    const-string/jumbo v19, "android.bluetooth.device.action.PAIRING_REQUEST"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const/high16 v19, 0x10000000

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 67
    const-string/jumbo v19, "power"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/PowerManager;

    .line 68
    .local v15, "powerManager":Landroid/os/PowerManager;
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 69
    :goto_1
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v8

    .line 70
    .local v8, "deviceName":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p1

    invoke-static {v0, v7, v8}, Lcom/android/settings_ex/bluetooth/LocalBluetoothPreferences;->shouldShowDialogInForeground(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    .line 73
    .local v17, "shouldShowDialog":Z
    invoke-virtual {v15}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v19

    if-eqz v19, :cond_2

    if-eqz v17, :cond_2

    invoke-direct/range {p0 .. p1}, Lcom/android/settings_ex/bluetooth/BluetoothPairingRequest;->isScreenLocked(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 80
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 81
    .local v16, "res":Landroid/content/res/Resources;
    new-instance v19, Landroid/app/Notification$Builder;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 82
    const v20, 0x1080080

    .line 81
    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v19

    .line 83
    const v20, 0x7f0e0545

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 81
    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 85
    .local v5, "builder":Landroid/app/Notification$Builder;
    const/16 v19, 0x0

    .line 86
    const/high16 v20, 0x8000000

    .line 85
    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v12, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    .line 88
    .local v14, "pending":Landroid/app/PendingIntent;
    const-string/jumbo v19, "android.bluetooth.device.extra.NAME"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 89
    .local v10, "name":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 90
    if-eqz v6, :cond_9

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v10

    .line 94
    :cond_3
    :goto_3
    const v19, 0x7f0e0546

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v19

    .line 95
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v10, v20, v21

    const v21, 0x7f0e0547

    move-object/from16 v0, v16

    move/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 94
    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v19

    .line 97
    const/16 v20, 0x1

    .line 94
    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v19

    .line 98
    const/16 v20, 0x1

    .line 94
    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v19

    .line 100
    const v20, 0x106005b

    .line 99
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v20

    .line 94
    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 103
    const-string/jumbo v19, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 102
    check-cast v9, Landroid/app/NotificationManager;

    .line 104
    .local v9, "manager":Landroid/app/NotificationManager;
    invoke-virtual {v5}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v19

    const v20, 0x1080080

    move/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 44
    .end local v5    # "builder":Landroid/app/Notification$Builder;
    .end local v6    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v8    # "deviceName":Ljava/lang/String;
    .end local v9    # "manager":Landroid/app/NotificationManager;
    .end local v10    # "name":Ljava/lang/String;
    .end local v12    # "pairingIntent":Landroid/content/Intent;
    .end local v14    # "pending":Landroid/app/PendingIntent;
    .end local v15    # "powerManager":Landroid/os/PowerManager;
    .end local v16    # "res":Landroid/content/res/Resources;
    .end local v17    # "shouldShowDialog":Z
    .end local v18    # "type":I
    :cond_4
    :goto_4
    return-void

    .line 58
    .restart local v6    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local v12    # "pairingIntent":Landroid/content/Intent;
    .restart local v18    # "type":I
    :cond_5
    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    goto/16 :goto_0

    .line 68
    .restart local v15    # "powerManager":Landroid/os/PowerManager;
    :cond_6
    const/4 v7, 0x0

    .local v7, "deviceAddress":Ljava/lang/String;
    goto/16 :goto_1

    .line 69
    .end local v7    # "deviceAddress":Ljava/lang/String;
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 77
    .restart local v8    # "deviceName":Ljava/lang/String;
    .restart local v17    # "shouldShowDialog":Z
    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    .line 91
    .restart local v5    # "builder":Landroid/app/Notification$Builder;
    .restart local v10    # "name":Ljava/lang/String;
    .restart local v14    # "pending":Landroid/app/PendingIntent;
    .restart local v16    # "res":Landroid/content/res/Resources;
    :cond_9
    const v19, 0x104000e

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_3

    .line 107
    .end local v5    # "builder":Landroid/app/Notification$Builder;
    .end local v6    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v8    # "deviceName":Ljava/lang/String;
    .end local v10    # "name":Ljava/lang/String;
    .end local v12    # "pairingIntent":Landroid/content/Intent;
    .end local v14    # "pending":Landroid/app/PendingIntent;
    .end local v15    # "powerManager":Landroid/os/PowerManager;
    .end local v16    # "res":Landroid/content/res/Resources;
    .end local v17    # "shouldShowDialog":Z
    .end local v18    # "type":I
    :cond_a
    const-string/jumbo v19, "android.bluetooth.device.action.PAIRING_CANCEL"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 108
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 110
    .restart local v12    # "pairingIntent":Landroid/content/Intent;
    const-class v19, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 111
    const-string/jumbo v19, "android.bluetooth.device.action.PAIRING_REQUEST"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const/high16 v19, 0x10000000

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 113
    const/16 v19, 0x0

    .line 114
    const/high16 v20, 0x20000000

    .line 113
    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v12, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    .line 115
    .restart local v14    # "pending":Landroid/app/PendingIntent;
    if-eqz v14, :cond_b

    .line 116
    invoke-virtual {v14}, Landroid/app/PendingIntent;->cancel()V

    .line 121
    :cond_b
    const-string/jumbo v19, "notification"

    .line 120
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 122
    .restart local v9    # "manager":Landroid/app/NotificationManager;
    const v19, 0x1080080

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_4

    .line 124
    .end local v9    # "manager":Landroid/app/NotificationManager;
    .end local v12    # "pairingIntent":Landroid/content/Intent;
    .end local v14    # "pending":Landroid/app/PendingIntent;
    :cond_c
    const-string/jumbo v19, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 125
    const-string/jumbo v19, "android.bluetooth.device.extra.BOND_STATE"

    .line 126
    const/high16 v20, -0x80000000

    .line 125
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 127
    .local v4, "bondState":I
    const-string/jumbo v19, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    .line 128
    const/high16 v20, -0x80000000

    .line 127
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 129
    .local v11, "oldState":I
    const/16 v19, 0xb

    move/from16 v0, v19

    if-ne v11, v0, :cond_4

    .line 130
    const/16 v19, 0xa

    move/from16 v0, v19

    if-ne v4, v0, :cond_4

    .line 133
    const-string/jumbo v19, "notification"

    .line 132
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 134
    .restart local v9    # "manager":Landroid/app/NotificationManager;
    const v19, 0x1080080

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_4
.end method
