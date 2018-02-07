.class Lcom/android/settings_ex/bluetooth/BluetoothSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/bluetooth/BluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private updateDeviceName(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 139
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    iget-object v3, v3, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    iget-object v3, v3, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/support/v7/preference/Preference;

    if-eqz v3, :cond_0

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 141
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    .line 142
    .local v1, "locale":Ljava/util/Locale;
    invoke-static {v1}, Landroid/text/BidiFormatter;->getInstance(Ljava/util/Locale;)Landroid/text/BidiFormatter;

    move-result-object v0

    .line 143
    .local v0, "bidiFormatter":Landroid/text/BidiFormatter;
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    iget-object v3, v3, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/support/v7/preference/Preference;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 145
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    iget-object v5, v5, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 144
    const v5, 0x7f0e050e

    .line 143
    invoke-virtual {v2, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 138
    .end local v0    # "bidiFormatter":Landroid/text/BidiFormatter;
    .end local v1    # "locale":Ljava/util/Locale;
    .end local v2    # "res":Landroid/content/res/Resources;
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 123
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x80000000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 133
    .local v1, "state":I
    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 134
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->-set0(Lcom/android/settings_ex/bluetooth/BluetoothSettings;Z)Z

    .line 122
    :cond_0
    return-void
.end method
