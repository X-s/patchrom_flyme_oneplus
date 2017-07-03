.class public abstract Lcom/oneplus/gallery/media/BaseGroupMedia;
.super Ljava/lang/Object;
.source "BaseGroupMedia.java"

# interfaces
.implements Lcom/oneplus/gallery/media/GroupMedia;


# static fields
.field private static final PRINT_LOGS:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private m_CoverIndex:I

.field private m_CoverMedia:Lcom/oneplus/gallery/media/Media;

.field private final m_GroupId:Ljava/lang/String;

.field private final m_GroupMediaChangeCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery/media/GroupMedia$GroupMediaChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final m_Handler:Landroid/os/Handler;

.field private m_IsUserCoverFound:Z

.field private m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

.field private m_ParentId:Ljava/lang/Long;

.field private m_SubMedia:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/oneplus/gallery/media/Media;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/oneplus/gallery/media/BaseGroupMedia;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery/media/BaseGroupMedia;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 1
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_CoverIndex:I

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_GroupMediaChangeCallbacks:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_SubMedia:Ljava/util/Set;

    .line 38
    iput-object p2, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_Handler:Landroid/os/Handler;

    .line 39
    iput-object p1, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_GroupId:Ljava/lang/String;

    .line 40
    return-void
.end method

