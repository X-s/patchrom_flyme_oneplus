.class Lcom/android/settings_ex/location/SettingsInjector$ServiceSettingClickedListener;
.super Ljava/lang/Object;
.source "SettingsInjector.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/location/SettingsInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceSettingClickedListener"
.end annotation


# instance fields
.field private mInfo:Lcom/android/settings_ex/location/InjectedSetting;

.field final synthetic this$0:Lcom/android/settings_ex/location/SettingsInjector;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/location/SettingsInjector;Lcom/android/settings_ex/location/InjectedSetting;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/location/SettingsInjector;
    .param p2, "info"    # Lcom/android/settings_ex/location/InjectedSetting;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/settings_ex/location/SettingsInjector$ServiceSettingClickedListener;->this$0:Lcom/android/settings_ex/location/SettingsInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput-object p2, p0, Lcom/android/settings_ex/location/SettingsInjector$ServiceSettingClickedListener;->mInfo:Lcom/android/settings_ex/location/InjectedSetting;

    .line 295
    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 304
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 305
    .local v0, "settingIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings_ex/location/SettingsInjector$ServiceSettingClickedListener;->mInfo:Lcom/android/settings_ex/location/InjectedSetting;

    iget-object v1, v1, Lcom/android/settings_ex/location/InjectedSetting;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ex/location/SettingsInjector$ServiceSettingClickedListener;->mInfo:Lcom/android/settings_ex/location/InjectedSetting;

    iget-object v2, v2, Lcom/android/settings_ex/location/InjectedSetting;->settingsActivity:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 317
    iget-object v1, p0, Lcom/android/settings_ex/location/SettingsInjector$ServiceSettingClickedListener;->this$0:Lcom/android/settings_ex/location/SettingsInjector;

    invoke-static {v1}, Lcom/android/settings_ex/location/SettingsInjector;->-get0(Lcom/android/settings_ex/location/SettingsInjector;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/location/SettingsInjector$ServiceSettingClickedListener;->mInfo:Lcom/android/settings_ex/location/InjectedSetting;

    iget-object v2, v2, Lcom/android/settings_ex/location/InjectedSetting;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 318
    const/4 v1, 0x1

    return v1
.end method
