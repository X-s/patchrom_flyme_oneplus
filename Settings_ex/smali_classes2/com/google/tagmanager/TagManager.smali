.class public Lcom/google/tagmanager/TagManager;
.super Ljava/lang/Object;
.source "TagManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/TagManager$3;,
        Lcom/google/tagmanager/TagManager$ContainerOpenException;,
        Lcom/google/tagmanager/TagManager$ContainerProvider;,
        Lcom/google/tagmanager/TagManager$Logger;,
        Lcom/google/tagmanager/TagManager$RefreshMode;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/google/tagmanager/TagManager;


# instance fields
.field private final mContainerProvider:Lcom/google/tagmanager/TagManager$ContainerProvider;

.field private final mContainers:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/tagmanager/Container;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private volatile mCtfeServerAddr:Ljava/lang/String;

.field private final mDataLayer:Lcom/google/tagmanager/DataLayer;

.field private volatile mRefreshMode:Lcom/google/tagmanager/TagManager$RefreshMode;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/tagmanager/TagManager$ContainerProvider;Lcom/google/tagmanager/DataLayer;)V
    .locals 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    if-eqz p1, :cond_0

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/TagManager;->mContext:Landroid/content/Context;

    .line 143
    iput-object p2, p0, Lcom/google/tagmanager/TagManager;->mContainerProvider:Lcom/google/tagmanager/TagManager$ContainerProvider;

    .line 144
    sget-object v0, Lcom/google/tagmanager/TagManager$RefreshMode;->STANDARD:Lcom/google/tagmanager/TagManager$RefreshMode;

    iput-object v0, p0, Lcom/google/tagmanager/TagManager;->mRefreshMode:Lcom/google/tagmanager/TagManager$RefreshMode;

    .line 145
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/TagManager;->mContainers:Ljava/util/concurrent/ConcurrentMap;

    .line 146
    iput-object p3, p0, Lcom/google/tagmanager/TagManager;->mDataLayer:Lcom/google/tagmanager/DataLayer;

    .line 147
    iget-object v0, p0, Lcom/google/tagmanager/TagManager;->mDataLayer:Lcom/google/tagmanager/DataLayer;

    new-instance v1, Lcom/google/tagmanager/TagManager$1;

    invoke-direct {v1, p0}, Lcom/google/tagmanager/TagManager$1;-><init>(Lcom/google/tagmanager/TagManager;)V

    invoke-virtual {v0, v1}, Lcom/google/tagmanager/DataLayer;->registerListener(Lcom/google/tagmanager/DataLayer$Listener;)V

    .line 157
    iget-object v0, p0, Lcom/google/tagmanager/TagManager;->mDataLayer:Lcom/google/tagmanager/DataLayer;

    new-instance v1, Lcom/google/tagmanager/AdwordsClickReferrerListener;

    iget-object v2, p0, Lcom/google/tagmanager/TagManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/tagmanager/AdwordsClickReferrerListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/google/tagmanager/DataLayer;->registerListener(Lcom/google/tagmanager/DataLayer$Listener;)V

    .line 158
    return-void

    .line 139
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lcom/google/tagmanager/TagManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/google/tagmanager/TagManager;->refreshTagsInAllContainers(Ljava/lang/String;)V

    return-void
.end method

