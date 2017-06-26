.class final Lcom/android/settings_ex/DeviceInfoSettings$1;
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
    .line 468
    invoke-direct {p0}, Lcom/android/settings_ex/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method

.method private isPropertyMissing(Ljava/lang/String;)Z
    .locals 2
    .param p1, "property"    # Ljava/lang/String;

    .prologue
    .line 509
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 3
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
    .line 480
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 481
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "ro.build.selinux"

    invoke-direct {p0, v1}, Lcom/android/settings_ex/DeviceInfoSettings$1;->isPropertyMissing(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 482
    const-string v1, "selinux_status"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    :cond_0
    const-string v1, "ro.url.safetylegal"

    invoke-direct {p0, v1}, Lcom/android/settings_ex/DeviceInfoSettings$1;->isPropertyMissing(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 485
    const-string v1, "safetylegal"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    :cond_1
    const-string v1, "ro.ril.fccid"

    invoke-direct {p0, v1}, Lcom/android/settings_ex/DeviceInfoSettings$1;->isPropertyMissing(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 488
    const-string v1, "fcc_equipment_id"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    :cond_2
    invoke-static {p1}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 492
    const-string v1, "baseband_version"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    :cond_3
    # invokes: Lcom/android/settings_ex/DeviceInfoSettings;->getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/settings_ex/DeviceInfoSettings;->access$000(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 496
    const-string v1, "device_feedback"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    :cond_4
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_5

    .line 499
    const-string v1, "system_update_settings"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 503
    const-string v1, "additional_system_update_settings"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    :cond_6
    return-object v0
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
    .line 473
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 474
    .local v0, "sir":Landroid/provider/SearchIndexableResource;
    const v1, 0x7f08001a

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 475
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/provider/SearchIndexableResource;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
