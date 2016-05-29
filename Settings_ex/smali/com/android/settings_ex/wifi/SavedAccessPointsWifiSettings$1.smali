.class final Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings$1;
.super Lcom/android/settings_ex/search/BaseSearchIndexProvider;
.source "SavedAccessPointsWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/android/settings_ex/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 9
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
    .line 224
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/search/SearchIndexableRaw;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 226
    .local v4, "res":Landroid/content/res/Resources;
    const v8, 0x7f0903e2

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 229
    .local v6, "title":Ljava/lang/String;
    new-instance v2, Lcom/android/settings_ex/search/SearchIndexableRaw;

    invoke-direct {v2, p1}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 230
    .local v2, "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    iput-object v6, v2, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 231
    iput-object v6, v2, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 232
    iput-boolean p2, v2, Lcom/android/settings_ex/search/SearchIndexableRaw;->enabled:Z

    .line 233
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    const-string v8, "wifi"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 238
    .local v7, "wifiManager":Landroid/net/wifi/WifiManager;
    # invokes: Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->constructSavedAccessPoints(Landroid/content/Context;Landroid/net/wifi/WifiManager;)Ljava/util/List;
    invoke-static {p1, v7}, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->access$000(Landroid/content/Context;Landroid/net/wifi/WifiManager;)Ljava/util/List;

    move-result-object v0

    .line 241
    .local v0, "accessPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/wifi/AccessPoint;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 242
    .local v1, "accessPointsSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 243
    new-instance v2, Lcom/android/settings_ex/search/SearchIndexableRaw;

    .end local v2    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    invoke-direct {v2, p1}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 244
    .restart local v2    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v8}, Lcom/android/settings_ex/wifi/AccessPoint;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 245
    iput-object v6, v2, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 246
    iput-boolean p2, v2, Lcom/android/settings_ex/search/SearchIndexableRaw;->enabled:Z

    .line 247
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 250
    :cond_0
    return-object v5
.end method
