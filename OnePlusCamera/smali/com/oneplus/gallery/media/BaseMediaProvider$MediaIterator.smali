.class public abstract Lcom/oneplus/gallery/media/BaseMediaProvider$MediaIterator;
.super Ljava/lang/Object;
.source "BaseMediaProvider.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/media/BaseMediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "MediaIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/oneplus/gallery/media/Media;",
        ">;"
    }
.end annotation


# instance fields
.field private final m_BaseIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/oneplus/gallery/media/Media;",
            ">;"
        }
    .end annotation
.end field

.field private final m_Flags:I

.field private m_Next:Lcom/oneplus/gallery/media/Media;

.field final synthetic this$0:Lcom/oneplus/gallery/media/BaseMediaProvider;


# direct methods
.method protected constructor <init>(Lcom/oneplus/gallery/media/BaseMediaProvider;I)V
    .locals 1

    .prologue
    .line 60
    iput-object p1, p0, Lcom/oneplus/gallery/media/BaseMediaProvider$MediaIterator;->this$0:Lcom/oneplus/gallery/media/BaseMediaProvider;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p2, p0, Lcom/oneplus/gallery/media/BaseMediaProvider$MediaIterator;->m_Flags:I

    .line 62
    invoke-static {p1}, Lcom/oneplus/gallery/media/BaseMediaProvider;->access$0(Lcom/oneplus/gallery/media/BaseMediaProvider;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaProvider$MediaIterator;->m_BaseIterator:Ljava/util/Iterator;

    .line 63
    return-void
.end method


# virtual methods
.method protected abstract canIterate(Lcom/oneplus/gallery/media/Media;)Z
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaProvider$MediaIterator;->m_BaseIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaProvider$MediaIterator;->m_BaseIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/Media;

    iput-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaProvider$MediaIterator;->m_Next:Lcom/oneplus/gallery/media/Media;

    .line 79
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaProvider$MediaIterator;->m_Next:Lcom/oneplus/gallery/media/Media;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/media/BaseMediaProvider$MediaIterator;->canIterate(Lcom/oneplus/gallery/media/Media;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaProvider$MediaIterator;->m_Next:Lcom/oneplus/gallery/media/Media;

    goto :goto_0

    .line 80
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 83
    :cond_1
    return v1
.end method

.method protected final isGroupMediaIterated()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 92
    iget v0, p0, Lcom/oneplus/gallery/media/BaseMediaProvider$MediaIterator;->m_Flags:I

    sget v1, Lcom/oneplus/gallery/media/BaseMediaProvider;->FLAG_GROUP_MEDIA:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected final isNormalMediaIterated()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 101
    iget v0, p0, Lcom/oneplus/gallery/media/BaseMediaProvider$MediaIterator;->m_Flags:I

    sget v1, Lcom/oneplus/gallery/media/BaseMediaProvider;->FLAG_NORMAL_MEDIA:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected final isPhotoMediaIterated()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 110
    iget v0, p0, Lcom/oneplus/gallery/media/BaseMediaProvider$MediaIterator;->m_Flags:I

    sget v1, Lcom/oneplus/gallery/media/BaseMediaProvider;->FLAG_PHOTO_ONLY:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected final isRecycledMediaIterated()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 119
    iget v0, p0, Lcom/oneplus/gallery/media/BaseMediaProvider$MediaIterator;->m_Flags:I

    sget v1, Lcom/oneplus/gallery/media/BaseMediaProvider;->FLAG_RECYCLED_MEDIA:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected final isSubMediaIterated()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 128
    iget v0, p0, Lcom/oneplus/gallery/media/BaseMediaProvider$MediaIterator;->m_Flags:I

    sget v1, Lcom/oneplus/gallery/media/BaseMediaProvider;->FLAG_SUB_MEDIA:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected final isVideoMediaIterated()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 137
    iget v0, p0, Lcom/oneplus/gallery/media/BaseMediaProvider$MediaIterator;->m_Flags:I

    sget v1, Lcom/oneplus/gallery/media/BaseMediaProvider;->FLAG_VIDEO_ONLY:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public next()Lcom/oneplus/gallery/media/Media;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 144
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaProvider$MediaIterator;->m_Next:Lcom/oneplus/gallery/media/Media;

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaProvider$MediaIterator;->m_Next:Lcom/oneplus/gallery/media/Media;

    .line 147
    iput-object v1, p0, Lcom/oneplus/gallery/media/BaseMediaProvider$MediaIterator;->m_Next:Lcom/oneplus/gallery/media/Media;

    .line 148
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseMediaProvider$MediaIterator;->next()Lcom/oneplus/gallery/media/Media;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 157
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Cannot remove media"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
