.class final Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "OPNotificationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/notification/OPNotificationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

.field private final LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

.field private final NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

.field private final OEM_SILENT_STATUS:Landroid/net/Uri;

.field private final OEM_ZEN_STATUS:Landroid/net/Uri;

.field private final THREE_KEY_DEFINE_URI:Landroid/net/Uri;

.field private final VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

.field private final VIBRATE_WHEN_SILENT_URI:Landroid/net/Uri;

.field private final ZEN_MODE_ENABLE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/notification/OPNotificationSettings;)V
    .locals 1

    .prologue
    .line 1164
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    .line 1165
    # getter for: Lcom/oneplus/settings/notification/OPNotificationSettings;->mHandler:Lcom/oneplus/settings/notification/OPNotificationSettings$H;
    invoke-static {p1}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$800(Lcom/oneplus/settings/notification/OPNotificationSettings;)Lcom/oneplus/settings/notification/OPNotificationSettings$H;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1121
    const-string v0, "oem_vibrate_when_incall"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    .line 1123
    const-string v0, "oem_vibrate_under_silent"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;->VIBRATE_WHEN_SILENT_URI:Landroid/net/Uri;

    .line 1128
    const-string v0, "notification_light_pulse"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    .line 1130
    const-string v0, "lock_screen_allow_private_notifications"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;->LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

    .line 1132
    const-string v0, "lock_screen_show_notifications"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;->LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

    .line 1141
    const-string v0, "oem_zen_mode_enable"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;->ZEN_MODE_ENABLE_URI:Landroid/net/Uri;

    .line 1151
    const-string v0, "oem_three_key_define"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;->THREE_KEY_DEFINE_URI:Landroid/net/Uri;

    .line 1159
    const-string v0, "oem_silent_status"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;->OEM_SILENT_STATUS:Landroid/net/Uri;

    .line 1160
    const-string v0, "oem_zen_status"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;->OEM_ZEN_STATUS:Landroid/net/Uri;

    .line 1166
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 7
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1206
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 1208
    iget-object v4, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    invoke-virtual {v4, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1209
    iget-object v4, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    # invokes: Lcom/oneplus/settings/notification/OPNotificationSettings;->updateVibrateWhenRinging()V
    invoke-static {v4}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$2200(Lcom/oneplus/settings/notification/OPNotificationSettings;)V

    .line 1211
    :cond_0
    iget-object v4, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    invoke-virtual {v4, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1212
    iget-object v4, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    # invokes: Lcom/oneplus/settings/notification/OPNotificationSettings;->updatePulse()V
    invoke-static {v4}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$2300(Lcom/oneplus/settings/notification/OPNotificationSettings;)V

    .line 1214
    :cond_1
    iget-object v4, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;->LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

    invoke-virtual {v4, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;->LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

    invoke-virtual {v4, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1215
    :cond_2
    iget-object v4, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    # invokes: Lcom/oneplus/settings/notification/OPNotificationSettings;->updateLockscreenNotifications()V
    invoke-static {v4}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$2400(Lcom/oneplus/settings/notification/OPNotificationSettings;)V

    .line 1219
    :cond_3
    iget-object v4, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;->THREE_KEY_DEFINE_URI:Landroid/net/Uri;

    invoke-virtual {v4, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1221
    const-string v4, "TAG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "THREE_KEY_DEFINE_URI : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;->THREE_KEY_DEFINE_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    iget-object v4, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationSettings;->mHandler:Lcom/oneplus/settings/notification/OPNotificationSettings$H;
    invoke-static {v4}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$800(Lcom/oneplus/settings/notification/OPNotificationSettings;)Lcom/oneplus/settings/notification/OPNotificationSettings$H;

    move-result-object v4

    const/4 v5, 0x7

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lcom/oneplus/settings/notification/OPNotificationSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1229
    :cond_4
    iget-object v4, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;->OEM_SILENT_STATUS:Landroid/net/Uri;

    invoke-virtual {v4, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1231
    iget-object v4, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    invoke-virtual {v4}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "oem_silent_status"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_8

    move v0, v2

    .line 1233
    .local v0, "val":Z
    :goto_0
    iget-object v4, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationSettings;->mMuteSetting:Landroid/preference/TwoStatePreference;
    invoke-static {v4}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$1000(Lcom/oneplus/settings/notification/OPNotificationSettings;)Landroid/preference/TwoStatePreference;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1234
    iget-object v4, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationSettings;->mMuteSetting:Landroid/preference/TwoStatePreference;
    invoke-static {v4}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$1000(Lcom/oneplus/settings/notification/OPNotificationSettings;)Landroid/preference/TwoStatePreference;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1237
    :cond_5
    iget-object v4, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationSettings;->mRingOrNotificationPreference:Lcom/oneplus/settings/notification/VolumeSeekBarPreference;
    invoke-static {v4}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$600(Lcom/oneplus/settings/notification/OPNotificationSettings;)Lcom/oneplus/settings/notification/VolumeSeekBarPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->getVolumeValue()I

    move-result v1

    .line 1240
    .local v1, "volume":I
    if-eqz v0, :cond_a

    .line 1241
    iget-object v4, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    const-string v5, "volume_notification"

    # invokes: Lcom/oneplus/settings/notification/OPNotificationSettings;->updateVolumes(Ljava/lang/String;I)V
    invoke-static {v4, v5, v1}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$2500(Lcom/oneplus/settings/notification/OPNotificationSettings;Ljava/lang/String;I)V

    .line 1244
    iget-object v4, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationSettings;->mVibrateWhenMute:Landroid/preference/TwoStatePreference;
    invoke-static {v4}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$2600(Lcom/oneplus/settings/notification/OPNotificationSettings;)Landroid/preference/TwoStatePreference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1245
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationSettings;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$1100(Lcom/oneplus/settings/notification/OPNotificationSettings;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1263
    .end local v0    # "val":Z
    .end local v1    # "volume":I
    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;->VIBRATE_WHEN_SILENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1265
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    # invokes: Lcom/oneplus/settings/notification/OPNotificationSettings;->updateVibrateWhenMute()V
    invoke-static {v2}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$2900(Lcom/oneplus/settings/notification/OPNotificationSettings;)V

    .line 1270
    :cond_7
    return-void

    :cond_8
    move v0, v3

    .line 1231
    goto :goto_0

    .line 1248
    .restart local v0    # "val":Z
    .restart local v1    # "volume":I
    :cond_9
    iget-object v3, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationSettings;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$1100(Lcom/oneplus/settings/notification/OPNotificationSettings;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1250
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    iget-object v3, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    invoke-virtual {v3}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    # invokes: Lcom/oneplus/settings/notification/OPNotificationSettings;->setMediaVolume(Landroid/content/Context;)V
    invoke-static {v2, v3}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$2700(Lcom/oneplus/settings/notification/OPNotificationSettings;Landroid/content/Context;)V

    goto :goto_1

    .line 1254
    :cond_a
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationSettings;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$1100(Lcom/oneplus/settings/notification/OPNotificationSettings;)Landroid/media/AudioManager;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1256
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    iget-object v3, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    invoke-virtual {v3}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "volume_notification"

    const/4 v5, 0x5

    # invokes: Lcom/oneplus/settings/notification/OPNotificationSettings;->restoreMediaVolume(Landroid/content/Context;Ljava/lang/String;I)V
    invoke-static {v2, v3, v4, v5}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$2800(Lcom/oneplus/settings/notification/OPNotificationSettings;Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public register(Z)V
    .locals 3
    .param p1, "register"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1169
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    # invokes: Lcom/oneplus/settings/notification/OPNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$2100(Lcom/oneplus/settings/notification/OPNotificationSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 1170
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 1171
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1172
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1173
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;->LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1174
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;->LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1180
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;->OEM_SILENT_STATUS:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1181
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;->OEM_ZEN_STATUS:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1191
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;->ZEN_MODE_ENABLE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1193
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;->THREE_KEY_DEFINE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1196
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;->VIBRATE_WHEN_SILENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1202
    :goto_0
    return-void

    .line 1199
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method
