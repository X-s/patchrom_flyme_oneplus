.class Lcom/oneplus/gallery/media/MediaManagerImpl$MediaIdIteratorImpl;
.super Ljava/lang/Object;
.source "MediaManagerImpl.java"

# interfaces
.implements Lcom/oneplus/gallery/media/OPMediaManager$MediaIdIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/media/MediaManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaIdIteratorImpl"
.end annotation


# instance fields
.field private m_BaseIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final m_MediaType:Lcom/oneplus/gallery/media/MediaType;

.field private m_Next:Ljava/lang/Long;

.field private m_NextMediaType:Lcom/oneplus/gallery/media/MediaType;

.field final synthetic this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/gallery/media/MediaType;)V
    .locals 0
    .param p2, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;

    .prologue
    .line 538
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaIdIteratorImpl;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 539
    iput-object p2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaIdIteratorImpl;->m_MediaType:Lcom/oneplus/gallery/media/MediaType;

    .line 540
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    .prologue
    .line 546
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaIdIteratorImpl;->m_BaseIterator:Ljava/util/Iterator;

    if-nez v1, :cond_0

    .line 547
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaIdIteratorImpl;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # getter for: Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaTable:Ljava/util/Map;
    invoke-static {v1}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$1400(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaIdIteratorImpl;->m_BaseIterator:Ljava/util/Iterator;

    .line 548
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaIdIteratorImpl;->m_BaseIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 550
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaIdIteratorImpl;->m_BaseIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;

    .line 551
    .local v0, "holder":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;
    iget-wide v2, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;->mediaId:J

    iget-object v1, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;->mediaType:Lcom/oneplus/gallery/media/MediaType;

    invoke-virtual {p0, v2, v3, v1}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaIdIteratorImpl;->selectMediaId(JLcom/oneplus/gallery/media/MediaType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 553
    iget-wide v2, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;->mediaId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaIdIteratorImpl;->m_Next:Ljava/lang/Long;

    .line 554
    iget-object v1, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;->mediaType:Lcom/oneplus/gallery/media/MediaType;

    iput-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaIdIteratorImpl;->m_NextMediaType:Lcom/oneplus/gallery/media/MediaType;

    .line 555
    const/4 v1, 0x1

    .line 558
    .end local v0    # "holder":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 565
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaIdIteratorImpl;->m_Next:Ljava/lang/Long;

    .line 566
    .local v0, "next":Ljava/lang/Long;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaIdIteratorImpl;->m_Next:Ljava/lang/Long;

    .line 567
    if-eqz v0, :cond_0

    .line 568
    return-object v0

    .line 569
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaIdIteratorImpl;->next()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public nextMediaType()Lcom/oneplus/gallery/media/MediaType;
    .locals 2

    .prologue
    .line 576
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaIdIteratorImpl;->m_NextMediaType:Lcom/oneplus/gallery/media/MediaType;

    .line 577
    .local v0, "next":Lcom/oneplus/gallery/media/MediaType;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaIdIteratorImpl;->m_NextMediaType:Lcom/oneplus/gallery/media/MediaType;

    .line 578
    if-eqz v0, :cond_0

    .line 579
    return-object v0

    .line 580
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 587
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot remove media ID"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected selectMediaId(JLcom/oneplus/gallery/media/MediaType;)Z
    .locals 3
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;

    .prologue
    .line 593
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaIdIteratorImpl;->m_MediaType:Lcom/oneplus/gallery/media/MediaType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaIdIteratorImpl;->m_MediaType:Lcom/oneplus/gallery/media/MediaType;

    if-ne p3, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaIdIteratorImpl;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # getter for: Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaRecyclingHandles:Ljava/util/Map;
    invoke-static {v0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$1500(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
