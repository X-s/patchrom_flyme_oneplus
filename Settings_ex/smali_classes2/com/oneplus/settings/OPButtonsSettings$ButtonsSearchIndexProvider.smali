.class Lcom/oneplus/settings/OPButtonsSettings$ButtonsSearchIndexProvider;
.super Lcom/android/settings_ex/search/BaseSearchIndexProvider;
.source "OPButtonsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPButtonsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ButtonsSearchIndexProvider"
.end annotation


# instance fields
.field mIsPrimary:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 643
    invoke-direct {p0}, Lcom/android/settings_ex/search/BaseSearchIndexProvider;-><init>()V

    .line 644
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/oneplus/settings/OPButtonsSettings$ButtonsSearchIndexProvider;->mIsPrimary:Z

    .line 642
    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 4
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
    const/4 v0, 0x0

    .line 682
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 684
    .local v1, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v2, p0, Lcom/oneplus/settings/OPButtonsSettings$ButtonsSearchIndexProvider;->mIsPrimary:Z

    if-nez v2, :cond_0

    .line 685
    invoke-static {}, Lcom/oneplus/settings/OPButtonsSettings;->-wrap1()Ljava/util/List;

    move-result-object v1

    .line 687
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 688
    const-string/jumbo v3, "emergency_affordance_needed"

    .line 687
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 689
    .local v0, "inEmergencyCall":Z
    :cond_1
    if-eqz v0, :cond_2

    .line 690
    const-string/jumbo v2, "camera_double_tap_power_gesture"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 693
    :cond_2
    return-object v1
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
    .line 650
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 652
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableResource;>;"
    iget-boolean v2, p0, Lcom/oneplus/settings/OPButtonsSettings$ButtonsSearchIndexProvider;->mIsPrimary:Z

    if-nez v2, :cond_0

    .line 653
    return-object v0

    .line 656
    :cond_0
    new-instance v1, Landroid/provider/SearchIndexableResource;

    invoke-direct {v1, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 657
    .local v1, "sir":Landroid/provider/SearchIndexableResource;
    const v2, 0x7f080042

    iput v2, v1, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 658
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 660
    return-object v0
.end method
