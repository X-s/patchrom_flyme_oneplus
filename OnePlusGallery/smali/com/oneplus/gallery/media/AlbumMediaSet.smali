.class public Lcom/oneplus/gallery/media/AlbumMediaSet;
.super Lcom/oneplus/gallery/media/VirtualBaseMediaSet;
.source "AlbumMediaSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/media/AlbumMediaSet$13;
    }
.end annotation


# static fields
.field private static final MSG_UPDATE_ALBUM_NAME:I = 0x186a1


# instance fields
.field private m_AlbumId:J

.field private m_AlbumInfoChagnedListnerHandle:Lcom/oneplus/base/Handle;

.field private m_AlbumInfoChangedListener:Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener",
            "<",
            "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m_AlbumMediaChangedListenerHandle:Lcom/oneplus/base/Handle;

.field private m_AlbumMediaRelationChangedListener:Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener",
            "<",
            "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m_DateAdded:J

.field private m_DateModified:J

.field private m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;


# direct methods
.method public constructor <init>(JLjava/lang/String;JJJLcom/oneplus/gallery/media/MediaType;)V
    .locals 4
    .param p1, "albumId"    # J
    .param p3, "displayName"    # Ljava/lang/String;
    .param p4, "dateAdded"    # J
    .param p6, "dateModified"    # J
    .param p8, "dateMediaAdded"    # J
    .param p10, "targetMediaType"    # Lcom/oneplus/gallery/media/MediaType;

    .prologue
    .line 104
    sget-object v0, Lcom/oneplus/gallery/media/MediaSet$Type;->USER:Lcom/oneplus/gallery/media/MediaSet$Type;

    invoke-direct {p0, v0, p10}, Lcom/oneplus/gallery/media/VirtualBaseMediaSet;-><init>(Lcom/oneplus/gallery/media/MediaSet$Type;Lcom/oneplus/gallery/media/MediaType;)V

    .line 46
    new-instance v0, Lcom/oneplus/gallery/media/AlbumMediaSet$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/media/AlbumMediaSet$1;-><init>(Lcom/oneplus/gallery/media/AlbumMediaSet;)V

    iput-object v0, p0, Lcom/oneplus/gallery/media/AlbumMediaSet;->m_AlbumMediaRelationChangedListener:Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;

    .line 63
    new-instance v0, Lcom/oneplus/gallery/media/AlbumMediaSet$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/media/AlbumMediaSet$2;-><init>(Lcom/oneplus/gallery/media/AlbumMediaSet;)V

    iput-object v0, p0, Lcom/oneplus/gallery/media/AlbumMediaSet;->m_AlbumInfoChangedListener:Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;

    .line 107
    sget-object v0, Lcom/oneplus/gallery/media/AlbumMediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    invoke-super {p0, v0, p3}, Lcom/oneplus/gallery/media/VirtualBaseMediaSet;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 108
    sget-object v0, Lcom/oneplus/gallery/media/AlbumMediaSet;->PROP_DATE_MEDIA_ADDED:Lcom/oneplus/base/PropertyKey;

    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/media/AlbumMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 111
    iput-wide p1, p0, Lcom/oneplus/gallery/media/AlbumMediaSet;->m_AlbumId:J

    .line 112
    iput-wide p4, p0, Lcom/oneplus/gallery/media/AlbumMediaSet;->m_DateAdded:J

    .line 113
    iput-wide p6, p0, Lcom/oneplus/gallery/media/AlbumMediaSet;->m_DateModified:J

    .line 114
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/AlbumMediaSet;->getMediaManager()Lcom/oneplus/gallery/media/OPMediaManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/media/AlbumMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    .line 117
    iget-object v0, p0, Lcom/oneplus/gallery/media/AlbumMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    new-instance v1, Lcom/oneplus/gallery/media/AlbumMediaSet$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/oneplus/gallery/media/AlbumMediaSet$3;-><init>(Lcom/oneplus/gallery/media/AlbumMediaSet;J)V

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/oneplus/gallery/media/OPMediaManager;->postToContentThread(Ljava/lang/Runnable;J)Z

    .line 146
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/AlbumMediaSet;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/media/AlbumMediaSet;->m_AlbumMediaRelationChangedListener:Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;

    invoke-static {v0, v1}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->addAlbumMediaRelationChangedListener(Landroid/os/Handler;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/media/AlbumMediaSet;->m_AlbumMediaChangedListenerHandle:Lcom/oneplus/base/Handle;

    .line 147
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/AlbumMediaSet;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/media/AlbumMediaSet;->m_AlbumInfoChangedListener:Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;

    invoke-static {v0, v1}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->addAlbumChangedListener(Landroid/os/Handler;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/media/AlbumMediaSet;->m_AlbumInfoChagnedListnerHandle:Lcom/oneplus/base/Handle;

    .line 150
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/AlbumMediaSet;->updateCoverHashCode()V

    .line 151
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery/media/AlbumMediaSet;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/media/AlbumMediaSet;
    .param p1, "x1"    # Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/media/AlbumMediaSet;->onAlbumMediaRelationDeleted(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/gallery/media/AlbumMediaSet;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/media/AlbumMediaSet;
    .param p1, "x1"    # Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/media/AlbumMediaSet;->onAlbumMediaRelationInserted(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/gallery/media/AlbumMediaSet;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/media/AlbumMediaSet;
    .param p1, "x1"    # Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/media/AlbumMediaSet;->onAlbumInfoUpdated(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/gallery/media/AlbumMediaSet;)Lcom/oneplus/gallery/media/OPMediaManager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/AlbumMediaSet;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oneplus/gallery/media/AlbumMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/gallery/media/AlbumMediaSet;)J
    .locals 2
    .param p0, "x0"    # Lcom/oneplus/gallery/media/AlbumMediaSet;

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/oneplus/gallery/media/AlbumMediaSet;->m_AlbumId:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/oneplus/gallery/media/AlbumMediaSet;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/AlbumMediaSet;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oneplus/gallery/media/AlbumMediaSet;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/gallery/media/AlbumMediaSet;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/AlbumMediaSet;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oneplus/gallery/media/AlbumMediaSet;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/gallery/media/AlbumMediaSet;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/AlbumMediaSet;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oneplus/gallery/media/AlbumMediaSet;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oneplus/gallery/media/AlbumMediaSet;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/AlbumMediaSet;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oneplus/gallery/media/AlbumMediaSet;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private onAlbumInfoUpdated(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;)V
    .locals 4
    .param p1, "albumInfo"    # Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;

    .prologue
    .line 249
    if-nez p1, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    iget-wide v0, p1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;->id:J

    iget-wide v2, p0, Lcom/oneplus/gallery/media/AlbumMediaSet;->m_AlbumId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 255
    sget-object v0, Lcom/oneplus/gallery/media/AlbumMediaSet;->PROP_DATE_MEDIA_ADDED:Lcom/oneplus/base/PropertyKey;

    iget-wide v2, p1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;->dateMediaAdded:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/media/AlbumMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private onAlbumMediaRelationDeleted(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;)V
    .locals 8
    .param p1, "albumMediaRelationInfo"    # Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 262
    if-nez p1, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    iget-wide v2, p0, Lcom/oneplus/gallery/media/AlbumMediaSet;->m_AlbumId:J

    iget-wide v4, p1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;->albumId:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 266
    const/4 v1, 0x1

    new-array v0, v1, [J

    iget-wide v2, p1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;->mediaId:J

    aput-wide v2, v0, v6

    .line 267
    .local v0, "mediaIds":[J
    invoke-virtual {p0, v7, v0}, Lcom/oneplus/gallery/media/AlbumMediaSet;->updatePhotoIdTable([J[J)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, v7, v0}, Lcom/oneplus/gallery/media/AlbumMediaSet;->updateVideoIdTable([J[J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery/media/AlbumMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    aget-wide v2, v0, v6

    new-instance v4, Lcom/oneplus/gallery/media/AlbumMediaSet$6;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery/media/AlbumMediaSet$6;-><init>(Lcom/oneplus/gallery/media/AlbumMediaSet;)V

    invoke-virtual {p0}, Lcom/oneplus/gallery/media/AlbumMediaSet;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-interface/range {v1 .. v6}, Lcom/oneplus/gallery/media/OPMediaManager;->obtainMedia(JLcom/oneplus/gallery/media/MediaObtainCallback;Landroid/os/Handler;I)Lcom/oneplus/base/Handle;

    .line 277
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/AlbumMediaSet;->updateCoverHashCodeDelayed()V

    goto :goto_0
.end method

.method private onAlbumMediaRelationInserted(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;)V
    .locals 7
    .param p1, "albumMediaRelationInfo"    # Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;

    .prologue
    .line 285
    if-nez p1, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    iget-wide v0, p0, Lcom/oneplus/gallery/media/AlbumMediaSet;->m_AlbumId:J

    iget-wide v2, p1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;->albumId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 289
    iget-object v1, p0, Lcom/oneplus/gallery/media/AlbumMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    iget-wide v2, p1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;->mediaId:J

    new-instance v4, Lcom/oneplus/gallery/media/AlbumMediaSet$7;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery/media/AlbumMediaSet$7;-><init>(Lcom/oneplus/gallery/media/AlbumMediaSet;)V

    invoke-virtual {p0}, Lcom/oneplus/gallery/media/AlbumMediaSet;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/oneplus/gallery/media/OPMediaManager;->obtainMedia(JLcom/oneplus/gallery/media/MediaObtainCallback;Landroid/os/Handler;I)Lcom/oneplus/base/Handle;

    .line 310
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/AlbumMediaSet;->updateCoverHashCodeDelayed()V

    goto :goto_0
.end method


# virtual methods
.method protected delete(Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;)V
    .locals 4
    .param p1, "handle"    # Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/AlbumMediaSet;->verifyAccess()V

    .line 160
    sget-object v0, Lcom/oneplus/gallery/media/AlbumMediaSet;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/media/AlbumMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/oneplus/gallery/media/AlbumMediaSet;->TAG:Ljava/lang/String;

    const-string v1, "delete() - Media set is released"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/AlbumMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    new-instance v1, Lcom/oneplus/gallery/media/AlbumMediaSet$4;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/gallery/media/AlbumMediaSet$4;-><init>(Lcom/oneplus/gallery/media/AlbumMediaSet;Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;)V

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/oneplus/gallery/media/OPMediaManager;->postToContentThread(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected deleteMedia(Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;)V
    .locals 4
    .param p1, "handle"    # Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/AlbumMediaSet;->verifyAccess()V

    .line 191
    sget-object v0, Lcom/oneplus/gallery/media/AlbumMediaSet;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/media/AlbumMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/oneplus/gallery/media/AlbumMediaSet;->TAG:Ljava/lang/String;

    const-string v1, "deleteMedia() - Remove favorite flags"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/AlbumMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    new-instance v1, Lcom/oneplus/gallery/media/AlbumMediaSet$5;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/gallery/media/AlbumMediaSet$5;-><init>(Lcom/oneplus/gallery/media/AlbumMediaSet;Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;)V

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/oneplus/gallery/media/OPMediaManager;->postToContentThread(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public getAlbumId()J
    .locals 2

    .prologue
    .line 219
    iget-wide v0, p0, Lcom/oneplus/gallery/media/AlbumMediaSet;->m_AlbumId:J

    return-wide v0
.end method

.method public getDateAdded()J
    .locals 2

    .prologue
    .line 226
    iget-wide v0, p0, Lcom/oneplus/gallery/media/AlbumMediaSet;->m_DateAdded:J

    return-wide v0
.end method

.method public getDateModified()J
    .locals 2

    .prologue
    .line 233
    iget-wide v0, p0, Lcom/oneplus/gallery/media/AlbumMediaSet;->m_DateModified:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Album/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/oneplus/gallery/media/AlbumMediaSet;->m_AlbumId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 88
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 95
    invoke-super {p0, p1}, Lcom/oneplus/gallery/media/VirtualBaseMediaSet;->handleMessage(Landroid/os/Message;)V

    .line 98
    :goto_0
    return-void

    .line 91
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 92
    .local v0, "newName":Ljava/lang/String;
    sget-object v1, Lcom/oneplus/gallery/media/AlbumMediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/gallery/media/AlbumMediaSet;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x186a1
        :pswitch_0
    .end packed-switch
.end method

.method protected onMediaDeleted(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/AlbumMediaSet;->verifyAccess()V

    .line 320
    if-nez p4, :cond_0

    .line 322
    iget-object v0, p0, Lcom/oneplus/gallery/media/AlbumMediaSet;->TAG:Ljava/lang/String;

    const-string v1, "onMediaDeleted() - Media is null"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :goto_0
    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/AlbumMediaSet;->TAG:Ljava/lang/String;

    const-string v1, "onMediaDeleted() - Media: "

    invoke-interface {p4}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 329
    invoke-virtual {p0, p4}, Lcom/oneplus/gallery/media/AlbumMediaSet;->ignoreRecycledMedia(Lcom/oneplus/gallery/media/Media;)Z

    .line 332
    new-instance v0, Lcom/oneplus/gallery/media/AlbumMediaSet$8;

    invoke-direct {v0, p0, p4}, Lcom/oneplus/gallery/media/AlbumMediaSet$8;-><init>(Lcom/oneplus/gallery/media/AlbumMediaSet;Lcom/oneplus/gallery/media/Media;)V

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/oneplus/gallery/media/AlbumMediaSet;->removeFromMediaIdTable(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/base/OperationCallback;)Z

    goto :goto_0
.end method

.method protected onMediaRecycled(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 360
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oneplus/gallery/media/AlbumMediaSet;->onMediaDeleted(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;)V

    .line 361
    return-void
.end method

.method protected onMediaRestored(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 369
    invoke-virtual {p0, p4}, Lcom/oneplus/gallery/media/AlbumMediaSet;->ignoreRecycledMedia(Lcom/oneplus/gallery/media/Media;)Z

    .line 372
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/AlbumMediaSet;->getMediaManager()Lcom/oneplus/gallery/media/OPMediaManager;

    move-result-object v6

    new-instance v0, Lcom/oneplus/gallery/media/AlbumMediaSet$9;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/gallery/media/AlbumMediaSet$9;-><init>(Lcom/oneplus/gallery/media/AlbumMediaSet;JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;)V

    const-wide/16 v2, 0x0

    invoke-interface {v6, v0, v2, v3}, Lcom/oneplus/gallery/media/OPMediaManager;->postToContentThread(Ljava/lang/Runnable;J)Z

    .line 398
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/AlbumMediaSet;->updateCoverHashCodeDelayed()V

    .line 399
    return-void
.end method

.method protected onRelease()V
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/oneplus/gallery/media/AlbumMediaSet;->m_AlbumMediaChangedListenerHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/media/AlbumMediaSet;->m_AlbumMediaChangedListenerHandle:Lcom/oneplus/base/Handle;

    .line 408
    iget-object v0, p0, Lcom/oneplus/gallery/media/AlbumMediaSet;->m_AlbumInfoChagnedListnerHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/media/AlbumMediaSet;->m_AlbumInfoChagnedListnerHandle:Lcom/oneplus/base/Handle;

    .line 411
    invoke-super {p0}, Lcom/oneplus/gallery/media/VirtualBaseMediaSet;->onRelease()V

    .line 412
    return-void
.end method

.method protected onUpdateCoverHashCode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 419
    new-instance v0, Lcom/oneplus/base/SimpleRef;

    invoke-direct {v0}, Lcom/oneplus/base/SimpleRef;-><init>()V

    .line 420
    .local v0, "coverHashCodeRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/oneplus/gallery/media/AlbumMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    sget-object v2, Lcom/oneplus/gallery/media/AlbumMediaSet;->CONTENT_URI_FILE:Landroid/net/Uri;

    new-instance v3, Lcom/oneplus/gallery/media/AlbumMediaSet$10;

    invoke-direct {v3, p0, v0}, Lcom/oneplus/gallery/media/AlbumMediaSet$10;-><init>(Lcom/oneplus/gallery/media/AlbumMediaSet;Lcom/oneplus/base/Ref;)V

    invoke-interface {v1, v2, v3}, Lcom/oneplus/gallery/media/OPMediaManager;->accessContentProvider(Landroid/net/Uri;Lcom/oneplus/gallery/media/MediaManager$ContentProviderAccessCallback;)Lcom/oneplus/base/Handle;

    .line 470
    invoke-interface {v0}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method protected openMediaList(Lcom/oneplus/gallery/media/MediaComparator;IILcom/oneplus/gallery/media/MediaList;)Z
    .locals 3
    .param p1, "comparator"    # Lcom/oneplus/gallery/media/MediaComparator;
    .param p2, "maxMediaCount"    # I
    .param p3, "flags"    # I
    .param p4, "mediaList"    # Lcom/oneplus/gallery/media/MediaList;

    .prologue
    .line 479
    iget-object v0, p0, Lcom/oneplus/gallery/media/AlbumMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    sget-object v1, Lcom/oneplus/gallery/media/AlbumMediaSet;->CONTENT_URI_FILE:Landroid/net/Uri;

    new-instance v2, Lcom/oneplus/gallery/media/AlbumMediaSet$11;

    invoke-direct {v2, p0, p1, p2, p4}, Lcom/oneplus/gallery/media/AlbumMediaSet$11;-><init>(Lcom/oneplus/gallery/media/AlbumMediaSet;Lcom/oneplus/gallery/media/MediaComparator;ILcom/oneplus/gallery/media/MediaList;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery/media/OPMediaManager;->accessContentProvider(Landroid/net/Uri;Lcom/oneplus/gallery/media/MediaManager$ContentProviderAccessCallback;)Lcom/oneplus/base/Handle;

    .line 580
    const/4 v0, 0x1

    return v0
.end method

.method public rename(Ljava/lang/String;Lcom/oneplus/base/OperationCallback;)V
    .locals 4
    .param p1, "newName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oneplus/base/OperationCallback",
            "<",
            "Ljava/lang/Object;",
            "Lcom/oneplus/gallery/media/MediaSet;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 587
    .local p2, "callback":Lcom/oneplus/base/OperationCallback;, "Lcom/oneplus/base/OperationCallback<Ljava/lang/Object;Lcom/oneplus/gallery/media/MediaSet;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/oneplus/gallery/media/AlbumMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    new-instance v1, Lcom/oneplus/gallery/media/AlbumMediaSet$12;

    invoke-direct {v1, p0, p2, p1}, Lcom/oneplus/gallery/media/AlbumMediaSet$12;-><init>(Lcom/oneplus/gallery/media/AlbumMediaSet;Lcom/oneplus/base/OperationCallback;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/oneplus/gallery/media/OPMediaManager;->postToContentThread(Ljava/lang/Runnable;J)Z

    .line 615
    return-void
.end method
