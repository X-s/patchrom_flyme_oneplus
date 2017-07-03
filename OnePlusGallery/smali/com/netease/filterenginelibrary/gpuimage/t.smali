.class Lcom/netease/filterenginelibrary/gpuimage/t;
.super Lcom/netease/filterenginelibrary/gpuimage/s;


# instance fields
.field final synthetic b:Lcom/netease/filterenginelibrary/gpuimage/r;

.field private final c:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/netease/filterenginelibrary/gpuimage/r;Lcom/netease/filterenginelibrary/gpuimage/r;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/filterenginelibrary/gpuimage/t;->b:Lcom/netease/filterenginelibrary/gpuimage/r;

    invoke-direct {p0, p1, p2}, Lcom/netease/filterenginelibrary/gpuimage/s;-><init>(Lcom/netease/filterenginelibrary/gpuimage/r;Lcom/netease/filterenginelibrary/gpuimage/r;)V

    iput-object p3, p0, Lcom/netease/filterenginelibrary/gpuimage/t;->c:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method protected a(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/t;->c:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/t;->c:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/netease/filterenginelibrary/gpuimage/t;->c:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/t;->b:Lcom/netease/filterenginelibrary/gpuimage/r;

    invoke-static {v1}, Lcom/netease/filterenginelibrary/gpuimage/r;->a(Lcom/netease/filterenginelibrary/gpuimage/r;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/filterenginelibrary/gpuimage/t;->c:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "LOFTCAM"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
