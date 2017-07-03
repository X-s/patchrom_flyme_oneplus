.class Lcom/oneplus/gallery2/BurstViewerFragment$14;
.super Lcom/oneplus/gallery2/media/MediaChangeCallback;
.source "BurstViewerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/BurstViewerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/BurstViewerFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/BurstViewerFragment;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$14;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaUpdated(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/Media;I)V
    .locals 6
    .param p1, "source"    # Lcom/oneplus/gallery2/media/MediaSource;
    .param p2, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p3, "flags"    # I

    .prologue
    .line 353
    iget-object v4, p0, Lcom/oneplus/gallery2/BurstViewerFragment$14;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    # getter for: Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;
    invoke-static {v4}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$700(Lcom/oneplus/gallery2/BurstViewerFragment;)Lcom/oneplus/gallery2/media/MediaList;

    move-result-object v4

    if-nez v4, :cond_1

    .line 372
    :cond_0
    return-void

    .line 356
    :cond_1
    iget-object v4, p0, Lcom/oneplus/gallery2/BurstViewerFragment$14;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    invoke-interface {p2}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    # invokes: Lcom/oneplus/gallery2/BurstViewerFragment;->searchMediaListIndex(Landroid/net/Uri;)I
    invoke-static {v4, v5}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$1800(Lcom/oneplus/gallery2/BurstViewerFragment;Landroid/net/Uri;)I

    move-result v3

    .line 357
    .local v3, "mediaIndex":I
    if-ltz v3, :cond_0

    .line 359
    iget-object v4, p0, Lcom/oneplus/gallery2/BurstViewerFragment$14;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    # getter for: Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripItemMaps:Ljava/util/Map;
    invoke-static {v4}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$1900(Lcom/oneplus/gallery2/BurstViewerFragment;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 361
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;>;"
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;

    .line 362
    .local v1, "item":Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;
    if-eqz v1, :cond_2

    .line 365
    sget-object v4, Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;->NONE:Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;

    invoke-virtual {v1, v4}, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;->setImageDecodeState(Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;)V

    .line 368
    iget-object v4, p0, Lcom/oneplus/gallery2/BurstViewerFragment$14;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    const/4 v5, 0x1

    # invokes: Lcom/oneplus/gallery2/BurstViewerFragment;->checkImageDecoding(IZ)V
    invoke-static {v4, v3, v5}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$2000(Lcom/oneplus/gallery2/BurstViewerFragment;IZ)V

    goto :goto_0
.end method
