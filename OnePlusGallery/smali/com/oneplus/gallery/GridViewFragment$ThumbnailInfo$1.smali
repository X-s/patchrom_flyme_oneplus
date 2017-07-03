.class Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo$1;
.super Ljava/lang/Object;
.source "GridViewFragment.java"

# interfaces
.implements Lcom/oneplus/gallery/media/ThumbnailImageManager$DecodingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo$1;->this$1:Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThumbnailImageDecoded(Lcom/oneplus/base/Handle;Lcom/oneplus/gallery/media/Media;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p3, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 210
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo$1;->this$1:Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;

    # getter for: Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->m_IsDecodingHQThumbnailImage:Z
    invoke-static {v0}, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->access$200(Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo$1;->this$1:Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;

    # setter for: Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->m_HQThumbnailImage:Landroid/graphics/Bitmap;
    invoke-static {v0, p3}, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->access$302(Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 213
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo$1;->this$1:Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;

    # setter for: Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->m_HQThumbnailImageSoftRef:Ljava/lang/ref/SoftReference;
    invoke-static {v0, v2}, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->access$402(Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;Ljava/lang/ref/SoftReference;)Ljava/lang/ref/SoftReference;

    .line 214
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo$1;->this$1:Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;

    # getter for: Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->m_HQDecodingHandle:Lcom/oneplus/base/Handle;
    invoke-static {v0}, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->access$500(Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;)Lcom/oneplus/base/Handle;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 216
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo$1;->this$1:Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;

    # setter for: Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->m_HQDecodingHandle:Lcom/oneplus/base/Handle;
    invoke-static {v0, v2}, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->access$502(Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 217
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo$1;->this$1:Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;

    # setter for: Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->m_IsDecodingHQThumbnailImage:Z
    invoke-static {v0, v1}, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->access$202(Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;Z)Z

    .line 218
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo$1;->this$1:Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;

    # setter for: Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->m_IsHighPriorityHQDecoding:Z
    invoke-static {v0, v1}, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->access$602(Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;Z)Z

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo$1;->this$1:Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;

    iget-object v0, v0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo$1;->this$1:Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;

    # invokes: Lcom/oneplus/gallery/GridViewFragment;->onHQThumbnailImageDecoded(Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;Landroid/graphics/Bitmap;)V
    invoke-static {v0, p2, v1, p3}, Lcom/oneplus/gallery/GridViewFragment;->access$700(Lcom/oneplus/gallery/GridViewFragment;Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
