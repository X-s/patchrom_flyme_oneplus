.class Lcom/oneplus/gallery2/editor/PhotoEditor$5;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/editor/PhotoEditor;->onPrepare(Lcom/oneplus/gallery2/media/Media;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/editor/PhotoEditor;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/editor/PhotoEditor;)V
    .locals 0

    .prologue
    .line 1393
    iput-object p1, p0, Lcom/oneplus/gallery2/editor/PhotoEditor$5;->this$0:Lcom/oneplus/gallery2/editor/PhotoEditor;

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
    .line 1397
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor$5;->this$0:Lcom/oneplus/gallery2/editor/PhotoEditor;

    # invokes: Lcom/oneplus/gallery2/editor/PhotoEditor;->onSmallOriginalPreviewBitmapDecoded(Lcom/oneplus/gallery2/media/Media;Landroid/graphics/Bitmap;)V
    invoke-static {v0, p2, p3}, Lcom/oneplus/gallery2/editor/PhotoEditor;->access$1000(Lcom/oneplus/gallery2/editor/PhotoEditor;Lcom/oneplus/gallery2/media/Media;Landroid/graphics/Bitmap;)V

    .line 1398
    return-void
.end method
