.class Lcom/oneplus/gallery2/media/TempPhotoMedia$2;
.super Ljava/lang/Object;
.source "TempPhotoMedia.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/TempPhotoMedia;->getDetails(Lcom/oneplus/gallery2/media/Media$DetailsCallback;)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/TempPhotoMedia;

.field final synthetic val$callback:Lcom/oneplus/gallery2/media/Media$DetailsCallback;

.field final synthetic val$handle:Lcom/oneplus/base/CallbackHandle;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/TempPhotoMedia;Lcom/oneplus/base/CallbackHandle;Lcom/oneplus/gallery2/media/Media$DetailsCallback;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia$2;->this$0:Lcom/oneplus/gallery2/media/TempPhotoMedia;

    iput-object p2, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia$2;->val$handle:Lcom/oneplus/base/CallbackHandle;

    iput-object p3, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia$2;->val$callback:Lcom/oneplus/gallery2/media/Media$DetailsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 63
    iget-object v5, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia$2;->val$handle:Lcom/oneplus/base/CallbackHandle;

    invoke-static {v5}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    const/4 v0, 0x0

    .line 66
    .local v0, "details":Lcom/oneplus/gallery2/media/PhotoMediaDetails;
    :try_start_0
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oneplus/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia$2;->this$0:Lcom/oneplus/gallery2/media/TempPhotoMedia;

    invoke-virtual {v6}, Lcom/oneplus/gallery2/media/TempPhotoMedia;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .local v3, "stream":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 68
    :try_start_1
    invoke-static {v3}, Lcom/oneplus/gallery2/media/MediaUtils;->getPhotoMediaDetails(Ljava/io/InputStream;)Lcom/oneplus/gallery2/media/PhotoMediaDetails;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 69
    if-eqz v3, :cond_2

    if-eqz v6, :cond_3

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 74
    .end local v3    # "stream":Ljava/io/InputStream;
    :cond_2
    :goto_1
    move-object v2, v0

    .line 75
    .local v2, "finalDetails":Lcom/oneplus/gallery2/media/PhotoMediaDetails;
    iget-object v5, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia$2;->val$handle:Lcom/oneplus/base/CallbackHandle;

    invoke-static {v5}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 77
    iget-object v5, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia$2;->this$0:Lcom/oneplus/gallery2/media/TempPhotoMedia;

    new-instance v6, Lcom/oneplus/gallery2/media/TempPhotoMedia$2$1;

    invoke-direct {v6, p0, v2}, Lcom/oneplus/gallery2/media/TempPhotoMedia$2$1;-><init>(Lcom/oneplus/gallery2/media/TempPhotoMedia$2;Lcom/oneplus/gallery2/media/PhotoMediaDetails;)V

    invoke-static {v5, v6}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 69
    .end local v2    # "finalDetails":Lcom/oneplus/gallery2/media/PhotoMediaDetails;
    .restart local v3    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v4

    .local v4, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 70
    .end local v3    # "stream":Ljava/io/InputStream;
    .end local v4    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 72
    .local v1, "ex":Ljava/lang/Throwable;
    const-class v5, Lcom/oneplus/gallery2/media/TempPhotoMedia;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDetails() - Fail to get details for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia$2;->this$0:Lcom/oneplus/gallery2/media/TempPhotoMedia;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 69
    .end local v1    # "ex":Ljava/lang/Throwable;
    .restart local v3    # "stream":Ljava/io/InputStream;
    :cond_3
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 66
    :catch_2
    move-exception v6

    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 69
    :catchall_0
    move-exception v5

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
.end method
