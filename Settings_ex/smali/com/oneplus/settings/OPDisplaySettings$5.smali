.class final Lcom/oneplus/settings/OPDisplaySettings$5;
.super Lcom/android/settings_ex/search/BaseSearchIndexProvider;
.source "OPDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1014
    invoke-direct {p0}, Lcom/android/settings_ex/search/BaseSearchIndexProvider;-><init>()V

    return-void
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
    .line 1028
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1029
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x112006a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1030
    const-string v1, "screensaver"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1033
    :cond_0
    const-string v1, "screensaver"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1035
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    # invokes: Lcom/oneplus/settings/OPDisplaySettings;->isAutomaticBrightnessAvailable(Landroid/content/res/Resources;)Z
    invoke-static {v1}, Lcom/oneplus/settings/OPDisplaySettings;->access$1100(Landroid/content/res/Resources;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1036
    const-string v1, "auto_brightness"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1038
    :cond_1
    # invokes: Lcom/oneplus/settings/OPDisplaySettings;->isLiftToWakeAvailable(Landroid/content/Context;)Z
    invoke-static {p1}, Lcom/oneplus/settings/OPDisplaySettings;->access$1200(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1039
    const-string v1, "lift_to_wake"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1042
    :cond_2
    const-string v1, "lift_to_wake"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1044
    # invokes: Lcom/oneplus/settings/OPDisplaySettings;->isDozeAvailable(Landroid/content/Context;)Z
    invoke-static {p1}, Lcom/oneplus/settings/OPDisplaySettings;->access$1300(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1045
    const-string v1, "doze"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1048
    :cond_3
    const-string v1, "doze"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1050
    invoke-static {p1}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleVisible(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1051
    const-string v1, "auto_rotate"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1055
    :cond_4
    const-string v1, "wallpaper"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1057
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
    .line 1017
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1019
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/provider/SearchIndexableResource;>;"
    new-instance v1, Landroid/provider/SearchIndexableResource;

    invoke-direct {v1, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 1020
    .local v1, "sir":Landroid/provider/SearchIndexableResource;
    const v2, 0x7f08003c

    iput v2, v1, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 1021
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1023
    return-object v0
.end method
