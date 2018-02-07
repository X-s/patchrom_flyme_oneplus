.class Lcom/android/settings_ex/TetherSettings$6;
.super Landroid/content/BroadcastReceiver;
.source "TetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/TetherSettings;->registerConfigureReceiver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/TetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/TetherSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/TetherSettings;

    .prologue
    .line 1018
    iput-object p1, p0, Lcom/android/settings_ex/TetherSettings$6;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1021
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1022
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "Hotspot_PreConfigure_Response"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1023
    const-string/jumbo v2, "PreConfigure_result"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1024
    .local v1, "result":Z
    if-eqz v1, :cond_1

    .line 1025
    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings$6;->this$0:Lcom/android/settings_ex/TetherSettings;

    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings$6;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-static {v3}, Lcom/android/settings_ex/TetherSettings;->-get8(Lcom/android/settings_ex/TetherSettings;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings_ex/TetherSettings;->-wrap2(Lcom/android/settings_ex/TetherSettings;I)V

    .line 1020
    .end local v1    # "result":Z
    :cond_0
    :goto_0
    return-void

    .line 1027
    .restart local v1    # "result":Z
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings$6;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-static {v2}, Lcom/android/settings_ex/TetherSettings;->-get9(Lcom/android/settings_ex/TetherSettings;)Lcom/android/settings_ex/wifi/WifiApEnabler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/wifi/WifiApEnabler;->setChecked(Z)V

    goto :goto_0
.end method
