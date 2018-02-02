.class Lcom/oneplus/gallery2/media/MediaStoreMediaSource$9;
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

.field private final synthetic val$mediaId:J


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;Landroid/os/Handler;J)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$9;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    iput-wide p5, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$9;->val$mediaId:J

    .line 642
    invoke-direct {p0, p2, p3, p4}, Lcom/oneplus/base/CallbackHandle;-><init>(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 4

    .prologue
    .line 647
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$9;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-static {v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->access$10(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)Ljava/util/Map;

    move-result-object v0

    iget-wide v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$9;->val$mediaId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 648
    if-nez v0, :cond_1

    .line 650
    :cond_0
    :goto_0
    return-void

    .line 648
    :cond_1
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$9;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-static {v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->access$10(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)Ljava/util/Map;

    move-result-object v0

    iget-wide v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$9;->val$mediaId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
