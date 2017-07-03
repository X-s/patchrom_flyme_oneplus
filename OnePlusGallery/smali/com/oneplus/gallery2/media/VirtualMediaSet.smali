.class public abstract Lcom/oneplus/gallery2/media/VirtualMediaSet;
.super Lcom/oneplus/gallery2/media/BaseMediaSet;
.source "VirtualMediaSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/media/VirtualMediaSet$MediaRecyclingHandle;
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
.method protected constructor <init>(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/MediaType;)V
    .locals 1
    .param p1, "source"    # Lcom/oneplus/gallery2/media/MediaSource;
    .param p2, "targetMediaType"    # Lcom/oneplus/gallery2/media/MediaType;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/media/BaseMediaSet;-><init>(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/MediaType;)V

    .line 16
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/VirtualMediaSet;->m_RecycledMedia:Ljava/util/Set;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery2/media/VirtualMediaSet;Lcom/oneplus/gallery2/media/VirtualMediaSet$MediaRecyclingHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/VirtualMediaSet;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/VirtualMediaSet$MediaRecyclingHandle;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/VirtualMediaSet;->restoreFromRecycleBin(Lcom/oneplus/gallery2/media/VirtualMediaSet$MediaRecyclingHandle;)V

    return-void
.end method

.method private restoreFromRecycleBin(Lcom/oneplus/gallery2/media/VirtualMediaSet$MediaRecyclingHandle;)V
    .locals 3
    .param p1, "handle"    # Lcom/oneplus/gallery2/media/VirtualMediaSet$MediaRecyclingHandle;

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/VirtualMediaSet;->verifyAccess()V

    .line 137
    sget-object v0, Lcom/oneplus/gallery2/media/VirtualMediaSet;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/VirtualMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/VirtualMediaSet;->m_RecycledMedia:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/VirtualMediaSet$MediaRecyclingHandle;->getMedia()Lcom/oneplus/gallery2/media/Media;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/oneplus/gallery2/media/VirtualMediaSet;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreFromRecycleBin() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/VirtualMediaSet$MediaRecyclingHandle;->getMedia()Lcom/oneplus/gallery2/media/Media;

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

    .line 146
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/VirtualMediaSet$MediaRecyclingHandle;->getMedia()Lcom/oneplus/gallery2/media/Media;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/VirtualMediaSet;->onMediaRestoringFromRecycleBin(Lcom/oneplus/gallery2/media/Media;I)V

    .line 147
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/VirtualMediaSet$MediaRecyclingHandle;->getMedia()Lcom/oneplus/gallery2/media/Media;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/VirtualMediaSet;->addMedia(Lcom/oneplus/gallery2/media/Media;Z)Z

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

    .line 53
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/VirtualMediaSet;->verifyAccess()V

    .line 54
    sget-object v2, Lcom/oneplus/gallery2/media/VirtualMediaSet;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/media/VirtualMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-object v0

    .line 56
    :cond_1
    if-eqz p1, :cond_0

    .line 58
    sget v2, Lcom/oneplus/gallery2/media/VirtualMediaSet;->FLAG_MOVE_TO_RECYCE_BIN:I

    and-int/2addr v2, p3

    if-eqz v2, :cond_4

    move v1, v3

    .line 59
    .local v1, "isRecycling":Z
    :goto_1
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/VirtualMediaSet;->contains(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery2/media/VirtualMediaSet;->m_RecycledMedia:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    :cond_2
    if-eqz p2, :cond_3

    .line 64
    invoke-virtual {p2, p1, p3}, Lcom/oneplus/gallery2/media/Media$DeletionCallback;->onDeletionStarted(Lcom/oneplus/gallery2/media/Media;I)V

    .line 67
    :cond_3
    if-eqz v1, :cond_5

    .line 69
    new-instance v0, Lcom/oneplus/gallery2/media/VirtualMediaSet$MediaRecyclingHandle;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/gallery2/media/VirtualMediaSet$MediaRecyclingHandle;-><init>(Lcom/oneplus/gallery2/media/VirtualMediaSet;Lcom/oneplus/gallery2/media/Media;)V

    .line 70
    .local v0, "handle":Lcom/oneplus/gallery2/media/VirtualMediaSet$MediaRecyclingHandle;
    iget-object v2, p0, Lcom/oneplus/gallery2/media/VirtualMediaSet;->m_RecycledMedia:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-virtual {p0, p1, v3}, Lcom/oneplus/gallery2/media/VirtualMediaSet;->removeMedia(Lcom/oneplus/gallery2/media/Media;Z)Z

    .line 72
    invoke-virtual {p0, p1, v4}, Lcom/oneplus/gallery2/media/VirtualMediaSet;->onMediaMovedToRecycleBin(Lcom/oneplus/gallery2/media/Media;I)V

    .line 73
    if-eqz p2, :cond_0

    .line 74
    invoke-virtual {p2, p1, v3, p3}, Lcom/oneplus/gallery2/media/Media$DeletionCallback;->onDeletionCompleted(Lcom/oneplus/gallery2/media/Media;ZI)V

    goto :goto_0

    .end local v0    # "handle":Lcom/oneplus/gallery2/media/VirtualMediaSet$MediaRecyclingHandle;
    .end local v1    # "isRecycling":Z
    :cond_4
    move v1, v4

    .line 58
    goto :goto_1

    .line 79
    .restart local v1    # "isRecycling":Z
    :cond_5
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/VirtualMediaSet;->removeMediaFromSet(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 81
    iget-object v2, p0, Lcom/oneplus/gallery2/media/VirtualMediaSet;->TAG:Ljava/lang/String;

    const-string v3, "deleteMedia() - Fail to remove media from this set"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    if-eqz p2, :cond_0

    .line 83
    invoke-virtual {p2, p1, v4, p3}, Lcom/oneplus/gallery2/media/Media$DeletionCallback;->onDeletionCompleted(Lcom/oneplus/gallery2/media/Media;ZI)V

    goto :goto_0

    .line 86
    :cond_6
    iget-object v2, p0, Lcom/oneplus/gallery2/media/VirtualMediaSet;->m_RecycledMedia:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 87
    invoke-virtual {p0, p1, v3}, Lcom/oneplus/gallery2/media/VirtualMediaSet;->removeMedia(Lcom/oneplus/gallery2/media/Media;Z)Z

    .line 90
    if-eqz p2, :cond_7

    .line 91
    invoke-virtual {p2, p1, v3, p3}, Lcom/oneplus/gallery2/media/Media$DeletionCallback;->onDeletionCompleted(Lcom/oneplus/gallery2/media/Media;ZI)V

    .line 94
    :cond_7
    new-instance v0, Lcom/oneplus/base/EmptyHandle;

    const-string v2, "DeleteMediaFromVirtualMediaSet"

    invoke-direct {v0, v2}, Lcom/oneplus/base/EmptyHandle;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isVirtual()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method protected onMediaMovedToRecycleBin(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 0
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "flags"    # I

    .prologue
    .line 112
    return-void
.end method

.method protected onMediaRestoringFromRecycleBin(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 0
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "flags"    # I

    .prologue
    .line 121
    return-void
.end method

.method protected abstract removeMediaFromSet(Lcom/oneplus/gallery2/media/Media;)Z
.end method

.method protected shouldContainsMedia(Lcom/oneplus/gallery2/media/Media;I)Z
    .locals 1
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "flags"    # I

    .prologue
    .line 155
    iget-object v0, p0, Lcom/oneplus/gallery2/media/VirtualMediaSet;->m_RecycledMedia:Ljava/util/Set;

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
