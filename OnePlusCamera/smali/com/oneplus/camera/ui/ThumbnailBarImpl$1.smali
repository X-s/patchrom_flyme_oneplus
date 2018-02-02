.class Lcom/oneplus/camera/ui/ThumbnailBarImpl$1;
.super Lcom/oneplus/media/BitmapPool$Callback;
.source "ThumbnailBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/ThumbnailBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$1;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

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
    const/4 v2, 0x0

    .line 126
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$1;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get17(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;

    .line 127
    .local v0, "thumbInfo":Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;
    if-eqz v0, :cond_0

    .line 129
    iput-object v2, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;->decodingHandle:Lcom/oneplus/base/Handle;

    .line 130
    iget-object v1, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;->contentUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$1;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v1, v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-wrap0(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;)Z

    .line 134
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 135
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$1;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get0(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBitmapDecoded - the decoded bitmap is empty, filePath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_2
    :goto_0
    return-void

    .line 138
    :cond_3
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$1;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v1, p3}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-wrap3(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Landroid/graphics/Bitmap;)V

    .line 139
    if-eqz v0, :cond_2

    .line 141
    iget-object v1, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;->contentUri:Landroid/net/Uri;

    if-nez v1, :cond_4

    .line 142
    iput-object p3, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;->thumbnailImage:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 144
    :cond_4
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$1;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    iget-object v2, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;->contentUri:Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-static {v1, v2, p3, v3}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-wrap5(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Landroid/net/Uri;Landroid/graphics/Bitmap;Z)V

    goto :goto_0
.end method
