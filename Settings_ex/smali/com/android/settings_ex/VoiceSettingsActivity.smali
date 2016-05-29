.class public abstract Lcom/android/settings_ex/VoiceSettingsActivity;
.super Landroid/app/Activity;
.source "VoiceSettingsActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VoiceSettingsActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/android/settings_ex/VoiceSettingsActivity;->isVoiceInteraction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/android/settings_ex/VoiceSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/VoiceSettingsActivity;->onVoiceSettingInteraction(Landroid/content/Intent;)V

    .line 43
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/VoiceSettingsActivity;->finish()V

    .line 44
    return-void

    .line 41
    :cond_0
    const-string v0, "VoiceSettingsActivity"

    const-string v1, "Cannot modify settings without voice interaction"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected abstract onVoiceSettingInteraction(Landroid/content/Intent;)V
.end method
