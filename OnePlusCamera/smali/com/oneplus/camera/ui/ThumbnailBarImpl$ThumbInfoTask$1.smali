.class Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask$1;
.super Lcom/oneplus/media/BitmapPool$Callback;
.source "ThumbnailBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->decodeThumbnailImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask$1;->this$1:Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;

    invoke-direct {p0}, Lcom/oneplus/media/BitmapPool$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapDecoded(Lcom/oneplus/base/Handle;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 330
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask$1;->this$1:Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->-get1(Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask$1;->this$1:Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;

    iget-object v0, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get0(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[Decode Thumb \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask$1;->this$1:Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;

    invoke-static {v2}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->-get0(Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'] decodeThumbnailImage() - Task is finished, drop decoded bitmap, file path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    return-void

    .line 336
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask$1;->this$1:Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;

    iget-object v0, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get0(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<< [Decode Thumb \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask$1;->this$1:Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;

    invoke-static {v2}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->-get0(Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'] decodeThumbnailImage() - Decoded bitmap is empty, file path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ", use empty drawable after completed"

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 342
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask$1;->this$1:Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;

    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask$1;->this$1:Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;

    iget-object v1, v1, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get5(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->thumbnail:Landroid/graphics/Bitmap;

    .line 343
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask$1;->this$1:Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->-wrap3(Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;)V

    .line 344
    return-void

    .line 349
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask$1;->this$1:Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;

    iget-object v0, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get0(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "<< [Decode Thumb \'"

    iget-object v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask$1;->this$1:Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;

    invoke-static {v2}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->-get0(Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\'] decodeThumbnailImage() - File path: "

    invoke-static {v0, v1, v2, v3, p2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 352
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask$1;->this$1:Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;

    iput-object p3, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->thumbnail:Landroid/graphics/Bitmap;

    .line 356
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask$1;->this$1:Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;

    iget-object v0, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask$1;->this$1:Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-wrap0(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;)V

    .line 359
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask$1;->this$1:Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->-wrap3(Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;)V

    .line 327
    return-void
.end method
