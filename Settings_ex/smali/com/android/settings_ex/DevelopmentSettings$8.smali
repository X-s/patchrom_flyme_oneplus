.class Lcom/android/settings_ex/DevelopmentSettings$8;
.super Landroid/content/BroadcastReceiver;
.source "DevelopmentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DevelopmentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DevelopmentSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DevelopmentSettings;)V
    .locals 0

    .prologue
    .line 2132
    iput-object p1, p0, Lcom/android/settings_ex/DevelopmentSettings$8;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2135
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings$8;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    # invokes: Lcom/android/settings_ex/DevelopmentSettings;->updateUsbConfigurationValues()V
    invoke-static {v1}, Lcom/android/settings_ex/DevelopmentSettings;->access$500(Lcom/android/settings_ex/DevelopmentSettings;)V

    .line 2137
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2138
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "connected"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 2140
    .local v0, "connected":Z
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings$8;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    # getter for: Lcom/android/settings_ex/DevelopmentSettings;->mUsbConfiguration:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/android/settings_ex/DevelopmentSettings;->access$600(Lcom/android/settings_ex/DevelopmentSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2141
    if-eqz v0, :cond_1

    .line 2142
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings$8;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    # getter for: Lcom/android/settings_ex/DevelopmentSettings;->mUsbConfiguration:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/android/settings_ex/DevelopmentSettings;->access$600(Lcom/android/settings_ex/DevelopmentSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 2149
    .end local v0    # "connected":Z
    :cond_0
    :goto_0
    return-void

    .line 2144
    .restart local v0    # "connected":Z
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings$8;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    # getter for: Lcom/android/settings_ex/DevelopmentSettings;->mUsbConfiguration:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/android/settings_ex/DevelopmentSettings;->access$600(Lcom/android/settings_ex/DevelopmentSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 2145
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings$8;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    # getter for: Lcom/android/settings_ex/DevelopmentSettings;->mUsbConfiguration:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/android/settings_ex/DevelopmentSettings;->access$600(Lcom/android/settings_ex/DevelopmentSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    const v2, 0x7f0c01f2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0
.end method
