.class public Lcom/oneplus/gallery2/media/AlbumMediaSet;
.super Lcom/oneplus/gallery2/media/VirtualMediaSet;
.source "AlbumMediaSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/media/AlbumMediaSet$RenameCallback;
    }
.end annotation


# instance fields
.field private final m_AlbumId:J

.field private final m_AlbumManager:Lcom/oneplus/gallery2/media/AlbumManager;

.field private final m_Id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/AlbumManager;Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;Lcom/oneplus/gallery2/media/MediaType;)V
    .locals 6
    .param p1, "source"    # Lcom/oneplus/gallery2/media/MediaStoreMediaSource;
    .param p2, "albumManager"    # Lcom/oneplus/gallery2/media/AlbumManager;
    .param p3, "albumInfo"    # Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;
    .param p4, "targetMediaType"    # Lcom/oneplus/gallery2/media/MediaType;

    .prologue
    .line 32
    invoke-direct {p0, p1, p4}, Lcom/oneplus/gallery2/media/VirtualMediaSet;-><init>(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/MediaType;)V

    .line 35
    iget-wide v2, p3, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->albumId:J

    iput-wide v2, p0, Lcom/oneplus/gallery2/media/AlbumMediaSet;->m_AlbumId:J

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Album/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/oneplus/gallery2/media/AlbumMediaSet;->m_AlbumId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery2/media/AlbumMediaSet;->m_Id:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/oneplus/gallery2/media/AlbumMediaSet;->m_AlbumManager:Lcom/oneplus/gallery2/media/AlbumManager;

    .line 38
    sget-object v2, Lcom/oneplus/gallery2/media/AlbumMediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p3, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/gallery2/media/AlbumMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 39
    sget-object v2, Lcom/oneplus/gallery2/media/AlbumMediaSet;->PROP_LAST_MEDIA_ADDED_TIME:Lcom/oneplus/base/PropertyKey;

    iget-wide v4, p3, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->lastMediaAddedTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/gallery2/media/AlbumMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 42
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/AlbumMediaSet;->onMediaIterationStarted()V

    .line 43
    iget-wide v2, p3, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->albumId:J

    invoke-virtual {p2, v2, v3, p4}, Lcom/oneplus/gallery2/media/AlbumManager;->getMedia(JLcom/oneplus/gallery2/media/MediaType;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    .line 44
    .local v1, "media":Lcom/oneplus/gallery2/media/Media;
    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/media/AlbumMediaSet;->onIterateMedia(Lcom/oneplus/gallery2/media/Media;)V

    goto :goto_0

    .line 45
    .end local v1    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/AlbumMediaSet;->onMediaIterationEnded()V

    .line 46
    return-void
.end method


# virtual methods
.method public getAlbumId()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/AlbumMediaSet;->m_AlbumId:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumMediaSet;->m_Id:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/oneplus/gallery2/media/MediaSet$Type;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSet$Type;->USER:Lcom/oneplus/gallery2/media/MediaSet$Type;

    return-object v0
.end method

.method public isVirtual()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method protected onMediaCreated(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 6
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "flags"    # I

    .prologue
    .line 88
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery2/media/VirtualMediaSet;->onMediaCreated(Lcom/oneplus/gallery2/media/Media;I)V

    .line 91
    const-wide/16 v0, 0x0

    .line 92
    .local v0, "addedTime":J
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/AlbumMediaSet;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v2

    sget-object v3, Lcom/oneplus/gallery2/media/MediaSource;->PROP_IS_MEDIA_TABLE_READY:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/oneplus/gallery2/media/MediaSource;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 100
    .end local p1    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_0
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 102
    sget-object v2, Lcom/oneplus/gallery2/media/AlbumMediaSet;->PROP_LAST_MEDIA_ADDED_TIME:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/gallery2/media/AlbumMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 103
    iget-object v2, p0, Lcom/oneplus/gallery2/media/AlbumMediaSet;->m_AlbumManager:Lcom/oneplus/gallery2/media/AlbumManager;

    iget-wide v4, p0, Lcom/oneplus/gallery2/media/AlbumMediaSet;->m_AlbumId:J

    invoke-virtual {v2, v4, v5, v0, v1}, Lcom/oneplus/gallery2/media/AlbumManager;->updateLastMediaAddedTime(JJ)V

    .line 105
    :cond_1
    return-void

    .line 94
    .restart local p1    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_2
    instance-of v2, p1, Lcom/oneplus/gallery2/media/MediaStoreItem;

    if-eqz v2, :cond_0

    .line 96
    check-cast p1, Lcom/oneplus/gallery2/media/MediaStoreItem;

    .end local p1    # "media":Lcom/oneplus/gallery2/media/Media;
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/MediaStoreItem;->getAddedTime()J

    move-result-wide v0

    .line 97
    sget-object v2, Lcom/oneplus/gallery2/media/AlbumMediaSet;->PROP_LAST_MEDIA_ADDED_TIME:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/media/AlbumMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 98
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method protected onPrepareLocaleChangedCallback()Lcom/oneplus/base/PropertyChangedCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPrepareMediaChangeCallback()Lcom/oneplus/base/Handle;
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPrepareMediaIterationClient()Lcom/oneplus/base/Handle;
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return-object v0
.end method

.method onRenamed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "oldName"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;

    .prologue
    .line 135
    sget-object v0, Lcom/oneplus/gallery2/media/AlbumMediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, p2}, Lcom/oneplus/gallery2/media/AlbumMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 136
    return-void
.end method

.method protected removeMediaFromSet(Lcom/oneplus/gallery2/media/Media;)Z
    .locals 4
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumMediaSet;->m_AlbumManager:Lcom/oneplus/gallery2/media/AlbumManager;

    iget-wide v2, p0, Lcom/oneplus/gallery2/media/AlbumMediaSet;->m_AlbumId:J

    invoke-virtual {v0, v2, v3, p1}, Lcom/oneplus/gallery2/media/AlbumManager;->removeMediaFromAlbum(JLcom/oneplus/gallery2/media/Media;)Z

    move-result v0

    return v0
.end method

.method public rename(Ljava/lang/String;Lcom/oneplus/gallery2/media/AlbumMediaSet$RenameCallback;)Lcom/oneplus/base/Handle;
    .locals 6
    .param p1, "newName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/oneplus/gallery2/media/AlbumMediaSet$RenameCallback;

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/AlbumMediaSet;->verifyAccess()V

    .line 159
    sget-object v0, Lcom/oneplus/gallery2/media/AlbumMediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/AlbumMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 160
    .local v3, "oldName":Ljava/lang/String;
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumMediaSet;->m_AlbumManager:Lcom/oneplus/gallery2/media/AlbumManager;

    iget-wide v4, p0, Lcom/oneplus/gallery2/media/AlbumMediaSet;->m_AlbumId:J

    invoke-virtual {v0, v4, v5, p1}, Lcom/oneplus/gallery2/media/AlbumManager;->renameAlbum(JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    if-eqz p2, :cond_0

    .line 163
    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v0, p2

    move-object v1, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/gallery2/media/AlbumMediaSet$RenameCallback;->onRenameCompleted(Lcom/oneplus/gallery2/media/AlbumMediaSet;ZLjava/lang/String;Ljava/lang/String;I)V

    .line 164
    :cond_0
    new-instance v0, Lcom/oneplus/base/EmptyHandle;

    const-string v1, "RenameAlbum"

    invoke-direct {v0, v1}, Lcom/oneplus/base/EmptyHandle;-><init>(Ljava/lang/String;)V

    .line 166
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected startDeletion(Lcom/oneplus/base/Handle;I)V
    .locals 4
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "flags"    # I

    .prologue
    .line 174
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumMediaSet;->m_AlbumManager:Lcom/oneplus/gallery2/media/AlbumManager;

    iget-wide v2, p0, Lcom/oneplus/gallery2/media/AlbumMediaSet;->m_AlbumId:J

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/gallery2/media/AlbumManager;->deleteAlbum(J)Z

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/oneplus/gallery2/media/AlbumMediaSet;->completeDeletion(Lcom/oneplus/base/Handle;ZI)V

    .line 175
    return-void
.end method
