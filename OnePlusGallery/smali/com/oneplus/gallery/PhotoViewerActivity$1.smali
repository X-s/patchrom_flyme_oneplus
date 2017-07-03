.class Lcom/oneplus/gallery/PhotoViewerActivity$1;
.super Ljava/lang/Object;
.source "PhotoViewerActivity.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/PhotoViewerActivity;->onMediaObtained(Lcom/oneplus/gallery/media/Media;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/EventHandler",
        "<",
        "Lcom/oneplus/gallery/ListChangeEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/PhotoViewerActivity;

.field final synthetic val$mediaContentUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/PhotoViewerActivity;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/oneplus/gallery/PhotoViewerActivity$1;->this$0:Lcom/oneplus/gallery/PhotoViewerActivity;

    iput-object p2, p0, Lcom/oneplus/gallery/PhotoViewerActivity$1;->val$mediaContentUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/base/EventSource;
    .param p2, "x1"    # Lcom/oneplus/base/EventKey;
    .param p3, "x2"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 268
    check-cast p3, Lcom/oneplus/gallery/ListChangeEventArgs;

    .end local p3    # "x2":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/gallery/PhotoViewerActivity$1;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/gallery/ListChangeEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/gallery/ListChangeEventArgs;)V
    .locals 4
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p3, "e"    # Lcom/oneplus/gallery/ListChangeEventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/gallery/ListChangeEventArgs;",
            ">;",
            "Lcom/oneplus/gallery/ListChangeEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 272
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/gallery/ListChangeEventArgs;>;"
    invoke-virtual {p3}, Lcom/oneplus/gallery/ListChangeEventArgs;->getStartIndex()I

    move-result v0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p3}, Lcom/oneplus/gallery/ListChangeEventArgs;->getEndIndex()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 274
    iget-object v2, p0, Lcom/oneplus/gallery/PhotoViewerActivity$1;->val$mediaContentUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/oneplus/gallery/PhotoViewerActivity$1;->this$0:Lcom/oneplus/gallery/PhotoViewerActivity;

    # getter for: Lcom/oneplus/gallery/PhotoViewerActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;
    invoke-static {v1}, Lcom/oneplus/gallery/PhotoViewerActivity;->access$000(Lcom/oneplus/gallery/PhotoViewerActivity;)Lcom/oneplus/gallery/media/MediaList;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/oneplus/gallery/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/Media;

    invoke-interface {v1}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    if-ne v2, v1, :cond_1

    .line 275
    iget-object v1, p0, Lcom/oneplus/gallery/PhotoViewerActivity$1;->this$0:Lcom/oneplus/gallery/PhotoViewerActivity;

    # getter for: Lcom/oneplus/gallery/PhotoViewerActivity;->m_FilmstripFragment:Lcom/oneplus/gallery/FilmstripFragment;
    invoke-static {v1}, Lcom/oneplus/gallery/PhotoViewerActivity;->access$100(Lcom/oneplus/gallery/PhotoViewerActivity;)Lcom/oneplus/gallery/FilmstripFragment;

    move-result-object v1

    sget-object v2, Lcom/oneplus/gallery/FilmstripFragment;->PROP_CURRENT_MEDIA_INDEX:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/gallery/FilmstripFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 276
    iget-object v1, p0, Lcom/oneplus/gallery/PhotoViewerActivity$1;->this$0:Lcom/oneplus/gallery/PhotoViewerActivity;

    # getter for: Lcom/oneplus/gallery/PhotoViewerActivity;->m_FilmstripFragment:Lcom/oneplus/gallery/FilmstripFragment;
    invoke-static {v1}, Lcom/oneplus/gallery/PhotoViewerActivity;->access$100(Lcom/oneplus/gallery/PhotoViewerActivity;)Lcom/oneplus/gallery/FilmstripFragment;

    move-result-object v1

    sget-object v2, Lcom/oneplus/gallery/FilmstripFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/gallery/PhotoViewerActivity$1;->this$0:Lcom/oneplus/gallery/PhotoViewerActivity;

    # getter for: Lcom/oneplus/gallery/PhotoViewerActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;
    invoke-static {v3}, Lcom/oneplus/gallery/PhotoViewerActivity;->access$000(Lcom/oneplus/gallery/PhotoViewerActivity;)Lcom/oneplus/gallery/media/MediaList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/gallery/FilmstripFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 277
    iget-object v1, p0, Lcom/oneplus/gallery/PhotoViewerActivity$1;->this$0:Lcom/oneplus/gallery/PhotoViewerActivity;

    # getter for: Lcom/oneplus/gallery/PhotoViewerActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;
    invoke-static {v1}, Lcom/oneplus/gallery/PhotoViewerActivity;->access$000(Lcom/oneplus/gallery/PhotoViewerActivity;)Lcom/oneplus/gallery/media/MediaList;

    move-result-object v1

    sget-object v2, Lcom/oneplus/gallery/media/MediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    invoke-interface {v1, v2, p0}, Lcom/oneplus/gallery/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 281
    :cond_0
    return-void

    .line 272
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
