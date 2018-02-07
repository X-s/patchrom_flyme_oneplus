.class public Lcom/android/settings_ex/DefaultRingtonePreference;
.super Lcom/android/settings_ex/RingtonePreference;
.source "DefaultRingtonePreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultRingtonePreference"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 3

    .prologue
    .line 69
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "zhuyang--DefaultRingtonePreference--onClick"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 70
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings_ex/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DefaultRingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/settings_ex/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 68
    return-void
.end method

.method public onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "ringtonePickerIntent"    # Landroid/content/Intent;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/android/settings_ex/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 46
    if-eqz p1, :cond_0

    .line 47
    const-string/jumbo v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 38
    :cond_0
    return-void
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/settings_ex/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 62
    invoke-virtual {p0}, Lcom/android/settings_ex/DefaultRingtonePreference;->getRingtoneType()I

    move-result v1

    .line 61
    invoke-static {v0, v1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 2
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/settings_ex/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ex/DefaultRingtonePreference;->getRingtoneType()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 53
    return-void
.end method
