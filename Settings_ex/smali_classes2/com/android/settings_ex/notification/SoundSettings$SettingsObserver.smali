.class final Lcom/android/settings_ex/notification/SoundSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings_ex/notification/SoundSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/notification/SoundSettings;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings_ex/notification/SoundSettings;

    .prologue
    .line 871
    iput-object p1, p0, Lcom/android/settings_ex/notification/SoundSettings$SettingsObserver;->this$0:Lcom/android/settings_ex/notification/SoundSettings;

    .line 872
    invoke-static {p1}, Lcom/android/settings_ex/notification/SoundSettings;->-get2(Lcom/android/settings_ex/notification/SoundSettings;)Lcom/android/settings_ex/notification/SoundSettings$H;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 869
    const-string/jumbo v0, "vibrate_when_ringing"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 868
    iput-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings$SettingsObserver;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    .line 871
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 886
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 887
    iget-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings$SettingsObserver;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 888
    iget-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings$SettingsObserver;->this$0:Lcom/android/settings_ex/notification/SoundSettings;

    invoke-static {v0}, Lcom/android/settings_ex/notification/SoundSettings;->-wrap7(Lcom/android/settings_ex/notification/SoundSettings;)V

    .line 890
    iget-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings$SettingsObserver;->this$0:Lcom/android/settings_ex/notification/SoundSettings;

    invoke-static {v0}, Lcom/android/settings_ex/notification/SoundSettings;->-wrap6(Lcom/android/settings_ex/notification/SoundSettings;)V

    .line 885
    :cond_0
    return-void
.end method

.method public register(Z)V
    .locals 3
    .param p1, "register"    # Z

    .prologue
    .line 876
    iget-object v1, p0, Lcom/android/settings_ex/notification/SoundSettings$SettingsObserver;->this$0:Lcom/android/settings_ex/notification/SoundSettings;

    invoke-static {v1}, Lcom/android/settings_ex/notification/SoundSettings;->-wrap0(Lcom/android/settings_ex/notification/SoundSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 877
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 878
    iget-object v1, p0, Lcom/android/settings_ex/notification/SoundSettings$SettingsObserver;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 875
    :goto_0
    return-void

    .line 880
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method
