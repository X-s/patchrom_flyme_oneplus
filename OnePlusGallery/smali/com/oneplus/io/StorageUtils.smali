.class public Lcom/oneplus/io/StorageUtils;
.super Ljava/lang/Object;
.source "StorageUtils.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static findStorage(Lcom/oneplus/io/StorageManager;Lcom/oneplus/io/Storage$Type;)Lcom/oneplus/io/Storage;
    .locals 1
    .param p0, "storageManager"    # Lcom/oneplus/io/StorageManager;
    .param p1, "type"    # Lcom/oneplus/io/Storage$Type;

    .prologue
    .line 30
    if-eqz p0, :cond_0

    .line 31
    sget-object v0, Lcom/oneplus/io/StorageManager;->PROP_STORAGE_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p0, v0}, Lcom/oneplus/io/StorageManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/oneplus/io/StorageUtils;->findStorage(Ljava/util/List;Lcom/oneplus/io/Storage$Type;)Lcom/oneplus/io/Storage;

    move-result-object v0

    .line 32
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static findStorage(Ljava/util/List;Lcom/oneplus/io/Storage$Type;)Lcom/oneplus/io/Storage;
    .locals 3
    .param p1, "type"    # Lcom/oneplus/io/Storage$Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/io/Storage;",
            ">;",
            "Lcom/oneplus/io/Storage$Type;",
            ")",
            "Lcom/oneplus/io/Storage;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "storageList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/io/Storage;>;"
    if-eqz p0, :cond_0

    .line 46
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_2

    .line 53
    .end local v0    # "i":I
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1

    .line 48
    .restart local v0    # "i":I
    :cond_2
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/io/Storage;

    .line 49
    .local v1, "storage":Lcom/oneplus/io/Storage;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/oneplus/io/Storage;->getType()Lcom/oneplus/io/Storage$Type;

    move-result-object v2

    if-eq v2, p1, :cond_1

    .line 46
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static findStorageFromSettings(Lcom/oneplus/io/StorageManager;Lcom/oneplus/base/Settings;Lcom/oneplus/io/Storage$Type;)Lcom/oneplus/io/Storage;
    .locals 1
    .param p0, "storageManager"    # Lcom/oneplus/io/StorageManager;
    .param p1, "settings"    # Lcom/oneplus/base/Settings;
    .param p2, "defaultType"    # Lcom/oneplus/io/Storage$Type;

    .prologue
    .line 129
    const-string v0, "StorageType"

    invoke-static {p0, p1, v0, p2}, Lcom/oneplus/io/StorageUtils;->findStorageFromSettings(Lcom/oneplus/io/StorageManager;Lcom/oneplus/base/Settings;Ljava/lang/String;Lcom/oneplus/io/Storage$Type;)Lcom/oneplus/io/Storage;

    move-result-object v0

    return-object v0
.end method

.method public static findStorageFromSettings(Lcom/oneplus/io/StorageManager;Lcom/oneplus/base/Settings;Ljava/lang/String;Lcom/oneplus/io/Storage$Type;)Lcom/oneplus/io/Storage;
    .locals 1
    .param p0, "storageManager"    # Lcom/oneplus/io/StorageManager;
    .param p1, "settings"    # Lcom/oneplus/base/Settings;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultType"    # Lcom/oneplus/io/Storage$Type;

    .prologue
    .line 114
    if-eqz p0, :cond_0

    .line 115
    sget-object v0, Lcom/oneplus/io/StorageManager;->PROP_STORAGE_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p0, v0}, Lcom/oneplus/io/StorageManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0, p1, p2, p3}, Lcom/oneplus/io/StorageUtils;->findStorageFromSettings(Ljava/util/List;Lcom/oneplus/base/Settings;Ljava/lang/String;Lcom/oneplus/io/Storage$Type;)Lcom/oneplus/io/Storage;

    move-result-object v0

    .line 116
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static findStorageFromSettings(Ljava/util/List;Lcom/oneplus/base/Settings;Lcom/oneplus/io/Storage$Type;)Lcom/oneplus/io/Storage;
    .locals 1
    .param p1, "settings"    # Lcom/oneplus/base/Settings;
    .param p2, "defaultType"    # Lcom/oneplus/io/Storage$Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/io/Storage;",
            ">;",
            "Lcom/oneplus/base/Settings;",
            "Lcom/oneplus/io/Storage$Type;",
            ")",
            "Lcom/oneplus/io/Storage;"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "storageList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/io/Storage;>;"
    const-string v0, "StorageType"

    invoke-static {p0, p1, v0, p2}, Lcom/oneplus/io/StorageUtils;->findStorageFromSettings(Ljava/util/List;Lcom/oneplus/base/Settings;Ljava/lang/String;Lcom/oneplus/io/Storage$Type;)Lcom/oneplus/io/Storage;

    move-result-object v0

    return-object v0
.end method

.method public static findStorageFromSettings(Ljava/util/List;Lcom/oneplus/base/Settings;Ljava/lang/String;Lcom/oneplus/io/Storage$Type;)Lcom/oneplus/io/Storage;
    .locals 3
    .param p1, "settings"    # Lcom/oneplus/base/Settings;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultType"    # Lcom/oneplus/io/Storage$Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/io/Storage;",
            ">;",
            "Lcom/oneplus/base/Settings;",
            "Ljava/lang/String;",
            "Lcom/oneplus/io/Storage$Type;",
            ")",
            "Lcom/oneplus/io/Storage;"
        }
    .end annotation

    .prologue
    .local p0, "storageList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/io/Storage;>;"
    const/4 v1, 0x0

    .line 143
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-object v1

    .line 145
    :cond_1
    const-class v2, Lcom/oneplus/io/Storage$Type;

    invoke-virtual {p1, p2, v2, p3}, Lcom/oneplus/base/Settings;->getEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/io/Storage$Type;

    .line 146
    .local v0, "type":Lcom/oneplus/io/Storage$Type;
    if-eqz v0, :cond_0

    .line 147
    invoke-static {p0, v0}, Lcom/oneplus/io/StorageUtils;->findStorage(Ljava/util/List;Lcom/oneplus/io/Storage$Type;)Lcom/oneplus/io/Storage;

    move-result-object v1

    goto :goto_0
.end method

.method public static getAllDcimPath(Lcom/oneplus/io/StorageManager;)Ljava/util/List;
    .locals 1
    .param p0, "storageManager"    # Lcom/oneplus/io/StorageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/io/StorageManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    if-eqz p0, :cond_0

    sget-object v0, Lcom/oneplus/io/StorageManager;->PROP_STORAGE_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p0, v0}, Lcom/oneplus/io/StorageManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :goto_0
    invoke-static {v0}, Lcom/oneplus/io/StorageUtils;->getAllDcimPath(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAllDcimPath(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/io/Storage;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "storageList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/io/Storage;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v2, "pathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 78
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_2

    .line 85
    .end local v0    # "i":I
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 86
    sget-object v3, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_1
    return-object v2

    .line 80
    .restart local v0    # "i":I
    :cond_2
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/io/Storage;

    invoke-static {v3}, Lcom/oneplus/io/StorageUtils;->getDcimPath(Lcom/oneplus/io/Storage;)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 82
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static getDcimPath(Lcom/oneplus/io/Storage;)Ljava/lang/String;
    .locals 2
    .param p0, "storage"    # Lcom/oneplus/io/Storage;

    .prologue
    .line 98
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/oneplus/io/Storage;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/oneplus/io/Storage;->getDirectoryPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/DCIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
