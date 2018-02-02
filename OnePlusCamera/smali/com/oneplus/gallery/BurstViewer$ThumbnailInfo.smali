.class Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;
.super Ljava/lang/Object;
.source "BurstViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/BurstViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThumbnailInfo"
.end annotation


# instance fields
.field public highQualityThumbDecodeHandle:Lcom/oneplus/base/Handle;

.field public highQualityThumbRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public lowQualityThumb:Landroid/graphics/Bitmap;

.field public lowQualityThumbDecodeHandle:Lcom/oneplus/base/Handle;

.field public final media:Lcom/oneplus/gallery2/media/Media;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/media/Media;)V
    .locals 0
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    iput-object p1, p0, Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;->media:Lcom/oneplus/gallery2/media/Media;

    .line 295
    return-void
.end method


# virtual methods
.method public getHighQualityThumbnailImage()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 303
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;->highQualityThumbRef:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;->highQualityThumbRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0

    .line 305
    :cond_0
    return-object v1
.end method

.method public getLowQualityThumbnailImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;->lowQualityThumb:Landroid/graphics/Bitmap;

    return-object v0
.end method
