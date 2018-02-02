.class Lcom/oneplus/camera/ui/ThumbnailBarImpl$3;
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
    .line 836
    iput-object p1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$3;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

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
    .line 839
    check-cast p3, Lcom/oneplus/camera/media/MediaEventArgs;

    .end local p3    # "e":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$3;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/media/MediaEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/media/MediaEventArgs;)V
    .locals 8
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
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/camera/media/MediaEventArgs;>;"
    const/4 v5, 0x1

    .line 842
    invoke-virtual {p3}, Lcom/oneplus/camera/media/MediaEventArgs;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/io/FileUtils;->isRawFilePath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 843
    return-void

    .line 844
    :cond_0
    invoke-virtual {p3}, Lcom/oneplus/camera/media/MediaEventArgs;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v2

    .line 845
    .local v2, "handle":Lcom/oneplus/camera/CaptureHandle;
    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$3;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get3(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 849
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$3;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get6(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/oneplus/camera/media/MediaEventArgs;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 850
    return-void

    .line 846
    :cond_1
    return-void

    .line 851
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$3;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-virtual {p3}, Lcom/oneplus/camera/media/MediaEventArgs;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-set6(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 854
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$3;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get3(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 855
    .local v7, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;>;"
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;

    iget-object v1, v1, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->yuvImage:[B

    if-nez v1, :cond_4

    .line 857
    :cond_3
    new-instance v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;

    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$3;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-virtual {p3}, Lcom/oneplus/camera/media/MediaEventArgs;->getFrameIndex()I

    move-result v3

    invoke-virtual {p3}, Lcom/oneplus/camera/media/MediaEventArgs;->getFilePath()Ljava/lang/String;

    move-result-object v4

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;-><init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Lcom/oneplus/camera/CaptureHandle;ILjava/lang/String;ZZ)V

    .line 858
    .local v0, "task":Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 859
    invoke-virtual {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->run()V

    .line 839
    .end local v0    # "task":Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;
    :cond_4
    return-void
.end method
