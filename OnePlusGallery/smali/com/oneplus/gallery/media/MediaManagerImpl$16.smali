.class Lcom/oneplus/gallery/media/MediaManagerImpl$16;
.super Lcom/oneplus/gallery/media/MediaManagerImpl$MediaIdIteratorImpl;
.source "MediaManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/MediaManagerImpl;->iterateMediaIdInAlbum(JLcom/oneplus/gallery/media/MediaType;)Lcom/oneplus/gallery/media/OPMediaManager$MediaIdIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

.field final synthetic val$mediaIdSet:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/gallery/media/MediaType;Ljava/util/HashSet;)V
    .locals 0
    .param p2, "x0"    # Lcom/oneplus/gallery/media/MediaType;

    .prologue
    .line 2960
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$16;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    iput-object p3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$16;->val$mediaIdSet:Ljava/util/HashSet;

    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaIdIteratorImpl;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/gallery/media/MediaType;)V

    return-void
.end method


# virtual methods
.method protected selectMediaId(JLcom/oneplus/gallery/media/MediaType;)Z
    .locals 3
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;

    .prologue
    .line 2964
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaIdIteratorImpl;->selectMediaId(JLcom/oneplus/gallery/media/MediaType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2965
    const/4 v0, 0x0

    .line 2966
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$16;->val$mediaIdSet:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
