.class Lcom/android/settings_ex/DisplaySettings$2;
.super Landroid/database/ContentObserver;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DisplaySettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/android/settings_ex/DisplaySettings$2;->this$0:Lcom/android/settings_ex/DisplaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 332
    iget-object v3, p0, Lcom/android/settings_ex/DisplaySettings$2;->this$0:Lcom/android/settings_ex/DisplaySettings;

    # getter for: Lcom/android/settings_ex/DisplaySettings;->mNightModeEnabledPreference:Landroid/preference/SwitchPreference;
    invoke-static {v3}, Lcom/android/settings_ex/DisplaySettings;->access$300(Lcom/android/settings_ex/DisplaySettings;)Landroid/preference/SwitchPreference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 333
    iget-object v3, p0, Lcom/android/settings_ex/DisplaySettings$2;->this$0:Lcom/android/settings_ex/DisplaySettings;

    invoke-virtual {v3}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "night_mode_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 335
    .local v0, "enabled":Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/DisplaySettings$2;->this$0:Lcom/android/settings_ex/DisplaySettings;

    # getter for: Lcom/android/settings_ex/DisplaySettings;->mNightModeEnabledPreference:Landroid/preference/SwitchPreference;
    invoke-static {v3}, Lcom/android/settings_ex/DisplaySettings;->access$300(Lcom/android/settings_ex/DisplaySettings;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 336
    iget-object v3, p0, Lcom/android/settings_ex/DisplaySettings$2;->this$0:Lcom/android/settings_ex/DisplaySettings;

    # getter for: Lcom/android/settings_ex/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;
    invoke-static {v3}, Lcom/android/settings_ex/DisplaySettings;->access$400(Lcom/android/settings_ex/DisplaySettings;)Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/DisplaySettings$2;->this$0:Lcom/android/settings_ex/DisplaySettings;

    # getter for: Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/preference/Preference;
    invoke-static {v3}, Lcom/android/settings_ex/DisplaySettings;->access$500(Lcom/android/settings_ex/DisplaySettings;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/DisplaySettings$2;->this$0:Lcom/android/settings_ex/DisplaySettings;

    # getter for: Lcom/android/settings_ex/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/preference/PreferenceCategory;
    invoke-static {v3}, Lcom/android/settings_ex/DisplaySettings;->access$600(Lcom/android/settings_ex/DisplaySettings;)Landroid/preference/PreferenceCategory;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 338
    if-eqz v0, :cond_2

    .line 339
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$2;->this$0:Lcom/android/settings_ex/DisplaySettings;

    # getter for: Lcom/android/settings_ex/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/preference/PreferenceCategory;
    invoke-static {v1}, Lcom/android/settings_ex/DisplaySettings;->access$600(Lcom/android/settings_ex/DisplaySettings;)Landroid/preference/PreferenceCategory;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings_ex/DisplaySettings$2;->this$0:Lcom/android/settings_ex/DisplaySettings;

    # getter for: Lcom/android/settings_ex/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;
    invoke-static {v3}, Lcom/android/settings_ex/DisplaySettings;->access$400(Lcom/android/settings_ex/DisplaySettings;)Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 340
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$2;->this$0:Lcom/android/settings_ex/DisplaySettings;

    # getter for: Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings_ex/DisplaySettings;->access$500(Lcom/android/settings_ex/DisplaySettings;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 341
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$2;->this$0:Lcom/android/settings_ex/DisplaySettings;

    # getter for: Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings_ex/DisplaySettings;->access$500(Lcom/android/settings_ex/DisplaySettings;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings$2;->this$0:Lcom/android/settings_ex/DisplaySettings;

    invoke-virtual {v2}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0123

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 349
    .end local v0    # "enabled":Z
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 333
    goto :goto_0

    .line 343
    .restart local v0    # "enabled":Z
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings$2;->this$0:Lcom/android/settings_ex/DisplaySettings;

    # getter for: Lcom/android/settings_ex/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/preference/PreferenceCategory;
    invoke-static {v2}, Lcom/android/settings_ex/DisplaySettings;->access$600(Lcom/android/settings_ex/DisplaySettings;)Landroid/preference/PreferenceCategory;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/DisplaySettings$2;->this$0:Lcom/android/settings_ex/DisplaySettings;

    # getter for: Lcom/android/settings_ex/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;
    invoke-static {v3}, Lcom/android/settings_ex/DisplaySettings;->access$400(Lcom/android/settings_ex/DisplaySettings;)Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 344
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings$2;->this$0:Lcom/android/settings_ex/DisplaySettings;

    # getter for: Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/settings_ex/DisplaySettings;->access$500(Lcom/android/settings_ex/DisplaySettings;)Landroid/preference/Preference;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 345
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings$2;->this$0:Lcom/android/settings_ex/DisplaySettings;

    # getter for: Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/settings_ex/DisplaySettings;->access$500(Lcom/android/settings_ex/DisplaySettings;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1
.end method
