.class Lcom/oneplus/camera/ui/ThumbnailBarImpl$5;
.super Ljava/lang/Object;
.source "ThumbnailBarImpl.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/ThumbnailBarImpl;->onInitialize()V
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
        "Lcom/oneplus/camera/media/MediaEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    .prologue
    .line 884
    iput-object p1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$5;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p2, "key"    # Lcom/oneplus/base/EventKey;
    .param p3, "e"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 887
    check-cast p3, Lcom/oneplus/camera/media/MediaEventArgs;

    .end local p3    # "e":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$5;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/media/MediaEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/media/MediaEventArgs;)V
    .locals 6
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p3, "e"    # Lcom/oneplus/camera/media/MediaEventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/media/MediaEventArgs;",
            ">;",
            "Lcom/oneplus/camera/media/MediaEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 890
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/camera/media/MediaEventArgs;>;"
    invoke-virtual {p3}, Lcom/oneplus/camera/media/MediaEventArgs;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/oneplus/io/FileUtils;->isRawFilePath(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 891
    return-void

    .line 892
    :cond_0
    invoke-virtual {p3}, Lcom/oneplus/camera/media/MediaEventArgs;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v0

    .line 893
    .local v0, "handle":Lcom/oneplus/camera/CaptureHandle;
    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$5;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v4}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get3(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 897
    iget-object v4, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$5;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v4}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get3(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 898
    .local v3, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "task$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;

    .line 900
    .local v1, "task":Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;
    iget v4, v1, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->frameIndex:I

    invoke-virtual {p3}, Lcom/oneplus/camera/media/MediaEventArgs;->getFrameIndex()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 902
    invoke-virtual {v1}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->cancel()V

    .line 887
    .end local v1    # "task":Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;
    :cond_2
    return-void

    .line 894
    .end local v2    # "task$iterator":Ljava/util/Iterator;
    .end local v3    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;>;"
    :cond_3
    return-void
.end method
