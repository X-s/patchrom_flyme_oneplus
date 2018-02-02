.class Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter$2;
.super Lcom/oneplus/media/BitmapPool$Callback;
.source "PreviewGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->setPageData(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

.field final synthetic val$cacheIndex:I

.field final synthetic val$image:Lcom/oneplus/camera/ui/ScaleImageView;

.field final synthetic val$softPlay:Ljava/lang/ref/SoftReference;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;Lcom/oneplus/camera/ui/ScaleImageView;ILjava/lang/ref/SoftReference;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;
    .param p2, "val$image"    # Lcom/oneplus/camera/ui/ScaleImageView;
    .param p3, "val$cacheIndex"    # I

    .prologue
    .line 1267
    .local p4, "val$softPlay":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/widget/ImageView;>;"
    iput-object p1, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter$2;->this$1:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    iput-object p2, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter$2;->val$image:Lcom/oneplus/camera/ui/ScaleImageView;

    iput p3, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter$2;->val$cacheIndex:I

    iput-object p4, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter$2;->val$softPlay:Ljava/lang/ref/SoftReference;

    invoke-direct {p0}, Lcom/oneplus/media/BitmapPool$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapDecoded(Lcom/oneplus/base/Handle;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1273
    iget-object v3, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter$2;->val$image:Lcom/oneplus/camera/ui/ScaleImageView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter$2;->this$1:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    invoke-static {v3}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->-get3(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;)Lcom/oneplus/camera/ui/PreviewGallery;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1274
    :cond_0
    return-void

    .line 1277
    :cond_1
    iget-object v3, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter$2;->this$1:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    invoke-static {v3}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->-get1(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;)Landroid/util/SparseArray;

    move-result-object v3

    iget v4, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter$2;->val$cacheIndex:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1278
    .local v2, "strMapPath":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1283
    invoke-static {p2}, Lcom/oneplus/io/Path;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ".mp4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1287
    iget-object v3, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter$2;->val$softPlay:Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1288
    .local v1, "play":Landroid/widget/ImageView;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1289
    const/4 v0, 0x1

    .line 1298
    .end local v1    # "play":Landroid/widget/ImageView;
    .local v0, "isVideo":Z
    :goto_0
    iget-object v3, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter$2;->val$image:Lcom/oneplus/camera/ui/ScaleImageView;

    iget-object v4, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter$2;->this$1:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    invoke-static {v4}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->-get3(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;)Lcom/oneplus/camera/ui/PreviewGallery;

    move-result-object v4

    invoke-virtual {v3, p3, p2, v4, v0}, Lcom/oneplus/camera/ui/ScaleImageView;->setPhoto(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/oneplus/camera/ui/PreviewGallery;Z)Z

    .line 1270
    return-void

    .line 1279
    .end local v0    # "isVideo":Z
    :cond_2
    return-void

    .line 1293
    :cond_3
    const/4 v0, 0x0

    .line 1294
    .restart local v0    # "isVideo":Z
    goto :goto_0
.end method
