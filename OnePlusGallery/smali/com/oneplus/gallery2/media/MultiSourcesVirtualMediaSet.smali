.class public abstract Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet;
.super Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;
.source "MultiSourcesVirtualMediaSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet$MediaRecyclingHandle;
    }
.end annotation


# instance fields
.field private final m_RecycledMedia:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/Collection;Lcom/oneplus/gallery2/media/MediaType;)V
    .locals 1
    .param p2, "targetMediaType"    # Lcom/oneplus/gallery2/media/MediaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/oneplus/gallery2/media/MediaSource;",
            ">;",
            "Lcom/oneplus/gallery2/media/MediaType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "sources":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/oneplus/gallery2/media/MediaSource;>;"
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;-><init>(Ljava/util/Collection;Lcom/oneplus/gallery2/media/MediaType;)V

    .line 17
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet;->m_RecycledMedia:Ljava/util/Set;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet;Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet$MediaRecyclingHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet$MediaRecyclingHandle;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet;->restoreFromRecycleBin(Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet$MediaRecyclingHandle;)V

    return-void
.end method

.method private restoreFromRecycleBin(Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet$MediaRecyclingHandle;)V
    .locals 3
    .param p1, "handle"    # Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet$MediaRecyclingHandle;

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet;->verifyAccess()V

    .line 140
    sget-object v0, Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet;->m_RecycledMedia:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet$MediaRecyclingHandle;->getMedia()Lcom/oneplus/gallery2/media/Media;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreFromRecycleBin() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet$MediaRecyclingHandle;->getMedia()Lcom/oneplus/gallery2/media/Media;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not in recycle bin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 149
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet$MediaRecyclingHandle;->getMedia()Lcom/oneplus/gallery2/media/Media;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet;->onMediaRestoringFromRecycleBin(Lcom/oneplus/gallery2/media/Media;I)V

    .line 150
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet$MediaRecyclingHandle;->getMedia()Lcom/oneplus/gallery2/media/Media;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet;->addMedia(Lcom/oneplus/gallery2/media/Media;Z)Z

    goto :goto_0
.end method


# virtual methods
.method public deleteMedia(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;
    .locals 5
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "callback"    # Lcom/oneplus/gallery2/media/Media$DeletionCallback;
    .param p3, "flags"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 56
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet;->verifyAccess()V

    .line 57
    sget-object v2, Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-object v0

    .line 59
    :cond_1
    if-eqz p1, :cond_0

    .line 61
    sget v2, Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet;->FLAG_MOVE_TO_RECYCE_BIN:I

    and-int/2addr v2, p3

    if-eqz v2, :cond_4

    move v1, v3

    .line 62
    .local v1, "isRecycling":Z
    :goto_1
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet;->contains(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet;->m_RecycledMedia:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    :cond_2
    if-eqz p2, :cond_3

    .line 67
    invoke-virtual {p2, p1, p3}, Lcom/oneplus/gallery2/media/Media$DeletionCallback;->onDeletionStarted(Lcom/oneplus/gallery2/media/Media;I)V

    .line 70
    :cond_3
    if-eqz v1, :cond_5

    .line 72
    new-instance v0, Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet$MediaRecyclingHandle;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet$MediaRecyclingHandle;-><init>(Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet;Lcom/oneplus/gallery2/media/Media;)V

    .line 73
    .local v0, "handle":Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet$MediaRecyclingHandle;
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet;->m_RecycledMedia:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-virtual {p0, p1, v3}, Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet;->removeMedia(Lcom/oneplus/gallery2/media/Media;Z)Z

    .line 75
    invoke-virtual {p0, p1, v4}, Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet;->onMediaMovedToRecycleBin(Lcom/oneplus/gallery2/media/Media;I)V

    .line 76
    if-eqz p2, :cond_0

    .line 77
    invoke-virtual {p2, p1, v3, p3}, Lcom/oneplus/gallery2/media/Media$DeletionCallback;->onDeletionCompleted(Lcom/oneplus/gallery2/media/Media;ZI)V

    goto :goto_0

    .end local v0    # "handle":Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet$MediaRecyclingHandle;
    .end local v1    # "isRecycling":Z
    :cond_4
    move v1, v4

    .line 61
    goto :goto_1

    .line 82
    .restart local v1    # "isRecycling":Z
    :cond_5
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet;->removeMediaFromSet(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 84
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet;->TAG:Ljava/lang/String;

    const-string v3, "deleteMedia() - Fail to remove media from this set"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    if-eqz p2, :cond_0

    .line 86
    invoke-virtual {p2, p1, v4, p3}, Lcom/oneplus/gallery2/media/Media$DeletionCallback;->onDeletionCompleted(Lcom/oneplus/gallery2/media/Media;ZI)V

    goto :goto_0

    .line 89
    :cond_6
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet;->m_RecycledMedia:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {p0, p1, v3}, Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet;->removeMedia(Lcom/oneplus/gallery2/media/Media;Z)Z

    .line 93
    if-eqz p2, :cond_7

    .line 94
    invoke-virtual {p2, p1, v3, p3}, Lcom/oneplus/gallery2/media/Media$DeletionCallback;->onDeletionCompleted(Lcom/oneplus/gallery2/media/Media;ZI)V

    .line 97
    :cond_7
    new-instance v0, Lcom/oneplus/base/EmptyHandle;

    const-string v2, "DeleteMediaFromVirtualMediaSet"

    invoke-direct {v0, v2}, Lcom/oneplus/base/EmptyHandle;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isVirtual()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method protected onMediaMovedToRecycleBin(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 0
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "flags"    # I

    .prologue
    .line 115
    return-void
.end method

.method protected onMediaRestoringFromRecycleBin(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 0
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "flags"    # I

    .prologue
    .line 124
    return-void
.end method

.method protected abstract removeMediaFromSet(Lcom/oneplus/gallery2/media/Media;)Z
.end method

.method protected shouldContainsMedia(Lcom/oneplus/gallery2/media/Media;I)Z
    .locals 1
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "flags"    # I

    .prologue
    .line 158
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet;->m_RecycledMedia:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
