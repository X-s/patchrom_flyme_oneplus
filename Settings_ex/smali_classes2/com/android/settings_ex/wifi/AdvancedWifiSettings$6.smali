.class Lcom/android/settings_ex/wifi/AdvancedWifiSettings$6;
.super Ljava/lang/Object;
.source "AdvancedWifiSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->initPreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$6;->this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "arg0"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v3, 0x1

    .line 310
    new-instance v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$WpsFragment;

    invoke-direct {v0, v3}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$WpsFragment;-><init>(I)V

    .line 311
    .local v0, "wpsFragment":Lcom/android/settings_ex/wifi/AdvancedWifiSettings$WpsFragment;
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$6;->this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "wps_pin_entry"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$WpsFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 312
    return v3
.end method
