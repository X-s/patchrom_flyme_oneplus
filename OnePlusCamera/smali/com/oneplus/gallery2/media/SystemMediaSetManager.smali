.class public final Lcom/oneplus/gallery2/media/SystemMediaSetManager;
.super Lcom/oneplus/gallery2/media/MediaSourceComponent;
.source "SystemMediaSetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/gallery2/media/MediaSourceComponent",
        "<",
        "Lcom/oneplus/gallery2/media/MediaStoreMediaSource;",
        ">;"
    }
.end annotation


# static fields
.field public static final FLAG_INCLUDE_ALL_MEDIA:I = 0x1

.field public static final FLAG_INCLUDE_RECENT:I = 0x2


# instance fields
.field private final m_AllMediaMediaSets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/gallery2/media/MediaType;",
            "Lcom/oneplus/gallery2/media/AllMediaMediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private final m_CameraRollMediaSets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/gallery2/media/MediaType;",
            "Lcom/oneplus/gallery2/media/CameraRollMediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private final m_FavoriteMediaSets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/gallery2/media/MediaType;",
            "Lcom/oneplus/gallery2/media/FavoriteMediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private final m_OpenedMediaSetLists:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/gallery2/media/MediaType;",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;",
            ">;>;"
        }
    .end annotation
.end field

.field private final m_RecentMediaSets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/gallery2/media/MediaType;",
            "Lcom/oneplus/gallery2/media/RecentMediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private final m_ScreenshotMediaSets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/gallery2/media/MediaType;",
            "Lcom/oneplus/gallery2/media/ScreenshotMediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private final m_SelfieMediaSets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/gallery2/media/MediaType;",
            "Lcom/oneplus/gallery2/media/SelfieMediaSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/oneplus/base/BaseApplication;)V
    .locals 2

    .prologue
    const-string/jumbo v0, "System media set manager"

    const-class v1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    .line 71
    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/gallery2/media/MediaSourceComponent;-><init>(Ljava/lang/String;Lcom/oneplus/base/component/ComponentOwner;Ljava/lang/Class;)V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_AllMediaMediaSets:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_CameraRollMediaSets:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_FavoriteMediaSets:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_OpenedMediaSetLists:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_RecentMediaSets:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_ScreenshotMediaSets:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_SelfieMediaSets:Ljava/util/Map;

    .line 72
    return-void
.end method

