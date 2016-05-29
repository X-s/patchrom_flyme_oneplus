.class final Lcom/android/settings_ex/notification/ZenModeSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ZenModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/ZenModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final OEM_SILENT_STATUS:Landroid/net/Uri;

.field private final OEM_ZEN_STATUS:Landroid/net/Uri;

.field private final THREE_KEY_DEFINE_URI:Landroid/net/Uri;

.field private final ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

.field private final ZEN_MODE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings_ex/notification/ZenModeSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/notification/ZenModeSettings;)V
    .locals 1

    .prologue
    .line 873
    iput-object p1, p0, Lcom/android/settings_ex/notification/ZenModeSettings$SettingsObserver;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    .line 874
    # getter for: Lcom/android/settings_ex/notification/ZenModeSettings;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/android/settings_ex/notification/ZenModeSettings;->access$900(Lcom/android/settings_ex/notification/ZenModeSettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 851
    const-string v0, "zen_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    .line 852
    const-string v0, "zen_mode_config_etag"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings$SettingsObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    .line 858
    const-string v0, "oem_three_key_define"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings$SettingsObserver;->THREE_KEY_DEFINE_URI:Landroid/net/Uri;

    .line 866
    const-string v0, "oem_silent_status"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings$SettingsObserver;->OEM_SILENT_STATUS:Landroid/net/Uri;

    .line 868
    const-string v0, "oem_zen_status"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings$SettingsObserver;->OEM_ZEN_STATUS:Landroid/net/Uri;

    .line 875
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    .line 900
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 901
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 902
    # getter for: Lcom/android/settings_ex/notification/ZenModeSettings;->PREF_ZEN_MODE:Lcom/android/settings_ex/notification/ZenModeSettings$SettingPrefWithCallback;
    invoke-static {}, Lcom/android/settings_ex/notification/ZenModeSettings;->access$1600()Lcom/android/settings_ex/notification/ZenModeSettings$SettingPrefWithCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeSettings$SettingsObserver;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    # getter for: Lcom/android/settings_ex/notification/ZenModeSettings;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings_ex/notification/ZenModeSettings;->access$400(Lcom/android/settings_ex/notification/ZenModeSettings;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/notification/ZenModeSettings$SettingPrefWithCallback;->update(Landroid/content/Context;)V

    .line 905
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings$SettingsObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 906
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings$SettingsObserver;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    # invokes: Lcom/android/settings_ex/notification/ZenModeSettings;->updateZenModeConfig()V
    invoke-static {v1}, Lcom/android/settings_ex/notification/ZenModeSettings;->access$1700(Lcom/android/settings_ex/notification/ZenModeSettings;)V

    .line 908
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings$SettingsObserver;->THREE_KEY_DEFINE_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 922
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings$SettingsObserver;->OEM_SILENT_STATUS:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 926
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings$SettingsObserver;->OEM_ZEN_STATUS:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 928
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings$SettingsObserver;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/notification/ZenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_zen_status"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_5

    .line 931
    .local v0, "val":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings$SettingsObserver;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    # getter for: Lcom/android/settings_ex/notification/ZenModeSettings;->mZenmodePreference:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/settings_ex/notification/ZenModeSettings;->access$1800(Lcom/android/settings_ex/notification/ZenModeSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 932
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings$SettingsObserver;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    # getter for: Lcom/android/settings_ex/notification/ZenModeSettings;->mZenmodePreference:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/settings_ex/notification/ZenModeSettings;->access$1800(Lcom/android/settings_ex/notification/ZenModeSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 938
    .end local v0    # "val":Z
    :cond_4
    return-void

    .line 928
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public register()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 878
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings$SettingsObserver;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    # invokes: Lcom/android/settings_ex/notification/ZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings_ex/notification/ZenModeSettings;->access$1000(Lcom/android/settings_ex/notification/ZenModeSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 880
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings$SettingsObserver;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    # invokes: Lcom/android/settings_ex/notification/ZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings_ex/notification/ZenModeSettings;->access$1100(Lcom/android/settings_ex/notification/ZenModeSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings$SettingsObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 882
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings$SettingsObserver;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    # invokes: Lcom/android/settings_ex/notification/ZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings_ex/notification/ZenModeSettings;->access$1200(Lcom/android/settings_ex/notification/ZenModeSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings$SettingsObserver;->THREE_KEY_DEFINE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 888
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings$SettingsObserver;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    # invokes: Lcom/android/settings_ex/notification/ZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings_ex/notification/ZenModeSettings;->access$1300(Lcom/android/settings_ex/notification/ZenModeSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings$SettingsObserver;->OEM_SILENT_STATUS:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 889
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings$SettingsObserver;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    # invokes: Lcom/android/settings_ex/notification/ZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings_ex/notification/ZenModeSettings;->access$1400(Lcom/android/settings_ex/notification/ZenModeSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings$SettingsObserver;->OEM_ZEN_STATUS:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 892
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 895
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings$SettingsObserver;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    # invokes: Lcom/android/settings_ex/notification/ZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings_ex/notification/ZenModeSettings;->access$1500(Lcom/android/settings_ex/notification/ZenModeSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 896
    return-void
.end method
