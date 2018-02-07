.class public Lcom/oneplus/settings/receiver/SettingsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingsReceiver.java"


# static fields
.field private static final ACTION_OTG_AUTO_SHUTDOWN:Ljava/lang/String; = "oneplus.intent.action.otg_auto_shutdown"

.field private static final ACTION_THREE_KEY:Ljava/lang/String; = "com.oem.intent.action.THREE_KEY_MODE"

.field private static final BOOT_BROADCAST:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field private static final NO_OEM_FONT_DIALOG:I = 0x0

.field private static final SYSTEM_DEFALUT_FONT:I = 0x1


# instance fields
.field private mZenMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mZenMode:I

    .line 26
    return-void
.end method

.method private setBluetoothScanMode()V
    .locals 2

    .prologue
    .line 116
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oneplus/settings/receiver/SettingsReceiver$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/receiver/SettingsReceiver$1;-><init>(Lcom/oneplus/settings/receiver/SettingsReceiver;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 115
    return-void
.end method

.method private setFontMode(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 108
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.OEM_FONT_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "oem_font_mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    const-string/jumbo v1, "oem_font_dialog"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 111
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 112
    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v1, v0}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    .line 107
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 37
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "action":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mZenMode:I

    .line 39
    const-string/jumbo v13, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 40
    const-string/jumbo v13, "android.intent.extra.REPLACING"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 46
    :cond_0
    :goto_0
    const-string/jumbo v13, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    if-eqz v13, :cond_1

    const-string/jumbo v13, "com.oneplus.cloud"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 47
    const/4 v13, 0x0

    sput-object v13, Lcom/oneplus/settings/utils/OPUtils;->isExist_Cloud_Package:Ljava/lang/Boolean;

    .line 49
    :cond_1
    const-string/jumbo v13, "SettingsReceiver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "action = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const-string/jumbo v13, "codeaurora.net.conn.TETHER_AUTO_SHUT_DOWN_SOFTAP"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 52
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-static {v13, v0}, Lcom/android/settings_exlib/TetherUtil;->setWifiTethering(ZLandroid/content/Context;)Z

    .line 54
    :cond_2
    const-string/jumbo v13, "com.oem.intent.action.THREE_KEY_MODE"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 55
    invoke-static/range {p1 .. p1}, Lcom/oneplus/settings/utils/OPZenModeUtils;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/utils/OPZenModeUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/oneplus/settings/utils/OPZenModeUtils;->sendAppTrackerDelay()V

    .line 58
    :cond_3
    const-string/jumbo v13, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 59
    const-string/jumbo v13, "App_Tracker"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    const-string/jumbo v14, "zen_mode"

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 60
    .local v8, "mSharedZenMode":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mZenMode:I

    if-eq v8, v13, :cond_4

    .line 61
    invoke-static/range {p1 .. p1}, Lcom/oneplus/settings/utils/OPZenModeUtils;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/utils/OPZenModeUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/oneplus/settings/utils/OPZenModeUtils;->sendAppTrackerDelay()V

    .line 65
    .end local v8    # "mSharedZenMode":I
    :cond_4
    const-string/jumbo v13, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 66
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportFontStyleSetting()Z

    move-result v13

    if-nez v13, :cond_9

    .line 67
    const-string/jumbo v13, "SettingsReceiver"

    const-string/jumbo v14, "! isSupportFontStyleSetting Language change"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/oneplus/settings/receiver/SettingsReceiver;->setFontMode(I)V

    .line 76
    :cond_5
    :goto_1
    const-string/jumbo v13, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 77
    const-string/jumbo v13, "android.bluetooth.adapter.extra.STATE"

    .line 78
    const/high16 v14, -0x80000000

    .line 77
    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 79
    .local v11, "state":I
    const-string/jumbo v13, "SettingsReceiver"

    const-string/jumbo v14, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string/jumbo v13, "oneplus_bluetooth_scan_mode_flag"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/oneplus/settings/utils/OPPrefUtil;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 81
    .local v10, "scanmodestatus":I
    const/16 v13, 0xc

    if-ne v11, v13, :cond_6

    if-nez v10, :cond_6

    .line 82
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/settings/receiver/SettingsReceiver;->setBluetoothScanMode()V

    .line 86
    .end local v10    # "scanmodestatus":I
    .end local v11    # "state":I
    :cond_6
    const-string/jumbo v13, "oneplus.intent.action.otg_auto_shutdown"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 87
    const-string/jumbo v13, "persist.sys.oem.otg_support"

    const-string/jumbo v14, "false"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "oneplus_otg_auto_disable"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 89
    sget-object v13, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v13}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "oneplus_otg_auto_disable_is_first"

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v13 .. v16}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 90
    .local v3, "is_first":I
    if-nez v3, :cond_7

    .line 91
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v13, "oneplus.intent.action.OTG_SETTINGS"

    invoke-direct {v4, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    .local v4, "mIntent":Landroid/content/Intent;
    const/high16 v13, 0x10000000

    invoke-virtual {v4, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 93
    const/4 v13, 0x0

    const/high16 v14, 0x40000000    # 2.0f

    move-object/from16 v0, p1

    invoke-static {v0, v13, v4, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 94
    .local v7, "mPendingIntent":Landroid/app/PendingIntent;
    new-instance v13, Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v13

    .line 96
    const/4 v14, 0x1

    .line 94
    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v13

    .line 96
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0e03e2

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 94
    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    .line 97
    const v14, 0x7f0201ec

    .line 94
    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 98
    .local v2, "builder":Landroid/app/Notification$Builder;
    const-string/jumbo v13, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 99
    .local v6, "mNotificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    .line 100
    .local v5, "mNotification":Landroid/app/Notification;
    iget v13, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v13, v13, 0x8

    iput v13, v5, Landroid/app/Notification;->flags:I

    .line 101
    const v13, 0x7f0e03e2

    invoke-virtual {v6, v13, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 102
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "oneplus_otg_auto_disable_is_first"

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 35
    .end local v2    # "builder":Landroid/app/Notification$Builder;
    .end local v3    # "is_first":I
    .end local v4    # "mIntent":Landroid/content/Intent;
    .end local v5    # "mNotification":Landroid/app/Notification;
    .end local v6    # "mNotificationManager":Landroid/app/NotificationManager;
    .end local v7    # "mPendingIntent":Landroid/app/PendingIntent;
    :cond_7
    return-void

    .line 41
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v9

    .line 42
    .local v9, "pkgName":Ljava/lang/String;
    const-string/jumbo v13, "com.oneplus.cloud"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 43
    const/4 v13, 0x0

    sput-object v13, Lcom/oneplus/settings/utils/OPUtils;->isExist_Cloud_Package:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 70
    .end local v9    # "pkgName":Ljava/lang/String;
    :cond_9
    const-string/jumbo v13, "SettingsReceiver"

    const-string/jumbo v14, " isSupportFontStyleSetting Language change"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    sget-object v13, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v13}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "oem_font_mode"

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 72
    .local v12, "value":I
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/oneplus/settings/receiver/SettingsReceiver;->setFontMode(I)V

    goto/16 :goto_1
.end method
