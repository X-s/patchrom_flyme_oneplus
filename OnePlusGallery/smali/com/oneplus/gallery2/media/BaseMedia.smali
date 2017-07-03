.class public abstract Lcom/oneplus/gallery2/media/BaseMedia;
.super Ljava/lang/Object;
.source "BaseMedia.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/Media;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/media/BaseMedia$1;
    }
.end annotation


# instance fields
.field private m_Extra:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final m_MediaType:Lcom/oneplus/gallery2/media/MediaType;

.field private final m_Source:Lcom/oneplus/gallery2/media/MediaSource;


# direct methods
.method protected constructor <init>(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/MediaType;)V
    .locals 3
    .param p1, "source"    # Lcom/oneplus/gallery2/media/MediaSource;
    .param p2, "mediaType"    # Lcom/oneplus/gallery2/media/MediaType;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    if-nez p1, :cond_0

    .line 28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_0
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMedia$1;->$SwitchMap$com$oneplus$gallery2$media$MediaType:[I

    invoke-virtual {p2}, Lcom/oneplus/gallery2/media/MediaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid media type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :pswitch_0
    iput-object p2, p0, Lcom/oneplus/gallery2/media/BaseMedia;->m_MediaType:Lcom/oneplus/gallery2/media/MediaType;

    .line 38
    iput-object p1, p0, Lcom/oneplus/gallery2/media/BaseMedia;->m_Source:Lcom/oneplus/gallery2/media/MediaSource;

    .line 39
    return-void

    .line 29
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addToAlbum(JI)Z
    .locals 1
    .param p1, "albumId"    # J
    .param p3, "flags"    # I

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public canAddToAlbum()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method protected clearExtras()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMedia;->m_Extra:Landroid/util/LongSparseArray;

    .line 64
    return-void
.end method

.method public getAddress()Landroid/location/Address;
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtra(Lcom/oneplus/gallery2/ExtraKey;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/gallery2/ExtraKey",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "key":Lcom/oneplus/gallery2/ExtraKey;, "Lcom/oneplus/gallery2/ExtraKey<TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMedia;->m_Extra:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMedia;->m_Extra:Landroid/util/LongSparseArray;

    invoke-interface {p1}, Lcom/oneplus/gallery2/ExtraKey;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    .line 83
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 93
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMedia;->m_Source:Lcom/oneplus/gallery2/media/MediaSource;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaSource;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousAddress()Landroid/location/Address;
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreviousFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSource()Lcom/oneplus/gallery2/media/MediaSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/oneplus/gallery2/media/MediaSource;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMedia;->m_Source:Lcom/oneplus/gallery2/media/MediaSource;

    return-object v0
.end method

.method public getType()Lcom/oneplus/gallery2/media/MediaType;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMedia;->m_MediaType:Lcom/oneplus/gallery2/media/MediaType;

    return-object v0
.end method

.method public isCapturedByFrontCamera()Z
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public isDependencyThread()Z
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMedia;->m_Source:Lcom/oneplus/gallery2/media/MediaSource;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaSource;->isDependencyThread()Z

    move-result v0

    return v0
.end method

.method public isFavorite()Z
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public isFavoriteSupported()Z
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public isTemporary()Z
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public putExtra(Lcom/oneplus/gallery2/ExtraKey;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/gallery2/ExtraKey",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "key":Lcom/oneplus/gallery2/ExtraKey;, "Lcom/oneplus/gallery2/ExtraKey<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-eqz p2, :cond_2

    .line 183
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMedia;->m_Extra:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMedia;->m_Extra:Landroid/util/LongSparseArray;

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMedia;->m_Extra:Landroid/util/LongSparseArray;

    invoke-interface {p1}, Lcom/oneplus/gallery2/ExtraKey;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 189
    :cond_1
    :goto_0
    return-void

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMedia;->m_Extra:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMedia;->m_Extra:Landroid/util/LongSparseArray;

    invoke-interface {p1}, Lcom/oneplus/gallery2/ExtraKey;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_0
.end method

.method public removeFromAlbum(JI)Z
    .locals 1
    .param p1, "albumId"    # J
    .param p3, "flags"    # I

    .prologue
    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public setFavorite(Z)Z
    .locals 1
    .param p1, "favorite"    # Z

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method protected final verifyAccess()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMedia;->m_Source:Lcom/oneplus/gallery2/media/MediaSource;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaSource;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cross-thread access."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_0
    return-void
.end method
