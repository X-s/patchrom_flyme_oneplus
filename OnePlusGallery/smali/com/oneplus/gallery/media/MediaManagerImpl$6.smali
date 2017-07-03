.class Lcom/oneplus/gallery/media/MediaManagerImpl$6;
.super Ljava/lang/Object;
.source "MediaManagerImpl.java"

# interfaces
.implements Lcom/oneplus/gallery/media/MediaManager$ContentChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/media/MediaManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/MediaManagerImpl;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$6;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Landroid/net/Uri;)V
    .locals 7
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x2713

    .line 285
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".+/[\\d]+$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 287
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 288
    .local v0, "id":J
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$6;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Lcom/oneplus/gallery/media/MediaManagerImpl$6$1;

    invoke-direct {v5, p0, v0, v1}, Lcom/oneplus/gallery/media/MediaManagerImpl$6$1;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl$6;J)V

    invoke-virtual {v3, v4, v6, v6, v5}, Lcom/oneplus/gallery/media/MediaManagerImpl;->queryMediaInMediaStore(Ljava/lang/Long;Lcom/oneplus/gallery/media/MediaType;Ljava/lang/String;Lcom/oneplus/gallery/media/MediaManager$ContentProviderQueryCallback;)Lcom/oneplus/base/Handle;

    .line 308
    .end local v0    # "id":J
    :goto_0
    return-void

    .line 301
    :cond_0
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$6;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # getter for: Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThreadHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$900(Lcom/oneplus/gallery/media/MediaManagerImpl;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 303
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$6;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # getter for: Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThreadHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$900(Lcom/oneplus/gallery/media/MediaManagerImpl;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3, v5, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 304
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$6;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # getter for: Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThreadHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$900(Lcom/oneplus/gallery/media/MediaManagerImpl;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x32

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 306
    .end local v2    # "msg":Landroid/os/Message;
    :cond_1
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$6;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    const/16 v4, 0x272e

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZ)Z

    goto :goto_0
.end method
