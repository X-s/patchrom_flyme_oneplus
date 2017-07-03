.class public abstract Lcom/oneplus/gallery/media/VirtualBaseMediaSet;
.super Lcom/oneplus/gallery/media/BaseMediaSet;
.source "VirtualBaseMediaSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/media/VirtualBaseMediaSet$MediaRecyclingHandle;
    }
.end annotation


# instance fields
.field private final m_RecycledMedia:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/gallery/media/Media;",
            "Lcom/oneplus/gallery/media/VirtualBaseMediaSet$MediaRecyclingHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/oneplus/gallery/media/MediaSet$Type;Lcom/oneplus/gallery/media/MediaType;)V
    .locals 1
    .param p1, "type"    # Lcom/oneplus/gallery/media/MediaSet$Type;
    .param p2, "targetMediaType"    # Lcom/oneplus/gallery/media/MediaType;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/media/BaseMediaSet;-><init>(Lcom/oneplus/gallery/media/MediaSet$Type;Lcom/oneplus/gallery/media/MediaType;)V

    .line 19
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/VirtualBaseMediaSet;->m_RecycledMedia:Ljava/util/Map;

    .line 58
    return-void
.end method


# virtual methods
.method public cleanUpRecycleBin(Lcom/oneplus/gallery/media/MediaDeletionCallback;Landroid/os/Handler;I)I
    .locals 7
    .param p1, "callback"    # Lcom/oneplus/gallery/media/MediaDeletionCallback;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "flags"    # I

    .prologue
    const/4 v4, 0x0

    .line 66
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/VirtualBaseMediaSet;->verifyAccess()V

    .line 67
    sget-object v3, Lcom/oneplus/gallery/media/VirtualBaseMediaSet;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery/media/VirtualBaseMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v4

    .line 81
    :cond_0
    :goto_0
    return v2

    .line 71
    :cond_1
    const/4 v2, 0x0

    .line 72
    .local v2, "result":I
    iget-object v3, p0, Lcom/oneplus/gallery/media/VirtualBaseMediaSet;->m_RecycledMedia:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 74
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/media/VirtualBaseMediaSet$MediaRecyclingHandle;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/media/Media;

    invoke-virtual {p0, v3, p1, p2, v4}, Lcom/oneplus/gallery/media/VirtualBaseMediaSet;->deleteMedia(Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/media/MediaDeletionCallback;Landroid/os/Handler;I)Lcom/oneplus/base/Handle;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 75
    add-int/lit8 v2, v2, 0x1

    .line 76
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/media/VirtualBaseMediaSet$MediaRecyclingHandle;

    invoke-virtual {v3}, Lcom/oneplus/gallery/media/VirtualBaseMediaSet$MediaRecyclingHandle;->complete()V

    goto :goto_1

    .line 78
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/media/VirtualBaseMediaSet$MediaRecyclingHandle;>;"
    :cond_3
    iget-object v3, p0, Lcom/oneplus/gallery/media/VirtualBaseMediaSet;->m_RecycledMedia:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 79
    if-lez v2, :cond_0

    .line 80
    iget-object v3, p0, Lcom/oneplus/gallery/media/VirtualBaseMediaSet;->TAG:Ljava/lang/String;

    const-string v4, "cleanUpRecycleBin() - Clean up "

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, " media"

    invoke-static {v3, v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected getRecycledMedia()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/oneplus/gallery/media/Media;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/oneplus/gallery/media/VirtualBaseMediaSet;->m_RecycledMedia:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected ignoreRecycledMedia(Lcom/oneplus/gallery/media/Media;)Z
    .locals 2
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 102
    if-eqz p1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/oneplus/gallery/media/VirtualBaseMediaSet;->m_RecycledMedia:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/VirtualBaseMediaSet$MediaRecyclingHandle;

    .line 105
    .local v0, "recyclingHandle":Lcom/oneplus/gallery/media/VirtualBaseMediaSet$MediaRecyclingHandle;
    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Lcom/oneplus/gallery/media/VirtualBaseMediaSet$MediaRecyclingHandle;->complete()V

    .line 108
    const/4 v1, 0x1

    .line 111
    .end local v0    # "recyclingHandle":Lcom/oneplus/gallery/media/VirtualBaseMediaSet$MediaRecyclingHandle;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isMediaRecycled(J)Z
    .locals 7
    .param p1, "id"    # J

    .prologue
    .line 133
    iget-object v3, p0, Lcom/oneplus/gallery/media/VirtualBaseMediaSet;->m_RecycledMedia:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery/media/Media;

    .line 135
    .local v2, "media":Lcom/oneplus/gallery/media/Media;
    invoke-interface {v2}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 136
    .local v0, "contentUri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 140
    :try_start_0
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    .line 141
    const/4 v3, 0x1

    .line 147
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v2    # "media":Lcom/oneplus/gallery/media/Media;
    :goto_1
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 143
    .restart local v0    # "contentUri":Landroid/net/Uri;
    .restart local v2    # "media":Lcom/oneplus/gallery/media/Media;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method protected isMediaRecycled(Lcom/oneplus/gallery/media/Media;)Z
    .locals 1
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 122
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/media/VirtualBaseMediaSet;->m_RecycledMedia:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected recycleMedia(Lcom/oneplus/gallery/media/Media;I)Lcom/oneplus/base/Handle;
    .locals 7
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p2, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 156
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/VirtualBaseMediaSet;->verifyAccess()V

    .line 157
    sget-object v1, Lcom/oneplus/gallery/media/VirtualBaseMediaSet;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/media/VirtualBaseMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-object v0

    .line 159
    :cond_1
    if-eqz p1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/oneplus/gallery/media/VirtualBaseMediaSet;->m_RecycledMedia:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/VirtualBaseMediaSet$MediaRecyclingHandle;

    .line 164
    .local v0, "handle":Lcom/oneplus/gallery/media/VirtualBaseMediaSet$MediaRecyclingHandle;
    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 166
    invoke-static {p1}, Lcom/oneplus/gallery/media/MediaUtils;->getId(Lcom/oneplus/gallery/media/Media;)J

    move-result-wide v2

    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getType()Lcom/oneplus/gallery/media/MediaType;

    move-result-object v4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/gallery/media/VirtualBaseMediaSet;->onMediaRecycled(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V

    .line 167
    new-instance v0, Lcom/oneplus/gallery/media/VirtualBaseMediaSet$MediaRecyclingHandle;

    .end local v0    # "handle":Lcom/oneplus/gallery/media/VirtualBaseMediaSet$MediaRecyclingHandle;
    invoke-direct {v0, p0, p1}, Lcom/oneplus/gallery/media/VirtualBaseMediaSet$MediaRecyclingHandle;-><init>(Lcom/oneplus/gallery/media/VirtualBaseMediaSet;Lcom/oneplus/gallery/media/Media;)V

    .line 168
    .restart local v0    # "handle":Lcom/oneplus/gallery/media/VirtualBaseMediaSet$MediaRecyclingHandle;
    iget-object v1, p0, Lcom/oneplus/gallery/media/VirtualBaseMediaSet;->m_RecycledMedia:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public restoreMediaInRecycleBin(I)I
    .locals 9
    .param p1, "flags"    # I

    .prologue
    const/4 v6, 0x0

    .line 179
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/VirtualBaseMediaSet;->verifyAccess()V

    .line 180
    sget-object v1, Lcom/oneplus/gallery/media/VirtualBaseMediaSet;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/media/VirtualBaseMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    :goto_0
    return v6

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/media/VirtualBaseMediaSet;->m_RecycledMedia:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v8

    .line 185
    .local v8, "result":I
    iget-object v1, p0, Lcom/oneplus/gallery/media/VirtualBaseMediaSet;->m_RecycledMedia:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 187
    iget-object v1, p0, Lcom/oneplus/gallery/media/VirtualBaseMediaSet;->m_RecycledMedia:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery/media/VirtualBaseMediaSet;->m_RecycledMedia:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Ljava/util/Map$Entry;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    .line 188
    .local v0, "entries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/media/VirtualBaseMediaSet$MediaRecyclingHandle;>;"
    iget-object v1, p0, Lcom/oneplus/gallery/media/VirtualBaseMediaSet;->m_RecycledMedia:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 189
    array-length v1, v0

    add-int/lit8 v7, v1, -0x1

    .local v7, "i":I
    :goto_1
    if-ltz v7, :cond_1

    .line 191
    aget-object v1, v0, v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/gallery/media/Media;

    .line 192
    .local v5, "media":Lcom/oneplus/gallery/media/Media;
    aget-object v1, v0, v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/VirtualBaseMediaSet$MediaRecyclingHandle;

    invoke-virtual {v1}, Lcom/oneplus/gallery/media/VirtualBaseMediaSet$MediaRecyclingHandle;->complete()V

    .line 193
    invoke-static {v5}, Lcom/oneplus/gallery/media/MediaUtils;->getId(Lcom/oneplus/gallery/media/Media;)J

    move-result-wide v2

    invoke-interface {v5}, Lcom/oneplus/gallery/media/Media;->getType()Lcom/oneplus/gallery/media/MediaType;

    move-result-object v4

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/gallery/media/VirtualBaseMediaSet;->onMediaRestored(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V

    .line 189
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 196
    .end local v0    # "entries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/media/VirtualBaseMediaSet$MediaRecyclingHandle;>;"
    .end local v5    # "media":Lcom/oneplus/gallery/media/Media;
    .end local v7    # "i":I
    :cond_1
    if-lez v8, :cond_2

    .line 197
    iget-object v1, p0, Lcom/oneplus/gallery/media/VirtualBaseMediaSet;->TAG:Ljava/lang/String;

    const-string v2, "restoreMediaInRecycleBin() - Restore "

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, " media"

    invoke-static {v1, v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    move v6, v8

    .line 198
    goto :goto_0
.end method

.method protected verifyMediaToAdd(Lcom/oneplus/gallery/media/Media;)Z
    .locals 1
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 206
    invoke-super {p0, p1}, Lcom/oneplus/gallery/media/BaseMediaSet;->verifyMediaToAdd(Lcom/oneplus/gallery/media/Media;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/media/VirtualBaseMediaSet;->m_RecycledMedia:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
