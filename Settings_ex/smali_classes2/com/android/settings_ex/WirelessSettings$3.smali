.class final Lcom/android/settings_ex/WirelessSettings$3;
.super Lcom/android/settings_ex/search/BaseSearchIndexProvider;
.source "WirelessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/WirelessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 563
    invoke-direct {p0}, Lcom/android/settings_ex/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 574
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 576
    .local v7, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v9, "user"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    .line 577
    .local v8, "um":Landroid/os/UserManager;
    invoke-virtual {v8}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v9

    if-eqz v9, :cond_8

    move v3, v4

    .line 578
    .local v3, "isSecondaryUser":Z
    :goto_0
    if-nez v3, :cond_0

    .line 579
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 580
    const v10, 0x112006d

    .line 579
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 581
    .local v4, "isWimaxEnabled":Z
    :cond_0
    if-nez v4, :cond_1

    .line 582
    const-string/jumbo v9, "wimax_settings"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    :cond_1
    if-eqz v3, :cond_2

    .line 586
    const-string/jumbo v9, "vpn_settings"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    :cond_2
    const-string/jumbo v9, "nfc"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 590
    check-cast v5, Landroid/nfc/NfcManager;

    .line 592
    .local v5, "manager":Landroid/nfc/NfcManager;
    if-eqz v5, :cond_3

    .line 593
    invoke-virtual {v5}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 594
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    if-nez v0, :cond_3

    .line 595
    const-string/jumbo v9, "toggle_nfc"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 596
    const-string/jumbo v9, "android_beam_settings"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    .end local v0    # "adapter":Landroid/nfc/NfcAdapter;
    :cond_3
    if-nez v3, :cond_4

    invoke-static {p1}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 602
    :cond_4
    const-string/jumbo v9, "mobile_network_settings"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    const-string/jumbo v9, "manage_mobile_plan"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 608
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 609
    const v10, 0x7f0c0014

    .line 608
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 610
    .local v2, "isMobilePlanEnabled":Z
    if-nez v2, :cond_6

    .line 611
    const-string/jumbo v9, "manage_mobile_plan"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 617
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v9, "android.hardware.type.television"

    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 618
    const-string/jumbo v9, "toggle_airplane"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    :cond_7
    const-string/jumbo v9, "proxy_settings"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    const-string/jumbo v9, "connectivity"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 625
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 627
    .local v1, "cm":Landroid/net/ConnectivityManager;
    if-nez v3, :cond_9

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 634
    :goto_1
    const-string/jumbo v9, "mobile_network_settings"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    const-string/jumbo v9, "voice_over_lte"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    const-string/jumbo v9, "manage_mobile_plan"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    const-string/jumbo v9, "wifi_calling_settings"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    const-string/jumbo v9, "wifi_calling_enhanced_settings"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    return-object v7

    .line 577
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "isMobilePlanEnabled":Z
    .end local v3    # "isSecondaryUser":Z
    .end local v4    # "isWimaxEnabled":Z
    .end local v5    # "manager":Landroid/nfc/NfcManager;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_8
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 628
    .restart local v1    # "cm":Landroid/net/ConnectivityManager;
    .restart local v2    # "isMobilePlanEnabled":Z
    .restart local v3    # "isSecondaryUser":Z
    .restart local v4    # "isWimaxEnabled":Z
    .restart local v5    # "manager":Landroid/nfc/NfcManager;
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_9
    const-string/jumbo v9, "tether_settings"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 567
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 568
    .local v0, "sir":Landroid/provider/SearchIndexableResource;
    const v1, 0x7f0800a7

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 569
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/provider/SearchIndexableResource;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
