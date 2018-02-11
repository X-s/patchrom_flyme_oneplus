.class public Lcom/android/settings_ex/wifi/WifiDialogActivity;
.super Landroid/app/Activity;
.source "WifiDialogActivity.java"

# interfaces
.implements Lcom/android/settings_ex/wifi/WifiDialog$WifiDialogListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final KEY_ACCESS_POINT_STATE:Ljava/lang/String; = "access_point_state"

.field private static final KEY_WIFI_CONFIGURATION:Ljava/lang/String; = "wifi_configuration"

.field private static final RESULT_CONNECTED:I = 0x1

.field private static final RESULT_FORGET:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WifiDialogActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 66
    invoke-virtual {p0, v0, v0}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->overridePendingTransition(II)V

    .line 64
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 46
    .local v3, "intent":Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/setupwizardlib/util/WizardManagerHelper;->isSetupWizardIntent(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 47
    invoke-static {v3}, Lcom/android/settings_ex/SetupWizardUtils;->getTransparentTheme(Landroid/content/Intent;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->setTheme(I)V

    .line 50
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const-string/jumbo v4, "access_point_state"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 53
    .local v1, "accessPointState":Landroid/os/Bundle;
    const/4 v0, 0x0

    .line 54
    .local v0, "accessPoint":Lcom/android/settings_exlib/wifi/AccessPoint;
    if-eqz v1, :cond_1

    .line 55
    new-instance v0, Lcom/android/settings_exlib/wifi/AccessPoint;

    .end local v0    # "accessPoint":Lcom/android/settings_exlib/wifi/AccessPoint;
    invoke-direct {v0, p0, v1}, Lcom/android/settings_exlib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 58
    :cond_1
    new-instance v2, Lcom/android/settings_ex/wifi/WifiDialog;

    const/4 v4, 0x1

    invoke-direct {v2, p0, p0, v0, v4}, Lcom/android/settings_ex/wifi/WifiDialog;-><init>(Landroid/content/Context;Lcom/android/settings_ex/wifi/WifiDialog$WifiDialogListener;Lcom/android/settings_exlib/wifi/AccessPoint;I)V

    .line 59
    .local v2, "dialog":Lcom/android/settings_ex/wifi/WifiDialog;
    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/WifiDialog;->show()V

    .line 60
    invoke-virtual {v2, p0}, Lcom/android/settings_ex/wifi/WifiDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 44
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->finish()V

    .line 134
    return-void
.end method

.method public onForget(Lcom/android/settings_ex/wifi/WifiDialog;)V
    .locals 7
    .param p1, "dialog"    # Lcom/android/settings_ex/wifi/WifiDialog;

    .prologue
    const/4 v5, 0x0

    .line 71
    const-class v4, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 72
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {p1}, Lcom/android/settings_ex/wifi/WifiDialog;->getController()Lcom/android/settings_ex/wifi/WifiConfigController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings_ex/wifi/WifiConfigController;->getAccessPoint()Lcom/android/settings_exlib/wifi/AccessPoint;

    move-result-object v0

    .line 73
    .local v0, "accessPoint":Lcom/android/settings_exlib/wifi/AccessPoint;
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->isSaved()Z

    move-result v4

    if-nez v4, :cond_3

    .line 75
    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 76
    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v4, v5, :cond_2

    .line 79
    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings_exlib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 78
    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->disableEphemeralNetwork(Ljava/lang/String;)V

    .line 89
    :cond_0
    :goto_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 90
    .local v2, "resultData":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 91
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 92
    .local v1, "accessPointState":Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 93
    const-string/jumbo v4, "access_point_state"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 95
    .end local v1    # "accessPointState":Landroid/os/Bundle;
    :cond_1
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->setResult(I)V

    .line 96
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->finish()V

    .line 70
    return-void

    .line 82
    .end local v2    # "resultData":Landroid/content/Intent;
    :cond_2
    const-string/jumbo v4, "WifiDialogActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to forget invalid network "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 85
    :cond_3
    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0
.end method

.method public onSubmit(Lcom/android/settings_ex/wifi/WifiDialog;)V
    .locals 8
    .param p1, "dialog"    # Lcom/android/settings_ex/wifi/WifiDialog;

    .prologue
    const/4 v7, 0x0

    .line 101
    invoke-virtual {p1}, Lcom/android/settings_ex/wifi/WifiDialog;->getController()Lcom/android/settings_ex/wifi/WifiConfigController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settings_ex/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 102
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p1}, Lcom/android/settings_ex/wifi/WifiDialog;->getController()Lcom/android/settings_ex/wifi/WifiConfigController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settings_ex/wifi/WifiConfigController;->getAccessPoint()Lcom/android/settings_exlib/wifi/AccessPoint;

    move-result-object v0

    .line 103
    .local v0, "accessPoint":Lcom/android/settings_exlib/wifi/AccessPoint;
    const-class v6, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 105
    .local v5, "wifiManager":Landroid/net/wifi/WifiManager;
    if-nez v2, :cond_3

    .line 106
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->isSaved()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 107
    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    invoke-virtual {v5, v6, v7}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 120
    :cond_0
    :goto_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 121
    .local v4, "resultData":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 122
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 123
    .local v1, "accessPointState":Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 124
    const-string/jumbo v6, "access_point_state"

    invoke-virtual {v4, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 126
    .end local v1    # "accessPointState":Landroid/os/Bundle;
    :cond_1
    if-eqz v2, :cond_2

    .line 127
    const-string/jumbo v6, "wifi_configuration"

    invoke-virtual {v4, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 129
    :cond_2
    const/4 v6, 0x1

    invoke-virtual {p0, v6, v4}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->setResult(ILandroid/content/Intent;)V

    .line 130
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->finish()V

    .line 100
    return-void

    .line 110
    .end local v4    # "resultData":Landroid/content/Intent;
    :cond_3
    invoke-virtual {v5, v2, v7}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 111
    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 114
    .local v3, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_0

    .line 115
    :cond_4
    invoke-virtual {v5, v2, v7}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0
.end method
