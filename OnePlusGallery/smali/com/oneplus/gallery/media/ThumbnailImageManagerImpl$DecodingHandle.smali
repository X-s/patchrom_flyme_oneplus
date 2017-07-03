.class final Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingHandle;
.super Lcom/oneplus/base/Handle;
.source "ThumbnailImageManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DecodingHandle"
.end annotation


# instance fields
.field private final decodingTask:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;

.field private final decodingTaskQueue:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;Ljava/util/Collection;Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;)V
    .locals 1
    .param p3, "decodingTask"    # Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;",
            ">;",
            "Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;",
            ")V"
        }
    .end annotation

    .prologue
    .line 235
    .local p2, "decodingTaskQueue":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;>;"
    iput-object p1, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingHandle;->this$0:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;

    .line 236
    const-string v0, "DecodeThumbnailImage"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 237
    iput-object p2, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingHandle;->decodingTaskQueue:Ljava/util/Collection;

    .line 238
    iput-object p3, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingHandle;->decodingTask:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;

    .line 239
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 245
    iget-object v0, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingHandle;->decodingTaskQueue:Ljava/util/Collection;

    iget-object v1, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingHandle;->decodingTask:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;

    invoke-interface {v0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 246
    iget-object v0, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingHandle;->decodingTask:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;

    iget-object v0, v0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->bitmapDecodingHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 247
    return-void
.end method
