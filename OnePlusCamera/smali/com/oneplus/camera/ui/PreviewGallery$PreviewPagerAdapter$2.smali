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
.field final synthetic this$0:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

.field final synthetic val$cacheIndex:I

.field final synthetic val$image:Lcom/oneplus/camera/ui/ScaleImageView;

.field final synthetic val$softPlay:Ljava/lang/ref/SoftReference;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;Lcom/oneplus/camera/ui/ScaleImageView;ILjava/lang/ref/SoftReference;)V
    .locals 0

    .prologue
    .line 1272
    iput-object p1, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter$2;->this$0:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    iput-object p2, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter$2;->val$image:Lcom/oneplus/camera/ui/ScaleImageView;

    iput p3, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter$2;->val$cacheIndex:I

    iput-object p4, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter$2;->val$softPlay:Ljava/lang/ref/SoftReference;

    invoke-direct {p0}, Lcom/oneplus/media/BitmapPool$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapDecoded(Lcom/oneplus/base/Handle;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x0

    .line 1277
    iget-object v3, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter$2;->val$image:Lcom/oneplus/camera/ui/ScaleImageView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter$2;->this$0:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    # getter for: Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_PreviewGallery:Lcom/oneplus/camera/ui/PreviewGallery;
    invoke-static {v3}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->access$5000(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;)Lcom/oneplus/camera/ui/PreviewGallery;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1303
    :cond_0
    :goto_0
    return-void

    .line 1281
    :cond_1
    iget-object v3, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter$2;->this$0:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    # getter for: Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Map:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->access$700(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;)Landroid/util/SparseArray;

    move-result-object v3

    iget v5, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter$2;->val$cacheIndex:I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1282
    .local v2, "strMapPath":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1287
    invoke-static {p2}, Lcom/oneplus/io/Path;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const/4 v3, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_2
    :goto_1
    packed-switch v3, :pswitch_data_1

    .line 1297
    const/4 v0, 0x0

    .line 1302
    .local v0, "isVideo":Z
    :goto_2
    iget-object v3, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter$2;->val$image:Lcom/oneplus/camera/ui/ScaleImageView;

    iget-object v4, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter$2;->this$0:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    # getter for: Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_PreviewGallery:Lcom/oneplus/camera/ui/PreviewGallery;
    invoke-static {v4}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->access$5000(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;)Lcom/oneplus/camera/ui/PreviewGallery;

    move-result-object v4

    invoke-virtual {v3, p3, p2, v4, v0}, Lcom/oneplus/camera/ui/ScaleImageView;->setPhoto(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/oneplus/camera/ui/PreviewGallery;Z)Z

    goto :goto_0

    .line 1287
    .end local v0    # "isVideo":Z
    :pswitch_0
    const-string v6, ".mp4"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    goto :goto_1

    .line 1291
    :pswitch_1
    iget-object v3, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter$2;->val$softPlay:Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1292
    .local v1, "play":Landroid/widget/ImageView;
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1293
    const/4 v0, 0x1

    .line 1294
    .restart local v0    # "isVideo":Z
    goto :goto_2

    .line 1287
    nop

    :pswitch_data_0
    .packed-switch 0x169003
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
