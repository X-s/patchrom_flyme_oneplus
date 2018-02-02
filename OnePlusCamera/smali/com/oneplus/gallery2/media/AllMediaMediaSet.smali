.class public final Lcom/oneplus/gallery2/media/AllMediaMediaSet;
.super Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;
.source "AllMediaMediaSet.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$oneplus$gallery2$media$MediaType:[I


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
.method static synthetic $SWITCH_TABLE$com$oneplus$gallery2$media$MediaType()[I
    .locals 3

    .prologue
    .line 16
    sget-object v0, Lcom/oneplus/gallery2/media/AllMediaMediaSet;->$SWITCH_TABLE$com$oneplus$gallery2$media$MediaType:[I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/oneplus/gallery2/media/MediaType;->values()[Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/gallery2/media/MediaType;->PHOTO:Lcom/oneplus/gallery2/media/MediaType;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/gallery2/media/MediaType;->UNKNOWN:Lcom/oneplus/gallery2/media/MediaType;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/gallery2/media/MediaType;->VIDEO:Lcom/oneplus/gallery2/media/MediaType;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/oneplus/gallery2/media/AllMediaMediaSet;->$SWITCH_TABLE$com$oneplus$gallery2$media$MediaType:[I

    return-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/oneplus/gallery2/media/MediaType;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 29
    invoke-direct {p0, v1, p1}, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;-><init>(Ljava/util/Collection;Lcom/oneplus/gallery2/media/MediaType;)V

    .line 19
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/gallery2/media/AllMediaMediaSet;->m_CameraDirectoryPaths:Ljava/util/List;

    .line 30
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/AllMediaMediaSet;->areAllMediaTablesReady()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/oneplus/gallery2/media/AllMediaMediaSet;->m_IgnoreMediaCount:Z

    .line 31
    return-void
.end method


# virtual methods
.method protected canSyncMediaBeforeMediaTableReady()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public deleteMedia(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 47
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/AllMediaMediaSet;->verifyAccess()V

    .line 48
    sget-object v0, Lcom/oneplus/gallery2/media/AllMediaMediaSet;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/AllMediaMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    if-eqz p1, :cond_2

    .line 58
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AllMediaMediaSet;->m_CameraDirectoryPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 64
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v3

    .line 65
    if-nez v3, :cond_4

    move v0, v1

    .line 81
    :goto_1
    sget v1, Lcom/oneplus/gallery2/media/AllMediaMediaSet;->FLAG_MOVE_TO_RECYCE_BIN:I

    and-int/2addr v1, p3

    if-nez v1, :cond_8

    .line 83
    :goto_2
    invoke-interface {p1, p2, v0}, Lcom/oneplus/gallery2/media/Media;->delete(Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0

    .line 49
    :cond_1
    return-object v2

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AllMediaMediaSet;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "delete() - No media to delete"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-object v2

    .line 60
    :cond_3
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    const-class v2, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;

    invoke-virtual {v0, v2}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;

    .line 61
    if-eqz v0, :cond_0

    .line 62
    sget-object v2, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;->CAMERA:Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;

    iget-object v3, p0, Lcom/oneplus/gallery2/media/AllMediaMediaSet;->m_CameraDirectoryPaths:Ljava/util/List;

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->getSystemDirectoryPaths(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;Ljava/util/List;)V

    goto :goto_0

    .line 67
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 68
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AllMediaMediaSet;->m_CameraDirectoryPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_3
    if-ltz v2, :cond_9

    .line 70
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AllMediaMediaSet;->m_CameraDirectoryPaths:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 71
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    .line 72
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 68
    :goto_4
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_3

    .line 72
    :cond_5
    if-ne v4, v5, :cond_7

    .line 74
    :cond_6
    sget v0, Lcom/oneplus/gallery2/media/Media;->FLAG_INCLUDE_RAW_PHOTO:I

    or-int/lit8 v0, v0, 0x0

    goto :goto_1

    .line 72
    :cond_7
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x2f

    if-eq v0, v5, :cond_6

    goto :goto_4

    .line 82
    :cond_8
    sget v1, Lcom/oneplus/gallery2/media/Media;->FLAG_MOVE_TO_RECYCE_BIN:I

    or-int/2addr v0, v1

    goto :goto_2

    :cond_9
    move v0, v1

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
    .line 91
    sget-object v0, Lcom/oneplus/gallery2/media/AllMediaMediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    if-eq p1, v0, :cond_1

    .line 96
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 93
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/AllMediaMediaSet;->m_IgnoreMediaCount:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 94
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "AllMedia"

    .line 104
    return-object v0
.end method

.method protected getNameResourceId()I
    .locals 4

    .prologue
    .line 112
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 114
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/AllMediaMediaSet;->getTargetMediaType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    invoke-static {}, Lcom/oneplus/gallery2/media/AllMediaMediaSet;->$SWITCH_TABLE$com$oneplus$gallery2$media$MediaType()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/AllMediaMediaSet;->getTargetMediaType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/gallery2/media/MediaType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "media_set_name_all"

    :goto_0
    const-string/jumbo v2, "string"

    const-string/jumbo v3, "com.oneplus.gallery"

    .line 131
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const-string/jumbo v0, "media_set_name_all"

    goto :goto_0

    :pswitch_0
    const-string/jumbo v0, "media_set_name_all_photos"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "media_set_name_all_videos"

    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getType()Lcom/oneplus/gallery2/media/MediaSet$Type;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSet$Type;->SYSTEM:Lcom/oneplus/gallery2/media/MediaSet$Type;

    return-object v0
.end method

.method public isVirtual()Z
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method protected onAllMediaTablesReady()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery2/media/AllMediaMediaSet;->m_IgnoreMediaCount:Z

    .line 156
    invoke-super {p0}, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->onAllMediaTablesReady()V

    .line 157
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/AllMediaMediaSet;->commitMediaSync()V

    .line 158
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
    const/4 v1, 0x0

    .line 165
    sget-object v0, Lcom/oneplus/gallery2/media/AllMediaMediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    if-eq p1, v0, :cond_0

    .line 171
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 167
    :cond_0
    if-nez p2, :cond_2

    .line 169
    :cond_1
    iput-boolean v1, p0, Lcom/oneplus/gallery2/media/AllMediaMediaSet;->m_IgnoreMediaCount:Z

    goto :goto_0

    :cond_2
    move-object v0, p2

    .line 167
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/AllMediaMediaSet;->areAllMediaTablesReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 168
    return v1
.end method

.method public shouldContainsMedia(Lcom/oneplus/gallery2/media/Media;I)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 179
    sget v0, Lcom/oneplus/gallery2/media/Media;->FLAG_SUB_MEDIA:I

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    .line 181
    const/4 v0, 0x1

    return v0

    .line 180
    :cond_0
    return v1
.end method

.method protected startDeletion(Lcom/oneplus/base/Handle;I)V
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/oneplus/gallery2/media/AllMediaMediaSet;->completeDeletion(Lcom/oneplus/base/Handle;ZI)V

    .line 190
    return-void
.end method
