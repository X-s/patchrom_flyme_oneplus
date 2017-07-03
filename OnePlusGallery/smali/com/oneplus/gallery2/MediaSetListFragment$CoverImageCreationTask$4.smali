.class Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$4;
.super Ljava/lang/Object;
.source "MediaSetListFragment.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->onReadyToCreateCoverImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;)V
    .locals 0

    .prologue
    .line 609
    iput-object p1, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$4;->this$1:Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;

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
    .line 613
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$4;->this$1:Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;

    # invokes: Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->onThumbnailImageDecoded(Lcom/oneplus/base/Handle;Lcom/oneplus/gallery2/media/Media;Landroid/graphics/Bitmap;)V
    invoke-static {v0, p1, p2, p3}, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->access$3000(Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;Lcom/oneplus/base/Handle;Lcom/oneplus/gallery2/media/Media;Landroid/graphics/Bitmap;)V

    .line 614
    return-void
.end method
