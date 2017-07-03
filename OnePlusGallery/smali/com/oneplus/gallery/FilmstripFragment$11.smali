.class Lcom/oneplus/gallery/FilmstripFragment$11;
.super Ljava/lang/Object;
.source "FilmstripFragment.java"

# interfaces
.implements Lcom/oneplus/gallery/media/MediaManager$MediaChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/FilmstripFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/FilmstripFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/FilmstripFragment;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/oneplus/gallery/FilmstripFragment$11;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaCreated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 338
    return-void
.end method

.method public onMediaDeleted(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 334
    return-void
.end method

.method public onMediaRecycled(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 330
    return-void
.end method

.method public onMediaRestored(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 326
    return-void
.end method

.method public onMediaUpdated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 4
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 306
    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment$11;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    # getter for: Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;
    invoke-static {v2}, Lcom/oneplus/gallery/FilmstripFragment;->access$1300(Lcom/oneplus/gallery/FilmstripFragment;)Lcom/oneplus/gallery/media/MediaList;

    move-result-object v2

    if-nez v2, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment$11;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    invoke-interface {p4}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    # invokes: Lcom/oneplus/gallery/FilmstripFragment;->searchMediaListIndex(Landroid/net/Uri;)I
    invoke-static {v2, v3}, Lcom/oneplus/gallery/FilmstripFragment;->access$1400(Lcom/oneplus/gallery/FilmstripFragment;Landroid/net/Uri;)I

    move-result v1

    .line 310
    .local v1, "mediaIndex":I
    if-ltz v1, :cond_0

    .line 312
    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment$11;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    # invokes: Lcom/oneplus/gallery/FilmstripFragment;->findFilmstripItemFromPosition(I)Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;
    invoke-static {v2, v1}, Lcom/oneplus/gallery/FilmstripFragment;->access$1500(Lcom/oneplus/gallery/FilmstripFragment;I)Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;

    move-result-object v0

    .line 313
    .local v0, "filmstripItem":Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;
    if-eqz v0, :cond_0

    .line 316
    sget-object v2, Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;->NONE:Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->setImageDecodeState(Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;)V

    .line 319
    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment$11;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    # invokes: Lcom/oneplus/gallery/FilmstripFragment;->checkImageDecoding(I)V
    invoke-static {v2, v1}, Lcom/oneplus/gallery/FilmstripFragment;->access$1600(Lcom/oneplus/gallery/FilmstripFragment;I)V

    goto :goto_0
.end method
