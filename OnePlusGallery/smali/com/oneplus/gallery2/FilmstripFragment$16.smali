.class Lcom/oneplus/gallery2/FilmstripFragment$16;
.super Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;
.source "FilmstripFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/FilmstripFragment;->deletePage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/FilmstripFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/FilmstripFragment;)V
    .locals 0

    .prologue
    .line 1407
    iput-object p1, p0, Lcom/oneplus/gallery2/FilmstripFragment$16;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    invoke-direct {p0}, Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeletionCompleted(Lcom/oneplus/gallery2/media/Media;Z)V
    .locals 2
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "success"    # Z

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$16;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    # getter for: Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;
    invoke-static {v0}, Lcom/oneplus/gallery2/FilmstripFragment;->access$1300(Lcom/oneplus/gallery2/FilmstripFragment;)Lcom/oneplus/gallery2/media/MediaList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$16;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    # getter for: Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;
    invoke-static {v0}, Lcom/oneplus/gallery2/FilmstripFragment;->access$1300(Lcom/oneplus/gallery2/FilmstripFragment;)Lcom/oneplus/gallery2/media/MediaList;

    move-result-object v0

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1413
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$16;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    # getter for: Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/gallery2/FilmstripFragment;->access$4600(Lcom/oneplus/gallery2/FilmstripFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "deletePage() - Last media"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    :cond_0
    return-void
.end method
