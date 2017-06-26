.class final Lcom/oneplus/settings/notification/OPSilentMode$SettingsPrefsObserver;
.super Landroid/database/ContentObserver;
.source "OPSilentMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/notification/OPSilentMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsPrefsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/notification/OPSilentMode;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/notification/OPSilentMode;)V
    .locals 1

    .prologue
    .line 74
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPSilentMode$SettingsPrefsObserver;->this$0:Lcom/oneplus/settings/notification/OPSilentMode;

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 76
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 90
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 92
    # getter for: Lcom/oneplus/settings/notification/OPSilentMode;->PREF_VIBRATE_ON_TOUCH:Lcom/android/settings_ex/notification/SettingPref;
    invoke-static {}, Lcom/oneplus/settings/notification/OPSilentMode;->access$200()Lcom/android/settings_ex/notification/SettingPref;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/notification/SettingPref;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    # getter for: Lcom/oneplus/settings/notification/OPSilentMode;->PREF_VIBRATE_ON_TOUCH:Lcom/android/settings_ex/notification/SettingPref;
    invoke-static {}, Lcom/oneplus/settings/notification/OPSilentMode;->access$200()Lcom/android/settings_ex/notification/SettingPref;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSilentMode$SettingsPrefsObserver;->this$0:Lcom/oneplus/settings/notification/OPSilentMode;

    invoke-virtual {v1}, Lcom/oneplus/settings/notification/OPSilentMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/SettingPref;->update(Landroid/content/Context;)V

    .line 96
    :cond_0
    return-void
.end method

.method public register(Z)V
    .locals 3
    .param p1, "register"    # Z

    .prologue
    .line 79
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSilentMode$SettingsPrefsObserver;->this$0:Lcom/oneplus/settings/notification/OPSilentMode;

    # invokes: Lcom/oneplus/settings/notification/OPSilentMode;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSilentMode;->access$100(Lcom/oneplus/settings/notification/OPSilentMode;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 80
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 81
    # getter for: Lcom/oneplus/settings/notification/OPSilentMode;->PREF_VIBRATE_ON_TOUCH:Lcom/android/settings_ex/notification/SettingPref;
    invoke-static {}, Lcom/oneplus/settings/notification/OPSilentMode;->access$200()Lcom/android/settings_ex/notification/SettingPref;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/notification/SettingPref;->getUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method
