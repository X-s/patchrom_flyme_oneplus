.class Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask$3;
.super Ljava/lang/Object;
.source "MediaSetPickerFragment.java"

# interfaces
.implements Lcom/oneplus/gallery/media/ThumbnailImageManager$DecodingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->onReadyToCreateCoverImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;)V
    .locals 0

    .prologue
    .line 548
    iput-object p1, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask$3;->this$1:Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;

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
    .line 552
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask$3;->this$1:Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;

    # invokes: Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->onThumbnailImageDecoded(Lcom/oneplus/base/Handle;Lcom/oneplus/gallery/media/Media;Landroid/graphics/Bitmap;)V
    invoke-static {v0, p1, p2, p3}, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->access$2200(Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;Lcom/oneplus/base/Handle;Lcom/oneplus/gallery/media/Media;Landroid/graphics/Bitmap;)V

    .line 553
    return-void
.end method
