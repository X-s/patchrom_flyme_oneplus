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

.field private final mUpdateSwapkeyTask:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/server/policy/OemPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OemPhoneWindowManager;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1171
    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    .line 1172
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1169
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1336
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver$1;-><init>(Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mUpdateSwapkeyTask:Ljava/lang/Runnable;

    .line 1173
    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mUpdateSwapkeyTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;

    .prologue
    .line 1168
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->updateSwapKeyLocked()V

    return-void
.end method

.method private readConfigurationHomeBehaviors()V
    .locals 4

    .prologue
    .line 1322
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1325
    .local v1, "resolver":Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e005e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1327
    .local v0, "defaultLongPressOnHomeBehavior":I
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    const-string v3, "key_home_long_press_action"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    # setter for: Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I
    invoke-static {v2, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->access$2202(Lcom/android/server/policy/OemPhoneWindowManager;I)I

    .line 1330
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # getter for: Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I
    invoke-static {v2}, Lcom/android/server/policy/OemPhoneWindowManager;->access$2200(Lcom/android/server/policy/OemPhoneWindowManager;)I

    move-result v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # getter for: Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I
    invoke-static {v2}, Lcom/android/server/policy/OemPhoneWindowManager;->access$2200(Lcom/android/server/policy/OemPhoneWindowManager;)I

    move-result v2

    const/16 v3, 0x8

    if-le v2, v3, :cond_1

    .line 1332
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I
    invoke-static {v2, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->access$2202(Lcom/android/server/policy/OemPhoneWindowManager;I)I

    .line 1334
    :cond_1
    return-void
.end method

.method private updateSwapKeyLocked()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1368
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/OemPhoneWindowManager;->mKeysBehavior:I

    if-nez v2, :cond_3

    .line 1369
    invoke-static {}, Landroid/util/OpFeatures;->isH2()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1374
    .local v0, "setVal":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    if-eqz v1, :cond_1

    .line 1375
    sget-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_KEYSWAP:Z

    if-eqz v1, :cond_0

    .line 1376
    const-string v1, "OemPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setKeyswapEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/input/InputManagerService;->setKeyswapEnabled(Z)V

    .line 1380
    :cond_1
    return-void

    .end local v0    # "setVal":Z
    :cond_2
    move v0, v1

    .line 1369
    goto :goto_0

    .line 1371
    :cond_3
    invoke-static {}, Landroid/util/OpFeatures;->isH2()Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .restart local v0    # "setVal":Z
    :cond_4
    goto :goto_0
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1176
    invoke-static {}, Landroid/util/OpFeatures;->isSupportedSwapKey()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # invokes: Lcom/android/server/policy/OemPhoneWindowManager;->hasFixedInvertedHWButtonsOrder()Z
    invoke-static {v0}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1400(Lcom/android/server/policy/OemPhoneWindowManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1177
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "oem_acc_key_define"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1183
    :cond_0
    invoke-static {}, Landroid/util/OpFeatures;->isSupportedKeyLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1184
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "oem_acc_key_lock_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1187
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "buttons_force_home_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1194
    :cond_1
    invoke-static {}, Landroid/util/OpFeatures;->isH2()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1195
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "oem_acc_sensor_three_finger"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1198
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "key_home_long_press_action"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1205
    :cond_2
    invoke-static {}, Landroid/util/OpFeatures;->isO2()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1206
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "buttons_show_on_screen_navkeys"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1209
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "key_home_long_press_action"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1212
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "key_home_double_tap_action"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1215
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "key_menu_long_press_action"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1218
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "key_menu_double_tap_action"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1221
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "key_back_long_press_action"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1224
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "key_back_double_tap_action"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1227
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "key_app_switch_long_press_action"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1230
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "key_app_switch_double_tap_action"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1233
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "oem_acc_fingerprint_enrolling"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1239
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->updateSettings()V

    .line 1240
    return-void
.end method

.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    .prologue
    .line 1244
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->updateSettings()V

    .line 1245
    return-void
.end method

.method public updateSettings()V
    .locals 14

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 1248
    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v8, v7, Lcom/android/server/policy/OemPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1249
    :try_start_0
    invoke-static {}, Landroid/util/OpFeatures;->isSupportedSwapKey()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1250
    invoke-static {}, Landroid/util/OpFeatures;->isO2()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # invokes: Lcom/android/server/policy/OemPhoneWindowManager;->hasFixedInvertedHWButtonsOrder()Z
    invoke-static {v7}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1400(Lcom/android/server/policy/OemPhoneWindowManager;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1251
    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    const/4 v9, 0x1

    iput v9, v7, Lcom/android/server/policy/OemPhoneWindowManager;->mKeysBehavior:I

    .line 1257
    :goto_0
    sget-boolean v7, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_KEYSWAP:Z

    if-eqz v7, :cond_0

    .line 1258
    const-string v7, "OemPhoneWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mKeysBehavior: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget v10, v10, Lcom/android/server/policy/OemPhoneWindowManager;->mKeysBehavior:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    :cond_0
    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # getter for: Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;
    invoke-static {v7}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1500(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-result-object v7

    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mUpdateSwapkeyTask:Ljava/lang/Runnable;

    invoke-virtual {v7, v9}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->post(Ljava/lang/Runnable;)Z

    .line 1263
    :cond_1
    invoke-static {}, Landroid/util/OpFeatures;->isSupportedKeyLock()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1264
    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "oem_acc_key_lock_mode"

    sget-object v10, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->NORMAL:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    invoke-virtual {v10}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->ordinal()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1267
    .local v3, "keyLockMode":I
    invoke-static {}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->values()[Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    move-result-object v7

    aget-object v7, v7, v3

    sput-object v7, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyLockMode:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    .line 1270
    invoke-static {}, Landroid/util/OpFeatures;->isH2()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1271
    const-string v4, "1"

    .line 1272
    .local v4, "num":Ljava/lang/String;
    sget-object v7, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyLockMode:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    sget-object v9, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->FOOT:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    if-ne v7, v9, :cond_2

    .line 1273
    const-string v4, "0"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1278
    :cond_2
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v7, "/proc/s1302/virtual_key"

    invoke-direct {v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1279
    .local v2, "fileOutputStream":Ljava/io/FileOutputStream;
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 1280
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1289
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v4    # "num":Ljava/lang/String;
    :cond_3
    :goto_1
    :try_start_2
    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "buttons_force_home_enabled"

    const/4 v10, 0x0

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_a

    move v7, v1

    :goto_2
    sput-boolean v7, Lcom/android/server/policy/OemPhoneWindowManager;->mForceHomeEnabled:Z

    .line 1291
    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "oem_acc_fingerprint_enrolling"

    const/4 v10, 0x0

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_b

    move v7, v1

    :goto_3
    sput-boolean v7, Lcom/android/server/policy/OemPhoneWindowManager;->mFingerprintEnrolling:Z

    .line 1295
    .end local v3    # "keyLockMode":I
    :cond_4
    invoke-static {}, Landroid/util/OpFeatures;->isH2()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1296
    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "oem_acc_sensor_three_finger"

    const/4 v10, 0x0

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1298
    .local v5, "pointerScreenCapture":I
    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # getter for: Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;
    invoke-static {v7}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1600(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 1299
    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # getter for: Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;
    invoke-static {v7}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1600(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    move-result-object v9

    if-eqz v5, :cond_c

    move v7, v1

    :goto_4
    invoke-virtual {v9, v7}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->sendEmptyMessage(I)Z

    .line 1303
    :cond_5
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->readConfigurationHomeBehaviors()V

    .line 1307
    .end local v5    # "pointerScreenCapture":I
    :cond_6
    invoke-static {}, Landroid/util/OpFeatures;->isO2()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1308
    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "buttons_show_on_screen_navkeys"

    const/4 v10, 0x0

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_d

    .line 1310
    .local v1, "enableSoftwareKeys":Z
    :goto_5
    # getter for: Lcom/android/server/policy/OemPhoneWindowManager;->sEnableSoftwareKeys:Z
    invoke-static {}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1700()Z

    move-result v6

    if-eq v1, v6, :cond_7

    .line 1311
    # setter for: Lcom/android/server/policy/OemPhoneWindowManager;->sEnableSoftwareKeys:Z
    invoke-static {v1}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1702(Z)Z

    .line 1312
    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v10, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v11, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v12, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    const/4 v13, 0x0

    # setter for: Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyConsumed:Z
    invoke-static {v12, v13}, Lcom/android/server/policy/OemPhoneWindowManager;->access$402(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    move-result v12

    # setter for: Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyPressed:Z
    invoke-static {v11, v12}, Lcom/android/server/policy/OemPhoneWindowManager;->access$2002(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    move-result v11

    # setter for: Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z
    invoke-static {v10, v11}, Lcom/android/server/policy/OemPhoneWindowManager;->access$602(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    move-result v10

    # setter for: Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyPressed:Z
    invoke-static {v9, v10}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1902(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    move-result v9

    # setter for: Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z
    invoke-static {v7, v9}, Lcom/android/server/policy/OemPhoneWindowManager;->access$102(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    move-result v7

    # setter for: Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyPressed:Z
    invoke-static {v6, v7}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1802(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    .line 1315
    :cond_7
    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # invokes: Lcom/android/server/policy/OemPhoneWindowManager;->readConfigurationDependentBehaviors()V
    invoke-static {v6}, Lcom/android/server/policy/OemPhoneWindowManager;->access$2100(Lcom/android/server/policy/OemPhoneWindowManager;)V

    .line 1318
    .end local v1    # "enableSoftwareKeys":Z
    :cond_8
    monitor-exit v8

    .line 1319
    return-void

    .line 1253
    :cond_9
    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "oem_acc_key_define"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, v7, Lcom/android/server/policy/OemPhoneWindowManager;->mKeysBehavior:I

    goto/16 :goto_0

    .line 1318
    :catchall_0
    move-exception v6

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 1281
    .restart local v3    # "keyLockMode":I
    .restart local v4    # "num":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1282
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_3
    const-string v7, "OemPhoneWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "keylock exception:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1283
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 1284
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "OemPhoneWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "keylock exception:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "num":Ljava/lang/String;
    :cond_a
    move v7, v6

    .line 1289
    goto/16 :goto_2

    :cond_b
    move v7, v6

    .line 1291
    goto/16 :goto_3

    .line 1299
    .end local v3    # "keyLockMode":I
    .restart local v5    # "pointerScreenCapture":I
    :cond_c
    const/4 v7, 0x2

    goto/16 :goto_4

    .end local v5    # "pointerScreenCapture":I
    :cond_d
    move v1, v6

    .line 1308
    goto/16 :goto_5
.end method
