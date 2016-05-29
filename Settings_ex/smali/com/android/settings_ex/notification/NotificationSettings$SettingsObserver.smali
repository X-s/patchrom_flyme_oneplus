.class final Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NotificationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/NotificationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

.field private final LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

.field private final NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

.field private final THREE_KEY_DEFINE_URI:Landroid/net/Uri;

.field private final VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

.field private final VIBRATE_WHEN_SILENT_URI:Landroid/net/Uri;

.field private final ZEN_MODE_ENABLE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings_ex/notification/NotificationSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/notification/NotificationSettings;)V
    .locals 1

    .prologue
    .line 1047
    iput-object p1, p0, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    .line 1048
    # getter for: Lcom/android/settings_ex/notification/NotificationSettings;->mHandler:Lcom/android/settings_ex/notification/NotificationSettings$H;
    invoke-static {p1}, Lcom/android/settings_ex/notification/NotificationSettings;->access$500(Lcom/android/settings_ex/notification/NotificationSettings;)Lcom/android/settings_ex/notification/NotificationSettings$H;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1015
    const-string v0, "oem_vibrate_when_incall"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    .line 1017
    const-string v0, "oem_vibrate_under_silent"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;->VIBRATE_WHEN_SILENT_URI:Landroid/net/Uri;

    .line 1019
    const-string v0, "notification_light_pulse"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    .line 1021
    const-string v0, "lock_screen_allow_private_notifications"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;->LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

    .line 1023
    const-string v0, "lock_screen_show_notifications"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;->LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

    .line 1032
    const-string v0, "oem_zen_mode_enable"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;->ZEN_MODE_ENABLE_URI:Landroid/net/Uri;

    .line 1042
    const-string v0, "oem_three_key_define"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;->THREE_KEY_DEFINE_URI:Landroid/net/Uri;

    .line 1049
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1083
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 1084
    iget-object v4, p0, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    invoke-virtual {v4, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1085
    iget-object v4, p0, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # invokes: Lcom/android/settings_ex/notification/NotificationSettings;->updateVibrateWhenRinging()V
    invoke-static {v4}, Lcom/android/settings_ex/notification/NotificationSettings;->access$2000(Lcom/android/settings_ex/notification/NotificationSettings;)V

    .line 1091
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;->VIBRATE_WHEN_SILENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1092
    iget-object v4, p0, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # invokes: Lcom/android/settings_ex/notification/NotificationSettings;->updateVibrateWhenMute()V
    invoke-static {v4}, Lcom/android/settings_ex/notification/NotificationSettings;->access$2100(Lcom/android/settings_ex/notification/NotificationSettings;)V

    .line 1095
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    invoke-virtual {v4, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1096
    iget-object v4, p0, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # invokes: Lcom/android/settings_ex/notification/NotificationSettings;->updatePulse()V
    invoke-static {v4}, Lcom/android/settings_ex/notification/NotificationSettings;->access$2200(Lcom/android/settings_ex/notification/NotificationSettings;)V

    .line 1098
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;->LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

    invoke-virtual {v4, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;->LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

    invoke-virtual {v4, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1099
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # invokes: Lcom/android/settings_ex/notification/NotificationSettings;->updateLockscreenNotifications()V
    invoke-static {v4}, Lcom/android/settings_ex/notification/NotificationSettings;->access$2300(Lcom/android/settings_ex/notification/NotificationSettings;)V

    .line 1107
    :cond_4
    iget-object v4, p0, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;->ZEN_MODE_ENABLE_URI:Landroid/net/Uri;

    invoke-virtual {v4, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1108
    iget-object v4, p0, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # invokes: Lcom/android/settings_ex/notification/NotificationSettings;->updateZenModeEnable()V
    invoke-static {v4}, Lcom/android/settings_ex/notification/NotificationSettings;->access$2400(Lcom/android/settings_ex/notification/NotificationSettings;)V

    .line 1111
    :cond_5
    iget-object v4, p0, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;->THREE_KEY_DEFINE_URI:Landroid/net/Uri;

    invoke-virtual {v4, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1113
    iget-object v4, p0, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # invokes: Lcom/android/settings_ex/notification/NotificationSettings;->updateVolumeSeekbarStatus()V
    invoke-static {v4}, Lcom/android/settings_ex/notification/NotificationSettings;->access$2500(Lcom/android/settings_ex/notification/NotificationSettings;)V

    .line 1125
    :cond_6
    # getter for: Lcom/android/settings_ex/notification/NotificationSettings;->PREFS:[Lcom/android/settings_ex/notification/SettingPref;
    invoke-static {}, Lcom/android/settings_ex/notification/NotificationSettings;->access$1900()[Lcom/android/settings_ex/notification/SettingPref;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/settings_ex/notification/SettingPref;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_7

    aget-object v3, v0, v1

    .line 1126
    .local v3, "pref":Lcom/android/settings_ex/notification/SettingPref;
    invoke-virtual {v3}, Lcom/android/settings_ex/notification/SettingPref;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1127
    iget-object v4, p0, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationSettings;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings_ex/notification/NotificationSettings;->access$900(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/notification/SettingPref;->update(Landroid/content/Context;)V

    .line 1133
    .end local v3    # "pref":Lcom/android/settings_ex/notification/SettingPref;
    :cond_7
    return-void

    .line 1125
    .restart local v3    # "pref":Lcom/android/settings_ex/notification/SettingPref;
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public register(Z)V
    .locals 7
    .param p1, "register"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1052
    iget-object v5, p0, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # invokes: Lcom/android/settings_ex/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/android/settings_ex/notification/NotificationSettings;->access$1800(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    .line 1053
    .local v1, "cr":Landroid/content/ContentResolver;
    if-eqz p1, :cond_1

    .line 1054
    iget-object v5, p0, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    invoke-virtual {v1, v5, v6, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1055
    iget-object v5, p0, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;->VIBRATE_WHEN_SILENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v5, v6, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1056
    iget-object v5, p0, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v5, v6, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1057
    iget-object v5, p0, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;->LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v5, v6, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1058
    iget-object v5, p0, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;->LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

    invoke-virtual {v1, v5, v6, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1066
    # getter for: Lcom/android/settings_ex/notification/NotificationSettings;->PREFS:[Lcom/android/settings_ex/notification/SettingPref;
    invoke-static {}, Lcom/android/settings_ex/notification/NotificationSettings;->access$1900()[Lcom/android/settings_ex/notification/SettingPref;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/settings_ex/notification/SettingPref;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 1067
    .local v4, "pref":Lcom/android/settings_ex/notification/SettingPref;
    invoke-virtual {v4}, Lcom/android/settings_ex/notification/SettingPref;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5, v6, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1066
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1070
    .end local v4    # "pref":Lcom/android/settings_ex/notification/SettingPref;
    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;->ZEN_MODE_ENABLE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v5, v6, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1072
    iget-object v5, p0, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;->THREE_KEY_DEFINE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v5, v6, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1079
    .end local v0    # "arr$":[Lcom/android/settings_ex/notification/SettingPref;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :goto_1
    return-void

    .line 1077
    :cond_1
    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_1
.end method
