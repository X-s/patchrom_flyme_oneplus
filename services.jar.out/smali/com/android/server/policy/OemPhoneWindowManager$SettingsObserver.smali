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
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1004
    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    .line 1005
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1002
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1006
    return-void
.end method


# virtual methods
.method observe()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1009
    new-array v0, v4, [I

    const/16 v1, 0x8

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1010
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "oem_acc_key_define"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1016
    :cond_0
    new-array v0, v4, [I

    const/16 v1, 0xb

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1017
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "oem_acc_key_lock_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1020
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "buttons_force_home_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1027
    :cond_1
    new-array v0, v4, [I

    const/16 v1, 0xd

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1028
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "oem_acc_sensor_three_finger"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1035
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "buttons_show_on_screen_navkeys"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1038
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "key_home_long_press_action"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1041
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "key_home_double_tap_action"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1044
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "key_menu_long_press_action"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1047
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "key_menu_double_tap_action"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1050
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "key_back_long_press_action"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1053
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "key_back_double_tap_action"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1056
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "key_app_switch_long_press_action"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1059
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "key_app_switch_double_tap_action"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1062
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "oem_acc_fingerprint_enrolling"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1067
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->updateSettings()V

    .line 1068
    return-void
.end method

.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    .prologue
    .line 1072
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->updateSettings()V

    .line 1073
    return-void
.end method

.method public updateSettings()V
    .locals 11

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 1076
    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v5, v4, Lcom/android/server/policy/OemPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1077
    const/4 v4, 0x1

    :try_start_0
    new-array v4, v4, [I

    const/4 v6, 0x0

    const/16 v7, 0x8

    aput v7, v4, v6

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1078
    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "oem_acc_key_define"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, v4, Lcom/android/server/policy/OemPhoneWindowManager;->mKeysBehavior:I

    .line 1081
    sget-boolean v4, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_KEYSWAP:Z

    if-eqz v4, :cond_0

    .line 1082
    const-string v4, "OemPhoneWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mKeysBehavior: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget v7, v7, Lcom/android/server/policy/OemPhoneWindowManager;->mKeysBehavior:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->updateSwapKey()V

    .line 1087
    :cond_1
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v6, 0x0

    const/16 v7, 0xb

    aput v7, v4, v6

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1088
    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "oem_acc_key_lock_mode"

    sget-object v7, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->NORMAL:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    invoke-virtual {v7}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->ordinal()I

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1091
    .local v1, "keyLockMode":I
    invoke-static {}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->values()[Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    move-result-object v4

    aget-object v4, v4, v1

    sput-object v4, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyLockMode:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    .line 1093
    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "buttons_force_home_enabled"

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_5

    move v4, v0

    :goto_0
    sput-boolean v4, Lcom/android/server/policy/OemPhoneWindowManager;->mForceHomeEnabled:Z

    .line 1095
    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "oem_acc_fingerprint_enrolling"

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_6

    move v4, v0

    :goto_1
    sput-boolean v4, Lcom/android/server/policy/OemPhoneWindowManager;->mFingerprintEnrolling:Z

    .line 1099
    .end local v1    # "keyLockMode":I
    :cond_2
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v6, 0x0

    const/16 v7, 0xd

    aput v7, v4, v6

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1100
    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "oem_acc_sensor_three_finger"

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1102
    .local v2, "pointerScreenCapture":I
    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # getter for: Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;
    invoke-static {v4}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1400(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1103
    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # getter for: Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;
    invoke-static {v4}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1400(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    move-result-object v6

    if-eqz v2, :cond_7

    move v4, v0

    :goto_2
    invoke-virtual {v6, v4}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->sendEmptyMessage(I)Z

    .line 1110
    .end local v2    # "pointerScreenCapture":I
    :cond_3
    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "buttons_show_on_screen_navkeys"

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_8

    .line 1112
    .local v0, "enableSoftwareKeys":Z
    :goto_3
    # getter for: Lcom/android/server/policy/OemPhoneWindowManager;->sEnableSoftwareKeys:Z
    invoke-static {}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1500()Z

    move-result v3

    if-eq v0, v3, :cond_4

    .line 1113
    # setter for: Lcom/android/server/policy/OemPhoneWindowManager;->sEnableSoftwareKeys:Z
    invoke-static {v0}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1502(Z)Z

    .line 1114
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v8, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    const/4 v10, 0x0

    # setter for: Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyConsumed:Z
    invoke-static {v9, v10}, Lcom/android/server/policy/OemPhoneWindowManager;->access$402(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    move-result v9

    # setter for: Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyPressed:Z
    invoke-static {v8, v9}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1802(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    move-result v8

    # setter for: Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z
    invoke-static {v7, v8}, Lcom/android/server/policy/OemPhoneWindowManager;->access$602(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    move-result v7

    # setter for: Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyPressed:Z
    invoke-static {v6, v7}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1702(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    move-result v6

    # setter for: Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z
    invoke-static {v4, v6}, Lcom/android/server/policy/OemPhoneWindowManager;->access$102(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    move-result v4

    # setter for: Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyPressed:Z
    invoke-static {v3, v4}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1602(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    .line 1117
    :cond_4
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # invokes: Lcom/android/server/policy/OemPhoneWindowManager;->readConfigurationDependentBehaviors()V
    invoke-static {v3}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1900(Lcom/android/server/policy/OemPhoneWindowManager;)V

    .line 1119
    monitor-exit v5

    .line 1120
    return-void

    .end local v0    # "enableSoftwareKeys":Z
    .restart local v1    # "keyLockMode":I
    :cond_5
    move v4, v3

    .line 1093
    goto :goto_0

    :cond_6
    move v4, v3

    .line 1095
    goto :goto_1

    .line 1103
    .end local v1    # "keyLockMode":I
    .restart local v2    # "pointerScreenCapture":I
    :cond_7
    const/4 v4, 0x2

    goto :goto_2

    .end local v2    # "pointerScreenCapture":I
    :cond_8
    move v0, v3

    .line 1110
    goto :goto_3

    .line 1119
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method updateSwapKey()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1143
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/OemPhoneWindowManager;->mKeysBehavior:I

    if-nez v2, :cond_1

    .line 1144
    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "1"

    .line 1150
    .local v1, "setVal":Ljava/lang/String;
    :goto_0
    :try_start_0
    const-string v2, "proc/s1302/key_rep"

    invoke-static {v2, v1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1154
    :goto_1
    return-void

    .line 1144
    .end local v1    # "setVal":Ljava/lang/String;
    :cond_0
    const-string v1, "0"

    goto :goto_0

    .line 1146
    :cond_1
    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "0"

    .restart local v1    # "setVal":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .end local v1    # "setVal":Ljava/lang/String;
    :cond_2
    const-string v1, "1"

    goto :goto_2

    .line 1151
    .restart local v1    # "setVal":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1152
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "OemPhoneWindowManager"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
