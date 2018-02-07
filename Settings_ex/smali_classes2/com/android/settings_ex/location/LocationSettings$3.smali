.class Lcom/android/settings_ex/location/LocationSettings$3;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/location/LocationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/location/LocationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/location/LocationSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/location/LocationSettings;

    .prologue
    .line 613
    iput-object p1, p0, Lcom/android/settings_ex/location/LocationSettings$3;->this$0:Lcom/android/settings_ex/location/LocationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v2, 0x1

    .line 616
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings$3;->this$0:Lcom/android/settings_ex/location/LocationSettings;

    invoke-static {v1}, Lcom/android/settings_ex/location/LocationSettings;->-get2(Lcom/android/settings_ex/location/LocationSettings;)Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->isChecked()Z

    move-result v0

    .line 617
    .local v0, "switchState":Z
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings$3;->this$0:Lcom/android/settings_ex/location/LocationSettings;

    invoke-static {v1}, Lcom/android/settings_ex/location/LocationSettings;->-get3(Lcom/android/settings_ex/location/LocationSettings;)Landroid/os/UserManager;

    move-result-object v3

    const-string/jumbo v4, "no_share_location"

    .line 618
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v5, p0, Lcom/android/settings_ex/location/LocationSettings$3;->this$0:Lcom/android/settings_ex/location/LocationSettings;

    invoke-static {v5}, Lcom/android/settings_ex/location/LocationSettings;->-get1(Lcom/android/settings_ex/location/LocationSettings;)Landroid/os/UserHandle;

    move-result-object v5

    .line 617
    invoke-virtual {v3, v4, v1, v5}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 619
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings$3;->this$0:Lcom/android/settings_ex/location/LocationSettings;

    invoke-static {v1}, Lcom/android/settings_ex/location/LocationSettings;->-get2(Lcom/android/settings_ex/location/LocationSettings;)Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    move-result-object v3

    if-eqz v0, :cond_1

    .line 620
    const v1, 0x7f0e0eb8

    .line 619
    :goto_1
    invoke-virtual {v3, v1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setSummary(I)V

    .line 621
    return v2

    :cond_0
    move v1, v2

    .line 618
    goto :goto_0

    .line 620
    :cond_1
    const v1, 0x7f0e0eb9

    goto :goto_1
.end method
