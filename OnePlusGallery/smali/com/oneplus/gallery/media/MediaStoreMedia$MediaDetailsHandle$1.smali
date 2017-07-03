.class Lcom/oneplus/gallery/media/MediaStoreMedia$MediaDetailsHandle$1;
.super Ljava/lang/Object;
.source "MediaStoreMedia.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/MediaStoreMedia$MediaDetailsHandle;->complete(Lcom/oneplus/gallery/media/MediaDetails;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery/media/MediaStoreMedia$MediaDetailsHandle;

.field final synthetic val$details:Lcom/oneplus/gallery/media/MediaDetails;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/MediaStoreMedia$MediaDetailsHandle;Lcom/oneplus/gallery/media/MediaDetails;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaStoreMedia$MediaDetailsHandle$1;->this$1:Lcom/oneplus/gallery/media/MediaStoreMedia$MediaDetailsHandle;

    iput-object p2, p0, Lcom/oneplus/gallery/media/MediaStoreMedia$MediaDetailsHandle$1;->val$details:Lcom/oneplus/gallery/media/MediaDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 194
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMedia$MediaDetailsHandle$1;->this$1:Lcom/oneplus/gallery/media/MediaStoreMedia$MediaDetailsHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMedia$MediaDetailsHandle$1;->this$1:Lcom/oneplus/gallery/media/MediaStoreMedia$MediaDetailsHandle;

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaStoreMedia$MediaDetailsHandle;->callback:Lcom/oneplus/gallery/media/Media$MediaDetailsCallback;

    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaStoreMedia$MediaDetailsHandle$1;->this$1:Lcom/oneplus/gallery/media/MediaStoreMedia$MediaDetailsHandle;

    iget-object v1, v1, Lcom/oneplus/gallery/media/MediaStoreMedia$MediaDetailsHandle;->this$0:Lcom/oneplus/gallery/media/MediaStoreMedia;

    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaStoreMedia$MediaDetailsHandle$1;->this$1:Lcom/oneplus/gallery/media/MediaStoreMedia$MediaDetailsHandle;

    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaStoreMedia$MediaDetailsHandle$1;->val$details:Lcom/oneplus/gallery/media/MediaDetails;

    invoke-interface {v0, v1, v2, v3}, Lcom/oneplus/gallery/media/Media$MediaDetailsCallback;->onMediaDetailsRetrieved(Lcom/oneplus/gallery/media/Media;Lcom/oneplus/base/Handle;Lcom/oneplus/gallery/media/MediaDetails;)V

    .line 197
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMedia$MediaDetailsHandle$1;->this$1:Lcom/oneplus/gallery/media/MediaStoreMedia$MediaDetailsHandle;

    # invokes: Lcom/oneplus/gallery/media/MediaStoreMedia$MediaDetailsHandle;->closeDirectly()V
    invoke-static {v0}, Lcom/oneplus/gallery/media/MediaStoreMedia$MediaDetailsHandle;->access$000(Lcom/oneplus/gallery/media/MediaStoreMedia$MediaDetailsHandle;)V

    .line 199
    :cond_0
    return-void
.end method
