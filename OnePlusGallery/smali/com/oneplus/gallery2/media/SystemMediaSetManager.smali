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
    .param p1, "app"    # Lcom/oneplus/base/BaseApplication;

    .prologue
    .line 77
    const-string v0, "System media set manager"

    const-class v1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

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

.method static synthetic access$000(Lcom/oneplus/gallery2/media/SystemMediaSetManager;Lcom/oneplus/gallery2/media/MediaSet;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/SystemMediaSetManager;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/MediaSet;
    .param p2, "x2"    # Ljava/lang/Integer;
    .param p3, "x3"    # Ljava/lang/Integer;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->onMediaCountChanged(Lcom/oneplus/gallery2/media/MediaSet;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/gallery2/media/SystemMediaSetManager;Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/SystemMediaSetManager;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->onSystemMediaSetListReleased(Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;)V

    return-void
.end method

.method private onMediaCountChanged(Lcom/oneplus/gallery2/media/MediaSet;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 10
    .param p1, "mediaSet"    # Lcom/oneplus/gallery2/media/MediaSet;
    .param p2, "prevMediaCount"    # Ljava/lang/Integer;
    .param p3, "mediaCount"    # Ljava/lang/Integer;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 96
    invoke-static {p2}, Lcom/oneplus/gallery2/media/MediaSets;->isEmpty(Ljava/lang/Integer;)Z

    move-result v9

    if-nez v9, :cond_1

    move v5, v8

    .line 97
    .local v5, "prevState":Z
    :goto_0
    invoke-static {p3}, Lcom/oneplus/gallery2/media/MediaSets;->isEmpty(Ljava/lang/Integer;)Z

    move-result v9

    if-nez v9, :cond_2

    move v4, v8

    .line 98
    .local v4, "newState":Z
    :goto_1
    if-ne v5, v4, :cond_3

    .line 135
    :cond_0
    return-void

    .end local v4    # "newState":Z
    .end local v5    # "prevState":Z
    :cond_1
    move v5, v7

    .line 96
    goto :goto_0

    .restart local v5    # "prevState":Z
    :cond_2
    move v4, v7

    .line 97
    goto :goto_1

    .line 100
    .restart local v4    # "newState":Z
    :cond_3
    const/4 v3, 0x0

    .line 101
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;>;"
    instance-of v7, p1, Lcom/oneplus/gallery2/media/ScreenshotMediaSet;

    if-eqz v7, :cond_6

    .line 103
    iget-object v7, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_ScreenshotMediaSets:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 105
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/oneplus/gallery2/media/MediaType;Lcom/oneplus/gallery2/media/ScreenshotMediaSet;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, p1, :cond_4

    .line 107
    iget-object v7, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_OpenedMediaSetLists:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;>;"
    check-cast v3, Ljava/util/List;

    .line 114
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/oneplus/gallery2/media/MediaType;Lcom/oneplus/gallery2/media/ScreenshotMediaSet;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;>;"
    :cond_5
    :goto_2
    if-eqz v3, :cond_0

    .line 116
    if-eqz v4, :cond_7

    .line 118
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .local v1, "i":I
    :goto_3
    if-ltz v1, :cond_0

    .line 119
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;

    invoke-virtual {v7, p1, v8}, Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;->addMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)I

    .line 118
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 113
    .end local v1    # "i":I
    :cond_6
    iget-object v7, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_OpenedMediaSetLists:Ljava/util/Map;

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/MediaSet;->getTargetMediaType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;>;"
    check-cast v3, Ljava/util/List;

    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;>;"
    goto :goto_2

    .line 123
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .restart local v1    # "i":I
    :goto_4
    if-ltz v1, :cond_8

    .line 124
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;

    invoke-virtual {v7, p1, v8}, Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;->removeMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)Z

    .line 123
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 125
    :cond_8
    instance-of v7, p1, Lcom/oneplus/gallery2/media/CameraRollMediaSet;

    if-eqz v7, :cond_0

    instance-of v7, p1, Lcom/oneplus/gallery2/media/SelfieMediaSet;

    if-nez v7, :cond_0

    .line 127
    iget-object v7, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_SelfieMediaSets:Ljava/util/Map;

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/MediaSet;->getTargetMediaType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/gallery2/media/MediaSet;

    .line 128
    .local v6, "selfieSet":Lcom/oneplus/gallery2/media/MediaSet;
    if-eqz v6, :cond_0

    .line 130
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    :goto_5
    if-ltz v1, :cond_0

    .line 131
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;

    invoke-virtual {v7, v6, v8}, Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;->removeMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)Z

    .line 130
    add-int/lit8 v1, v1, -0x1

    goto :goto_5
