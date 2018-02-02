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
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia$4;->this$0:Lcom/oneplus/gallery2/media/TempPhotoMedia;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/oneplus/gallery2/media/TempPhotoMedia$4;)Lcom/oneplus/gallery2/media/TempPhotoMedia;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia$4;->this$0:Lcom/oneplus/gallery2/media/TempPhotoMedia;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia$4;->this$0:Lcom/oneplus/gallery2/media/TempPhotoMedia;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/oneplus/gallery2/media/TempPhotoMedia;->openInputStream(Lcom/oneplus/base/Ref;I)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 158
    :try_start_1
    invoke-static {v3}, Lcom/oneplus/media/ImageUtils;->decodeSize(Ljava/io/InputStream;)Landroid/util/Size;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 159
    if-nez v3, :cond_0

    :goto_0
    move-object v2, v0

    .line 166
    :goto_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia$4;->this$0:Lcom/oneplus/gallery2/media/TempPhotoMedia;

    new-instance v1, Lcom/oneplus/gallery2/media/TempPhotoMedia$4$1;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/gallery2/media/TempPhotoMedia$4$1;-><init>(Lcom/oneplus/gallery2/media/TempPhotoMedia$4;Landroid/util/Size;)V

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 174
    return-void

    .line 159
    :cond_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_2

    if-ne v1, v0, :cond_3

    :goto_3
    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    const-class v1, Lcom/oneplus/gallery2/media/TempPhotoMedia;

    .line 162
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "getSize() - Fail to decode size"

    invoke-static {v1, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 159
    :catchall_1
    move-exception v1

    if-nez v3, :cond_1

    :goto_4
    :try_start_4
    throw v1

    :catchall_2
    move-exception v0

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :cond_2
    move-object v1, v0

    goto :goto_3

    :cond_3
    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3
.end method
