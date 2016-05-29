.class final Lcom/android/settings_ex/system/DeviceInfoDetailSettings$1;
.super Lcom/android/settings_ex/search/BaseSearchIndexProvider;
.source "DeviceInfoDetailSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/system/DeviceInfoDetailSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 442
    invoke-direct {p0}, Lcom/android/settings_ex/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method

.method private checkIntentAction(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 496
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 499
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 500
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 501
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 503
    .local v3, "listSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 504
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 505
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_1

    .line 507
    const/4 v6, 0x1

    .line 511
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    return v6

    .line 503
    .restart local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isPropertyMissing(Ljava/lang/String;)Z
    .locals 2
    .param p1, "property"    # Ljava/lang/String;

    .prologue
    .line 492
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
    .line 454
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 455
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "ro.build.selinux"

    invoke-direct {p0, v1}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings$1;->isPropertyMissing(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 456
    const-string v1, "selinux_status"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    :cond_0
    const-string v1, "ro.url.safetylegal"

    invoke-direct {p0, v1}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings$1;->isPropertyMissing(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 459
    const-string v1, "safetylegal"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    :cond_1
    const-string v1, "ro.ril.fccid"

    invoke-direct {p0, v1}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings$1;->isPropertyMissing(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 462
    const-string v1, "fcc_equipment_id"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    :cond_2
    invoke-static {p1}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 466
    const-string v1, "baseband_version"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    :cond_3
    # invokes: Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->access$000(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 470
    const-string v1, "device_feedback"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    :cond_4
    const-string v1, "android.settings.TERMS"

    invoke-direct {p0, p1, v1}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings$1;->checkIntentAction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 473
    const-string v1, "terms"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    :cond_5
    const-string v1, "android.settings.LICENSE"

    invoke-direct {p0, p1, v1}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings$1;->checkIntentAction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 476
    const-string v1, "license"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    :cond_6
    const-string v1, "android.settings.COPYRIGHT"

    invoke-direct {p0, p1, v1}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings$1;->checkIntentAction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 479
    const-string v1, "copyright"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    :cond_7
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_8

    .line 482
    const-string v1, "system_update_settings"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_9

    .line 486
    const-string v1, "additional_system_update_settings"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    :cond_9
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
    .line 447
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 448
    .local v0, "sir":Landroid/provider/SearchIndexableResource;
    const v1, 0x7f06001b

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 449
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/provider/SearchIndexableResource;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
