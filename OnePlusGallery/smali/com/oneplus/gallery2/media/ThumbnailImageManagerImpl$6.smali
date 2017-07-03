.class Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$6;
.super Ljava/lang/Object;
.source "ThumbnailImageManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$postCallbackHandler:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;

.field final synthetic val$postTask:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;)V
    .locals 0

    .prologue
    .line 765
    iput-object p1, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$6;->this$0:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;

    iput-object p2, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$6;->val$postCallbackHandler:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;

    iput-object p3, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$6;->val$postTask:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 769
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$6;->val$postCallbackHandler:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$6;->val$postTask:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;->callOnThumbnailImageDecoded(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;Landroid/graphics/Bitmap;Z)V

    .line 770
    return-void
.end method
