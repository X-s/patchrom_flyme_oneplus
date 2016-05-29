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
    .line 149
    const-string v1, "keyguard"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 150
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

    .line 47
    .local v3, "action":Ljava/lang/String;
    const-string v18, "android.bluetooth.device.action.PAIRING_REQUEST"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 49
    const-string v18, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    .line 51
    .local v6, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v18, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/high16 v19, -0x80000000

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 53
    .local v17, "type":I
    const-string v18, "codeaurora.bluetooth.device.extra.SECURE"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v16

    .line 54
    .local v16, "secure":Z
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 55
    .local v11, "pairingIntent":Landroid/content/Intent;
    const-class v18, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 56
    const-string v18, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 57
    const-string v18, "android.bluetooth.device.extra.PAIRING_VARIANT"

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 58
    const-string v18, "codeaurora.bluetooth.device.extra.SECURE"

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 59
    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 62
    :cond_0
    const-string v18, "android.bluetooth.device.extra.PAIRING_KEY"

    const/high16 v19, -0x80000000

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 64
    .local v12, "pairingKey":I
    const-string v18, "android.bluetooth.device.extra.PAIRING_KEY"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 66
    .end local v12    # "pairingKey":I
    :cond_1
    const-string v18, "android.bluetooth.device.action.PAIRING_REQUEST"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const/high16 v18, 0x10000000

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 69
    const-string v18, "power"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/PowerManager;

    .line 71
    .local v14, "powerManager":Landroid/os/PowerManager;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 72
    .local v7, "deviceAddress":Ljava/lang/String;
    :goto_0
    invoke-virtual {v14}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v18

    if-eqz v18, :cond_4

    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/android/settings_ex/bluetooth/LocalBluetoothPreferences;->shouldShowDialogInForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-direct/range {p0 .. p1}, Lcom/android/settings_ex/bluetooth/BluetoothPairingRequest;->isScreenLocked(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_4

    .line 76
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 146
    .end local v6    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v7    # "deviceAddress":Ljava/lang/String;
    .end local v11    # "pairingIntent":Landroid/content/Intent;
    .end local v14    # "powerManager":Landroid/os/PowerManager;
    .end local v16    # "secure":Z
    .end local v17    # "type":I
    :cond_2
    :goto_1
    return-void

    .line 71
    .restart local v6    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local v11    # "pairingIntent":Landroid/content/Intent;
    .restart local v14    # "powerManager":Landroid/os/PowerManager;
    .restart local v16    # "secure":Z
    .restart local v17    # "type":I
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 88
    .restart local v7    # "deviceAddress":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 89
    .local v15, "res":Landroid/content/res/Resources;
    new-instance v18, Landroid/app/Notification$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v19, 0x1080080

    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v18

    const v19, 0x7f0901a7

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 93
    .local v5, "builder":Landroid/app/Notification$Builder;
    const/16 v18, 0x0

    const/high16 v19, 0x8000000

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v11, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 96
    .local v13, "pending":Landroid/app/PendingIntent;
    const-string v18, "android.bluetooth.device.extra.NAME"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 97
    .local v9, "name":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 98
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v9

    .line 102
    :cond_5
    :goto_2
    const v18, 0x7f0901a8

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v18

    const v19, 0x7f0901a9

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v9, v20, v21

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v18

    const v19, 0x1060059

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 110
    const-string v18, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 112
    .local v8, "manager":Landroid/app/NotificationManager;
    const v18, 0x1080080

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v19

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_1

    .line 98
    .end local v8    # "manager":Landroid/app/NotificationManager;
    :cond_6
    const v18, 0x104000e

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 116
    .end local v5    # "builder":Landroid/app/Notification$Builder;
    .end local v6    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v7    # "deviceAddress":Ljava/lang/String;
    .end local v9    # "name":Ljava/lang/String;
    .end local v11    # "pairingIntent":Landroid/content/Intent;
    .end local v13    # "pending":Landroid/app/PendingIntent;
    .end local v14    # "powerManager":Landroid/os/PowerManager;
    .end local v15    # "res":Landroid/content/res/Resources;
    .end local v16    # "secure":Z
    .end local v17    # "type":I
    :cond_7
    const-string v18, "android.bluetooth.device.action.PAIRING_CANCEL"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 117
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 119
    .restart local v11    # "pairingIntent":Landroid/content/Intent;
    const-class v18, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 120
    const-string v18, "android.bluetooth.device.action.PAIRING_REQUEST"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const/high16 v18, 0x10000000

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 122
    const/16 v18, 0x0

    const/high16 v19, 0x20000000

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v11, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 124
    .restart local v13    # "pending":Landroid/app/PendingIntent;
    if-eqz v13, :cond_8

    .line 125
    invoke-virtual {v13}, Landroid/app/PendingIntent;->cancel()V

    .line 129
    :cond_8
    const-string v18, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 131
    .restart local v8    # "manager":Landroid/app/NotificationManager;
    const v18, 0x1080080

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_1

    .line 133
    .end local v8    # "manager":Landroid/app/NotificationManager;
    .end local v11    # "pairingIntent":Landroid/content/Intent;
    .end local v13    # "pending":Landroid/app/PendingIntent;
    :cond_9
    const-string v18, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 134
    const-string v18, "android.bluetooth.device.extra.BOND_STATE"

    const/high16 v19, -0x80000000

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 136
    .local v4, "bondState":I
    const-string v18, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    const/high16 v19, -0x80000000

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 138
    .local v10, "oldState":I
    const/16 v18, 0xb

    move/from16 v0, v18

    if-ne v10, v0, :cond_2

    const/16 v18, 0xa

    move/from16 v0, v18

    if-ne v4, v0, :cond_2

    .line 141
    const-string v18, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 143
    .restart local v8    # "manager":Landroid/app/NotificationManager;
    const v18, 0x1080080

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_1
.end method
