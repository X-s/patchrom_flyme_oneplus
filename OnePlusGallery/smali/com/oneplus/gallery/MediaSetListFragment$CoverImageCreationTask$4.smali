.class Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask$4;
.super Ljava/lang/Object;
.source "MediaSetListFragment.java"

# interfaces
.implements Lcom/oneplus/gallery/media/ThumbnailImageManager$DecodingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->onReadyToCreateCoverImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;)V
    .locals 0

    .prologue
    .line 677
    iput-object p1, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask$4;->this$1:Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThumbnailImageDecoded(Lcom/oneplus/base/Handle;Lcom/oneplus/gallery/media/Media;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p3, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    .line 681
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask$4;->this$1:Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;

    # invokes: Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->onThumbnailImageDecoded(Lcom/oneplus/base/Handle;Lcom/oneplus/gallery/media/Media;Landroid/graphics/Bitmap;)V
    invoke-static {v0, p1, p2, p3}, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->access$3100(Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;Lcom/oneplus/base/Handle;Lcom/oneplus/gallery/media/Media;Landroid/graphics/Bitmap;)V

    .line 682
    return-void
.end method