.method private linkToMediaManager()Z
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    if-nez v0, :cond_0

    .line 290
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v0

    const-class v1, Lcom/oneplus/gallery/media/OPMediaManager;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GalleryApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/OPMediaManager;

    iput-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    .line 291
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    if-nez v0, :cond_0

    .line 293
    sget-object v0, Lcom/oneplus/gallery/media/BaseGroupMedia;->TAG:Ljava/lang/String;

    const-string v1, "linkToMediaManager() - Cannot find media manager"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const/4 v0, 0x0

    .line 297
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addGroupMediaChangeCallback(Lcom/oneplus/gallery/media/GroupMedia$GroupMediaChangeCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/oneplus/gallery/media/GroupMedia$GroupMediaChangeCallback;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_GroupMediaChangeCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_GroupMediaChangeCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_0
    return-void
.end method

.method public addSubMedia(Lcom/oneplus/gallery/media/Media;)Z
    .locals 2
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 57
    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_SubMedia:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/oneplus/gallery/media/BaseGroupMedia;->refreshCover(Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/media/Media;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_GroupMediaChangeCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 64
    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_GroupMediaChangeCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/GroupMedia$GroupMediaChangeCallback;

    invoke-interface {v1, p0}, Lcom/oneplus/gallery/media/GroupMedia$GroupMediaChangeCallback;->onCoverChanged(Lcom/oneplus/gallery/media/GroupMedia;)V

    .line 63
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 66
    .end local v0    # "i":I
    :cond_0
    const/4 v1, 0x1

    .line 68
    :goto_1
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected abstract evaluateGroupIndex(Lcom/oneplus/gallery/media/Media;)I
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_CoverMedia:Lcom/oneplus/gallery/media/Media;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_CoverMedia:Lcom/oneplus/gallery/media/Media;

    invoke-interface {v0}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCoverIndex()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_CoverIndex:I

    return v0
.end method

.method public getCoverMedia()Lcom/oneplus/gallery/media/Media;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_CoverMedia:Lcom/oneplus/gallery/media/Media;

    return-object v0
.end method

.method public getDetails(Lcom/oneplus/gallery/media/Media$MediaDetailsCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p1, "callback"    # Lcom/oneplus/gallery/media/Media$MediaDetailsCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_CoverMedia:Lcom/oneplus/gallery/media/Media;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_CoverMedia:Lcom/oneplus/gallery/media/Media;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/gallery/media/Media;->getDetails(Lcom/oneplus/gallery/media/Media$MediaDetailsCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_CoverMedia:Lcom/oneplus/gallery/media/Media;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_CoverMedia:Lcom/oneplus/gallery/media/Media;

    invoke-interface {v0}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 118
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_CoverMedia:Lcom/oneplus/gallery/media/Media;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_CoverMedia:Lcom/oneplus/gallery/media/Media;

    invoke-interface {v0}, Lcom/oneplus/gallery/media/Media;->getFileSize()J

    move-result-wide v0

    .line 128
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_GroupId:Ljava/lang/String;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_Handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_CoverMedia:Lcom/oneplus/gallery/media/Media;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_CoverMedia:Lcom/oneplus/gallery/media/Media;

    invoke-interface {v0}, Lcom/oneplus/gallery/media/Media;->getHeight()I

    move-result v0

    .line 154
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastModifiedTime()J
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_CoverMedia:Lcom/oneplus/gallery/media/Media;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_CoverMedia:Lcom/oneplus/gallery/media/Media;

    invoke-interface {v0}, Lcom/oneplus/gallery/media/Media;->getLastModifiedTime()J

    move-result-wide v0

    .line 164
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_CoverMedia:Lcom/oneplus/gallery/media/Media;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_CoverMedia:Lcom/oneplus/gallery/media/Media;

    invoke-interface {v0}, Lcom/oneplus/gallery/media/Media;->getLocation()Landroid/location/Location;

    move-result-object v0

    .line 174
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_CoverMedia:Lcom/oneplus/gallery/media/Media;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_CoverMedia:Lcom/oneplus/gallery/media/Media;

    invoke-interface {v0}, Lcom/oneplus/gallery/media/Media;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 184
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParentId()J
    .locals 4

    .prologue
    .line 192
    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_ParentId:Ljava/lang/Long;

    if-nez v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_GroupId:Ljava/lang/String;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 195
    .local v0, "index":I
    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_GroupId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_ParentId:Ljava/lang/Long;

    .line 197
    .end local v0    # "index":I
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_ParentId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2
.end method

.method public getSubMedia()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/oneplus/gallery/media/Media;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_SubMedia:Ljava/util/Set;

    return-object v0
.end method

.method public getTakenTime()J
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_CoverMedia:Lcom/oneplus/gallery/media/Media;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_CoverMedia:Lcom/oneplus/gallery/media/Media;

    invoke-interface {v0}, Lcom/oneplus/gallery/media/Media;->getTakenTime()J

    move-result-wide v0

    .line 215
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getType()Lcom/oneplus/gallery/media/MediaType;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_CoverMedia:Lcom/oneplus/gallery/media/Media;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_CoverMedia:Lcom/oneplus/gallery/media/Media;

    invoke-interface {v0}, Lcom/oneplus/gallery/media/Media;->getType()Lcom/oneplus/gallery/media/MediaType;

    move-result-object v0

    .line 225
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_CoverMedia:Lcom/oneplus/gallery/media/Media;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_CoverMedia:Lcom/oneplus/gallery/media/Media;

    invoke-interface {v0}, Lcom/oneplus/gallery/media/Media;->getWidth()I

    move-result v0

    .line 235
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCapturedByFrontCamera()Z
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_CoverMedia:Lcom/oneplus/gallery/media/Media;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_CoverMedia:Lcom/oneplus/gallery/media/Media;

    invoke-interface {v0}, Lcom/oneplus/gallery/media/Media;->isCapturedByFrontCamera()Z

    move-result v0

    .line 245
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDependencyThread()Z
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDocumentUri()Z
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_CoverMedia:Lcom/oneplus/gallery/media/Media;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_CoverMedia:Lcom/oneplus/gallery/media/Media;

    invoke-interface {v0}, Lcom/oneplus/gallery/media/Media;->isDocumentUri()Z

    move-result v0

    .line 263
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFavorite()Z
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_CoverMedia:Lcom/oneplus/gallery/media/Media;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_CoverMedia:Lcom/oneplus/gallery/media/Media;

    invoke-interface {v0}, Lcom/oneplus/gallery/media/Media;->isFavorite()Z

    move-result v0

    .line 273
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserCoverFound()Z
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_IsUserCoverFound:Z

    return v0
.end method

.method public openGroupMediaList(Lcom/oneplus/gallery/media/MediaComparator;I)Lcom/oneplus/gallery/media/MediaList;
    .locals 2
    .param p1, "comparator"    # Lcom/oneplus/gallery/media/MediaComparator;
    .param p2, "flags"    # I

    .prologue
    .line 306
    invoke-direct {p0}, Lcom/oneplus/gallery/media/BaseGroupMedia;->linkToMediaManager()Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    const/4 v0, 0x0

    .line 308
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseGroupMedia;->getGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Lcom/oneplus/gallery/media/OPMediaManager;->openGroupMediaList(Lcom/oneplus/gallery/media/MediaComparator;Ljava/lang/String;I)Lcom/oneplus/gallery/media/MediaList;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract refreshCover(Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/media/Media;)Z
.end method

.method public removeGroupMediaChangeCallback(Lcom/oneplus/gallery/media/GroupMedia$GroupMediaChangeCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/oneplus/gallery/media/GroupMedia$GroupMediaChangeCallback;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_GroupMediaChangeCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 321
    return-void
.end method

.method public removeSubMedia(Lcom/oneplus/gallery/media/Media;)Z
    .locals 2
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 328
    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_SubMedia:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 332
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/oneplus/gallery/media/BaseGroupMedia;->refreshCover(Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/media/Media;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_GroupMediaChangeCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 335
    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_GroupMediaChangeCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/GroupMedia$GroupMediaChangeCallback;

    invoke-interface {v1, p0}, Lcom/oneplus/gallery/media/GroupMedia$GroupMediaChangeCallback;->onCoverChanged(Lcom/oneplus/gallery/media/GroupMedia;)V

    .line 334
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 337
    .end local v0    # "i":I
    :cond_0
    const/4 v1, 0x1

    .line 339
    :goto_1
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setCoverMedia(Lcom/oneplus/gallery/media/Media;I)Z
    .locals 2
    .param p1, "coverMedia"    # Lcom/oneplus/gallery/media/Media;
    .param p2, "coverIndex"    # I

    .prologue
    .line 348
    if-eqz p1, :cond_0

    if-gez p2, :cond_1

    .line 350
    :cond_0
    const/4 p1, 0x0

    .line 351
    const/4 p2, -0x1

    .line 355
    :cond_1
    const/4 v0, 0x0

    .line 356
    .local v0, "hasChange":Z
    iget v1, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_CoverIndex:I

    if-eq v1, p2, :cond_2

    .line 358
    iput p2, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_CoverIndex:I

    .line 359
    const/4 v0, 0x1

    .line 361
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_CoverMedia:Lcom/oneplus/gallery/media/Media;

    if-eq v1, p1, :cond_3

    .line 363
    iput-object p1, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_CoverMedia:Lcom/oneplus/gallery/media/Media;

    .line 364
    const/4 v0, 0x1

    .line 366
    :cond_3
    return v0
.end method

.method public setIsUserCoverFound(Z)Z
    .locals 1
    .param p1, "isUserCoverFound"    # Z

    .prologue
    .line 374
    iget-boolean v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_IsUserCoverFound:Z

    if-eq v0, p1, :cond_0

    .line 376
    iput-boolean p1, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_IsUserCoverFound:Z

    .line 377
    const/4 v0, 0x1

    .line 379
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Group id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_GroupId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Cover path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_CoverMedia:Lcom/oneplus/gallery/media/Media;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_CoverMedia:Lcom/oneplus/gallery/media/Media;

    invoke-interface {v0}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Cover index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_CoverIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", User cover found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_IsUserCoverFound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Sub media size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_SubMedia:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "No cover"

    goto :goto_0
.end method
