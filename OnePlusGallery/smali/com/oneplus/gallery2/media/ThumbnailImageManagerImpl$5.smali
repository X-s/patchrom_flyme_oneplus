.class Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$5;
.super Ljava/lang/Object;
.source "ThumbnailImageManagerImpl.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/Media$SizeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->decodeThumbnailImage(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;ILcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;

.field final synthetic val$handle:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingHandle;

.field final synthetic val$sizeObtainingHandleSet:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;Ljava/util/Set;Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingHandle;)V
    .locals 0

    .prologue
    .line 746
    iput-object p1, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$5;->this$0:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;

    iput-object p2, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$5;->val$sizeObtainingHandleSet:Ljava/util/Set;

    iput-object p3, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$5;->val$handle:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSizeObtained(Lcom/oneplus/gallery2/media/Media;II)V
    .locals 2
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 750
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$5;->val$sizeObtainingHandleSet:Ljava/util/Set;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$5;->val$handle:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingHandle;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$5;->this$0:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$5;->val$handle:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingHandle;

    # invokes: Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->onMediaSizeGet(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingHandle;II)V
    invoke-static {v0, v1, p2, p3}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->access$1200(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingHandle;II)V

    .line 752
    :cond_0
    return-void
.end method
