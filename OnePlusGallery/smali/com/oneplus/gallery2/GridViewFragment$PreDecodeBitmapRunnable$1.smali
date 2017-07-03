.class Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable$1;
.super Ljava/lang/Object;
.source "GridViewFragment.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;)V
    .locals 0

    .prologue
    .line 945
    iput-object p1, p0, Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable$1;->this$1:Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThumbnailImageDecoded(Lcom/oneplus/base/Handle;Lcom/oneplus/gallery2/media/Media;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p3, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    .line 949
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable$1;->this$1:Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;->m_ThumbDecodingTable:Ljava/util/Map;
    invoke-static {v0}, Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;->access$5500(Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    return-void
.end method
