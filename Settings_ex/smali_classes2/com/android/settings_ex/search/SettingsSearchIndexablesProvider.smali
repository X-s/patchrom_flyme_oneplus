.class public Lcom/android/settings_ex/search/SettingsSearchIndexablesProvider;
.super Landroid/provider/SearchIndexablesProvider;
.source "SettingsSearchIndexablesProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingsSearchIndexablesProvider"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/provider/SearchIndexablesProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method public queryNonIndexableKeys([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .param p1, "projection"    # [Ljava/lang/String;

    .prologue
    .line 71
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Landroid/provider/SearchIndexablesContract;->NON_INDEXABLES_KEYS_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 72
    .local v0, "cursor":Landroid/database/MatrixCursor;
    return-object v0
.end method

.method public queryRawData([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .param p1, "projection"    # [Ljava/lang/String;

    .prologue
    .line 65
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Landroid/provider/SearchIndexablesContract;->INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 66
    .local v0, "result":Landroid/database/MatrixCursor;
    return-object v0
.end method

.method public queryXmlResources([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "projection"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 47
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v5, Landroid/provider/SearchIndexablesContract;->INDEXABLES_XML_RES_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 48
    .local v0, "cursor":Landroid/database/MatrixCursor;
    invoke-static {}, Lcom/android/settings_ex/search/SearchIndexableResources;->values()Ljava/util/Collection;

    move-result-object v4

    .line 49
    .local v4, "values":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/provider/SearchIndexableResource;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "val$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/SearchIndexableResource;

    .line 50
    .local v2, "val":Landroid/provider/SearchIndexableResource;
    const/4 v5, 0x7

    new-array v1, v5, [Ljava/lang/Object;

    .line 51
    .local v1, "ref":[Ljava/lang/Object;
    iget v5, v2, Landroid/provider/SearchIndexableResource;->rank:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v1, v6

    .line 52
    iget v5, v2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v1, v6

    .line 53
    iget-object v5, v2, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v5, v1, v6

    .line 54
    iget v5, v2, Landroid/provider/SearchIndexableResource;->iconResId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v1, v6

    .line 55
    const/4 v5, 0x4

    aput-object v7, v1, v5

    .line 56
    const/4 v5, 0x5

    aput-object v7, v1, v5

    .line 57
    const/4 v5, 0x6

    aput-object v7, v1, v5

    .line 58
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 60
    .end local v1    # "ref":[Ljava/lang/Object;
    .end local v2    # "val":Landroid/provider/SearchIndexableResource;
    :cond_0
    return-object v0
.end method
