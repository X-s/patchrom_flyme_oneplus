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

.field private final synthetic val$callback:Lcom/oneplus/gallery2/media/Media$DetailsCallback;

.field private final synthetic val$handle:Lcom/oneplus/base/CallbackHandle;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/TempPhotoMedia;Lcom/oneplus/base/CallbackHandle;Lcom/oneplus/gallery2/media/Media$DetailsCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia$2;->this$0:Lcom/oneplus/gallery2/media/TempPhotoMedia;

    iput-object p2, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia$2;->val$handle:Lcom/oneplus/base/CallbackHandle;

    iput-object p3, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia$2;->val$callback:Lcom/oneplus/gallery2/media/Media$DetailsCallback;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/oneplus/gallery2/media/TempPhotoMedia$2;)Lcom/oneplus/gallery2/media/TempPhotoMedia;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia$2;->this$0:Lcom/oneplus/gallery2/media/TempPhotoMedia;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 73
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia$2;->val$handle:Lcom/oneplus/base/CallbackHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    :try_start_0
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia$2;->this$0:Lcom/oneplus/gallery2/media/TempPhotoMedia;

    invoke-virtual {v2}, Lcom/oneplus/gallery2/media/TempPhotoMedia;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result-object v0

    .line 78
    :try_start_1
    invoke-static {v0}, Lcom/oneplus/gallery2/media/MediaUtils;->getPhotoMediaDetails(Ljava/io/InputStream;)Lcom/oneplus/gallery2/media/PhotoMediaDetails;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 79
    if-nez v0, :cond_1

    .line 85
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia$2;->val$handle:Lcom/oneplus/base/CallbackHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 97
    :goto_1
    return-void

    .line 74
    :cond_0
    return-void

    .line 79
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_3

    if-ne v1, v0, :cond_4

    :goto_3
    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_4
    const-class v2, Lcom/oneplus/gallery2/media/TempPhotoMedia;

    .line 82
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getDetails() - Fail to get details for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia$2;->this$0:Lcom/oneplus/gallery2/media/TempPhotoMedia;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v1

    goto :goto_0

    .line 79
    :catchall_1
    move-exception v2

    if-nez v0, :cond_2

    :goto_5
    :try_start_4
    throw v2

    :catchall_2
    move-exception v0

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_5

    move-exception v0

    goto :goto_4

    :cond_3
    move-object v1, v0

    goto :goto_3

    :cond_4
    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    .line 87
    :cond_5
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia$2;->this$0:Lcom/oneplus/gallery2/media/TempPhotoMedia;

    new-instance v1, Lcom/oneplus/gallery2/media/TempPhotoMedia$2$1;

    iget-object v3, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia$2;->val$handle:Lcom/oneplus/base/CallbackHandle;

    iget-object v4, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia$2;->val$callback:Lcom/oneplus/gallery2/media/Media$DetailsCallback;

    invoke-direct {v1, p0, v3, v4, v2}, Lcom/oneplus/gallery2/media/TempPhotoMedia$2$1;-><init>(Lcom/oneplus/gallery2/media/TempPhotoMedia$2;Lcom/oneplus/base/CallbackHandle;Lcom/oneplus/gallery2/media/Media$DetailsCallback;Lcom/oneplus/gallery2/media/PhotoMediaDetails;)V

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 79
    :catchall_3
    move-exception v0

    move-object v2, v1

    goto :goto_2
.end method
