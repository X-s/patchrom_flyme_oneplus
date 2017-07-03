.class final Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingHandle;
.super Lcom/oneplus/base/Handle;
.source "ThumbnailImageManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DecodingHandle"
.end annotation


# instance fields
.field public final decoder:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;

.field public final decodingTask:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;

.field public final flags:I

.field public volatile sizeObtainingHandle:Lcom/oneplus/base/Handle;

.field private final sizeObtainingSet:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingHandle;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;Ljava/util/Collection;Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;I)V
    .locals 1
    .param p2, "decoder"    # Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;
    .param p4, "decodingTask"    # Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;",
            "Ljava/util/Collection",
            "<",
            "Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingHandle;",
            ">;",
            "Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 306
    .local p3, "sizeObtainingSet":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingHandle;>;"
    iput-object p1, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingHandle;->this$0:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;

    .line 307
    const-string v0, "DecodeThumbnailImage"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 308
    iput-object p2, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingHandle;->decoder:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;

    .line 309
    iput-object p3, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingHandle;->sizeObtainingSet:Ljava/util/Collection;

    .line 310
    iput-object p4, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingHandle;->decodingTask:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;

    .line 311
    iput p5, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingHandle;->flags:I

    .line 312
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 318
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingHandle;->sizeObtainingSet:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 319
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingHandle;->decoder:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingHandle;->decodingTask:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;->cancel(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;)Z

    .line 320
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingHandle;->decodingTask:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;

    iget-object v0, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->bitmapDecodingHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 321
    return-void
.end method
