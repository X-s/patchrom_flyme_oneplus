.class final Lcom/oneplus/settings/notification/OPZenModeSettings$4;
.super Lcom/android/settings_ex/search/BaseSearchIndexProvider;
.source "OPZenModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/notification/OPZenModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/android/settings_ex/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 7
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
    .line 253
    # invokes: Lcom/oneplus/settings/notification/OPZenModeSettings;->allKeyTitles(Landroid/content/Context;)Landroid/util/SparseArray;
    invoke-static {p1}, Lcom/oneplus/settings/notification/OPZenModeSettings;->access$700(Landroid/content/Context;)Landroid/util/SparseArray;

    move-result-object v3

    .line 254
    .local v3, "keyTitles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 255
    .local v0, "N":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 257
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/search/SearchIndexableRaw;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 258
    .local v4, "res":Landroid/content/res/Resources;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 259
    new-instance v1, Lcom/android/settings_ex/search/SearchIndexableRaw;

    invoke-direct {v1, p1}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 260
    .local v1, "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v1, Lcom/android/settings_ex/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 261
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 262
    const v6, 0x7f0c0c62

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 264
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 266
    .end local v1    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    :cond_0
    return-object v5
.end method
