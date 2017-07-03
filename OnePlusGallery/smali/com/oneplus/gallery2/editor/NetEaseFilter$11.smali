.class Lcom/oneplus/gallery2/editor/NetEaseFilter$11;
.super Ljava/lang/Thread;
.source "NetEaseFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/editor/NetEaseFilter;->prepareFinalResultFilterSDK(Lcom/oneplus/gallery2/media/PhotoMedia;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/editor/NetEaseFilter;

.field final synthetic val$media:Lcom/oneplus/gallery2/media/PhotoMedia;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/editor/NetEaseFilter;Ljava/lang/String;Lcom/oneplus/gallery2/media/PhotoMedia;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 1149
    iput-object p1, p0, Lcom/oneplus/gallery2/editor/NetEaseFilter$11;->this$0:Lcom/oneplus/gallery2/editor/NetEaseFilter;

    iput-object p3, p0, Lcom/oneplus/gallery2/editor/NetEaseFilter$11;->val$media:Lcom/oneplus/gallery2/media/PhotoMedia;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/16 v7, 0x1000

    .line 1152
    iget-object v5, p0, Lcom/oneplus/gallery2/editor/NetEaseFilter$11;->this$0:Lcom/oneplus/gallery2/editor/NetEaseFilter;

    # getter for: Lcom/oneplus/gallery2/editor/NetEaseFilter;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/oneplus/gallery2/editor/NetEaseFilter;->access$2400(Lcom/oneplus/gallery2/editor/NetEaseFilter;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "prepareFinalResultFilterSDK() - Decode [start]"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    const/4 v2, 0x0

    .line 1156
    .local v2, "finalBitmap":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/oneplus/gallery2/editor/NetEaseFilter$11;->val$media:Lcom/oneplus/gallery2/media/PhotoMedia;

    invoke-interface {v5}, Lcom/oneplus/gallery2/media/PhotoMedia;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 1157
    .local v1, "filePath":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 1158
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v7, v7, v5}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/lang/String;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1170
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/oneplus/gallery2/editor/NetEaseFilter$11;->this$0:Lcom/oneplus/gallery2/editor/NetEaseFilter;

    # getter for: Lcom/oneplus/gallery2/editor/NetEaseFilter;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/oneplus/gallery2/editor/NetEaseFilter;->access$2600(Lcom/oneplus/gallery2/editor/NetEaseFilter;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "prepareFinalResultFilterSDK() - Decode [end]"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    iget-object v5, p0, Lcom/oneplus/gallery2/editor/NetEaseFilter$11;->this$0:Lcom/oneplus/gallery2/editor/NetEaseFilter;

    sget-object v6, Lcom/oneplus/base/BaseObject;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v5, v6}, Lcom/oneplus/gallery2/editor/NetEaseFilter;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1174
    iget-object v5, p0, Lcom/oneplus/gallery2/editor/NetEaseFilter$11;->this$0:Lcom/oneplus/gallery2/editor/NetEaseFilter;

    # getter for: Lcom/oneplus/gallery2/editor/NetEaseFilter;->m_ImageProcessHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/oneplus/gallery2/editor/NetEaseFilter;->access$1800(Lcom/oneplus/gallery2/editor/NetEaseFilter;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x4e25

    invoke-static {v5, v6, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 1175
    :cond_1
    return-void

    .line 1161
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/oneplus/gallery2/GalleryApplication;->current()Lcom/oneplus/gallery2/GalleryApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oneplus/gallery2/GalleryApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/gallery2/editor/NetEaseFilter$11;->val$media:Lcom/oneplus/gallery2/media/PhotoMedia;

    invoke-interface {v6}, Lcom/oneplus/gallery2/media/PhotoMedia;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .local v3, "stream":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 1163
    const/16 v5, 0x1000

    const/16 v7, 0x1000

    :try_start_1
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v5, v7, v8}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/io/InputStream;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 1164
    if-eqz v3, :cond_0

    if-eqz v6, :cond_3

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .local v4, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1165
    .end local v3    # "stream":Ljava/io/InputStream;
    .end local v4    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 1167
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/oneplus/gallery2/editor/NetEaseFilter$11;->this$0:Lcom/oneplus/gallery2/editor/NetEaseFilter;

    # getter for: Lcom/oneplus/gallery2/editor/NetEaseFilter;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/oneplus/gallery2/editor/NetEaseFilter;->access$2500(Lcom/oneplus/gallery2/editor/NetEaseFilter;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "prepareFinalResultFilterSDK() - Fail to decode from content URI"

    invoke-static {v5, v6, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1164
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v3    # "stream":Ljava/io/InputStream;
    :cond_3
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 1161
    :catch_2
    move-exception v5

    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1164
    :catchall_0
    move-exception v6

    move-object v9, v6

    move-object v6, v5

    move-object v5, v9

    :goto_1
    if-eqz v3, :cond_4

    if-eqz v6, :cond_5

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :cond_4
    :goto_2
    :try_start_7
    throw v5

    :catch_3
    move-exception v4

    .restart local v4    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v4    # "x2":Ljava/lang/Throwable;
    :cond_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v5

    goto :goto_1
.end method
