.class Lcom/oneplus/settings/OPGestureSettings$OPGestureSearchIndexProvider;
.super Lcom/android/settings_ex/search/BaseSearchIndexProvider;
.source "OPGestureSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPGestureSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OPGestureSearchIndexProvider"
.end annotation


# instance fields
.field mIsPrimary:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 420
    invoke-direct {p0}, Lcom/android/settings_ex/search/BaseSearchIndexProvider;-><init>()V

    .line 421
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/oneplus/settings/OPGestureSettings$OPGestureSearchIndexProvider;->mIsPrimary:Z

    .line 419
    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 2
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
    .line 458
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 459
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v1, p0, Lcom/oneplus/settings/OPGestureSettings$OPGestureSearchIndexProvider;->mIsPrimary:Z

    if-nez v1, :cond_0

    .line 460
    invoke-static {}, Lcom/oneplus/settings/OPGestureSettings;->-wrap0()Ljava/util/List;

    move-result-object v0

    .line 462
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/settings/OPGestureSettings$OPGestureSearchIndexProvider;->mIsPrimary:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->isSurportGesture20(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 463
    :cond_1
    const-string/jumbo v1, "open_light_device_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    const-string/jumbo v1, "draw_o_start_camera_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    :cond_2
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
    .line 427
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 428
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableResource;>;"
    iget-boolean v2, p0, Lcom/oneplus/settings/OPGestureSettings$OPGestureSearchIndexProvider;->mIsPrimary:Z

    if-nez v2, :cond_0

    .line 429
    return-object v0

    .line 432
    :cond_0
    new-instance v1, Landroid/provider/SearchIndexableResource;

    invoke-direct {v1, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 433
    .local v1, "sir":Landroid/provider/SearchIndexableResource;
    const v2, 0x7f080048

    iput v2, v1, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 434
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    return-object v0
.end method
