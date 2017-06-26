.class final Lcom/android/settings_ex/DataUsageSummary$14;
.super Lcom/android/settings_ex/search/BaseSearchIndexProvider;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2719
    invoke-direct {p0}, Lcom/android/settings_ex/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .prologue
    const v4, 0x7f0c0acf

    .line 2722
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2724
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/search/SearchIndexableRaw;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2727
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v0, Lcom/android/settings_ex/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 2728
    .local v0, "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 2729
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 2730
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2733
    new-instance v0, Lcom/android/settings_ex/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 2734
    .restart local v0    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    const-string v3, "data_usage_enable_mobile"

    iput-object v3, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 2735
    const v3, 0x7f0c0afa

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 2736
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 2737
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2740
    new-instance v0, Lcom/android/settings_ex/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 2741
    .restart local v0    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    const-string v3, "data_usage_disable_mobile_limit"

    iput-object v3, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 2742
    const v3, 0x7f0c0aef

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 2743
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 2744
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2747
    new-instance v0, Lcom/android/settings_ex/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 2748
    .restart local v0    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    const-string v3, "data_usage_cycle"

    iput-object v3, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 2749
    const v3, 0x7f0c0ad6

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 2750
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 2751
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2753
    return-object v2
.end method
