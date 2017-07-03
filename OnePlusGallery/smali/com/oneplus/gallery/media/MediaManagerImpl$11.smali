.class Lcom/oneplus/gallery/media/MediaManagerImpl$11;
.super Ljava/lang/Object;
.source "MediaManagerImpl.java"

# interfaces
.implements Lcom/oneplus/cache/Cache$RemovingPredication;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/MediaManagerImpl;->clearUselessMediaInfoCaches()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/cache/Cache$RemovingPredication",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

.field final synthetic val$count:[I

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/MediaManagerImpl;J[I)V
    .locals 0

    .prologue
    .line 1818
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$11;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    iput-wide p2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$11;->val$startTime:J

    iput-object p4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$11;->val$count:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic canRemove(Ljava/lang/Object;Lcom/oneplus/base/Ref;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/oneplus/base/Ref;

    .prologue
    .line 1818
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery/media/MediaManagerImpl$11;->canRemove(Ljava/lang/String;Lcom/oneplus/base/Ref;)Z

    move-result v0

    return v0
.end method

.method public canRemove(Ljava/lang/String;Lcom/oneplus/base/Ref;)Z
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oneplus/base/Ref",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "isCancelled":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1824
    if-nez p1, :cond_0

    .line 1853
    :goto_0
    return v2

    .line 1828
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$11;->val$startTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    .line 1830
    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$11;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # getter for: Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$2700(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearUselessMediaInfoCaches() - Take long time to clear, currenly clear "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$11;->val$count:[I

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " caches"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1831
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    move v2, v3

    .line 1832
    goto :goto_0

    .line 1841
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1842
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1844
    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$11;->val$count:[I

    const/4 v5, 0x0

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1849
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1851
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$11;->val$count:[I

    aget v5, v4, v3

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v3

    .line 1852
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$11;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # getter for: Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$2800(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "clearUselessMediaInfoCaches() - e:"

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "file":Ljava/io/File;
    :cond_2
    move v2, v3

    .line 1847
    goto :goto_0
.end method
