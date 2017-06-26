.class final Lcom/android/settings_ex/DisplaySettings$3;
.super Lcom/android/settings_ex/search/BaseSearchIndexProvider;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 460
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
    .line 476
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 477
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x112006a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 479
    const-string v1, "screensaver"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    # invokes: Lcom/android/settings_ex/DisplaySettings;->isAutomaticBrightnessAvailable(Landroid/content/res/Resources;)Z
    invoke-static {v1}, Lcom/android/settings_ex/DisplaySettings;->access$100(Landroid/content/res/Resources;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 482
    const-string v1, "auto_brightness"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    :cond_1
    # invokes: Lcom/android/settings_ex/DisplaySettings;->isLiftToWakeAvailable(Landroid/content/Context;)Z
    invoke-static {p1}, Lcom/android/settings_ex/DisplaySettings;->access$200(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 485
    const-string v1, "lift_to_wake"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    :cond_2
    # invokes: Lcom/android/settings_ex/DisplaySettings;->isDozeAvailable(Landroid/content/Context;)Z
    invoke-static {p1}, Lcom/android/settings_ex/DisplaySettings;->access$300(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 488
    const-string v1, "doze"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    :cond_3
    invoke-static {p1}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleVisible(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 491
    const-string v1, "auto_rotate"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    # invokes: Lcom/android/settings_ex/DisplaySettings;->isTapToWakeAvailable(Landroid/content/res/Resources;)Z
    invoke-static {v1}, Lcom/android/settings_ex/DisplaySettings;->access$400(Landroid/content/res/Resources;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 494
    const-string v1, "tap_to_wake"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    :cond_5
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
    .line 464
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 467
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/provider/SearchIndexableResource;>;"
    new-instance v1, Landroid/provider/SearchIndexableResource;

    invoke-direct {v1, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 468
    .local v1, "sir":Landroid/provider/SearchIndexableResource;
    const v2, 0x7f080020

    iput v2, v1, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 469
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    return-object v0
.end method
