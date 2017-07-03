.class Lcom/oneplus/gallery2/media/TempPhotoMedia$4;
.super Ljava/lang/Object;
.source "TempPhotoMedia.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/TempPhotoMedia;->getSize(Lcom/oneplus/gallery2/media/Media$SizeCallback;)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/TempPhotoMedia;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/TempPhotoMedia;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia$4;->this$0:Lcom/oneplus/gallery2/media/TempPhotoMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 130
    :try_start_0
    iget-object v5, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia$4;->this$0:Lcom/oneplus/gallery2/media/TempPhotoMedia;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/oneplus/gallery2/media/TempPhotoMedia;->openInputStream(I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .local v3, "stream":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 132
    :try_start_1
    invoke-static {v3}, Lcom/oneplus/media/ImageUtils;->decodeSize(Ljava/io/InputStream;)Landroid/util/Size;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 133
    .local v2, "size":Landroid/util/Size;
    if-eqz v3, :cond_0

    if-eqz v6, :cond_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 139
    .end local v3    # "stream":Ljava/io/InputStream;
    :cond_0
    :goto_0
    move-object v1, v2

    .line 140
    .local v1, "finalSize":Landroid/util/Size;
    iget-object v5, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia$4;->this$0:Lcom/oneplus/gallery2/media/TempPhotoMedia;

    new-instance v6, Lcom/oneplus/gallery2/media/TempPhotoMedia$4$1;

    invoke-direct {v6, p0, v1}, Lcom/oneplus/gallery2/media/TempPhotoMedia$4$1;-><init>(Lcom/oneplus/gallery2/media/TempPhotoMedia$4;Landroid/util/Size;)V

    invoke-static {v5, v6}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 148
    return-void

    .line 133
    .end local v1    # "finalSize":Landroid/util/Size;
    .restart local v3    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v4

    .local v4, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 134
    .end local v2    # "size":Landroid/util/Size;
    .end local v3    # "stream":Ljava/io/InputStream;
    .end local v4    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 136
    .local v0, "ex":Ljava/lang/Throwable;
    const-class v5, Lcom/oneplus/gallery2/media/TempPhotoMedia;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getSize() - Fail to decode size"

    invoke-static {v5, v6, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    const/4 v2, 0x0

    .restart local v2    # "size":Landroid/util/Size;
    goto :goto_0

    .line 133
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v3    # "stream":Ljava/io/InputStream;
    :cond_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 130
    .end local v2    # "size":Landroid/util/Size;
    :catch_2
    move-exception v6

    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 133
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_2

    if-eqz v6, :cond_3

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :cond_2
    :goto_1
    :try_start_7
    throw v5

    :catch_3
    move-exception v4

    .restart local v4    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v4    # "x2":Ljava/lang/Throwable;
    :cond_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1
.end method
