.class Lcom/oneplus/gallery2/PhotoEditorFragment$25;
.super Ljava/lang/Object;
.source "PhotoEditorFragment.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/PhotoEditorFragment;->onEditorStateChanged(Lcom/oneplus/gallery2/editor/MediaEditor$State;Lcom/oneplus/gallery2/editor/MediaEditor$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/PhotoEditorFragment;

.field final synthetic val$activity:Lcom/oneplus/gallery2/GalleryActivity;

.field final synthetic val$embeddedThumbSize:Landroid/util/Size;

.field final synthetic val$thumbnailActivateHandle:Lcom/oneplus/base/Handle;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/PhotoEditorFragment;Landroid/util/Size;Lcom/oneplus/base/Handle;Lcom/oneplus/gallery2/GalleryActivity;)V
    .locals 0

    .prologue
    .line 1093
    iput-object p1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$25;->this$0:Lcom/oneplus/gallery2/PhotoEditorFragment;

    iput-object p2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$25;->val$embeddedThumbSize:Landroid/util/Size;

    iput-object p3, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$25;->val$thumbnailActivateHandle:Lcom/oneplus/base/Handle;

    iput-object p4, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$25;->val$activity:Lcom/oneplus/gallery2/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThumbnailImageDecoded(Lcom/oneplus/base/Handle;Lcom/oneplus/gallery2/media/Media;Landroid/graphics/Bitmap;)V
    .locals 12
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p3, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v10, 0x2d0

    .line 1098
    iget-object v5, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$25;->val$embeddedThumbSize:Landroid/util/Size;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$25;->this$0:Lcom/oneplus/gallery2/PhotoEditorFragment;

    # getter for: Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ResultIntent:Landroid/content/Intent;
    invoke-static {v5}, Lcom/oneplus/gallery2/PhotoEditorFragment;->access$2300(Lcom/oneplus/gallery2/PhotoEditorFragment;)Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1100
    if-eqz p3, :cond_7

    .line 1102
    iget-object v5, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$25;->val$embeddedThumbSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$25;->val$embeddedThumbSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-static {p3, v5, v6}, Lcom/oneplus/media/ImageUtils;->createThumbnailImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1103
    .local v1, "embeddedThumb":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_6

    .line 1105
    iget-object v5, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$25;->this$0:Lcom/oneplus/gallery2/PhotoEditorFragment;

    # getter for: Lcom/oneplus/gallery2/PhotoEditorFragment;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/oneplus/gallery2/PhotoEditorFragment;->access$2400(Lcom/oneplus/gallery2/PhotoEditorFragment;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "onEditorStateChanged() - Embedded thumbnail image : "

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v5, v6, v7, v8, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1106
    iget-object v5, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$25;->this$0:Lcom/oneplus/gallery2/PhotoEditorFragment;

    # getter for: Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ResultIntent:Landroid/content/Intent;
    invoke-static {v5}, Lcom/oneplus/gallery2/PhotoEditorFragment;->access$2300(Lcom/oneplus/gallery2/PhotoEditorFragment;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "data"

    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1116
    .end local v1    # "embeddedThumb":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    if-eqz p3, :cond_4

    .line 1118
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-lt v10, v5, :cond_1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-ge v10, v5, :cond_2

    .line 1119
    :cond_1
    invoke-static {p3, v10, v10}, Lcom/oneplus/media/ImageUtils;->createThumbnailImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 1121
    :cond_2
    iget-object v5, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$25;->this$0:Lcom/oneplus/gallery2/PhotoEditorFragment;

    # getter for: Lcom/oneplus/gallery2/PhotoEditorFragment;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/oneplus/gallery2/PhotoEditorFragment;->access$2700(Lcom/oneplus/gallery2/PhotoEditorFragment;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "onEditorStateChanged() - Create compressed thumbnail image [start]"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .local v3, "stream":Ljava/io/ByteArrayOutputStream;
    const/4 v6, 0x0

    .line 1124
    :try_start_1
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x46

    invoke-virtual {p3, v5, v7, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1125
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 1126
    .local v0, "compressedThumb":[B
    iget-object v5, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$25;->this$0:Lcom/oneplus/gallery2/PhotoEditorFragment;

    # getter for: Lcom/oneplus/gallery2/PhotoEditorFragment;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/oneplus/gallery2/PhotoEditorFragment;->access$2800(Lcom/oneplus/gallery2/PhotoEditorFragment;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "onEditorStateChanged() - Compressed thumbnail image : "

    array-length v8, v0

    int-to-long v8, v8

    invoke-static {v8, v9}, Lcom/oneplus/io/FileUtils;->getFileSizeDescription(J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1127
    iget-object v5, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$25;->this$0:Lcom/oneplus/gallery2/PhotoEditorFragment;

    # getter for: Lcom/oneplus/gallery2/PhotoEditorFragment;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/oneplus/gallery2/PhotoEditorFragment;->access$2900(Lcom/oneplus/gallery2/PhotoEditorFragment;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "onEditorStateChanged() - Create compressed thumbnail image [end]"

    invoke-static {v5, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1128
    if-eqz v3, :cond_3

    if-eqz v6, :cond_8

    :try_start_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 1134
    .end local v3    # "stream":Ljava/io/ByteArrayOutputStream;
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 1135
    iget-object v5, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$25;->this$0:Lcom/oneplus/gallery2/PhotoEditorFragment;

    # getter for: Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ResultIntent:Landroid/content/Intent;
    invoke-static {v5}, Lcom/oneplus/gallery2/PhotoEditorFragment;->access$2300(Lcom/oneplus/gallery2/PhotoEditorFragment;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "thumbnail"

    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1139
    .end local v0    # "compressedThumb":[B
    :cond_4
    iget-object v5, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$25;->val$thumbnailActivateHandle:Lcom/oneplus/base/Handle;

    invoke-static {v5}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 1142
    iget-object v5, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$25;->this$0:Lcom/oneplus/gallery2/PhotoEditorFragment;

    # getter for: Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ExitAfterSaving:Z
    invoke-static {v5}, Lcom/oneplus/gallery2/PhotoEditorFragment;->access$3100(Lcom/oneplus/gallery2/PhotoEditorFragment;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1144
    iget-object v5, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$25;->this$0:Lcom/oneplus/gallery2/PhotoEditorFragment;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/oneplus/gallery2/PhotoEditorFragment;->setProcessingDialogVisibility(Z)V

    .line 1145
    iget-object v5, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$25;->val$activity:Lcom/oneplus/gallery2/GalleryActivity;

    invoke-virtual {v5}, Lcom/oneplus/gallery2/GalleryActivity;->finish()V

    .line 1147
    :cond_5
    return-void

    .line 1109
    .restart local v1    # "embeddedThumb":Landroid/graphics/Bitmap;
    :cond_6
    iget-object v5, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$25;->this$0:Lcom/oneplus/gallery2/PhotoEditorFragment;

    # getter for: Lcom/oneplus/gallery2/PhotoEditorFragment;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/oneplus/gallery2/PhotoEditorFragment;->access$2500(Lcom/oneplus/gallery2/PhotoEditorFragment;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "onEditorStateChanged() - Embedded thumbnail image is needed, but fail to create"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1112
    .end local v1    # "embeddedThumb":Landroid/graphics/Bitmap;
    :cond_7
    iget-object v5, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$25;->this$0:Lcom/oneplus/gallery2/PhotoEditorFragment;

    # getter for: Lcom/oneplus/gallery2/PhotoEditorFragment;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/oneplus/gallery2/PhotoEditorFragment;->access$2600(Lcom/oneplus/gallery2/PhotoEditorFragment;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "onEditorStateChanged() - Embedded thumbnail image is needed, but fail to create"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1128
    .restart local v0    # "compressedThumb":[B
    .restart local v3    # "stream":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v4

    .local v4, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1129
    .end local v0    # "compressedThumb":[B
    .end local v3    # "stream":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v2

    .line 1131
    .local v2, "ex":Ljava/lang/Throwable;
    const/4 v0, 0x0

    .line 1132
    .restart local v0    # "compressedThumb":[B
    iget-object v5, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$25;->this$0:Lcom/oneplus/gallery2/PhotoEditorFragment;

    # getter for: Lcom/oneplus/gallery2/PhotoEditorFragment;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/oneplus/gallery2/PhotoEditorFragment;->access$3000(Lcom/oneplus/gallery2/PhotoEditorFragment;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "onEditorStateChanged() - Fail to compress thumbnail image"

    invoke-static {v5, v6, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1128
    .end local v2    # "ex":Ljava/lang/Throwable;
    .restart local v3    # "stream":Ljava/io/ByteArrayOutputStream;
    :cond_8
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 1122
    .end local v0    # "compressedThumb":[B
    :catch_2
    move-exception v5

    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1128
    :catchall_0
    move-exception v6

    move-object v11, v6

    move-object v6, v5

    move-object v5, v11

    :goto_2
    if-eqz v3, :cond_9

    if-eqz v6, :cond_a

    :try_start_6
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :cond_9
    :goto_3
    :try_start_7
    throw v5

    :catch_3
    move-exception v4

    .restart local v4    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v4    # "x2":Ljava/lang/Throwable;
    :cond_a
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    :catchall_1
    move-exception v5

    goto :goto_2
.end method
