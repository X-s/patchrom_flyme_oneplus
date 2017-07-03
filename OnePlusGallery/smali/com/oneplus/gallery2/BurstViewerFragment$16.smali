.class Lcom/oneplus/gallery2/BurstViewerFragment$16;
.super Ljava/lang/Object;
.source "BurstViewerFragment.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/BurstViewerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/BurstViewerFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/BurstViewerFragment;)V
    .locals 0

    .prologue
    .line 387
    iput-object p1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$16;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

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
    .line 391
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$16;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    # invokes: Lcom/oneplus/gallery2/BurstViewerFragment;->onLowResImageDecoded(Lcom/oneplus/base/Handle;Lcom/oneplus/gallery2/media/Media;Landroid/graphics/Bitmap;)V
    invoke-static {v0, p1, p2, p3}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$2200(Lcom/oneplus/gallery2/BurstViewerFragment;Lcom/oneplus/base/Handle;Lcom/oneplus/gallery2/media/Media;Landroid/graphics/Bitmap;)V

    .line 392
    return-void
.end method
