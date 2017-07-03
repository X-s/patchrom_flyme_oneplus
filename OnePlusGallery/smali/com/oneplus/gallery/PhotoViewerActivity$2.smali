.class Lcom/oneplus/gallery/PhotoViewerActivity$2;
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


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/PhotoViewerActivity;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/oneplus/gallery/PhotoViewerActivity$2;->this$0:Lcom/oneplus/gallery/PhotoViewerActivity;

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
    .line 284
    check-cast p3, Lcom/oneplus/gallery/ListChangeEventArgs;

    .end local p3    # "x2":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/gallery/PhotoViewerActivity$2;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/gallery/ListChangeEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/gallery/ListChangeEventArgs;)V
    .locals 3
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
    .line 288
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/gallery/ListChangeEventArgs;>;"
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoViewerActivity$2;->this$0:Lcom/oneplus/gallery/PhotoViewerActivity;

    # getter for: Lcom/oneplus/gallery/PhotoViewerActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;
    invoke-static {v0}, Lcom/oneplus/gallery/PhotoViewerActivity;->access$000(Lcom/oneplus/gallery/PhotoViewerActivity;)Lcom/oneplus/gallery/media/MediaList;

    move-result-object v0

    invoke-interface {v0}, Lcom/oneplus/gallery/media/MediaList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoViewerActivity$2;->this$0:Lcom/oneplus/gallery/PhotoViewerActivity;

    # getter for: Lcom/oneplus/gallery/PhotoViewerActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/gallery/PhotoViewerActivity;->access$200(Lcom/oneplus/gallery/PhotoViewerActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMediaObtained() - deleting last media, media list size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery/PhotoViewerActivity$2;->this$0:Lcom/oneplus/gallery/PhotoViewerActivity;

    # getter for: Lcom/oneplus/gallery/PhotoViewerActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;
    invoke-static {v2}, Lcom/oneplus/gallery/PhotoViewerActivity;->access$000(Lcom/oneplus/gallery/PhotoViewerActivity;)Lcom/oneplus/gallery/media/MediaList;

    move-result-object v2

    invoke-interface {v2}, Lcom/oneplus/gallery/media/MediaList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoViewerActivity$2;->this$0:Lcom/oneplus/gallery/PhotoViewerActivity;

    # getter for: Lcom/oneplus/gallery/PhotoViewerActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;
    invoke-static {v0}, Lcom/oneplus/gallery/PhotoViewerActivity;->access$000(Lcom/oneplus/gallery/PhotoViewerActivity;)Lcom/oneplus/gallery/media/MediaList;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery/media/MediaList;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    invoke-interface {v0, v1, p0}, Lcom/oneplus/gallery/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 292
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoViewerActivity$2;->this$0:Lcom/oneplus/gallery/PhotoViewerActivity;

    invoke-virtual {v0}, Lcom/oneplus/gallery/PhotoViewerActivity;->finish()V

    .line 295
    :cond_0
    return-void
.end method
