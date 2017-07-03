.class Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$4;
.super Ljava/lang/Object;
.source "ThumbnailImageManagerImpl.java"

# interfaces
.implements Lcom/oneplus/cache/Cache$RemovingPredication;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->clearInvalidThumbnailImages()V
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
        "Lcom/oneplus/gallery2/media/MediaCacheKey;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;

.field final synthetic val$count:[I

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;J[I)V
    .locals 0

    .prologue
    .line 584
    iput-object p1, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$4;->this$0:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;

    iput-wide p2, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$4;->val$startTime:J

    iput-object p4, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$4;->val$count:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canRemove(Lcom/oneplus/gallery2/media/MediaCacheKey;Lcom/oneplus/base/Ref;)Z
    .locals 6
    .param p1, "key"    # Lcom/oneplus/gallery2/media/MediaCacheKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery2/media/MediaCacheKey;",
            "Lcom/oneplus/base/Ref",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "isCancelled":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 589
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$4;->val$startTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 591
    const-string v2, "ThumbnailImageManager"

    const-string v3, "clearInvalidThumbnailImages() - Take long time to clear, interrupt"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 602
    :cond_0
    :goto_0
    return v0

    .line 597
    :cond_1
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/MediaCacheKey;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 599
    iget-object v2, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$4;->val$count:[I

    aget v3, v2, v0

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v0

    move v0, v1

    .line 600
    goto :goto_0
.end method

.method public bridge synthetic canRemove(Ljava/lang/Object;Lcom/oneplus/base/Ref;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/oneplus/base/Ref;

    .prologue
    .line 584
    check-cast p1, Lcom/oneplus/gallery2/media/MediaCacheKey;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$4;->canRemove(Lcom/oneplus/gallery2/media/MediaCacheKey;Lcom/oneplus/base/Ref;)Z

    move-result v0

    return v0
.end method
