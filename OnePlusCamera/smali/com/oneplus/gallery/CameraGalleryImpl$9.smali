.class Lcom/oneplus/gallery/CameraGalleryImpl$9;
.super Lcom/oneplus/media/BitmapPool$Callback;
.source "CameraGalleryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/CameraGalleryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/CameraGalleryImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 370
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$9;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-direct {p0}, Lcom/oneplus/media/BitmapPool$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapDecoded(Lcom/oneplus/base/Handle;Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 381
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$9;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    const/4 v1, 0x1

    invoke-static {v0, p2, p3, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap48(Lcom/oneplus/gallery/CameraGalleryImpl;Ljava/lang/Object;Landroid/graphics/Bitmap;Z)V

    .line 379
    return-void
.end method

.method public onBitmapDecoded(Lcom/oneplus/base/Handle;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 375
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$9;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    const/4 v1, 0x1

    invoke-static {v0, p2, p3, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap48(Lcom/oneplus/gallery/CameraGalleryImpl;Ljava/lang/Object;Landroid/graphics/Bitmap;Z)V

    .line 373
    return-void
.end method
