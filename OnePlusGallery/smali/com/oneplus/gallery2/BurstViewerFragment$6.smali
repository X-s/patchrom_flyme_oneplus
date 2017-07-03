.class Lcom/oneplus/gallery2/BurstViewerFragment$6;
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
    .line 251
    iput-object p1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$6;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaUpdated(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/Media;I)V
    .locals 3
    .param p1, "source"    # Lcom/oneplus/gallery2/media/MediaSource;
    .param p2, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p3, "flags"    # I

    .prologue
    .line 255
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$6;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    # getter for: Lcom/oneplus/gallery2/BurstViewerFragment;->m_CoverMediaSource:Lcom/oneplus/gallery2/media/MediaSource;
    invoke-static {v0}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$1000(Lcom/oneplus/gallery2/BurstViewerFragment;)Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$6;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    # getter for: Lcom/oneplus/gallery2/BurstViewerFragment;->m_CoverMedia:Lcom/oneplus/gallery2/media/GroupedMedia;
    invoke-static {v0}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$1100(Lcom/oneplus/gallery2/BurstViewerFragment;)Lcom/oneplus/gallery2/media/GroupedMedia;

    move-result-object v0

    if-eq v0, p2, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$6;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    # getter for: Lcom/oneplus/gallery2/BurstViewerFragment;->m_CoverMedia:Lcom/oneplus/gallery2/media/GroupedMedia;
    invoke-static {v0}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$1100(Lcom/oneplus/gallery2/BurstViewerFragment;)Lcom/oneplus/gallery2/media/GroupedMedia;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    sget v0, Lcom/oneplus/gallery2/media/GroupedMedia;->FLAG_COVER_CHANGED:I

    and-int/2addr v0, p3

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$6;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$6;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    # getter for: Lcom/oneplus/gallery2/BurstViewerFragment;->m_CoverMedia:Lcom/oneplus/gallery2/media/GroupedMedia;
    invoke-static {v1}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$1100(Lcom/oneplus/gallery2/BurstViewerFragment;)Lcom/oneplus/gallery2/media/GroupedMedia;

    move-result-object v1

    # invokes: Lcom/oneplus/gallery2/BurstViewerFragment;->updateFooterFilmstripCover(Lcom/oneplus/gallery2/media/GroupedMedia;)V
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$1200(Lcom/oneplus/gallery2/BurstViewerFragment;Lcom/oneplus/gallery2/media/GroupedMedia;)V

    .line 263
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$6;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    # getter for: Lcom/oneplus/gallery2/BurstViewerFragment;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$1300(Lcom/oneplus/gallery2/BurstViewerFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMediaUpdated() - update cover Media:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery2/BurstViewerFragment$6;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    # getter for: Lcom/oneplus/gallery2/BurstViewerFragment;->m_CoverMedia:Lcom/oneplus/gallery2/media/GroupedMedia;
    invoke-static {v2}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$1100(Lcom/oneplus/gallery2/BurstViewerFragment;)Lcom/oneplus/gallery2/media/GroupedMedia;

    move-result-object v2

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/GroupedMedia;->getCover()Lcom/oneplus/gallery2/media/Media;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
