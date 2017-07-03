.class final Lcom/oneplus/gallery/MediaSetListFragment$12;
.super Ljava/lang/Object;
.source "MediaSetListFragment.java"

# interfaces
.implements Lcom/oneplus/cache/Cache$RemovingPredication;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/MediaSetListFragment;->clearUselessImageCache(Lcom/oneplus/gallery/media/MediaSetList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic val$mediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(JLcom/oneplus/gallery/media/MediaSetList;)V
    .locals 1

    .prologue
    .line 838
    iput-wide p1, p0, Lcom/oneplus/gallery/MediaSetListFragment$12;->val$startTime:J

    iput-object p3, p0, Lcom/oneplus/gallery/MediaSetListFragment$12;->val$mediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic canRemove(Ljava/lang/Object;Lcom/oneplus/base/Ref;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/oneplus/base/Ref;

    .prologue
    .line 838
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery/MediaSetListFragment$12;->canRemove(Ljava/lang/String;Lcom/oneplus/base/Ref;)Z

    move-result v0

    return v0
.end method

.method public canRemove(Ljava/lang/String;Lcom/oneplus/base/Ref;)Z
    .locals 10
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
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 843
    if-nez p1, :cond_1

    .line 871
    :cond_0
    :goto_0
    return v4

    .line 847
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/oneplus/gallery/MediaSetListFragment$12;->val$startTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_2

    .line 849
    const-string v6, "MediaSetListFragment"

    const-string v7, "clearUselessImageCache() - Take long time to clear, interrupt"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    move v4, v5

    .line 851
    goto :goto_0

    .line 855
    :cond_2
    const/4 v2, 0x0

    .line 856
    .local v2, "isValid":Z
    iget-object v6, p0, Lcom/oneplus/gallery/MediaSetListFragment$12;->val$mediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    invoke-interface {v6}, Lcom/oneplus/gallery/media/MediaSetList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/media/MediaSet;

    .line 858
    .local v3, "mediaSet":Lcom/oneplus/gallery/media/MediaSet;
    invoke-interface {v3}, Lcom/oneplus/gallery/media/MediaSet;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 860
    const/4 v2, 0x1

    .line 871
    .end local v3    # "mediaSet":Lcom/oneplus/gallery/media/MediaSet;
    :cond_4
    :goto_1
    if-eqz v2, :cond_0

    move v4, v5

    goto :goto_0

    .line 864
    .restart local v3    # "mediaSet":Lcom/oneplus/gallery/media/MediaSet;
    :cond_5
    sget-object v6, Lcom/oneplus/gallery/media/MediaSet;->PROP_COVER_HASH_CODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v6}, Lcom/oneplus/gallery/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 865
    .local v0, "coverHashCode":Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 867
    const/4 v2, 0x1

    .line 868
    goto :goto_1
.end method
