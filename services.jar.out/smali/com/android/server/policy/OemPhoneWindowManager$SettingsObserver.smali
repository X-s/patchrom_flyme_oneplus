.class Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "OemPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OemPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/server/policy/OemPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OemPhoneWindowManager;Landroid/os/Handler;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1239
    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    .line 1240
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1237
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1239
    return-void
.end method


# virtual methods
.method observe()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1244
    new-array v0, v4, [I

    const/16 v1, 0x8

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1245
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1246
    const-string/jumbo v1, "oem_acc_key_define"

    .line 1245
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1251
    :cond_0
    new-array v0, v4, [I

    const/16 v1, 0xb

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1252
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1253
    const-string/jumbo v1, "oem_acc_key_lock_mode"

    .line 1252
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1255
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1256
    const-string/jumbo v1, "buttons_force_home_enabled"

    .line 1255
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1262
    :cond_1
    new-array v0, v4, [I

    const/16 v1, 0xd

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1263
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1264
    const-string/jumbo v1, "oem_acc_sensor_three_finger"

    .line 1263
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1270
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1271
    const-string/jumbo v1, "buttons_show_on_screen_navkeys"

    .line 1270
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1273
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1274
    const-string/jumbo v1, "key_home_long_press_action"

    .line 1273
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1276
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1277
    const-string/jumbo v1, "key_home_double_tap_action"

    .line 1276
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1279
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1280
    const-string/jumbo v1, "key_menu_long_press_action"

    .line 1279
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1282
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1283
    const-string/jumbo v1, "key_menu_double_tap_action"

    .line 1282
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1285
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1286
    const-string/jumbo v1, "key_back_long_press_action"

    .line 1285
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1288
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1289
    const-string/jumbo v1, "key_back_double_tap_action"

    .line 1288
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1291
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1292
    const-string/jumbo v1, "key_app_switch_long_press_action"

    .line 1291
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1294
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1295
    const-string/jumbo v1, "key_app_switch_double_tap_action"

    .line 1294
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1297
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1298
    const-string/jumbo v1, "oem_acc_fingerprint_enrolling"

    .line 1297
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1304
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v0, :cond_3

    .line 1305
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1306
    const-string/jumbo v1, "op_quickpay_enable"

    .line 1305
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1308
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1309
    const-string/jumbo v1, "op_quickpay_default_way"

    .line 1308
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1314
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->updateSettings()V

    .line 1243
    return-void
.end method

.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    .prologue
    .line 1319
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->updateSettings()V

    .line 1318
    return-void
.end method

.method public updateSettings()V
    .locals 14

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1323
    iget-object v8, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v10, v8, Lcom/android/server/policy/OemPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1324
    const/4 v8, 0x1

    :try_start_0
    new-array v8, v8, [I

    const/16 v11, 0x8

    const/4 v12, 0x0

    aput v11, v8, v12

    invoke-static {v8}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1325
    iget-object v8, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v11, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1326
    const-string/jumbo v12, "oem_acc_key_define"

    .line 1327
    const/4 v13, 0x0

    .line 1325
    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    iput v11, v8, Lcom/android/server/policy/OemPhoneWindowManager;->mKeysBehavior:I

    .line 1328
    sget-boolean v8, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_KEYSWAP:Z

    if-eqz v8, :cond_0

    .line 1329
    const-string/jumbo v8, "OemPhoneWindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mKeysBehavior: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget v12, v12, Lcom/android/server/policy/OemPhoneWindowManager;->mKeysBehavior:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->updateSwapKey()V

    .line 1334
    :cond_1
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/16 v11, 0xb

    const/4 v12, 0x0

    aput v11, v8, v12

    invoke-static {v8}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1335
    iget-object v8, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1336
    const-string/jumbo v11, "oem_acc_key_lock_mode"

    .line 1337
    sget-object v12, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->NORMAL:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    invoke-virtual {v12}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->ordinal()I

    move-result v12

    .line 1335
    invoke-static {v8, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1338
    .local v2, "keyLockMode":I
    invoke-static {}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->values()[Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    move-result-object v8

    aget-object v8, v8, v2

    sput-object v8, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyLockMode:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    .line 1340
    sget-object v8, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyLockMode:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    sget-object v11, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->BACK_SWITCH:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v8, v11, :cond_7

    .line 1342
    :try_start_1
    const-string/jumbo v8, "/proc/touchpanel/key_disable"

    const-string/jumbo v11, "disable"

    invoke-static {v8, v11}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1354
    :goto_0
    :try_start_2
    iget-object v8, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1355
    const-string/jumbo v11, "buttons_force_home_enabled"

    const/4 v12, 0x0

    .line 1354
    invoke-static {v8, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_8

    move v8, v6

    :goto_1
    sput-boolean v8, Lcom/android/server/policy/OemPhoneWindowManager;->mForceHomeEnabled:Z

    .line 1356
    iget-object v8, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1357
    const-string/jumbo v11, "oem_acc_fingerprint_enrolling"

    const/4 v12, 0x0

    .line 1356
    invoke-static {v8, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_9

    move v8, v6

    :goto_2
    sput-boolean v8, Lcom/android/server/policy/OemPhoneWindowManager;->mFingerprintEnrolling:Z

    .line 1360
    .end local v2    # "keyLockMode":I
    :cond_2
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/16 v11, 0xd

    const/4 v12, 0x0

    aput v11, v8, v12

    invoke-static {v8}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1361
    iget-object v8, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1362
    const-string/jumbo v11, "oem_acc_sensor_three_finger"

    const/4 v12, 0x0

    .line 1361
    invoke-static {v8, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1363
    .local v4, "pointerScreenCapture":I
    iget-object v8, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v8}, Lcom/android/server/policy/OemPhoneWindowManager;->-get11(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 1364
    iget-object v8, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v8}, Lcom/android/server/policy/OemPhoneWindowManager;->-get11(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    move-result-object v11

    if-eqz v4, :cond_a

    move v8, v6

    :goto_3
    invoke-virtual {v11, v8}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->sendEmptyMessage(I)Z

    .line 1372
    .end local v4    # "pointerScreenCapture":I
    :cond_3
    sget-boolean v8, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v8, :cond_5

    .line 1373
    iget-object v8, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v11, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1374
    const-string/jumbo v12, "op_quickpay_enable"

    const/4 v13, 0x0

    .line 1373
    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_b

    :goto_4
    iput-boolean v6, v8, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayEnabled:Z

    .line 1375
    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1376
    const-string/jumbo v8, "op_quickpay_default_way"

    const/4 v11, 0x0

    .line 1375
    invoke-static {v7, v8, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayDefault:I

    .line 1377
    const-string/jumbo v6, "OemPhoneWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "QuickPay: ScreenOff enabled="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-boolean v8, v8, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayEnabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1378
    const-string/jumbo v8, " which="

    .line 1377
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1378
    iget-object v8, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget v8, v8, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayDefault:I

    .line 1377
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget v6, v6, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnX:I

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget v6, v6, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnY:I

    if-nez v6, :cond_5

    .line 1381
    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1382
    const-string/jumbo v7, "quickpay_button_xy"

    .line 1381
    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1383
    .local v3, "loadXY":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 1384
    const-string/jumbo v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1385
    .local v5, "split":[Ljava/lang/String;
    array-length v6, v5

    if-lt v6, v9, :cond_4

    .line 1386
    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnX:I

    .line 1387
    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnY:I

    .line 1390
    .end local v5    # "split":[Ljava/lang/String;
    :cond_4
    const-string/jumbo v6, "OemPhoneWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "QuickPay: loadXY="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    .end local v3    # "loadXY":Ljava/lang/String;
    :cond_5
    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1397
    const-string/jumbo v7, "buttons_show_on_screen_navkeys"

    const/4 v8, 0x0

    .line 1396
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_c

    const/4 v1, 0x1

    .line 1398
    .local v1, "enableSoftwareKeys":Z
    :goto_5
    invoke-static {}, Lcom/android/server/policy/OemPhoneWindowManager;->-get17()Z

    move-result v6

    if-eq v1, v6, :cond_6

    .line 1401
    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    const-string/jumbo v7, "Navigationbar changed"

    invoke-virtual {v6, v7}, Landroid/view/WindowManagerInternal;->killInputMethodProc(Ljava/lang/String;)V

    .line 1403
    invoke-static {v1}, Lcom/android/server/policy/OemPhoneWindowManager;->-set15(Z)Z

    .line 1404
    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v8, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v11, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v12, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/android/server/policy/OemPhoneWindowManager;->-set8(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    move-result v12

    invoke-static {v11, v12}, Lcom/android/server/policy/OemPhoneWindowManager;->-set10(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    move-result v11

    invoke-static {v9, v11}, Lcom/android/server/policy/OemPhoneWindowManager;->-set1(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    move-result v9

    invoke-static {v8, v9}, Lcom/android/server/policy/OemPhoneWindowManager;->-set3(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    move-result v8

    invoke-static {v7, v8}, Lcom/android/server/policy/OemPhoneWindowManager;->-set5(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    move-result v7

    invoke-static {v6, v7}, Lcom/android/server/policy/OemPhoneWindowManager;->-set7(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    .line 1407
    :cond_6
    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v6}, Lcom/android/server/policy/OemPhoneWindowManager;->-wrap7(Lcom/android/server/policy/OemPhoneWindowManager;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v10

    .line 1322
    return-void

    .line 1343
    .end local v1    # "enableSoftwareKeys":Z
    .restart local v2    # "keyLockMode":I
    :catch_0
    move-exception v0

    .line 1344
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v8, "OemPhoneWindowManager"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 1323
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "keyLockMode":I
    :catchall_0
    move-exception v6

    monitor-exit v10

    throw v6

    .line 1348
    .restart local v2    # "keyLockMode":I
    :cond_7
    :try_start_4
    const-string/jumbo v8, "/proc/touchpanel/key_disable"

    const-string/jumbo v11, "enable"

    invoke-static {v8, v11}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1349
    :catch_1
    move-exception v0

    .line 1350
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_5
    const-string/jumbo v8, "OemPhoneWindowManager"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :cond_8
    move v8, v7

    .line 1354
    goto/16 :goto_1

    :cond_9
    move v8, v7

    .line 1356
    goto/16 :goto_2

    .end local v2    # "keyLockMode":I
    .restart local v4    # "pointerScreenCapture":I
    :cond_a
    move v8, v9

    .line 1366
    goto/16 :goto_3

    .end local v4    # "pointerScreenCapture":I
    :cond_b
    move v6, v7

    .line 1373
    goto/16 :goto_4

    .line 1396
    :cond_c
    const/4 v1, 0x0

    .restart local v1    # "enableSoftwareKeys":Z
    goto :goto_5
.end method

.method updateSwapKey()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1433
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/OemPhoneWindowManager;->mKeysBehavior:I

    if-nez v2, :cond_1

    .line 1434
    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v1, "1"

    .line 1440
    .local v1, "setVal":Ljava/lang/String;
    :goto_0
    :try_start_0
    const-string/jumbo v2, "/proc/touchpanel/key_switch"

    invoke-static {v2, v1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1412
    :goto_1
    return-void

    .line 1434
    .end local v1    # "setVal":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "0"

    .restart local v1    # "setVal":Ljava/lang/String;
    goto :goto_0

    .line 1436
    .end local v1    # "setVal":Ljava/lang/String;
    :cond_1
    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v1, "0"

    .restart local v1    # "setVal":Ljava/lang/String;
    goto :goto_0

    .end local v1    # "setVal":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, "1"

    .restart local v1    # "setVal":Ljava/lang/String;
    goto :goto_0

    .line 1441
    :catch_0
    move-exception v0

    .line 1442
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "OemPhoneWindowManager"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
