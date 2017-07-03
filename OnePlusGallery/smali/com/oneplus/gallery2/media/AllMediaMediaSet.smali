.class public final Lcom/oneplus/gallery2/media/AllMediaMediaSet;
.super Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;
.source "AllMediaMediaSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/media/AllMediaMediaSet$1;
    }
.end annotation


# instance fields
.field private final m_CameraDirectoryPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_IgnoreMediaCount:Z


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/media/MediaType;)V
    .locals 1
    .param p1, "targetMediaType"    # Lcom/oneplus/gallery2/media/MediaType;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;-><init>(Ljava/util/Collection;Lcom/oneplus/gallery2/media/MediaType;)V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/AllMediaMediaSet;->m_CameraDirectoryPaths:Ljava/util/List;

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery2/media/AllMediaMediaSet;->m_IgnoreMediaCount:Z

    .line 30
    return-void
.end method


# virtual methods
.method protected canSyncMediaBeforeMediaTableReady()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public deleteMedia(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;
    .locals 10
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "callback"    # Lcom/oneplus/gallery2/media/Media$DeletionCallback;
    .param p3, "flags"    # I

    .prologue
    const/4 v8, 0x0

    .line 46
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/AllMediaMediaSet;->verifyAccess()V

    .line 47
    sget-object v7, Lcom/oneplus/gallery2/media/AllMediaMediaSet;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/gallery2/media/AllMediaMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v8

    .line 82
    :goto_0
    return-object v7

    .line 49
    :cond_0
    if-nez p1, :cond_1

    .line 51
    iget-object v7, p0, Lcom/oneplus/gallery2/media/AllMediaMediaSet;->TAG:Ljava/lang/String;

    const-string v9, "delete() - No media to delete"

    invoke-static {v7, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v8

    .line 52
    goto :goto_0

    .line 56
    :cond_1
    const/4 v6, 0x0

    .line 57
    .local v6, "mediaFlags":I
    iget-object v7, p0, Lcom/oneplus/gallery2/media/AllMediaMediaSet;->m_CameraDirectoryPaths:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 59
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v7

    const-class v8, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;

    invoke-virtual {v7, v8}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;

    .line 60
    .local v2, "dirManager":Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;
    if-eqz v2, :cond_2

    .line 61
    sget-object v7, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;->CAMERA:Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;

    iget-object v8, p0, Lcom/oneplus/gallery2/media/AllMediaMediaSet;->m_CameraDirectoryPaths:Ljava/util/List;

    invoke-virtual {v2, v7, v8}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->getSystemDirectoryPaths(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;Ljava/util/List;)V

    .line 63
    .end local v2    # "dirManager":Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;
    :cond_2
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, "filePath":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 66
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 67
    .local v4, "filePathLength":I
    iget-object v7, p0, Lcom/oneplus/gallery2/media/AllMediaMediaSet;->m_CameraDirectoryPaths:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_4

    .line 69
    iget-object v7, p0, Lcom/oneplus/gallery2/media/AllMediaMediaSet;->m_CameraDirectoryPaths:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 70
    .local v0, "cameraPath":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 71
    .local v1, "cameraPathLength":I
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    if-eq v4, v1, :cond_3

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2f

    if-ne v7, v8, :cond_6

    .line 73
    :cond_3
    sget v7, Lcom/oneplus/gallery2/media/Media;->FLAG_INCLUDE_RAW_PHOTO:I

    or-int/2addr v6, v7

    .line 80
    .end local v0    # "cameraPath":Ljava/lang/String;
    .end local v1    # "cameraPathLength":I
    .end local v4    # "filePathLength":I
    .end local v5    # "i":I
    :cond_4
    sget v7, Lcom/oneplus/gallery2/media/AllMediaMediaSet;->FLAG_MOVE_TO_RECYCE_BIN:I

    and-int/2addr v7, p3

    if-eqz v7, :cond_5

    .line 81
    sget v7, Lcom/oneplus/gallery2/media/Media;->FLAG_MOVE_TO_RECYCE_BIN:I

    or-int/2addr v6, v7

    .line 82
    :cond_5
    invoke-interface {p1, p2, v6}, Lcom/oneplus/gallery2/media/Media;->delete(Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;

    move-result-object v7

    goto :goto_0

    .line 67
    .restart local v0    # "cameraPath":Ljava/lang/String;
    .restart local v1    # "cameraPathLength":I
    .restart local v4    # "filePathLength":I
    .restart local v5    # "i":I
    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto :goto_1
.end method

.method public get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;
    .locals 1
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
    .line 90
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/gallery2/media/AllMediaMediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 92
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/AllMediaMediaSet;->m_IgnoreMediaCount:Z

    if-eqz v0, :cond_0

    .line 93
    const/4 v0, 0x0

    .line 95
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const-string v0, "AllMedia"

    return-object v0
.end method

.method protected getNameResourceId()I
    .locals 4

    .prologue
    .line 111
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 113
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/AllMediaMediaSet;->getTargetMediaType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v2

    if-nez v2, :cond_0

    .line 114
    const-string v1, "media_set_name_all"

    .line 130
    .local v1, "resName":Ljava/lang/String;
    :goto_0
    const-string v2, "string"

    const-string v3, "com.oneplus.gallery"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2

    .line 117
    .end local v1    # "resName":Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/oneplus/gallery2/media/AllMediaMediaSet$1;->$SwitchMap$com$oneplus$gallery2$media$MediaType:[I

    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/AllMediaMediaSet;->getTargetMediaType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/gallery2/media/MediaType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 126
    const-string v1, "media_set_name_all"

    .restart local v1    # "resName":Ljava/lang/String;
    goto :goto_0

    .line 120
    .end local v1    # "resName":Ljava/lang/String;
    :pswitch_0
    const-string v1, "media_set_name_all_photos"

    .line 121
    .restart local v1    # "resName":Ljava/lang/String;
    goto :goto_0

    .line 123
    .end local v1    # "resName":Ljava/lang/String;
    :pswitch_1
    const-string v1, "media_set_name_all_videos"

    .line 124
    .restart local v1    # "resName":Ljava/lang/String;
    goto :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getType()Lcom/oneplus/gallery2/media/MediaSet$Type;
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSet$Type;->SYSTEM:Lcom/oneplus/gallery2/media/MediaSet$Type;

    return-object v0
.end method

.method public isVirtual()Z
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method protected onAllMediaTablesReady()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery2/media/AllMediaMediaSet;->m_IgnoreMediaCount:Z

    .line 155
    invoke-super {p0}, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->onAllMediaTablesReady()V

    .line 156
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/AllMediaMediaSet;->commitMediaSync()V

    .line 157
    return-void
.end method

.method protected setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 2
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
    const/4 v1, 0x0

    .line 164
    sget-object v0, Lcom/oneplus/gallery2/media/AllMediaMediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1

    .line 166
    if-eqz p2, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/AllMediaMediaSet;->areAllMediaTablesReady()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 170
    :goto_0
    return v0

    .line 168
    :cond_0
    iput-boolean v1, p0, Lcom/oneplus/gallery2/media/AllMediaMediaSet;->m_IgnoreMediaCount:Z

    .line 170
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public shouldContainsMedia(Lcom/oneplus/gallery2/media/Media;I)Z
    .locals 1
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "flags"    # I

    .prologue
    .line 178
    sget v0, Lcom/oneplus/gallery2/media/Media;->FLAG_SUB_MEDIA:I

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    .line 179
    const/4 v0, 0x0

    .line 180
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected startDeletion(Lcom/oneplus/base/Handle;I)V
    .locals 1
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "flags"    # I

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/oneplus/gallery2/media/AllMediaMediaSet;->completeDeletion(Lcom/oneplus/base/Handle;ZI)V

    .line 189
    return-void
.end method
