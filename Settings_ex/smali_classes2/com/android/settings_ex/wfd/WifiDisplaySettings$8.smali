.class Lcom/android/settings_ex/wfd/WifiDisplaySettings$8;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wfd/WifiDisplaySettings;->buildCertificationMenu(Landroid/support/v7/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    .prologue
    .line 389
    iput-object p1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$8;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 392
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 393
    .local v0, "wpsConfig":I
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$8;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    invoke-static {v1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->-get6(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 394
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$8;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    invoke-static {v1, v0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->-set5(Lcom/android/settings_ex/wfd/WifiDisplaySettings;I)I

    .line 395
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$8;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 396
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$8;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 397
    const-string/jumbo v2, "wifi_display_wps_config"

    iget-object v3, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$8;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    invoke-static {v3}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->-get6(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)I

    move-result v3

    .line 396
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 399
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
