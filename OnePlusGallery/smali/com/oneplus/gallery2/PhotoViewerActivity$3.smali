.class Lcom/oneplus/gallery2/PhotoViewerActivity$3;
.super Ljava/lang/Object;
.source "PhotoViewerActivity.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/PhotoViewerActivity;->onMediaObtained(Lcom/oneplus/gallery2/media/Media;)V
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
        "Lcom/oneplus/gallery2/ListChangeEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/PhotoViewerActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/PhotoViewerActivity;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/oneplus/gallery2/PhotoViewerActivity$3;->this$0:Lcom/oneplus/gallery2/PhotoViewerActivity;

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
    .line 305
    check-cast p3, Lcom/oneplus/gallery2/ListChangeEventArgs;

    .end local p3    # "x2":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/gallery2/PhotoViewerActivity$3;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/gallery2/ListChangeEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/gallery2/ListChangeEventArgs;)V
    .locals 3
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p3, "e"    # Lcom/oneplus/gallery2/ListChangeEventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/gallery2/ListChangeEventArgs;",
            ">;",
            "Lcom/oneplus/gallery2/ListChangeEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 309
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/gallery2/ListChangeEventArgs;>;"
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoViewerActivity$3;->this$0:Lcom/oneplus/gallery2/PhotoViewerActivity;

    # getter for: Lcom/oneplus/gallery2/PhotoViewerActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;
    invoke-static {v0}, Lcom/oneplus/gallery2/PhotoViewerActivity;->access$100(Lcom/oneplus/gallery2/PhotoViewerActivity;)Lcom/oneplus/gallery2/media/MediaList;

    move-result-object v0

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoViewerActivity$3;->this$0:Lcom/oneplus/gallery2/PhotoViewerActivity;

    # getter for: Lcom/oneplus/gallery2/PhotoViewerActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/gallery2/PhotoViewerActivity;->access$400(Lcom/oneplus/gallery2/PhotoViewerActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMediaObtained() - deleting last media, media list size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery2/PhotoViewerActivity$3;->this$0:Lcom/oneplus/gallery2/PhotoViewerActivity;

    # getter for: Lcom/oneplus/gallery2/PhotoViewerActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;
    invoke-static {v2}, Lcom/oneplus/gallery2/PhotoViewerActivity;->access$100(Lcom/oneplus/gallery2/PhotoViewerActivity;)Lcom/oneplus/gallery2/media/MediaList;

    move-result-object v2

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoViewerActivity$3;->this$0:Lcom/oneplus/gallery2/PhotoViewerActivity;

    # getter for: Lcom/oneplus/gallery2/PhotoViewerActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;
    invoke-static {v0}, Lcom/oneplus/gallery2/PhotoViewerActivity;->access$100(Lcom/oneplus/gallery2/PhotoViewerActivity;)Lcom/oneplus/gallery2/media/MediaList;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    invoke-interface {v0, v1, p0}, Lcom/oneplus/gallery2/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 313
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoViewerActivity$3;->this$0:Lcom/oneplus/gallery2/PhotoViewerActivity;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/PhotoViewerActivity;->finish()V

    .line 316
    :cond_0
    return-void
.end method
