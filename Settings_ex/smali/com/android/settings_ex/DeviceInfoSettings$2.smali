.class final Lcom/android/settings_ex/DeviceInfoSettings$2;
.super Lcom/android/settings_ex/search/BaseSearchIndexProvider;
.source "DeviceInfoSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DeviceInfoSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 610
    invoke-direct {p0}, Lcom/android/settings_ex/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method

.method private isPropertyMissing(Ljava/lang/String;)Z
    .locals 2
    .param p1, "property"    # Ljava/lang/String;

    .prologue
    .line 678
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 7
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
    .line 622
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 623
    .local v2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v5, "ro.build.selinux"

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DeviceInfoSettings$2;->isPropertyMissing(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 624
    const-string/jumbo v5, "selinux_status"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    :cond_0
    const-string/jumbo v5, "ro.url.safetylegal"

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DeviceInfoSettings$2;->isPropertyMissing(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 627
    const-string/jumbo v5, "safetylegal"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 629
    :cond_1
    const-string/jumbo v5, "ro.ril.fccid"

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DeviceInfoSettings$2;->isPropertyMissing(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 630
    const-string/jumbo v5, "fcc_equipment_id"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    :cond_2
    invoke-static {p1}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 634
    const-string/jumbo v5, "baseband_version"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    :cond_3
    invoke-static {p1}, Lcom/android/settings_exlib/DeviceInfoUtils;->getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 638
    const-string/jumbo v5, "device_feedback"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 640
    :cond_4
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    .line 642
    .local v4, "um":Landroid/os/UserManager;
    invoke-virtual {v4}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v5

    if-nez v5, :cond_5

    .line 643
    const-string/jumbo v5, "system_update_settings"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 646
    const v6, 0x7f0c000f

    .line 645
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_6

    .line 647
    const-string/jumbo v5, "additional_system_update_settings"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 650
    :cond_6
    const-string/jumbo v5, "ro.rf_version"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 651
    .local v0, "contry":Ljava/lang/String;
    const-string/jumbo v5, "mbn_version"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 652
    const-string/jumbo v5, "system_update_settings"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 653
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string/jumbo v6, "oem.authentication_information.support"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 654
    const-string/jumbo v5, "Eu"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string/jumbo v5, "In"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string/jumbo v5, "Am"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 655
    :cond_7
    const-string/jumbo v5, "oneplus_authentication_information"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 660
    :cond_8
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "android.settings.SHOW_REGULATORY_INFO"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 661
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "ro.product.model"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 662
    .local v3, "model":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    .line 663
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0013

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 662
    if-eqz v5, :cond_9

    .line 663
    const-string/jumbo v5, "A3003"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 669
    :cond_9
    const-string/jumbo v5, "regulatory_info"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    :cond_a
    :goto_1
    const-string/jumbo v5, "manual"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 674
    return-object v2

    .line 658
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "model":Ljava/lang/String;
    :cond_b
    const-string/jumbo v5, "oneplus_authentication_information"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 664
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v3    # "model":Ljava/lang/String;
    :cond_c
    const-string/jumbo v5, "Am"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 662
    if-eqz v5, :cond_9

    .line 665
    const-string/jumbo v5, "Eu"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string/jumbo v5, "In"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string/jumbo v5, "Ch"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 666
    :cond_d
    const-string/jumbo v5, "regulatory_info"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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
    .line 615
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 616
    .local v0, "sir":Landroid/provider/SearchIndexableResource;
    const v1, 0x7f080026

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 617
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/provider/SearchIndexableResource;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