.method static clearInstance()V
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    const-class v1, Lcom/google/tagmanager/TagManager;

    .line 189
    monitor-enter v1

    const/4 v0, 0x0

    .line 190
    :try_start_0
    sput-object v0, Lcom/google/tagmanager/TagManager;->sInstance:Lcom/google/tagmanager/TagManager;

    .line 191
    monitor-exit v1

    .line 192
    return-void

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/tagmanager/TagManager;
    .locals 5

    .prologue
    const-class v1, Lcom/google/tagmanager/TagManager;

    .line 166
    monitor-enter v1

    .line 167
    :try_start_0
    sget-object v0, Lcom/google/tagmanager/TagManager;->sInstance:Lcom/google/tagmanager/TagManager;

    if-eqz v0, :cond_0

    .line 182
    :goto_0
    sget-object v0, Lcom/google/tagmanager/TagManager;->sInstance:Lcom/google/tagmanager/TagManager;

    monitor-exit v1

    return-object v0

    .line 168
    :cond_0
    if-eqz p0, :cond_1

    .line 172
    new-instance v0, Lcom/google/tagmanager/TagManager$2;

    invoke-direct {v0}, Lcom/google/tagmanager/TagManager$2;-><init>()V

    .line 179
    new-instance v2, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;

    invoke-direct {v2, p0}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;-><init>(Landroid/content/Context;)V

    .line 180
    new-instance v3, Lcom/google/tagmanager/TagManager;

    new-instance v4, Lcom/google/tagmanager/DataLayer;

    invoke-direct {v4, v2}, Lcom/google/tagmanager/DataLayer;-><init>(Lcom/google/tagmanager/DataLayer$PersistentStore;)V

    invoke-direct {v3, p0, v0, v4}, Lcom/google/tagmanager/TagManager;-><init>(Landroid/content/Context;Lcom/google/tagmanager/TagManager$ContainerProvider;Lcom/google/tagmanager/DataLayer;)V

    sput-object v3, Lcom/google/tagmanager/TagManager;->sInstance:Lcom/google/tagmanager/TagManager;

    goto :goto_0

    .line 182
    :catchall_0
    move-exception v0

    .line 183
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    const-string/jumbo v0, "TagManager.getInstance requires non-null context."

    .line 169
    invoke-static {v0}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 170
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method private refreshTagsInAllContainers(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/tagmanager/TagManager;->mContainers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    return-void

    .line 314
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/Container;

    .line 315
    invoke-virtual {v0, p1}, Lcom/google/tagmanager/Container;->evaluateTags(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getContainer(Ljava/lang/String;)Lcom/google/tagmanager/Container;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/tagmanager/TagManager;->mContainers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/Container;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/tagmanager/TagManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDataLayer()Lcom/google/tagmanager/DataLayer;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/tagmanager/TagManager;->mDataLayer:Lcom/google/tagmanager/DataLayer;

    return-object v0
.end method

.method public getLogger()Lcom/google/tagmanager/Logger;
    .locals 1

    .prologue
    .line 249
    invoke-static {}, Lcom/google/tagmanager/Log;->getLogger()Lcom/google/tagmanager/Logger;

    move-result-object v0

    return-object v0
.end method

.method public getRefreshMode()Lcom/google/tagmanager/TagManager$RefreshMode;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/tagmanager/TagManager;->mRefreshMode:Lcom/google/tagmanager/TagManager$RefreshMode;

    return-object v0
.end method

.method public openContainer(Ljava/lang/String;Lcom/google/tagmanager/Container$Callback;)Lcom/google/tagmanager/Container;
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/tagmanager/TagManager;->mContainerProvider:Lcom/google/tagmanager/TagManager$ContainerProvider;

    iget-object v1, p0, Lcom/google/tagmanager/TagManager;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1, p0}, Lcom/google/tagmanager/TagManager$ContainerProvider;->newContainer(Landroid/content/Context;Ljava/lang/String;Lcom/google/tagmanager/TagManager;)Lcom/google/tagmanager/Container;

    move-result-object v0

    .line 222
    iget-object v1, p0, Lcom/google/tagmanager/TagManager;->mContainers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/google/tagmanager/TagManager;->mCtfeServerAddr:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 229
    :goto_0
    invoke-virtual {v0, p2}, Lcom/google/tagmanager/Container;->load(Lcom/google/tagmanager/Container$Callback;)V

    .line 230
    return-object v0

    .line 223
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Container id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has already been opened."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_1
    iget-object v1, p0, Lcom/google/tagmanager/TagManager;->mCtfeServerAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/tagmanager/Container;->setCtfeServerAddress(Ljava/lang/String;)V

    goto :goto_0
.end method

.method removeContainer(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/google/tagmanager/TagManager;->mContainers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method setCtfeServerAddress(Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 306
    iput-object p1, p0, Lcom/google/tagmanager/TagManager;->mCtfeServerAddr:Ljava/lang/String;

    .line 307
    return-void
.end method

.method public setLogger(Lcom/google/tagmanager/Logger;)V
    .locals 0

    .prologue
    .line 244
    invoke-static {p1}, Lcom/google/tagmanager/Log;->setLogger(Lcom/google/tagmanager/Logger;)V

    .line 245
    return-void
.end method

.method declared-synchronized setPreviewData(Landroid/net/Uri;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    monitor-enter p0

    .line 271
    :try_start_0
    invoke-static {}, Lcom/google/tagmanager/PreviewManager;->getInstance()Lcom/google/tagmanager/PreviewManager;

    move-result-object v2

    .line 272
    invoke-virtual {v2, p1}, Lcom/google/tagmanager/PreviewManager;->setPreviewData(Landroid/net/Uri;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    monitor-exit p0

    .line 299
    return v1

    .line 273
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lcom/google/tagmanager/PreviewManager;->getContainerId()Ljava/lang/String;

    move-result-object v3

    .line 274
    sget-object v0, Lcom/google/tagmanager/TagManager$3;->$SwitchMap$com$google$tagmanager$PreviewManager$PreviewMode:[I

    invoke-virtual {v2}, Lcom/google/tagmanager/PreviewManager;->getPreviewMode()Lcom/google/tagmanager/PreviewManager$PreviewMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/tagmanager/PreviewManager$PreviewMode;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 297
    :cond_1
    :goto_0
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 276
    :pswitch_0
    :try_start_2
    iget-object v0, p0, Lcom/google/tagmanager/TagManager;->mContainers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/Container;

    .line 277
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 278
    invoke-virtual {v0, v1}, Lcom/google/tagmanager/Container;->setCtfeUrlPathAndQuery(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v0}, Lcom/google/tagmanager/Container;->refresh()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 284
    :pswitch_1
    :try_start_3
    iget-object v0, p0, Lcom/google/tagmanager/TagManager;->mContainers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 285
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/tagmanager/Container;

    .line 286
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 289
    invoke-virtual {v1}, Lcom/google/tagmanager/Container;->getCtfeUrlPathAndQuery()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 291
    invoke-virtual {v1, v0}, Lcom/google/tagmanager/Container;->setCtfeUrlPathAndQuery(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v1}, Lcom/google/tagmanager/Container;->refresh()V

    goto :goto_1

    .line 287
    :cond_3
    invoke-virtual {v2}, Lcom/google/tagmanager/PreviewManager;->getCTFEUrlPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/tagmanager/Container;->setCtfeUrlPathAndQuery(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v1}, Lcom/google/tagmanager/Container;->refresh()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 274
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setRefreshMode(Lcom/google/tagmanager/TagManager$RefreshMode;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/google/tagmanager/TagManager;->mRefreshMode:Lcom/google/tagmanager/TagManager$RefreshMode;

    .line 255
    return-void
.end method
