.class Lcom/android/settings_ex/vpn2/VpnSettings$1;
.super Ljava/lang/Object;
.source "VpnSettings.java"

# interfaces
.implements Lcom/android/settings_ex/GearPreference$OnGearClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/vpn2/VpnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/vpn2/VpnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/vpn2/VpnSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/vpn2/VpnSettings;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/settings_ex/vpn2/VpnSettings$1;->this$0:Lcom/android/settings_ex/vpn2/VpnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGearClick(Lcom/android/settings_ex/GearPreference;)V
    .locals 5
    .param p1, "p"    # Lcom/android/settings_ex/GearPreference;

    .prologue
    const/4 v4, 0x1

    .line 334
    instance-of v2, p1, Lcom/android/settings_ex/vpn2/LegacyVpnPreference;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 335
    check-cast v1, Lcom/android/settings_ex/vpn2/LegacyVpnPreference;

    .line 336
    .local v1, "pref":Lcom/android/settings_ex/vpn2/LegacyVpnPreference;
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings$1;->this$0:Lcom/android/settings_ex/vpn2/VpnSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/vpn2/LegacyVpnPreference;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v3

    invoke-static {v2, v3, v4, v4}, Lcom/android/settings_ex/vpn2/ConfigDialogFragment;->show(Lcom/android/settings_ex/vpn2/VpnSettings;Lcom/android/internal/net/VpnProfile;ZZ)V

    .line 333
    .end local v1    # "pref":Lcom/android/settings_ex/vpn2/LegacyVpnPreference;
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    instance-of v2, p1, Lcom/android/settings_ex/vpn2/AppPreference;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 339
    check-cast v0, Lcom/android/settings_ex/vpn2/AppPreference;

    .line 340
    .local v0, "pref":Lcom/android/settings_ex/vpn2/AppPreference;
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings$1;->this$0:Lcom/android/settings_ex/vpn2/VpnSettings;

    invoke-static {v2}, Lcom/android/settings_ex/vpn2/VpnSettings;->-wrap0(Lcom/android/settings_ex/vpn2/VpnSettings;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/settings_ex/vpn2/AppManagementFragment;->show(Landroid/content/Context;Lcom/android/settings_ex/vpn2/AppPreference;)V

    goto :goto_0
.end method