.method static synthetic access$0(Lcom/oneplus/gallery2/media/SystemMediaSetManager;Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->onSystemMediaSetListReleased(Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;)V

    return-void
.end method

.method private onSystemMediaSetListReleased(Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;)V
    .locals 6

    .prologue
    .line 107
    iget-object v1, p1, Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;->targetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    .line 108
    iget-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_OpenedMediaSetLists:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 109
    if-nez v0, :cond_1

    .line 110
    :cond_0
    return-void

    .line 109
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 116
    iget-object v2, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onSystemMediaSetListReleased() - All lists are released for media type "

    if-eqz v1, :cond_4

    move-object v0, v1

    :goto_0
    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_OpenedMediaSetLists:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_AllMediaMediaSets:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/AllMediaMediaSet;

    .line 121
    if-nez v0, :cond_5

    .line 125
    :goto_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_CameraRollMediaSets:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/CameraRollMediaSet;

    .line 126
    if-nez v0, :cond_6

    .line 130
    :goto_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_SelfieMediaSets:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/SelfieMediaSet;

    .line 131
    if-nez v0, :cond_7

    .line 135
    :goto_3
    iget-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_FavoriteMediaSets:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/FavoriteMediaSet;

    .line 136
    if-nez v0, :cond_8

    .line 140
    :goto_4
    iget-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_ScreenshotMediaSets:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/ScreenshotMediaSet;

    .line 141
    if-nez v0, :cond_9

    .line 145
    :goto_5
    iget-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_RecentMediaSets:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/RecentMediaSet;

    .line 146
    if-nez v0, :cond_a

    .line 150
    :goto_6
    iget-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_OpenedMediaSetLists:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 152
    :goto_7
    return-void

    .line 113
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onSystemMediaSetListReleased() - "

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, " list(s) opened for media type "

    if-eqz v1, :cond_3

    move-object v0, v1

    :goto_8
    invoke-static {v2, v3, v4, v5, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    return-void

    :cond_3
    const-string/jumbo v0, "ALL"

    goto :goto_8

    :cond_4
    const-string/jumbo v0, "ALL"

    goto :goto_0

    .line 122
    :cond_5
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/AllMediaMediaSet;->release()V

    goto :goto_1

    .line 127
    :cond_6
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/CameraRollMediaSet;->release()V

    goto :goto_2

    .line 132
    :cond_7
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/SelfieMediaSet;->release()V

    goto :goto_3

    .line 137
    :cond_8
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/FavoriteMediaSet;->release()V

    goto :goto_4

    .line 142
    :cond_9
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/ScreenshotMediaSet;->release()V

    goto :goto_5

    .line 147
    :cond_a
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/RecentMediaSet;->release()V

    goto :goto_6

    .line 151
    :cond_b
    iget-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSystemMediaSetListReleased() - All lists are released"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method


# virtual methods
.method protected onInitialize()V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0}, Lcom/oneplus/gallery2/media/MediaSourceComponent;->onInitialize()V

    .line 84
    return-void
.end method

.method protected onMediaTableReady()V
    .locals 4

    .prologue
    .line 92
    invoke-super {p0}, Lcom/oneplus/gallery2/media/MediaSourceComponent;->onMediaTableReady()V

    .line 95
    iget-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_OpenedMediaSetLists:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 97
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_0
    if-ltz v2, :cond_0

    .line 98
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;->ready()V

    .line 97
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_0

    .line 100
    :cond_1
    return-void
.end method

.method public openSystemMediaSetList(Lcom/oneplus/gallery2/media/MediaSetComparator;Lcom/oneplus/gallery2/media/MediaType;I)Lcom/oneplus/gallery2/media/MediaSetList;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 185
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->verifyAccess()V

    .line 186
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->isRunningOrInitializing(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    new-instance v2, Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;

    invoke-direct {v2, p0, p1, p2}, Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;-><init>(Lcom/oneplus/gallery2/media/SystemMediaSetManager;Lcom/oneplus/gallery2/media/MediaSetComparator;Lcom/oneplus/gallery2/media/MediaType;)V

    .line 191
    iget-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_OpenedMediaSetLists:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 192
    if-eqz v0, :cond_2

    .line 197
    :goto_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v1, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "openSystemMediaSetList() - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " list(s) opened for media type "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_3

    move-object v0, p2

    :goto_1
    invoke-static {v1, v3, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 201
    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_4

    .line 213
    :goto_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_CameraRollMediaSets:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/CameraRollMediaSet;

    .line 214
    if-eqz v0, :cond_6

    .line 219
    :goto_3
    invoke-virtual {v2, v0, v5}, Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;->addMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)I

    .line 222
    iget-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_SelfieMediaSets:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/SelfieMediaSet;

    .line 223
    if-eqz v0, :cond_7

    .line 228
    :goto_4
    invoke-virtual {v2, v0, v5}, Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;->addMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)I

    .line 231
    iget-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_FavoriteMediaSets:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/FavoriteMediaSet;

    .line 232
    if-eqz v0, :cond_8

    .line 237
    :goto_5
    invoke-virtual {v2, v0, v5}, Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;->addMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)I

    .line 240
    if-nez p2, :cond_9

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_ScreenshotMediaSets:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/ScreenshotMediaSet;

    .line 243
    if-eqz v0, :cond_a

    .line 248
    :goto_6
    invoke-virtual {v2, v0, v5}, Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;->addMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)I

    .line 252
    :goto_7
    and-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_b

    .line 264
    :goto_8
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->getMediaSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaSource;->PROP_IS_MEDIA_TABLE_READY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d

    .line 268
    :goto_9
    return-object v2

    .line 187
    :cond_1
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSetList;->EMPTY:Lcom/oneplus/gallery2/media/MediaSetList;

    return-object v0

    .line 194
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 195
    iget-object v1, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_OpenedMediaSetLists:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v0, "ALL"

    goto :goto_1

    .line 203
    :cond_4
    iget-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_AllMediaMediaSets:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/AllMediaMediaSet;

    .line 204
    if-eqz v0, :cond_5

    .line 209
    :goto_a
    invoke-virtual {v2, v0, v5}, Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;->addMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)I

    goto :goto_2

    .line 206
    :cond_5
    new-instance v0, Lcom/oneplus/gallery2/media/AllMediaMediaSet;

    invoke-direct {v0, p2}, Lcom/oneplus/gallery2/media/AllMediaMediaSet;-><init>(Lcom/oneplus/gallery2/media/MediaType;)V

    .line 207
    iget-object v1, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_AllMediaMediaSets:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 216
    :cond_6
    new-instance v1, Lcom/oneplus/gallery2/media/CameraRollMediaSet;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->getMediaSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-direct {v1, v0, p2}, Lcom/oneplus/gallery2/media/CameraRollMediaSet;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaType;)V

    .line 217
    iget-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_CameraRollMediaSets:Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto/16 :goto_3

    .line 225
    :cond_7
    new-instance v1, Lcom/oneplus/gallery2/media/SelfieMediaSet;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->getMediaSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-direct {v1, v0, p2}, Lcom/oneplus/gallery2/media/SelfieMediaSet;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaType;)V

    .line 226
    iget-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_SelfieMediaSets:Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto/16 :goto_4

    .line 234
    :cond_8
    new-instance v0, Lcom/oneplus/gallery2/media/FavoriteMediaSet;

    invoke-direct {v0, p2}, Lcom/oneplus/gallery2/media/FavoriteMediaSet;-><init>(Lcom/oneplus/gallery2/media/MediaType;)V

    .line 235
    iget-object v1, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_FavoriteMediaSets:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 240
    :cond_9
    sget-object v0, Lcom/oneplus/gallery2/media/MediaType;->PHOTO:Lcom/oneplus/gallery2/media/MediaType;

    if-eq p2, v0, :cond_0

    goto :goto_7

    .line 245
    :cond_a
    new-instance v1, Lcom/oneplus/gallery2/media/ScreenshotMediaSet;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->getMediaSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-direct {v1, v0}, Lcom/oneplus/gallery2/media/ScreenshotMediaSet;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)V

    .line 246
    iget-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_ScreenshotMediaSets:Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto/16 :goto_6

    .line 254
    :cond_b
    iget-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_RecentMediaSets:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/RecentMediaSet;

    .line 255
    if-eqz v0, :cond_c

    .line 260
    :goto_b
    invoke-virtual {v2, v0, v5}, Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;->addMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)I

    goto/16 :goto_8

    .line 257
    :cond_c
    new-instance v0, Lcom/oneplus/gallery2/media/RecentMediaSet;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->getMediaSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v1

    invoke-direct {v0, v1, p2, v5}, Lcom/oneplus/gallery2/media/RecentMediaSet;-><init>(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/MediaType;Z)V

    .line 258
    iget-object v1, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_RecentMediaSets:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 265
    :cond_d
    invoke-virtual {v2}, Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;->ready()V

    goto/16 :goto_9
.end method

.method public openSystemMediaSetList(Lcom/oneplus/gallery2/media/MediaType;I)Lcom/oneplus/gallery2/media/MediaSetList;
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSetComparator;->DEFAULT:Lcom/oneplus/gallery2/media/MediaSetComparator;

    invoke-virtual {p0, v0, p1, p2}, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->openSystemMediaSetList(Lcom/oneplus/gallery2/media/MediaSetComparator;Lcom/oneplus/gallery2/media/MediaType;I)Lcom/oneplus/gallery2/media/MediaSetList;

    move-result-object v0

    return-object v0
.end method
