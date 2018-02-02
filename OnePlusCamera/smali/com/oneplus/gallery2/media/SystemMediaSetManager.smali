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

.field private final m_MediaCountChangedCB:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Integer;",
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

    .line 77
    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/gallery2/media/MediaSourceComponent;-><init>(Ljava/lang/String;Lcom/oneplus/base/component/ComponentOwner;Ljava/lang/Class;)V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_AllMediaMediaSets:Ljava/util/Map;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_CameraRollMediaSets:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_FavoriteMediaSets:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_OpenedMediaSetLists:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_ScreenshotMediaSets:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_SelfieMediaSets:Ljava/util/Map;

    .line 35
    new-instance v0, Lcom/oneplus/gallery2/media/SystemMediaSetManager$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/SystemMediaSetManager$1;-><init>(Lcom/oneplus/gallery2/media/SystemMediaSetManager;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_MediaCountChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    .line 78
    return-void
.end method

.method static synthetic access$0(Lcom/oneplus/gallery2/media/SystemMediaSetManager;Lcom/oneplus/gallery2/media/MediaSet;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->onMediaCountChanged(Lcom/oneplus/gallery2/media/MediaSet;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$1(Lcom/oneplus/gallery2/media/SystemMediaSetManager;Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;)V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->onSystemMediaSetListReleased(Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;)V

    return-void
.end method

.method private onMediaCountChanged(Lcom/oneplus/gallery2/media/MediaSet;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 96
    invoke-static {p2}, Lcom/oneplus/gallery2/media/MediaSets;->isEmpty(Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 97
    :goto_0
    invoke-static {p3}, Lcom/oneplus/gallery2/media/MediaSets;->isEmpty(Ljava/lang/Integer;)Z

    move-result v4

    if-nez v4, :cond_0

    move v1, v2

    .line 98
    :cond_0
    if-eq v0, v1, :cond_2

    .line 101
    instance-of v0, p1, Lcom/oneplus/gallery2/media/ScreenshotMediaSet;

    if-nez v0, :cond_3

    .line 113
    iget-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_OpenedMediaSetLists:Ljava/util/Map;

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/MediaSet;->getTargetMediaType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v4, v0

    .line 114
    :goto_1
    if-eqz v4, :cond_6

    .line 116
    if-nez v1, :cond_7

    .line 123
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_8

    .line 124
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;

    invoke-virtual {v0, p1, v2}, Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;->removeMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)Z

    .line 123
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    :cond_1
    move v0, v1

    .line 96
    goto :goto_0

    .line 99
    :cond_2
    return-void

    .line 103
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_ScreenshotMediaSets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 105
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p1, :cond_4

    .line 107
    iget-object v3, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_OpenedMediaSetLists:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v4, v0

    .line 108
    goto :goto_1

    :cond_5
    move-object v4, v3

    .line 111
    goto :goto_1

    .line 115
    :cond_6
    return-void

    .line 118
    :cond_7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_3
    if-ltz v1, :cond_9

    .line 119
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;

    invoke-virtual {v0, p1, v2}, Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;->addMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)I

    .line 118
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_3

    .line 125
    :cond_8
    instance-of v0, p1, Lcom/oneplus/gallery2/media/CameraRollMediaSet;

    if-nez v0, :cond_a

    .line 135
    :cond_9
    return-void

    .line 125
    :cond_a
    instance-of v0, p1, Lcom/oneplus/gallery2/media/SelfieMediaSet;

    if-nez v0, :cond_9

    .line 127
    iget-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_SelfieMediaSets:Ljava/util/Map;

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/MediaSet;->getTargetMediaType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaSet;

    .line 128
    if-eqz v0, :cond_9

    .line 130
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v3, v1

    :goto_4
    if-ltz v3, :cond_9

    .line 131
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;->removeMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)Z

    .line 130
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_4
.end method

.method private onSystemMediaSetListReleased(Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;)V
    .locals 6

    .prologue
    .line 158
    iget-object v1, p1, Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;->targetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    .line 159
    iget-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_OpenedMediaSetLists:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 160
    if-nez v0, :cond_1

    .line 161
    :cond_0
    return-void

    .line 160
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 167
    iget-object v2, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onSystemMediaSetListReleased() - All lists are released for media type "

    if-eqz v1, :cond_4

    move-object v0, v1

    :goto_0
    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    iget-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_OpenedMediaSetLists:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_AllMediaMediaSets:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/AllMediaMediaSet;

    .line 172
    if-nez v0, :cond_5

    .line 176
    :goto_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_CameraRollMediaSets:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/CameraRollMediaSet;

    .line 177
    if-nez v0, :cond_6

    .line 181
    :goto_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_SelfieMediaSets:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/SelfieMediaSet;

    .line 182
    if-nez v0, :cond_7

    .line 186
    :goto_3
    iget-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_FavoriteMediaSets:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/FavoriteMediaSet;

    .line 187
    if-nez v0, :cond_8

    .line 191
    :goto_4
    iget-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_ScreenshotMediaSets:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/ScreenshotMediaSet;

    .line 192
    if-nez v0, :cond_9

    .line 196
    :goto_5
    iget-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_OpenedMediaSetLists:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 198
    :goto_6
    return-void

    .line 164
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

    :goto_7
    invoke-static {v2, v3, v4, v5, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 165
    return-void

    :cond_3
    const-string/jumbo v0, "ALL"

    goto :goto_7

    :cond_4
    const-string/jumbo v0, "ALL"

    goto :goto_0

    .line 173
    :cond_5
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/AllMediaMediaSet;->release()V

    goto :goto_1

    .line 178
    :cond_6
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/CameraRollMediaSet;->release()V

    goto :goto_2

    .line 183
    :cond_7
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/SelfieMediaSet;->release()V

    goto :goto_3

    .line 188
    :cond_8
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/FavoriteMediaSet;->release()V

    goto :goto_4

    .line 193
    :cond_9
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/ScreenshotMediaSet;->release()V

    goto :goto_5

    .line 197
    :cond_a
    iget-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSystemMediaSetListReleased() - All lists are released"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method


# virtual methods
.method protected onInitialize()V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0}, Lcom/oneplus/gallery2/media/MediaSourceComponent;->onInitialize()V

    .line 90
    return-void
.end method

.method protected onMediaTableReady()V
    .locals 4

    .prologue
    .line 143
    invoke-super {p0}, Lcom/oneplus/gallery2/media/MediaSourceComponent;->onMediaTableReady()V

    .line 146
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

    .line 148
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_0
    if-ltz v2, :cond_0

    .line 149
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;->ready()V

    .line 148
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_0

    .line 151
    :cond_1
    return-void
.end method

.method public openSystemMediaSetList(Lcom/oneplus/gallery2/media/MediaSetComparator;Lcom/oneplus/gallery2/media/MediaType;I)Lcom/oneplus/gallery2/media/MediaSetList;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 229
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->verifyAccess()V

    .line 230
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->isRunningOrInitializing(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    new-instance v2, Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;

    invoke-direct {v2, p0, p1, p2}, Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;-><init>(Lcom/oneplus/gallery2/media/SystemMediaSetManager;Lcom/oneplus/gallery2/media/MediaSetComparator;Lcom/oneplus/gallery2/media/MediaType;)V

    .line 235
    iget-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_OpenedMediaSetLists:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 236
    if-eqz v0, :cond_2

    .line 241
    :goto_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
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

    .line 245
    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_4

    .line 257
    :goto_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_CameraRollMediaSets:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/CameraRollMediaSet;

    .line 258
    if-eqz v0, :cond_6

    .line 264
    :goto_3
    invoke-static {v0}, Lcom/oneplus/gallery2/media/MediaSets;->isEmpty(Lcom/oneplus/gallery2/media/MediaSet;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 268
    :goto_4
    iget-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_SelfieMediaSets:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/SelfieMediaSet;

    .line 269
    if-eqz v0, :cond_8

    .line 275
    :goto_5
    invoke-static {v0}, Lcom/oneplus/gallery2/media/MediaSets;->isEmpty(Lcom/oneplus/gallery2/media/MediaSet;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 279
    :goto_6
    iget-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_FavoriteMediaSets:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/FavoriteMediaSet;

    .line 280
    if-eqz v0, :cond_a

    .line 286
    :goto_7
    invoke-static {v0}, Lcom/oneplus/gallery2/media/MediaSets;->isEmpty(Lcom/oneplus/gallery2/media/MediaSet;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 290
    :goto_8
    if-nez p2, :cond_c

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_ScreenshotMediaSets:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/ScreenshotMediaSet;

    .line 293
    if-eqz v0, :cond_d

    .line 299
    :goto_9
    invoke-static {v0}, Lcom/oneplus/gallery2/media/MediaSets;->isEmpty(Lcom/oneplus/gallery2/media/MediaSet;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 304
    :goto_a
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->getMediaSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaSource;->PROP_IS_MEDIA_TABLE_READY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_f

    .line 308
    :goto_b
    return-object v2

    .line 231
    :cond_1
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSetList;->EMPTY:Lcom/oneplus/gallery2/media/MediaSetList;

    return-object v0

    .line 238
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 239
    iget-object v1, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_OpenedMediaSetLists:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v0, "ALL"

    goto :goto_1

    .line 247
    :cond_4
    iget-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_AllMediaMediaSets:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/AllMediaMediaSet;

    .line 248
    if-eqz v0, :cond_5

    .line 253
    :goto_c
    invoke-virtual {v2, v0, v5}, Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;->addMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)I

    goto :goto_2

    .line 250
    :cond_5
    new-instance v0, Lcom/oneplus/gallery2/media/AllMediaMediaSet;

    invoke-direct {v0, p2}, Lcom/oneplus/gallery2/media/AllMediaMediaSet;-><init>(Lcom/oneplus/gallery2/media/MediaType;)V

    .line 251
    iget-object v1, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_AllMediaMediaSets:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 260
    :cond_6
    new-instance v1, Lcom/oneplus/gallery2/media/CameraRollMediaSet;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->getMediaSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-direct {v1, v0, p2}, Lcom/oneplus/gallery2/media/CameraRollMediaSet;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaType;)V

    .line 261
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_MediaCountChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v1, v0, v3}, Lcom/oneplus/gallery2/media/CameraRollMediaSet;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 262
    iget-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_CameraRollMediaSets:Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto/16 :goto_3

    .line 265
    :cond_7
    invoke-virtual {v2, v0, v5}, Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;->addMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)I

    goto/16 :goto_4

    .line 271
    :cond_8
    new-instance v1, Lcom/oneplus/gallery2/media/SelfieMediaSet;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->getMediaSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-direct {v1, v0, p2}, Lcom/oneplus/gallery2/media/SelfieMediaSet;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaType;)V

    .line 272
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_MediaCountChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v1, v0, v3}, Lcom/oneplus/gallery2/media/SelfieMediaSet;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 273
    iget-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_SelfieMediaSets:Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto/16 :goto_5

    .line 276
    :cond_9
    invoke-virtual {v2, v0, v5}, Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;->addMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)I

    goto/16 :goto_6

    .line 282
    :cond_a
    new-instance v0, Lcom/oneplus/gallery2/media/FavoriteMediaSet;

    invoke-direct {v0, p2}, Lcom/oneplus/gallery2/media/FavoriteMediaSet;-><init>(Lcom/oneplus/gallery2/media/MediaType;)V

    .line 283
    sget-object v1, Lcom/oneplus/gallery2/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_MediaCountChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v3}, Lcom/oneplus/gallery2/media/FavoriteMediaSet;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 284
    iget-object v1, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_FavoriteMediaSets:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 287
    :cond_b
    invoke-virtual {v2, v0, v5}, Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;->addMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)I

    goto/16 :goto_8

    .line 290
    :cond_c
    sget-object v0, Lcom/oneplus/gallery2/media/MediaType;->PHOTO:Lcom/oneplus/gallery2/media/MediaType;

    if-eq p2, v0, :cond_0

    goto/16 :goto_a

    .line 295
    :cond_d
    new-instance v1, Lcom/oneplus/gallery2/media/ScreenshotMediaSet;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->getMediaSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-direct {v1, v0}, Lcom/oneplus/gallery2/media/ScreenshotMediaSet;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)V

    .line 296
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_MediaCountChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v1, v0, v3}, Lcom/oneplus/gallery2/media/ScreenshotMediaSet;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 297
    iget-object v0, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_ScreenshotMediaSets:Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto/16 :goto_9

    .line 300
    :cond_e
    invoke-virtual {v2, v0, v5}, Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;->addMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)I

    goto/16 :goto_a

    .line 305
    :cond_f
    invoke-virtual {v2}, Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;->ready()V

    goto/16 :goto_b
.end method

.method public openSystemMediaSetList(Lcom/oneplus/gallery2/media/MediaType;I)Lcom/oneplus/gallery2/media/MediaSetList;
    .locals 1

    .prologue
    .line 212
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSetComparator;->DEFAULT:Lcom/oneplus/gallery2/media/MediaSetComparator;

    invoke-virtual {p0, v0, p1, p2}, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->openSystemMediaSetList(Lcom/oneplus/gallery2/media/MediaSetComparator;Lcom/oneplus/gallery2/media/MediaType;I)Lcom/oneplus/gallery2/media/MediaSetList;

    move-result-object v0

    return-object v0
.end method
