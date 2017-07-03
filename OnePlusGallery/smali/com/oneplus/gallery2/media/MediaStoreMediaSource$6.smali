.class Lcom/oneplus/gallery2/media/MediaStoreMediaSource$6;
.super Lcom/oneplus/base/CallbackHandle;
.source "MediaStoreMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia(Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;I)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/base/CallbackHandle",
        "<",
        "Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

.field final synthetic val$mediaId:J


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;Landroid/os/Handler;J)V
    .locals 1
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;
    .param p4, "x2"    # Landroid/os/Handler;

    .prologue
    .line 599
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$6;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    iput-wide p5, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$6;->val$mediaId:J

    invoke-direct {p0, p2, p3, p4}, Lcom/oneplus/base/CallbackHandle;-><init>(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 4
    .param p1, "flags"    # I

    .prologue
    .line 603
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$6;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    # getter for: Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_MediaObtainCallbackHandles:Ljava/util/Map;
    invoke-static {v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->access$800(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)Ljava/util/Map;

    move-result-object v1

    iget-wide v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$6;->val$mediaId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 604
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/CallbackHandle<Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;>;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 605
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$6;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    # getter for: Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_MediaObtainCallbackHandles:Ljava/util/Map;
    invoke-static {v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->access$800(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)Ljava/util/Map;

    move-result-object v1

    iget-wide v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$6;->val$mediaId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    :cond_0
    return-void
.end method
