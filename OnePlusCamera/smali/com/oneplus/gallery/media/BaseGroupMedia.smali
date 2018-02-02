.class public abstract Lcom/oneplus/gallery/media/BaseGroupMedia;
.super Ljava/lang/Object;
.source "BaseGroupMedia.java"

# interfaces
.implements Lcom/oneplus/gallery/media/GroupMedia;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/media/BaseGroupMedia$GroupMediaListImpl;
    }
.end annotation


# static fields
.field private static final PRINT_LOGS:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final m_ActiveGroupMediaLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/oneplus/gallery/media/BaseGroupMedia$GroupMediaListImpl;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_CoverIndex:I

.field private m_CoverMedia:Lcom/oneplus/base/ConcurrencyObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/ConcurrencyObject",
            "<",
            "Lcom/oneplus/gallery/media/Media;",
            ">;"
        }
    .end annotation
.end field

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

.field private m_IsFavorite:Z

.field private m_IsUserCoverFound:Z

.field private final m_MediaId:Lcom/oneplus/gallery/media/MediaId;

.field private m_MediaProvider:Lcom/oneplus/gallery/media/MediaProvider;

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
    const-class v0, Lcom/oneplus/gallery/media/BaseGroupMedia;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery/media/BaseGroupMedia;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/media/MediaProvider;Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_ActiveGroupMediaLists:Ljava/util/List;

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_CoverIndex:I

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_GroupMediaChangeCallbacks:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_SubMedia:Ljava/util/Set;

    .line 62
    if-eqz p3, :cond_0

    .line 66
    if-nez p4, :cond_1

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_Handler:Landroid/os/Handler;

    .line 70
    :goto_0
    iput-object p1, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_GroupId:Ljava/lang/String;

    .line 71
    new-instance v0, Lcom/oneplus/gallery/media/MediaId;

    invoke-direct {v0, p1}, Lcom/oneplus/gallery/media/MediaId;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_MediaId:Lcom/oneplus/gallery/media/MediaId;

    .line 72
    new-instance v0, Lcom/oneplus/base/ConcurrencyObject;

    invoke-direct {v0, p4}, Lcom/oneplus/base/ConcurrencyObject;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_CoverMedia:Lcom/oneplus/base/ConcurrencyObject;

    .line 73
    iput-object p3, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_MediaProvider:Lcom/oneplus/gallery/media/MediaProvider;

    .line 74
    return-void

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Media provider is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_1
    iput-object p4, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_Handler:Landroid/os/Handler;

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/oneplus/gallery/media/BaseGroupMedia;Lcom/oneplus/gallery/media/BaseGroupMedia$GroupMediaListImpl;)V
    .locals 0

    .prologue
    .line 409
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/media/BaseGroupMedia;->releaseGroupMediaList(Lcom/oneplus/gallery/media/BaseGroupMedia$GroupMediaListImpl;)V

    return-void
.end method