.end method

.method private onSystemMediaSetListReleased(Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;)V
    .locals 11
    .param p1, "mediaSetList"    # Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;

    .prologue
    .line 158
    iget-object v6, p1, Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;->targetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    .line 159
    .local v6, "targetMediaType":Lcom/oneplus/gallery2/media/MediaType;
    iget-object v7, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_OpenedMediaSetLists:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 160
    .local v3, "openedList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 198
    .end local v6    # "targetMediaType":Lcom/oneplus/gallery2/media/MediaType;
    :cond_0
    :goto_0
    return-void

    .line 162
    .restart local v6    # "targetMediaType":Lcom/oneplus/gallery2/media/MediaType;
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 164
    iget-object v7, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->TAG:Ljava/lang/String;

    const-string v8, "onSystemMediaSetListReleased() - "

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, " list(s) opened for media type "

    if-nez v6, :cond_2

    const-string v6, "ALL"

    .end local v6    # "targetMediaType":Lcom/oneplus/gallery2/media/MediaType;
    :cond_2
    invoke-static {v7, v8, v9, v10, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 167
    .restart local v6    # "targetMediaType":Lcom/oneplus/gallery2/media/MediaType;
    :cond_3
    iget-object v8, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->TAG:Ljava/lang/String;

    const-string v9, "onSystemMediaSetListReleased() - All lists are released for media type "

    if-nez v6, :cond_9

    const-string v7, "ALL"

    :goto_1
    invoke-static {v8, v9, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    iget-object v7, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_OpenedMediaSetLists:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v7, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_AllMediaMediaSets:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/AllMediaMediaSet;

    .line 172
    .local v0, "allMediaSet":Lcom/oneplus/gallery2/media/AllMediaMediaSet;
    if-eqz v0, :cond_4

    .line 173
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/AllMediaMediaSet;->release()V

    .line 176
    :cond_4
    iget-object v7, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_CameraRollMediaSets:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/CameraRollMediaSet;

    .line 177
    .local v1, "cameraSet":Lcom/oneplus/gallery2/media/CameraRollMediaSet;
    if-eqz v1, :cond_5

    .line 178
    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/CameraRollMediaSet;->release()V

    .line 181
    :cond_5
    iget-object v7, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_SelfieMediaSets:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/gallery2/media/SelfieMediaSet;

    .line 182
    .local v5, "selfieSet":Lcom/oneplus/gallery2/media/SelfieMediaSet;
    if-eqz v5, :cond_6

    .line 183
    invoke-virtual {v5}, Lcom/oneplus/gallery2/media/SelfieMediaSet;->release()V

    .line 186
    :cond_6
    iget-object v7, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_FavoriteMediaSets:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/FavoriteMediaSet;

    .line 187
    .local v2, "favoriteSet":Lcom/oneplus/gallery2/media/FavoriteMediaSet;
    if-eqz v2, :cond_7

    .line 188
    invoke-virtual {v2}, Lcom/oneplus/gallery2/media/FavoriteMediaSet;->release()V

    .line 191
    :cond_7
    iget-object v7, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_ScreenshotMediaSets:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery2/media/ScreenshotMediaSet;

    .line 192
    .local v4, "screenshotSet":Lcom/oneplus/gallery2/media/ScreenshotMediaSet;
    if-eqz v4, :cond_8

    .line 193
    invoke-virtual {v4}, Lcom/oneplus/gallery2/media/ScreenshotMediaSet;->release()V

    .line 196
    :cond_8
    iget-object v7, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_OpenedMediaSetLists:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 197
    iget-object v7, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->TAG:Ljava/lang/String;

    const-string v8, "onSystemMediaSetListReleased() - All lists are released"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "allMediaSet":Lcom/oneplus/gallery2/media/AllMediaMediaSet;
    .end local v1    # "cameraSet":Lcom/oneplus/gallery2/media/CameraRollMediaSet;
    .end local v2    # "favoriteSet":Lcom/oneplus/gallery2/media/FavoriteMediaSet;
    .end local v4    # "screenshotSet":Lcom/oneplus/gallery2/media/ScreenshotMediaSet;
    .end local v5    # "selfieSet":Lcom/oneplus/gallery2/media/SelfieMediaSet;
    :cond_9
    move-object v7, v6

    .line 167
    goto :goto_1
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
    iget-object v3, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_OpenedMediaSetLists:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 148
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 149
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;

    invoke-virtual {v3}, Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;->ready()V

    .line 148
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 151
    .end local v0    # "i":I
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;>;"
    :cond_1
    return-void
.end method

.method public openSystemMediaSetList(Lcom/oneplus/gallery2/media/MediaSetComparator;Lcom/oneplus/gallery2/media/MediaType;I)Lcom/oneplus/gallery2/media/MediaSetList;
    .locals 11
    .param p1, "comparator"    # Lcom/oneplus/gallery2/media/MediaSetComparator;
    .param p2, "targetMediaType"    # Lcom/oneplus/gallery2/media/MediaType;
    .param p3, "flags"    # I

    .prologue
    const/4 v10, 0x0

    .line 229
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->verifyAccess()V

    .line 230
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->isRunningOrInitializing(Z)Z

    move-result v7

    if-nez v7, :cond_1

    .line 231
    sget-object v3, Lcom/oneplus/gallery2/media/MediaSetList;->EMPTY:Lcom/oneplus/gallery2/media/MediaSetList;

    .line 308
    :cond_0
    :goto_0
    return-object v3

    .line 234
    :cond_1
    new-instance v3, Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;

    invoke-direct {v3, p0, p1, p2}, Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;-><init>(Lcom/oneplus/gallery2/media/SystemMediaSetManager;Lcom/oneplus/gallery2/media/MediaSetComparator;Lcom/oneplus/gallery2/media/MediaType;)V

    .line 235
    .local v3, "mediaSetList":Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;
    iget-object v7, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_OpenedMediaSetLists:Ljava/util/Map;

    invoke-interface {v7, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 236
    .local v4, "openedList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;>;"
    if-nez v4, :cond_2

    .line 238
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "openedList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .restart local v4    # "openedList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;>;"
    iget-object v7, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_OpenedMediaSetLists:Ljava/util/Map;

    invoke-interface {v7, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    :cond_2
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v8, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "openSystemMediaSetList() - "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " list(s) opened for media type "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    if-nez p2, :cond_e

    const-string v7, "ALL"

    :goto_1
    invoke-static {v8, v9, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 245
    and-int/lit8 v7, p3, 0x1

    if-eqz v7, :cond_4

    .line 247
    iget-object v7, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_AllMediaMediaSets:Ljava/util/Map;

    invoke-interface {v7, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/AllMediaMediaSet;

    .line 248
    .local v2, "mediaSet":Lcom/oneplus/gallery2/media/AllMediaMediaSet;
    if-nez v2, :cond_3

    .line 250
    new-instance v2, Lcom/oneplus/gallery2/media/AllMediaMediaSet;

    .end local v2    # "mediaSet":Lcom/oneplus/gallery2/media/AllMediaMediaSet;
    invoke-direct {v2, p2}, Lcom/oneplus/gallery2/media/AllMediaMediaSet;-><init>(Lcom/oneplus/gallery2/media/MediaType;)V

    .line 251
    .restart local v2    # "mediaSet":Lcom/oneplus/gallery2/media/AllMediaMediaSet;
    iget-object v7, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_AllMediaMediaSets:Ljava/util/Map;

    invoke-interface {v7, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :cond_3
    invoke-virtual {v3, v2, v10}, Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;->addMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)I

    .line 257
    .end local v2    # "mediaSet":Lcom/oneplus/gallery2/media/AllMediaMediaSet;
    :cond_4
    iget-object v7, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_CameraRollMediaSets:Ljava/util/Map;

    invoke-interface {v7, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/CameraRollMediaSet;

    .line 258
    .local v0, "cameraSet":Lcom/oneplus/gallery2/media/CameraRollMediaSet;
    if-nez v0, :cond_5

    .line 260
    new-instance v0, Lcom/oneplus/gallery2/media/CameraRollMediaSet;

    .end local v0    # "cameraSet":Lcom/oneplus/gallery2/media/CameraRollMediaSet;
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->getMediaSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v7

    check-cast v7, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-direct {v0, v7, p2}, Lcom/oneplus/gallery2/media/CameraRollMediaSet;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaType;)V

    .line 261
    .restart local v0    # "cameraSet":Lcom/oneplus/gallery2/media/CameraRollMediaSet;
    sget-object v7, Lcom/oneplus/gallery2/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v8, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_MediaCountChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v7, v8}, Lcom/oneplus/gallery2/media/CameraRollMediaSet;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 262
    iget-object v7, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_CameraRollMediaSets:Ljava/util/Map;

    invoke-interface {v7, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    :cond_5
    invoke-static {v0}, Lcom/oneplus/gallery2/media/MediaSets;->isEmpty(Lcom/oneplus/gallery2/media/MediaSet;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 265
    invoke-virtual {v3, v0, v10}, Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;->addMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)I

    .line 268
    :cond_6
    iget-object v7, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_SelfieMediaSets:Ljava/util/Map;

    invoke-interface {v7, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/gallery2/media/SelfieMediaSet;

    .line 269
    .local v6, "selfieSet":Lcom/oneplus/gallery2/media/SelfieMediaSet;
    if-nez v6, :cond_7

    .line 271
    new-instance v6, Lcom/oneplus/gallery2/media/SelfieMediaSet;

    .end local v6    # "selfieSet":Lcom/oneplus/gallery2/media/SelfieMediaSet;
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->getMediaSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v7

    check-cast v7, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-direct {v6, v7, p2}, Lcom/oneplus/gallery2/media/SelfieMediaSet;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaType;)V

    .line 272
    .restart local v6    # "selfieSet":Lcom/oneplus/gallery2/media/SelfieMediaSet;
    sget-object v7, Lcom/oneplus/gallery2/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v8, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_MediaCountChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v6, v7, v8}, Lcom/oneplus/gallery2/media/SelfieMediaSet;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 273
    iget-object v7, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_SelfieMediaSets:Ljava/util/Map;

    invoke-interface {v7, p2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    :cond_7
    invoke-static {v6}, Lcom/oneplus/gallery2/media/MediaSets;->isEmpty(Lcom/oneplus/gallery2/media/MediaSet;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 276
    invoke-virtual {v3, v6, v10}, Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;->addMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)I

    .line 279
    :cond_8
    iget-object v7, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_FavoriteMediaSets:Ljava/util/Map;

    invoke-interface {v7, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/FavoriteMediaSet;

    .line 280
    .local v1, "favoriteSet":Lcom/oneplus/gallery2/media/FavoriteMediaSet;
    if-nez v1, :cond_9

    .line 282
    new-instance v1, Lcom/oneplus/gallery2/media/FavoriteMediaSet;

    .end local v1    # "favoriteSet":Lcom/oneplus/gallery2/media/FavoriteMediaSet;
    invoke-direct {v1, p2}, Lcom/oneplus/gallery2/media/FavoriteMediaSet;-><init>(Lcom/oneplus/gallery2/media/MediaType;)V

    .line 283
    .restart local v1    # "favoriteSet":Lcom/oneplus/gallery2/media/FavoriteMediaSet;
    sget-object v7, Lcom/oneplus/gallery2/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v8, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_MediaCountChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v1, v7, v8}, Lcom/oneplus/gallery2/media/FavoriteMediaSet;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 284
    iget-object v7, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_FavoriteMediaSets:Ljava/util/Map;

    invoke-interface {v7, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    :cond_9
    invoke-static {v1}, Lcom/oneplus/gallery2/media/MediaSets;->isEmpty(Lcom/oneplus/gallery2/media/MediaSet;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 287
    invoke-virtual {v3, v1, v10}, Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;->addMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)I

    .line 290
    :cond_a
    if-eqz p2, :cond_b

    sget-object v7, Lcom/oneplus/gallery2/media/MediaType;->PHOTO:Lcom/oneplus/gallery2/media/MediaType;

    if-ne p2, v7, :cond_d

    .line 292
    :cond_b
    iget-object v7, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_ScreenshotMediaSets:Ljava/util/Map;

    invoke-interface {v7, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/gallery2/media/ScreenshotMediaSet;

    .line 293
    .local v5, "screenshotSet":Lcom/oneplus/gallery2/media/ScreenshotMediaSet;
    if-nez v5, :cond_c

    .line 295
    new-instance v5, Lcom/oneplus/gallery2/media/ScreenshotMediaSet;

    .end local v5    # "screenshotSet":Lcom/oneplus/gallery2/media/ScreenshotMediaSet;
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->getMediaSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v7

    check-cast v7, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-direct {v5, v7}, Lcom/oneplus/gallery2/media/ScreenshotMediaSet;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)V

    .line 296
    .restart local v5    # "screenshotSet":Lcom/oneplus/gallery2/media/ScreenshotMediaSet;
    sget-object v7, Lcom/oneplus/gallery2/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v8, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_MediaCountChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v5, v7, v8}, Lcom/oneplus/gallery2/media/ScreenshotMediaSet;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 297
    iget-object v7, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->m_ScreenshotMediaSets:Ljava/util/Map;

    invoke-interface {v7, p2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :cond_c
    invoke-static {v5}, Lcom/oneplus/gallery2/media/MediaSets;->isEmpty(Lcom/oneplus/gallery2/media/MediaSet;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 300
    invoke-virtual {v3, v5, v10}, Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;->addMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)I

    .line 304
    .end local v5    # "screenshotSet":Lcom/oneplus/gallery2/media/ScreenshotMediaSet;
    :cond_d
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->getMediaSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v7

    check-cast v7, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    sget-object v8, Lcom/oneplus/gallery2/media/MediaSource;->PROP_IS_MEDIA_TABLE_READY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v7, v8}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 305
    invoke-virtual {v3}, Lcom/oneplus/gallery2/media/SystemMediaSetManager$MediaSetListImpl;->ready()V

    goto/16 :goto_0

    .end local v0    # "cameraSet":Lcom/oneplus/gallery2/media/CameraRollMediaSet;
    .end local v1    # "favoriteSet":Lcom/oneplus/gallery2/media/FavoriteMediaSet;
    .end local v6    # "selfieSet":Lcom/oneplus/gallery2/media/SelfieMediaSet;
    :cond_e
    move-object v7, p2

    .line 242
    goto/16 :goto_1
.end method

.method public openSystemMediaSetList(Lcom/oneplus/gallery2/media/MediaType;I)Lcom/oneplus/gallery2/media/MediaSetList;
    .locals 1
    .param p1, "targetMediaType"    # Lcom/oneplus/gallery2/media/MediaType;
    .param p2, "flags"    # I

    .prologue
    .line 212
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSetComparator;->DEFAULT:Lcom/oneplus/gallery2/media/MediaSetComparator;

    invoke-virtual {p0, v0, p1, p2}, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->openSystemMediaSetList(Lcom/oneplus/gallery2/media/MediaSetComparator;Lcom/oneplus/gallery2/media/MediaType;I)Lcom/oneplus/gallery2/media/MediaSetList;

    move-result-object v0

    return-object v0
.end method
