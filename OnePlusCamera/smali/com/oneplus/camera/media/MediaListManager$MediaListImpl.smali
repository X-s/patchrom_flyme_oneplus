.class final Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;
.super Lcom/oneplus/base/ListHandlerBaseObject;
.source "MediaListManager.java"

# interfaces
.implements Lcom/oneplus/camera/media/MediaList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/media/MediaListManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaListImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/base/ListHandlerBaseObject",
        "<",
        "Lcom/oneplus/camera/media/MediaInfo;",
        ">;",
        "Lcom/oneplus/camera/media/MediaList;"
    }
.end annotation


# instance fields
.field public final creationTime:J

.field public final isSecureMode:Z

.field private final m_List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/media/MediaInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 2
    .param p1, "isSecureMode"    # Z

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/oneplus/base/ListHandlerBaseObject;-><init>()V

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    .line 125
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->creationTime:J

    .line 126
    iput-boolean p1, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->isSecureMode:Z

    .line 127
    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->onMediaAdded(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->onMediaCleared()V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;[Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->onMediaRemoved([Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->removeMedia(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;Lcom/oneplus/camera/media/MediaInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;
    .param p1, "x1"    # Lcom/oneplus/camera/media/MediaInfo;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->removeMedia(Lcom/oneplus/camera/media/MediaInfo;)V

    return-void
.end method

.method private onMediaAdded(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/media/MediaInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 222
    .local p1, "media":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    sget-object v0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 225
    sget-object v0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->EVENT_CHANGED:Lcom/oneplus/base/EventKey;

    sget-object v1, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    goto :goto_0
.end method

.method private onMediaCleared()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 234
    sget-object v0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->EVENT_CHANGED:Lcom/oneplus/base/EventKey;

    sget-object v1, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 236
    :cond_0
    return-void
.end method

.method private varargs onMediaRemoved([Ljava/lang/Object;)Z
    .locals 5
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 241
    sget-object v3, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v4

    .line 261
    :cond_0
    :goto_0
    return v2

    .line 243
    :cond_1
    const/4 v2, 0x0

    .line 244
    .local v2, "removedSucceed":Z
    aget-object v3, p1, v4

    instance-of v3, v3, Lcom/oneplus/camera/media/MediaInfo;

    if-eqz v3, :cond_3

    .line 246
    iget-object v3, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    aget-object v4, p1, v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 257
    :cond_2
    if-eqz v2, :cond_0

    .line 259
    sget-object v3, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->EVENT_CHANGED:Lcom/oneplus/base/EventKey;

    sget-object v4, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    goto :goto_0

    .line 250
    :cond_3
    aget-object v0, p1, v4

    check-cast v0, Ljava/util/List;

    .line 251
    .local v0, "deletedList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "j":I
    :goto_1
    if-ltz v1, :cond_2

    .line 253
    iget-object v3, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 254
    const/4 v2, 0x1

    .line 251
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method private removeMedia(Lcom/oneplus/camera/media/MediaInfo;)V
    .locals 2
    .param p1, "media"    # Lcom/oneplus/camera/media/MediaInfo;

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 358
    invoke-virtual {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$5;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$5;-><init>(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;Lcom/oneplus/camera/media/MediaInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->TAG:Ljava/lang/String;

    const-string v1, "removeMedia() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->onMediaRemoved([Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private removeMedia(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/media/MediaInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 377
    .local p1, "deletedList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    invoke-virtual {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 379
    invoke-virtual {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$6;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$6;-><init>(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->TAG:Ljava/lang/String;

    const-string v1, "removeMedia() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->onMediaRemoved([Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/oneplus/camera/media/MediaInfo;)Z
    .locals 3
    .param p1, "media"    # Lcom/oneplus/camera/media/MediaInfo;

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->verifyAccess()V

    .line 134
    iget-object v1, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    # getter for: Lcom/oneplus/camera/media/MediaListManager;->m_MediaInfoComparator:Ljava/util/Comparator;
    invoke-static {}, Lcom/oneplus/camera/media/MediaListManager;->access$000()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v1, p1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 135
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 137
    iget-object v1, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    xor-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 138
    sget-object v1, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->EVENT_CHANGED:Lcom/oneplus/base/EventKey;

    sget-object v2, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 139
    const/4 v1, 0x1

    .line 141
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 115
    check-cast p1, Lcom/oneplus/camera/media/MediaInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->add(Lcom/oneplus/camera/media/MediaInfo;)Z

    move-result v0

    return v0
.end method

.method public addMedia(Lcom/oneplus/camera/media/MediaInfo;)V
    .locals 2
    .param p1, "media"    # Lcom/oneplus/camera/media/MediaInfo;

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 149
    invoke-virtual {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$1;-><init>(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;Lcom/oneplus/camera/media/MediaInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->TAG:Ljava/lang/String;

    const-string v1, "addMedia() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->add(Lcom/oneplus/camera/media/MediaInfo;)Z

    goto :goto_0
.end method

.method public addMedia(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/media/MediaInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "media":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    invoke-virtual {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 168
    invoke-virtual {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$2;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$2;-><init>(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->TAG:Ljava/lang/String;

    const-string v1, "addMedia() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    invoke-direct {p0, p1}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->onMediaAdded(Ljava/util/List;)V

    goto :goto_0
.end method

.method public clearMedia()V
    .locals 2

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 189
    invoke-virtual {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$3;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$3;-><init>(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->TAG:Ljava/lang/String;

    const-string v1, "clearMedia() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->onMediaCleared()V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 209
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(I)Lcom/oneplus/camera/media/MediaInfo;
    .locals 1
    .param p1, "location"    # I

    .prologue
    .line 216
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/media/MediaInfo;

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->get(I)Lcom/oneplus/camera/media/MediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 328
    invoke-super {p0}, Lcom/oneplus/base/ListHandlerBaseObject;->release()V

    .line 331
    invoke-direct {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->onMediaCleared()V

    .line 334
    # invokes: Lcom/oneplus/camera/media/MediaListManager;->onMediaListReleased(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;)V
    invoke-static {p0}, Lcom/oneplus/camera/media/MediaListManager;->access$300(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;)V

    .line 335
    return-void
.end method

.method public remove(I)Lcom/oneplus/camera/media/MediaInfo;
    .locals 3
    .param p1, "location"    # I

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->verifyAccess()V

    .line 342
    iget-object v1, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/media/MediaInfo;

    .line 343
    .local v0, "media":Lcom/oneplus/camera/media/MediaInfo;
    sget-object v1, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->EVENT_CHANGED:Lcom/oneplus/base/EventKey;

    sget-object v2, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 344
    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->remove(I)Lcom/oneplus/camera/media/MediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->verifyAccess()V

    .line 350
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    check-cast p1, Lcom/oneplus/camera/media/MediaInfo;

    .end local p1    # "object":Ljava/lang/Object;
    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->onMediaRemoved([Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public replace(Lcom/oneplus/camera/media/MediaInfo;Lcom/oneplus/camera/media/MediaInfo;)Z
    .locals 4
    .param p1, "oldMedia"    # Lcom/oneplus/camera/media/MediaInfo;
    .param p2, "newMedia"    # Lcom/oneplus/camera/media/MediaInfo;

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->verifyAccess()V

    .line 268
    iget-object v2, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    # getter for: Lcom/oneplus/camera/media/MediaListManager;->m_MediaInfoComparator:Ljava/util/Comparator;
    invoke-static {}, Lcom/oneplus/camera/media/MediaListManager;->access$000()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v2, p2, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 269
    .local v0, "index":I
    if-gez v0, :cond_3

    .line 271
    xor-int/lit8 v1, v0, -0x1

    .line 272
    .local v1, "insertIndex":I
    iget-object v2, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 274
    iget-object v2, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 275
    iget-object v2, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    invoke-interface {v2, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 289
    :goto_0
    sget-object v2, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->EVENT_CHANGED:Lcom/oneplus/base/EventKey;

    sget-object v3, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 290
    const/4 v2, 0x1

    .line 292
    .end local v1    # "insertIndex":I
    :goto_1
    return v2

    .line 276
    .restart local v1    # "insertIndex":I
    :cond_0
    add-int/lit8 v2, v1, -0x1

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 277
    iget-object v2, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 280
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 281
    iget-object v2, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    invoke-interface {v2, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 286
    :cond_2
    iget-object v2, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    invoke-interface {v2, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 287
    iget-object v2, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 292
    .end local v1    # "insertIndex":I
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public replaceMedia(Lcom/oneplus/camera/media/MediaInfo;Lcom/oneplus/camera/media/MediaInfo;)V
    .locals 2
    .param p1, "oldMedia"    # Lcom/oneplus/camera/media/MediaInfo;
    .param p2, "newMedia"    # Lcom/oneplus/camera/media/MediaInfo;

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 300
    invoke-virtual {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$4;-><init>(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;Lcom/oneplus/camera/media/MediaInfo;Lcom/oneplus/camera/media/MediaInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->TAG:Ljava/lang/String;

    const-string v1, "replaceMedia() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->replace(Lcom/oneplus/camera/media/MediaInfo;Lcom/oneplus/camera/media/MediaInfo;)Z

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
