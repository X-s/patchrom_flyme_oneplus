.class Lcom/oneplus/gallery/editor/PhotoEditor$4;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Lcom/oneplus/gallery/media/ThumbnailImageManager$DecodingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/editor/PhotoEditor;->onPrepare(Lcom/oneplus/gallery/media/Media;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/editor/PhotoEditor;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/editor/PhotoEditor;)V
    .locals 0

    .prologue
    .line 1350
    iput-object p1, p0, Lcom/oneplus/gallery/editor/PhotoEditor$4;->this$0:Lcom/oneplus/gallery/editor/PhotoEditor;

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
    .line 1354
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor$4;->this$0:Lcom/oneplus/gallery/editor/PhotoEditor;

    # invokes: Lcom/oneplus/gallery/editor/PhotoEditor;->onOriginalPreviewBitmapDecoded(Lcom/oneplus/gallery/media/Media;Landroid/graphics/Bitmap;)V
    invoke-static {v0, p2, p3}, Lcom/oneplus/gallery/editor/PhotoEditor;->access$900(Lcom/oneplus/gallery/editor/PhotoEditor;Lcom/oneplus/gallery/media/Media;Landroid/graphics/Bitmap;)V

    .line 1355
    return-void
.end method
