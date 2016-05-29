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
    .line 578
    invoke-direct {p0}, Lcom/android/settings_ex/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method

.method private checkIntentAction(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 635
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 638
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 639
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 640
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 642
    .local v3, "listSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 643
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 644
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_1

    .line 646
    const/4 v6, 0x1

    .line 650
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    return v6

    .line 642
    .restart local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isPropertyMissing(Ljava/lang/String;)Z
    .locals 2
    .param p1, "property"    # Ljava/lang/String;

    .prologue
    .line 631
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
    .line 590
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 591
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "ro.build.selinux"

    invoke-direct {p0, v1}, Lcom/android/settings_ex/DeviceInfoSettings$1;->isPropertyMissing(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 592
    const-string v1, "selinux_status"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 594
    :cond_0
    const-string v1, "ro.url.safetylegal"

    invoke-direct {p0, v1}, Lcom/android/settings_ex/DeviceInfoSettings$1;->isPropertyMissing(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 595
    const-string v1, "safetylegal"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    :cond_1
    const-string v1, "ro.ril.fccid"

    invoke-direct {p0, v1}, Lcom/android/settings_ex/DeviceInfoSettings$1;->isPropertyMissing(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 598
    const-string v1, "fcc_equipment_id"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    :cond_2
    invoke-static {p1}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 602
    const-string v1, "baseband_version"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    :cond_3
    # invokes: Lcom/android/settings_ex/DeviceInfoSettings;->getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/settings_ex/DeviceInfoSettings;->access$000(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 606
    const-string v1, "device_feedback"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 608
    :cond_4
    const-string v1, "android.settings.TERMS"

    invoke-direct {p0, p1, v1}, Lcom/android/settings_ex/DeviceInfoSettings$1;->checkIntentAction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 609
    const-string v1, "terms"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    :cond_5
    const-string v1, "android.settings.LICENSE"

    invoke-direct {p0, p1, v1}, Lcom/android/settings_ex/DeviceInfoSettings$1;->checkIntentAction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 612
    const-string v1, "license"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    :cond_6
    const-string v1, "android.settings.COPYRIGHT"

    invoke-direct {p0, p1, v1}, Lcom/android/settings_ex/DeviceInfoSettings$1;->checkIntentAction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 615
    const-string v1, "copyright"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    :cond_7
    const-string v1, "android.settings.WEBVIEW_LICENSE"

    invoke-direct {p0, p1, v1}, Lcom/android/settings_ex/DeviceInfoSettings$1;->checkIntentAction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 618
    const-string v1, "webview_license"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    :cond_8
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_9

    .line 621
    const-string v1, "system_update_settings"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
    :cond_9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_a

    .line 625
    const-string v1, "additional_system_update_settings"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    :cond_a
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
    .line 583
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 584
    .local v0, "sir":Landroid/provider/SearchIndexableResource;
    const v1, 0x7f06001f

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 585
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/provider/SearchIndexableResource;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
