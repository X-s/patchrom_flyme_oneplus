.class public Lcom/android/settings_ex/AirplaneModeVoiceActivity;
.super Lcom/android/settings_ex/VoiceSettingsActivity;
.source "AirplaneModeVoiceActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AirplaneModeVoiceActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/settings_ex/VoiceSettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onVoiceSettingInteraction(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 31
    const-string v2, "airplane_mode_enabled"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 32
    const-string v2, "airplane_mode_enabled"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 34
    .local v0, "enabled":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/AirplaneModeVoiceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 39
    .end local v0    # "enabled":Z
    :goto_0
    return-void

    .line 37
    :cond_1
    const-string v1, "AirplaneModeVoiceActivity"

    const-string v2, "Missing airplane mode extra"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
