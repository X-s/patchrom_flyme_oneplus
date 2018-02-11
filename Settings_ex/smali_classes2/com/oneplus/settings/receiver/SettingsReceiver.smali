.class public Lcom/oneplus/settings/receiver/SettingsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingsReceiver.java"


# static fields
.field private static final ACTION_THREE_KEY:Ljava/lang/String; = "com.oem.intent.action.THREE_KEY_MODE"

.field private static final BOOT_BROADCAST:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field private static final NO_OEM_FONT_DIALOG:I = 0x0

.field private static final SYSTEM_DEFALUT_FONT:I = 0x1


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mUm:Landroid/os/UserManager;

.field private mZenMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mZenMode:I

    .line 29
    return-void
.end method

.method private setBluetoothScanMode()V
    .locals 2

    .prologue
    .line 148
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oneplus/settings/receiver/SettingsReceiver$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/receiver/SettingsReceiver$1;-><init>(Lcom/oneplus/settings/receiver/SettingsReceiver;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 147
    return-void
.end method

.method private setFontMode(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 140
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.OEM_FONT_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "oem_font_mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 142
    const-string/jumbo v1, "oem_font_dialog"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 143
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 144
    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v1, v0}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    .line 139
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 42
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "action":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mZenMode:I

    .line 44
    const-string/jumbo v12, "SettingsReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "action = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const-string/jumbo v12, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 46
    const-string/jumbo v12, "android.intent.extra.REPLACING"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 75
    :cond_0
    :goto_0
    const-string/jumbo v12, "codeaurora.net.conn.TETHER_AUTO_SHUT_DOWN_SOFTAP"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 77
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lcom/android/settings_exlib/TetherUtil;->setWifiTethering(ZLandroid/content/Context;)Z

    .line 79
    :cond_1
    const-string/jumbo v12, "com.oem.intent.action.THREE_KEY_MODE"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 80
    invoke-static/range {p1 .. p1}, Lcom/oneplus/settings/utils/OPZenModeUtils;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/utils/OPZenModeUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/oneplus/settings/utils/OPZenModeUtils;->sendAppTrackerDelay()V

    .line 83
    :cond_2
    const-string/jumbo v12, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 84
    const-string/jumbo v12, "App_Tracker"

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    const-string/jumbo v13, "zen_mode"

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 85
    .local v5, "mSharedZenMode":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mZenMode:I

    if-eq v5, v12, :cond_3

    .line 86
    invoke-static/range {p1 .. p1}, Lcom/oneplus/settings/utils/OPZenModeUtils;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/utils/OPZenModeUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/oneplus/settings/utils/OPZenModeUtils;->sendAppTrackerDelay()V

    .line 90
    .end local v5    # "mSharedZenMode":I
    :cond_3
    const-string/jumbo v12, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 91
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportFontStyleSetting()Z

    move-result v12

    if-nez v12, :cond_b

    .line 92
    const-string/jumbo v12, "SettingsReceiver"

    const-string/jumbo v13, "! isSupportFontStyleSetting Language change"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/oneplus/settings/receiver/SettingsReceiver;->setFontMode(I)V

    .line 101
    :cond_4
    :goto_1
    const-string/jumbo v12, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 102
    const-string/jumbo v12, "android.bluetooth.adapter.extra.STATE"

    .line 103
    const/high16 v13, -0x80000000

    .line 102
    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 104
    .local v10, "state":I
    const-string/jumbo v12, "SettingsReceiver"

    const-string/jumbo v13, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string/jumbo v12, "oneplus_bluetooth_scan_mode_flag"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/oneplus/settings/utils/OPPrefUtil;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 106
    .local v9, "scanmodestatus":I
    const/16 v12, 0xc

    if-ne v10, v12, :cond_5

    if-nez v9, :cond_5

    .line 107
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/settings/receiver/SettingsReceiver;->setBluetoothScanMode()V

    .line 111
    .end local v9    # "scanmodestatus":I
    .end local v10    # "state":I
    :cond_5
    const-string/jumbo v12, "com.oem.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 112
    const-string/jumbo v12, "user"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/UserManager;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mUm:Landroid/os/UserManager;

    .line 114
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mUm:Landroid/os/UserManager;

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mUm:Landroid/os/UserManager;

    const/16 v13, 0x3e7

    invoke-virtual {v12, v13}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 115
    const-string/jumbo v12, "SettingsReceiver"

    const-string/jumbo v13, "Handle Parallel App Requirement"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :try_start_0
    sget-object v12, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v12}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 119
    const-string/jumbo v13, "oem_acc_sensor_three_finger"

    .line 120
    const/4 v14, 0x0

    .line 117
    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 122
    .local v8, "pointerScreenCapture":I
    sget-object v12, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v12}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 123
    const-string/jumbo v13, "oem_acc_sensor_three_finger"

    .line 124
    const/16 v14, 0x3e7

    .line 121
    invoke-static {v12, v13, v8, v14}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 130
    .end local v8    # "pointerScreenCapture":I
    :goto_2
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 131
    const-string/jumbo v12, "com.google.android.gms"

    const/16 v13, 0x3e7

    move-object/from16 v0, p1

    invoke-static {v0, v12, v13}, Lcom/oneplus/settings/utils/OPUtils;->installMultiApp(Landroid/content/Context;Ljava/lang/String;I)V

    .line 40
    :cond_6
    return-void

    .line 47
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v7

    .line 48
    .local v7, "pkgName":Ljava/lang/String;
    const-string/jumbo v12, "SettingsReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "ACTION_PACKAGE_REMOVED pkgName= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mAppOpsManager:Landroid/app/AppOpsManager;

    if-nez v12, :cond_8

    .line 50
    const-string/jumbo v12, "appops"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/AppOpsManager;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 52
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v12, :cond_9

    .line 53
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 55
    :cond_9
    const/4 v6, 0x0

    .line 57
    .local v6, "multiAppInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 58
    const/4 v13, 0x1

    const/16 v14, 0x3e7

    .line 57
    invoke-virtual {v12, v7, v13, v14}, Landroid/content/pm/PackageManager;->getApplicationInfoByUserId(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .line 62
    .end local v6    # "multiAppInfo":Landroid/content/pm/ApplicationInfo;
    :goto_3
    const-string/jumbo v12, "SettingsReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "multiAppInfo = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    if-nez v6, :cond_a

    .line 65
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 66
    const/4 v13, 0x1

    const/4 v14, 0x0

    .line 65
    invoke-virtual {v12, v7, v13, v14}, Landroid/content/pm/PackageManager;->getApplicationInfoByUserId(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 67
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v13, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v14, 0x45

    .line 68
    const/4 v15, 0x1

    .line 67
    invoke-virtual {v12, v14, v13, v7, v15}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 73
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_a
    :goto_4
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/oneplus/settings/utils/OPUtils;->removeMultiApp(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 59
    .restart local v6    # "multiAppInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v3

    .line 60
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v12, "SettingsReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Not found pkg = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " in user "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x3e7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 70
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6    # "multiAppInfo":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v3

    .line 71
    .restart local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_4

    .line 95
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7    # "pkgName":Ljava/lang/String;
    :cond_b
    const-string/jumbo v12, "SettingsReceiver"

    const-string/jumbo v13, " isSupportFontStyleSetting Language change"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sget-object v12, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v12}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "oem_font_mode"

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-static {v12, v13, v14, v15}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    .line 97
    .local v11, "value":I
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/oneplus/settings/receiver/SettingsReceiver;->setFontMode(I)V

    goto/16 :goto_1

    .line 125
    .end local v11    # "value":I
    :catch_2
    move-exception v4

    .line 126
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2
.end method