.method private releaseGroupMediaList(Lcom/oneplus/gallery/media/BaseGroupMedia$GroupMediaListImpl;)V
    .locals 4

    .prologue
    .line 411
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_ActiveGroupMediaLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 413
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_ActiveGroupMediaLists:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/BaseGroupMedia$GroupMediaListImpl;

    .line 414
    if-eq v0, p1, :cond_0

    .line 420
    if-eqz v0, :cond_2

    .line 411
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_ActiveGroupMediaLists:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 417
    sget-object v0, Lcom/oneplus/gallery/media/BaseGroupMedia;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "releaseGroupMediaList() - Group id: "

    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseGroupMedia;->getId()Lcom/oneplus/gallery/media/MediaId;

    move-result-object v2

    const-string/jumbo v3, ", released media list: "

    invoke-static {v0, v1, v2, v3, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 423
    :cond_1
    return-void

    .line 421
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_ActiveGroupMediaLists:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1
.end method

.method private updateFavoriteState()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 577
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_SubMedia:Ljava/util/Set;

    monitor-enter v2

    .line 579
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_SubMedia:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/Media;

    .line 581
    invoke-interface {v0}, Lcom/oneplus/gallery/media/Media;->isFavorite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    const/4 v0, 0x1

    .line 577
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 590
    iget-boolean v2, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_IsFavorite:Z

    xor-int/2addr v2, v0

    .line 591
    if-nez v2, :cond_1

    .line 605
    :goto_1
    return-void

    .line 577
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 595
    :cond_1
    iput-boolean v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_IsFavorite:Z

    .line 596
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_SubMedia:Ljava/util/Set;

    monitor-enter v2

    .line 598
    :try_start_2
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_SubMedia:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/Media;

    .line 599
    iget-boolean v4, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_IsFavorite:Z

    invoke-interface {v0, v4}, Lcom/oneplus/gallery/media/Media;->setFavorite(Z)Z

    goto :goto_2

    .line 596
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 603
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_MediaProvider:Lcom/oneplus/gallery/media/MediaProvider;

    invoke-interface {v0, p0, v1}, Lcom/oneplus/gallery/media/MediaProvider;->notifyMediaUpdated(Lcom/oneplus/gallery/media/Media;I)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public addGroupMediaChangeCallback(Lcom/oneplus/gallery/media/GroupMedia$GroupMediaChangeCallback;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_GroupMediaChangeCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_GroupMediaChangeCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addSubMedia(Lcom/oneplus/gallery/media/Media;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 91
    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_SubMedia:Ljava/util/Set;

    monitor-enter v1

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_SubMedia:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 91
    monitor-exit v1

    .line 95
    if-nez v0, :cond_0

    .line 117
    return v2

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x0

    .line 101
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/gallery/media/BaseGroupMedia;->refreshCover(Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/media/Media;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 108
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/gallery/media/BaseGroupMedia;->updateFavoriteState()V

    .line 111
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_ActiveGroupMediaLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_3

    .line 112
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_ActiveGroupMediaLists:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/BaseGroupMedia$GroupMediaListImpl;

    invoke-virtual {v0, p1}, Lcom/oneplus/gallery/media/BaseGroupMedia$GroupMediaListImpl;->addMedia(Lcom/oneplus/gallery/media/Media;)I

    .line 111
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_GroupMediaChangeCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_1

    .line 104
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_GroupMediaChangeCallbacks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/GroupMedia$GroupMediaChangeCallback;

    invoke-interface {v0, p0, v2}, Lcom/oneplus/gallery/media/GroupMedia$GroupMediaChangeCallback;->onCoverChanged(Lcom/oneplus/gallery/media/GroupMedia;I)V

    .line 103
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 115
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public addToAlbum(J)Z
    .locals 5

    .prologue
    .line 129
    const/4 v0, 0x1

    .line 130
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_SubMedia:Ljava/util/Set;

    monitor-enter v2

    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_SubMedia:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/Media;

    .line 133
    invoke-interface {v0, p1, p2}, Lcom/oneplus/gallery/media/Media;->addToAlbum(J)Z

    move-result v0

    and-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    .line 130
    :cond_0
    monitor-exit v2

    .line 137
    return v1

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract evaluateGroupIndex(Lcom/oneplus/gallery/media/Media;)I
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 149
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseGroupMedia;->getCoverMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v0

    .line 150
    if-nez v0, :cond_0

    .line 152
    return-object v1

    .line 151
    :cond_0
    invoke-interface {v0}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getCoverIndex()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_CoverIndex:I

    return v0
.end method

.method public getCoverMedia()Lcom/oneplus/gallery/media/Media;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_CoverMedia:Lcom/oneplus/base/ConcurrencyObject;

    invoke-virtual {v0}, Lcom/oneplus/base/ConcurrencyObject;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/Media;

    return-object v0
.end method

.method public getDetails(Lcom/oneplus/gallery/media/Media$MediaDetailsCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 176
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseGroupMedia;->getCoverMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v0

    .line 177
    if-nez v0, :cond_0

    .line 179
    return-object v1

    .line 178
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/oneplus/gallery/media/Media;->getDetails(Lcom/oneplus/gallery/media/Media$MediaDetailsCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 187
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseGroupMedia;->getCoverMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v0

    .line 188
    if-nez v0, :cond_0

    .line 190
    return-object v1

    .line 189
    :cond_0
    invoke-interface {v0}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseGroupMedia;->getCoverMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v0

    .line 199
    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 201
    return-wide v0

    .line 200
    :cond_0
    invoke-interface {v0}, Lcom/oneplus/gallery/media/Media;->getFileSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_GroupId:Ljava/lang/String;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_Handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseGroupMedia;->getCoverMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v0

    .line 226
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 228
    return v0

    .line 227
    :cond_0
    invoke-interface {v0}, Lcom/oneplus/gallery/media/Media;->getHeight()I

    move-result v0

    return v0
.end method

.method public getId()Lcom/oneplus/gallery/media/MediaId;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_MediaId:Lcom/oneplus/gallery/media/MediaId;

    return-object v0
.end method

.method public getLastModifiedTime()J
    .locals 2

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseGroupMedia;->getCoverMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v0

    .line 245
    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 247
    return-wide v0

    .line 246
    :cond_0
    invoke-interface {v0}, Lcom/oneplus/gallery/media/Media;->getLastModifiedTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 255
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseGroupMedia;->getCoverMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v0

    .line 256
    if-nez v0, :cond_0

    .line 258
    return-object v1

    .line 257
    :cond_0
    invoke-interface {v0}, Lcom/oneplus/gallery/media/Media;->getLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 266
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseGroupMedia;->getCoverMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v0

    .line 267
    if-nez v0, :cond_0

    .line 269
    return-object v1

    .line 268
    :cond_0
    invoke-interface {v0}, Lcom/oneplus/gallery/media/Media;->getMimeType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParentId()J
    .locals 3

    .prologue
    .line 276
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_ParentId:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 281
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_ParentId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_GroupId:Ljava/lang/String;

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 279
    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_GroupId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_ParentId:Ljava/lang/Long;

    goto :goto_0
.end method

.method public getSubMedia()Ljava/util/Set;
    .locals 2
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
    .line 288
    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_SubMedia:Ljava/util/Set;

    monitor-enter v1

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_SubMedia:Ljava/util/Set;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    .line 288
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getTakenTime()J
    .locals 2

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseGroupMedia;->getCoverMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v0

    .line 300
    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 305
    return-wide v0

    .line 302
    :cond_0
    invoke-interface {v0}, Lcom/oneplus/gallery/media/Media;->getTakenTime()J

    move-result-wide v0

    .line 303
    return-wide v0
.end method

.method public getType()Lcom/oneplus/gallery/media/MediaType;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 313
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseGroupMedia;->getCoverMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v0

    .line 314
    if-nez v0, :cond_0

    .line 316
    return-object v1

    .line 315
    :cond_0
    invoke-interface {v0}, Lcom/oneplus/gallery/media/Media;->getType()Lcom/oneplus/gallery/media/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseGroupMedia;->getCoverMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v0

    .line 325
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 327
    return v0

    .line 326
    :cond_0
    invoke-interface {v0}, Lcom/oneplus/gallery/media/Media;->getWidth()I

    move-result v0

    return v0
.end method

.method public isCapturedByFrontCamera()Z
    .locals 1

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseGroupMedia;->getCoverMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v0

    .line 336
    if-nez v0, :cond_0

    .line 338
    const/4 v0, 0x0

    return v0

    .line 337
    :cond_0
    invoke-interface {v0}, Lcom/oneplus/gallery/media/Media;->isCapturedByFrontCamera()Z

    move-result v0

    return v0
.end method

.method public isDependencyThread()Z
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isDocumentUri()Z
    .locals 1

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseGroupMedia;->getCoverMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v0

    .line 355
    if-nez v0, :cond_0

    .line 357
    const/4 v0, 0x0

    return v0

    .line 356
    :cond_0
    invoke-interface {v0}, Lcom/oneplus/gallery/media/Media;->isDocumentUri()Z

    move-result v0

    return v0
.end method

.method public isFavorite()Z
    .locals 1

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_IsFavorite:Z

    return v0
.end method

.method public isFavoriteSupported()Z
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x1

    return v0
.end method

.method public isUserCoverFound()Z
    .locals 1

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_IsUserCoverFound:Z

    return v0
.end method

.method public openGroupMediaList(Lcom/oneplus/gallery/media/MediaComparator;I)Lcom/oneplus/gallery/media/MediaList;
    .locals 3

    .prologue
    .line 390
    if-eqz p1, :cond_0

    .line 394
    sget-object v0, Lcom/oneplus/gallery/media/BaseGroupMedia;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "openGroupMediaList()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    new-instance v0, Lcom/oneplus/gallery/media/BaseGroupMedia$GroupMediaListImpl;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/gallery/media/BaseGroupMedia$GroupMediaListImpl;-><init>(Lcom/oneplus/gallery/media/BaseGroupMedia;Lcom/oneplus/gallery/media/MediaComparator;)V

    .line 396
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseGroupMedia;->getSubMedia()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/media/BaseGroupMedia$GroupMediaListImpl;->addMedia(Ljava/util/Collection;)V

    .line 397
    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_ActiveGroupMediaLists:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    return-object v0

    .line 391
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No comparator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract refreshCover(Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/media/Media;)Z
.end method

.method public removeFromAlbum(J)Z
    .locals 5

    .prologue
    .line 434
    const/4 v0, 0x1

    .line 435
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_SubMedia:Ljava/util/Set;

    monitor-enter v2

    .line 437
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_SubMedia:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/Media;

    .line 438
    invoke-interface {v0, p1, p2}, Lcom/oneplus/gallery/media/Media;->removeFromAlbum(J)Z

    move-result v0

    and-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    .line 435
    :cond_0
    monitor-exit v2

    .line 442
    return v1

    .line 435
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeGroupMediaChangeCallback(Lcom/oneplus/gallery/media/GroupMedia$GroupMediaChangeCallback;)V
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_GroupMediaChangeCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 451
    return-void
.end method

.method public removeSubMedia(Lcom/oneplus/gallery/media/Media;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 459
    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_SubMedia:Ljava/util/Set;

    monitor-enter v1

    .line 461
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_SubMedia:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 459
    monitor-exit v1

    .line 463
    if-nez v0, :cond_0

    .line 485
    return v2

    .line 459
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x0

    .line 469
    invoke-virtual {p0, v0, p1}, Lcom/oneplus/gallery/media/BaseGroupMedia;->refreshCover(Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/media/Media;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 476
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/gallery/media/BaseGroupMedia;->updateFavoriteState()V

    .line 479
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_ActiveGroupMediaLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_3

    .line 480
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_ActiveGroupMediaLists:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/BaseGroupMedia$GroupMediaListImpl;

    invoke-virtual {v0, p1}, Lcom/oneplus/gallery/media/BaseGroupMedia$GroupMediaListImpl;->removeMedia(Lcom/oneplus/gallery/media/Media;)Z

    .line 479
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 471
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_GroupMediaChangeCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_1

    .line 472
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_GroupMediaChangeCallbacks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/GroupMedia$GroupMediaChangeCallback;

    invoke-interface {v0, p0, v2}, Lcom/oneplus/gallery/media/GroupMedia$GroupMediaChangeCallback;->onCoverChanged(Lcom/oneplus/gallery/media/GroupMedia;I)V

    .line 471
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 483
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public setCoverMedia(Lcom/oneplus/gallery/media/Media;I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 494
    if-nez p1, :cond_1

    :cond_0
    const/4 p2, -0x1

    move-object p1, v0

    .line 502
    :goto_0
    iget v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_CoverIndex:I

    if-ne v0, p2, :cond_2

    move v0, v1

    .line 507
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseGroupMedia;->getCoverMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v1

    if-ne v1, p1, :cond_3

    .line 512
    :goto_2
    return v0

    .line 494
    :cond_1
    if-ltz p2, :cond_0

    goto :goto_0

    .line 504
    :cond_2
    iput p2, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_CoverIndex:I

    move v0, v2

    .line 505
    goto :goto_1

    .line 509
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_CoverMedia:Lcom/oneplus/base/ConcurrencyObject;

    invoke-virtual {v0, p1}, Lcom/oneplus/base/ConcurrencyObject;->set(Ljava/lang/Object;)V

    move v0, v2

    .line 510
    goto :goto_2
.end method

.method public setFavorite(Z)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 521
    iget-boolean v1, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_IsFavorite:Z

    if-eq v1, p1, :cond_0

    .line 528
    iput-boolean p1, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_IsFavorite:Z

    .line 532
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_SubMedia:Ljava/util/Set;

    monitor-enter v2

    .line 534
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_SubMedia:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/Media;

    .line 535
    invoke-interface {v0, p1}, Lcom/oneplus/gallery/media/Media;->setFavorite(Z)Z

    move-result v0

    and-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    .line 522
    :cond_0
    return v0

    .line 532
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_MediaProvider:Lcom/oneplus/gallery/media/MediaProvider;

    invoke-interface {v0, p0, v4}, Lcom/oneplus/gallery/media/MediaProvider;->notifyMediaUpdated(Lcom/oneplus/gallery/media/Media;I)V

    .line 542
    return v1

    .line 532
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setIsUserCoverFound(Z)Z
    .locals 1

    .prologue
    .line 549
    iget-boolean v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_IsUserCoverFound:Z

    if-ne v0, p1, :cond_0

    .line 554
    const/4 v0, 0x0

    return v0

    .line 551
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_IsUserCoverFound:Z

    .line 552
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseGroupMedia;->getCoverMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v0

    .line 563
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[Group id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_GroupId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Cover path: "

    .line 564
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_0

    const-string/jumbo v0, "No cover"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Cover index: "

    .line 565
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_CoverIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", User cover found: "

    .line 566
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_IsUserCoverFound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Favorite: "

    .line 567
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_IsFavorite:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Sub media size: "

    .line 568
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_SubMedia:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 563
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 564
    :cond_0
    invoke-interface {v0}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
