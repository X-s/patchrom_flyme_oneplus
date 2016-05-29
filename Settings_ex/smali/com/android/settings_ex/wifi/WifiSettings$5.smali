.class Lcom/android/settings_ex/wifi/WifiSettings$5;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiSettings;)V
    .locals 0

    .prologue
    .line 464
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettings$5;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 467
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 468
    .local v0, "val":Z
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$5;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mEnableWifi:Landroid/preference/SwitchPreference;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiSettings;->access$100(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_6

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->CTA_DEBUG:Z
    invoke-static {}, Lcom/android/settings_ex/wifi/WifiSettings;->access$200()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 469
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$5;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # setter for: Lcom/android/settings_ex/wifi/WifiSettings;->isAlertMark:Z
    invoke-static {v2, v5}, Lcom/android/settings_ex/wifi/WifiSettings;->access$302(Lcom/android/settings_ex/wifi/WifiSettings;Z)Z

    .line 471
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings$5;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v3}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings$5;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v3}, Lcom/android/settings_ex/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09004b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040014

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040013

    new-instance v4, Lcom/android/settings_ex/wifi/WifiSettings$5$3;

    invoke-direct {v4, p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings$5$3;-><init>(Lcom/android/settings_ex/wifi/WifiSettings$5;Z)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040009

    new-instance v4, Lcom/android/settings_ex/wifi/WifiSettings$5$2;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/wifi/WifiSettings$5$2;-><init>(Lcom/android/settings_ex/wifi/WifiSettings$5;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    new-instance v3, Lcom/android/settings_ex/wifi/WifiSettings$5$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/wifi/WifiSettings$5$1;-><init>(Lcom/android/settings_ex/wifi/WifiSettings$5;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 538
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$5;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "wifi"

    invoke-static {v2, v3}, Lcom/android/settings_ex/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 539
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$5;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f09034d

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 541
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$5;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mEnableWifi:Landroid/preference/SwitchPreference;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiSettings;->access$100(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 544
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$5;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    .line 545
    .local v1, "wifiApState":I
    if-eqz v0, :cond_3

    const/16 v2, 0xc

    if-eq v1, v2, :cond_2

    const/16 v2, 0xd

    if-ne v1, v2, :cond_3

    .line 547
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$5;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 553
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$5;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mEnableWifi:Landroid/preference/SwitchPreference;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiSettings;->access$100(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 554
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$5;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v2

    if-nez v2, :cond_4

    .line 556
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$5;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mEnableWifi:Landroid/preference/SwitchPreference;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiSettings;->access$100(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 557
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$5;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f09034c

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 563
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$5;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mEnableWifi:Landroid/preference/SwitchPreference;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiSettings;->access$100(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_5

    .line 564
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$5;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mEnableWifi:Landroid/preference/SwitchPreference;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiSettings;->access$100(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    const v3, 0x7f0900c6

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 567
    :cond_5
    return v6

    .line 531
    .end local v1    # "wifiApState":I
    :cond_6
    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->CTA_DEBUG:Z
    invoke-static {}, Lcom/android/settings_ex/wifi/WifiSettings;->access$200()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0
.end method
