.class public Lcom/oneplus/gallery2/media/CameraRollMediaSet;
.super Lcom/oneplus/gallery2/media/SpecialDirMediaSet;
.source "CameraRollMediaSet.java"


# instance fields
.field private m_IgnoreMediaCount:Z


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaType;)V
    .locals 2
    .param p1, "source"    # Lcom/oneplus/gallery2/media/MediaStoreMediaSource;
    .param p2, "targetMediaType"    # Lcom/oneplus/gallery2/media/MediaType;

    .prologue
    .line 25
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    const-class v1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;

    invoke-virtual {v0, v1}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;->CAMERA:Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->getSystemDirectoryPaths(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/gallery2/media/SpecialDirMediaSet;-><init>(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/MediaType;Ljava/util/Collection;)V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery2/media/CameraRollMediaSet;->m_IgnoreMediaCount:Z

    .line 26
    return-void
.end method


# virtual methods
.method public get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;)TTValue;"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v1, Lcom/oneplus/gallery2/media/CameraRollMediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v1, :cond_2

    .line 36
    iget-boolean v1, p0, Lcom/oneplus/gallery2/media/CameraRollMediaSet;->m_IgnoreMediaCount:Z

    if-eqz v1, :cond_2

    .line 38
    sget-object v1, Lcom/oneplus/gallery2/media/CameraRollMediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-super {p0, v1}, Lcom/oneplus/gallery2/media/SpecialDirMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 39
    .local v0, "mediaCount":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 45
    .end local v0    # "mediaCount":Ljava/lang/Integer;
    :goto_0
    return-object v0

    .line 41
    .restart local v0    # "mediaCount":Ljava/lang/Integer;
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/gallery2/media/CameraRollMediaSet;->m_IgnoreMediaCount:Z

    goto :goto_0

    .line 45
    .end local v0    # "mediaCount":Ljava/lang/Integer;
    :cond_2
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/media/SpecialDirMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, "CameraRoll"

    return-object v0
.end method

.method protected getNameResourceId()I
    .locals 4

    .prologue
    .line 61
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 62
    .local v0, "res":Landroid/content/res/Resources;
    const-string v1, "media_set_name_camera_roll"

    const-string v2, "string"

    const-string v3, "com.oneplus.gallery"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method protected onMediaTableReady()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/CameraRollMediaSet;->m_IgnoreMediaCount:Z

    if-eqz v0, :cond_0

    .line 71
    iput-boolean v1, p0, Lcom/oneplus/gallery2/media/CameraRollMediaSet;->m_IgnoreMediaCount:Z

    .line 72
    sget-object v0, Lcom/oneplus/gallery2/media/CameraRollMediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/CameraRollMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 74
    :cond_0
    invoke-super {p0}, Lcom/oneplus/gallery2/media/SpecialDirMediaSet;->onMediaTableReady()V

    .line 75
    return-void
.end method

.method protected setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;TTValue;)Z"
        }
    .end annotation

    .prologue
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    const/4 v2, 0x0

    .line 82
    sget-object v1, Lcom/oneplus/gallery2/media/CameraRollMediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v1, :cond_2

    iget-boolean v1, p0, Lcom/oneplus/gallery2/media/CameraRollMediaSet;->m_IgnoreMediaCount:Z

    if-eqz v1, :cond_2

    move-object v0, p2

    .line 84
    check-cast v0, Ljava/lang/Integer;

    .line 85
    .local v0, "mediaCount":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/CameraRollMediaSet;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v1

    sget-object v3, Lcom/oneplus/gallery2/media/MediaSource;->PROP_IS_MEDIA_TABLE_READY:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v3}, Lcom/oneplus/gallery2/media/MediaSource;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    .line 89
    .end local v0    # "mediaCount":Ljava/lang/Integer;
    :goto_0
    return v1

    .line 87
    .restart local v0    # "mediaCount":Ljava/lang/Integer;
    :cond_1
    iput-boolean v2, p0, Lcom/oneplus/gallery2/media/CameraRollMediaSet;->m_IgnoreMediaCount:Z

    .line 89
    .end local v0    # "mediaCount":Ljava/lang/Integer;
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery2/media/SpecialDirMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method protected shouldDeleteRawFiles()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method
