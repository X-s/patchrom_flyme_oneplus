.class public Lcom/oneplus/gallery/media/FavoriteMediaSet;
.super Lcom/oneplus/gallery/media/VirtualBaseMediaSet;
.source "FavoriteMediaSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/media/FavoriteMediaSet$8;,
        Lcom/oneplus/gallery/media/FavoriteMediaSet$QueryFavoriteCallback;
    }
.end annotation


# instance fields
.field private m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/media/MediaType;)V
    .locals 3
    .param p1, "targetMediaType"    # Lcom/oneplus/gallery/media/MediaType;

    .prologue
    .line 42
    sget-object v0, Lcom/oneplus/gallery/media/MediaSet$Type;->SYSTEM:Lcom/oneplus/gallery/media/MediaSet$Type;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/gallery/media/VirtualBaseMediaSet;-><init>(Lcom/oneplus/gallery/media/MediaSet$Type;Lcom/oneplus/gallery/media/MediaType;)V

    .line 45
    sget-object v0, Lcom/oneplus/gallery/media/FavoriteMediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v1

    const v2, 0x7f090079

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery/GalleryApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/oneplus/gallery/media/VirtualBaseMediaSet;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 48
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/FavoriteMediaSet;->getMediaManager()Lcom/oneplus/gallery/media/OPMediaManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    .line 51
    invoke-direct {p0}, Lcom/oneplus/gallery/media/FavoriteMediaSet;->queryFavoriteMediaCount()V

    .line 54
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/FavoriteMediaSet;->updateCoverHashCode()V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery/media/FavoriteMediaSet;)Lcom/oneplus/gallery/media/OPMediaManager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/FavoriteMediaSet;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/gallery/media/FavoriteMediaSet;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/FavoriteMediaSet;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/gallery/media/FavoriteMediaSet;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/FavoriteMediaSet;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private onMediaCreated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;Z)V
    .locals 5
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "checkFavorite"    # Z

    .prologue
    const/4 v4, 0x0

    .line 154
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/FavoriteMediaSet;->verifyAccess()V

    .line 155
    if-nez p4, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    invoke-virtual {p0, p4}, Lcom/oneplus/gallery/media/FavoriteMediaSet;->ignoreRecycledMedia(Lcom/oneplus/gallery/media/Media;)Z

    .line 158
    if-eqz p5, :cond_2

    invoke-interface {p4}, Lcom/oneplus/gallery/media/Media;->isFavorite()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    :cond_2
    const/4 v2, 0x1

    new-array v1, v2, [J

    const/4 v2, 0x0

    aput-wide p1, v1, v2

    .line 163
    .local v1, "ids":[J
    new-instance v0, Lcom/oneplus/gallery/media/FavoriteMediaSet$3;

    invoke-direct {v0, p0, p4}, Lcom/oneplus/gallery/media/FavoriteMediaSet$3;-><init>(Lcom/oneplus/gallery/media/FavoriteMediaSet;Lcom/oneplus/gallery/media/Media;)V

    .line 181
    .local v0, "callback":Lcom/oneplus/base/OperationCallback;, "Lcom/oneplus/base/OperationCallback<Ljava/lang/Object;Ljava/lang/Boolean;Ljava/lang/Object;>;"
    sget-object v2, Lcom/oneplus/gallery/media/FavoriteMediaSet$8;->$SwitchMap$com$oneplus$gallery$media$MediaType:[I

    invoke-virtual {p3}, Lcom/oneplus/gallery/media/MediaType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 190
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/FavoriteMediaSet;->updateCoverHashCodeDelayed()V

    goto :goto_0

    .line 184
    :pswitch_0
    invoke-virtual {p0, v1, v4, v0}, Lcom/oneplus/gallery/media/FavoriteMediaSet;->updatePhotoIdTable([J[JLcom/oneplus/base/OperationCallback;)Z

    goto :goto_1

    .line 187
    :pswitch_1
    invoke-virtual {p0, v1, v4, v0}, Lcom/oneplus/gallery/media/FavoriteMediaSet;->updateVideoIdTable([J[JLcom/oneplus/base/OperationCallback;)Z

    goto :goto_1

    .line 181
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private queryFavoriteMediaCount()V
    .locals 4

    .prologue
    .line 474
    iget-object v0, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    new-instance v1, Lcom/oneplus/gallery/media/FavoriteMediaSet$7;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/media/FavoriteMediaSet$7;-><init>(Lcom/oneplus/gallery/media/FavoriteMediaSet;)V

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/oneplus/gallery/media/OPMediaManager;->postToContentThread(Ljava/lang/Runnable;J)Z

    .line 503
    return-void
.end method


# virtual methods
.method protected delete(Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;)V
    .locals 6
    .param p1, "handle"    # Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/FavoriteMediaSet;->verifyAccess()V

    .line 64
    sget-object v1, Lcom/oneplus/gallery/media/FavoriteMediaSet;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/media/FavoriteMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet;->TAG:Ljava/lang/String;

    const-string v2, "delete() - Media set is released"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/FavoriteMediaSet;->getMediaIdTable()[J

    move-result-object v0

    .line 74
    .local v0, "mediaIdTable":[J
    iget-object v1, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    new-instance v2, Lcom/oneplus/gallery/media/FavoriteMediaSet$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/oneplus/gallery/media/FavoriteMediaSet$1;-><init>(Lcom/oneplus/gallery/media/FavoriteMediaSet;Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;[J)V

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Lcom/oneplus/gallery/media/OPMediaManager;->postToContentThread(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected deleteMedia(Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;)V
    .locals 4
    .param p1, "handle"    # Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/FavoriteMediaSet;->verifyAccess()V

    .line 99
    sget-object v0, Lcom/oneplus/gallery/media/FavoriteMediaSet;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/media/FavoriteMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet;->TAG:Ljava/lang/String;

    const-string v1, "deleteMedia() - Remove favorite flags"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    new-instance v1, Lcom/oneplus/gallery/media/FavoriteMediaSet$2;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/gallery/media/FavoriteMediaSet$2;-><init>(Lcom/oneplus/gallery/media/FavoriteMediaSet;Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;)V

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/oneplus/gallery/media/OPMediaManager;->postToContentThread(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    const-string v0, "Favorite"

    return-object v0
.end method

.method protected onLocaleChanged(Ljava/util/Locale;Ljava/util/Locale;)V
    .locals 3
    .param p1, "oldLocale"    # Ljava/util/Locale;
    .param p2, "newLocale"    # Ljava/util/Locale;

    .prologue
    .line 139
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery/media/VirtualBaseMediaSet;->onLocaleChanged(Ljava/util/Locale;Ljava/util/Locale;)V

    .line 140
    sget-object v0, Lcom/oneplus/gallery/media/FavoriteMediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v1

    const v2, 0x7f090079

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery/GalleryApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/oneplus/gallery/media/VirtualBaseMediaSet;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 141
    return-void
.end method

.method protected onMediaCreated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 148
    const/4 v6, 0x1

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/gallery/media/FavoriteMediaSet;->onMediaCreated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;Z)V

    .line 149
    return-void
.end method

.method protected onMediaDeleted(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 198
    const/4 v6, 0x1

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/gallery/media/FavoriteMediaSet;->onMediaDeleted(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;Z)V

    .line 199
    return-void
.end method

.method protected onMediaDeleted(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;Z)V
    .locals 5
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "checkFavorite"    # Z

    .prologue
    const/4 v4, 0x0

    .line 204
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/FavoriteMediaSet;->verifyAccess()V

    .line 205
    if-nez p4, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    invoke-virtual {p0, p4}, Lcom/oneplus/gallery/media/FavoriteMediaSet;->ignoreRecycledMedia(Lcom/oneplus/gallery/media/Media;)Z

    .line 208
    if-eqz p5, :cond_2

    invoke-interface {p4}, Lcom/oneplus/gallery/media/Media;->isFavorite()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    :cond_2
    const/4 v2, 0x1

    new-array v1, v2, [J

    const/4 v2, 0x0

    aput-wide p1, v1, v2

    .line 213
    .local v1, "ids":[J
    new-instance v0, Lcom/oneplus/gallery/media/FavoriteMediaSet$4;

    invoke-direct {v0, p0, p4}, Lcom/oneplus/gallery/media/FavoriteMediaSet$4;-><init>(Lcom/oneplus/gallery/media/FavoriteMediaSet;Lcom/oneplus/gallery/media/Media;)V

    .line 231
    .local v0, "callback":Lcom/oneplus/base/OperationCallback;, "Lcom/oneplus/base/OperationCallback<Ljava/lang/Object;Ljava/lang/Boolean;Ljava/lang/Object;>;"
    sget-object v2, Lcom/oneplus/gallery/media/FavoriteMediaSet$8;->$SwitchMap$com$oneplus$gallery$media$MediaType:[I

    invoke-virtual {p3}, Lcom/oneplus/gallery/media/MediaType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 240
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/FavoriteMediaSet;->updateCoverHashCodeDelayed()V

    goto :goto_0

    .line 234
    :pswitch_0
    invoke-virtual {p0, v4, v1, v0}, Lcom/oneplus/gallery/media/FavoriteMediaSet;->updatePhotoIdTable([J[JLcom/oneplus/base/OperationCallback;)Z

    goto :goto_1

    .line 237
    :pswitch_1
    invoke-virtual {p0, v4, v1, v0}, Lcom/oneplus/gallery/media/FavoriteMediaSet;->updateVideoIdTable([J[JLcom/oneplus/base/OperationCallback;)Z

    goto :goto_1

    .line 231
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMediaRecycled(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 248
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oneplus/gallery/media/FavoriteMediaSet;->onMediaDeleted(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;)V

    .line 249
    return-void
.end method

.method protected onMediaRestored(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 256
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oneplus/gallery/media/FavoriteMediaSet;->onMediaCreated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;)V

    .line 257
    return-void
.end method

.method protected onMediaUpdated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;)V
    .locals 11
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    const/4 v6, 0x0

    .line 265
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/FavoriteMediaSet;->verifyAccess()V

    .line 266
    if-nez p4, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    const/4 v0, 0x0

    .line 269
    .local v0, "added":Z
    const/4 v9, 0x0

    .line 270
    .local v9, "removed":Z
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/FavoriteMediaSet;->getMediaIdTable()[J

    move-result-object v8

    .line 271
    .local v8, "mediaIdTables":[J
    const/4 v7, 0x0

    .line 272
    .local v7, "exist":Z
    invoke-static {v8, p1, p2}, Lcom/oneplus/util/ArrayUtils;->contains([JJ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 273
    const/4 v7, 0x1

    .line 274
    :cond_2
    invoke-interface {p4}, Lcom/oneplus/gallery/media/Media;->isFavorite()Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz v7, :cond_4

    .line 275
    const/4 v9, 0x1

    .line 280
    :cond_3
    :goto_1
    if-eqz v0, :cond_5

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    .line 281
    invoke-direct/range {v1 .. v6}, Lcom/oneplus/gallery/media/FavoriteMediaSet;->onMediaCreated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;Z)V

    goto :goto_0

    .line 276
    :cond_4
    invoke-interface {p4}, Lcom/oneplus/gallery/media/Media;->isFavorite()Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v7, :cond_3

    .line 277
    const/4 v0, 0x1

    goto :goto_1

    .line 282
    :cond_5
    if-eqz v9, :cond_0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    .line 283
    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/gallery/media/FavoriteMediaSet;->onMediaDeleted(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;Z)V

    goto :goto_0
.end method

.method protected onUpdateCoverHashCode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 291
    new-instance v0, Lcom/oneplus/base/SimpleRef;

    invoke-direct {v0}, Lcom/oneplus/base/SimpleRef;-><init>()V

    .line 292
    .local v0, "coverHashCodeRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    sget-object v2, Lcom/oneplus/gallery/media/FavoriteMediaSet;->CONTENT_URI_FILE:Landroid/net/Uri;

    new-instance v3, Lcom/oneplus/gallery/media/FavoriteMediaSet$5;

    invoke-direct {v3, p0, v0}, Lcom/oneplus/gallery/media/FavoriteMediaSet$5;-><init>(Lcom/oneplus/gallery/media/FavoriteMediaSet;Lcom/oneplus/base/Ref;)V

    invoke-interface {v1, v2, v3}, Lcom/oneplus/gallery/media/OPMediaManager;->accessContentProvider(Landroid/net/Uri;Lcom/oneplus/gallery/media/MediaManager$ContentProviderAccessCallback;)Lcom/oneplus/base/Handle;

    .line 330
    invoke-interface {v0}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public openMediaList(Lcom/oneplus/gallery/media/MediaComparator;IILcom/oneplus/gallery/media/MediaList;)Z
    .locals 3
    .param p1, "comparator"    # Lcom/oneplus/gallery/media/MediaComparator;
    .param p2, "maxMediaCount"    # I
    .param p3, "flags"    # I
    .param p4, "mediaList"    # Lcom/oneplus/gallery/media/MediaList;

    .prologue
    .line 339
    iget-object v0, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    sget-object v1, Lcom/oneplus/gallery/media/FavoriteMediaSet;->CONTENT_URI_FILE:Landroid/net/Uri;

    new-instance v2, Lcom/oneplus/gallery/media/FavoriteMediaSet$6;

    invoke-direct {v2, p0, p1, p2, p4}, Lcom/oneplus/gallery/media/FavoriteMediaSet$6;-><init>(Lcom/oneplus/gallery/media/FavoriteMediaSet;Lcom/oneplus/gallery/media/MediaComparator;ILcom/oneplus/gallery/media/MediaList;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery/media/OPMediaManager;->accessContentProvider(Landroid/net/Uri;Lcom/oneplus/gallery/media/MediaManager$ContentProviderAccessCallback;)Lcom/oneplus/base/Handle;

    .line 436
    const/4 v0, 0x1

    return v0
.end method

.method protected recycleMedia(Lcom/oneplus/gallery/media/Media;I)Lcom/oneplus/base/Handle;
    .locals 4
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p2, "flags"    # I

    .prologue
    .line 445
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery/media/VirtualBaseMediaSet;->recycleMedia(Lcom/oneplus/gallery/media/Media;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    .line 446
    .local v0, "handle":Lcom/oneplus/base/Handle;
    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 447
    const/4 v0, 0x0

    .line 454
    .end local v0    # "handle":Lcom/oneplus/base/Handle;
    :cond_0
    :goto_0
    return-object v0

    .line 450
    .restart local v0    # "handle":Lcom/oneplus/base/Handle;
    :cond_1
    instance-of v1, p1, Lcom/oneplus/gallery/media/MediaStoreMedia;

    if-eqz v1, :cond_0

    .line 451
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/FavoriteMediaSet;->getMediaManager()Lcom/oneplus/gallery/media/OPMediaManager;

    move-result-object v1

    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/oneplus/gallery/media/OPMediaManager;->setFavorite(Landroid/net/Uri;Z)Z

    goto :goto_0
.end method

.method public restoreMediaInRecycleBin(I)I
    .locals 5
    .param p1, "flags"    # I

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/FavoriteMediaSet;->getRecycledMedia()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/Media;

    .line 464
    .local v1, "media":Lcom/oneplus/gallery/media/Media;
    instance-of v2, v1, Lcom/oneplus/gallery/media/MediaStoreMedia;

    if-eqz v2, :cond_0

    .line 465
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/FavoriteMediaSet;->getMediaManager()Lcom/oneplus/gallery/media/OPMediaManager;

    move-result-object v2

    invoke-interface {v1}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/oneplus/gallery/media/OPMediaManager;->setFavorite(Landroid/net/Uri;Z)Z

    goto :goto_0

    .line 467
    .end local v1    # "media":Lcom/oneplus/gallery/media/Media;
    :cond_1
    invoke-super {p0, p1}, Lcom/oneplus/gallery/media/VirtualBaseMediaSet;->restoreMediaInRecycleBin(I)I

    move-result v2

    return v2
.end method
