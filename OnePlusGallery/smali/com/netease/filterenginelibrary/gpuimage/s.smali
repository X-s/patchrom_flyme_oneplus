.class abstract Lcom/netease/filterenginelibrary/gpuimage/s;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/netease/filterenginelibrary/gpuimage/r;

.field private final b:Lcom/netease/filterenginelibrary/gpuimage/r;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Lcom/netease/filterenginelibrary/gpuimage/r;Lcom/netease/filterenginelibrary/gpuimage/r;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/filterenginelibrary/gpuimage/s;->a:Lcom/netease/filterenginelibrary/gpuimage/r;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/netease/filterenginelibrary/gpuimage/s;->b:Lcom/netease/filterenginelibrary/gpuimage/r;

    return-void
.end method

.method private a()Landroid/graphics/Bitmap;
    .locals 7

    const/4 v3, 0x0

    const/4 v1, 0x1

    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v1, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p0, v5}, Lcom/netease/filterenginelibrary/gpuimage/s;->a(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/s;->a:Lcom/netease/filterenginelibrary/gpuimage/r;

    iget v2, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v0, v2}, Lcom/netease/filterenginelibrary/gpuimage/r;->a(Lcom/netease/filterenginelibrary/gpuimage/r;I)V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/s;->a:Lcom/netease/filterenginelibrary/gpuimage/r;

    iget v2, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v0, v2}, Lcom/netease/filterenginelibrary/gpuimage/r;->b(Lcom/netease/filterenginelibrary/gpuimage/r;I)V

    move v0, v1

    :goto_0
    iget v2, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v2, v0

    iget v4, p0, Lcom/netease/filterenginelibrary/gpuimage/s;->c:I

    if-le v2, v4, :cond_3

    move v2, v1

    :goto_1
    iget v4, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v4, v0

    iget v6, p0, Lcom/netease/filterenginelibrary/gpuimage/s;->d:I

    if-le v4, v6, :cond_4

    move v4, v1

    :goto_2
    invoke-direct {p0, v2, v4}, Lcom/netease/filterenginelibrary/gpuimage/s;->a(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v2, v0

    iget v4, p0, Lcom/netease/filterenginelibrary/gpuimage/s;->d:I

    if-le v2, v4, :cond_5

    move v2, v1

    :goto_3
    iget v4, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v4, v0

    iget v6, p0, Lcom/netease/filterenginelibrary/gpuimage/s;->c:I

    if-le v4, v6, :cond_6

    move v4, v1

    :goto_4
    invoke-direct {p0, v2, v4}, Lcom/netease/filterenginelibrary/gpuimage/s;->a(ZZ)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ge v0, v1, :cond_1

    move v0, v1

    :cond_1
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    const v0, 0x8000

    new-array v0, v0, [B

    iput-object v0, v2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    invoke-virtual {p0, v2}, Lcom/netease/filterenginelibrary/gpuimage/s;->a(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1

    :cond_4
    move v4, v3

    goto :goto_2

    :cond_5
    move v2, v3

    goto :goto_3

    :cond_6
    move v4, v3

    goto :goto_4

    :cond_7
    invoke-direct {p0, v0}, Lcom/netease/filterenginelibrary/gpuimage/s;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_5
.end method

.method private a(ZZ)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/netease/filterenginelibrary/gpuimage/s;->a:Lcom/netease/filterenginelibrary/gpuimage/r;

    invoke-static {v2}, Lcom/netease/filterenginelibrary/gpuimage/r;->e(Lcom/netease/filterenginelibrary/gpuimage/r;)Lcom/netease/filterenginelibrary/gpuimage/u;

    move-result-object v2

    sget-object v3, Lcom/netease/filterenginelibrary/gpuimage/u;->b:Lcom/netease/filterenginelibrary/gpuimage/u;

    if-ne v2, v3, :cond_2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private a(II)[I
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    int-to-float v0, p1

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/s;->d:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, p2

    iget v4, p0, Lcom/netease/filterenginelibrary/gpuimage/s;->c:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    iget-object v4, p0, Lcom/netease/filterenginelibrary/gpuimage/s;->a:Lcom/netease/filterenginelibrary/gpuimage/r;

    invoke-static {v4}, Lcom/netease/filterenginelibrary/gpuimage/r;->e(Lcom/netease/filterenginelibrary/gpuimage/r;)Lcom/netease/filterenginelibrary/gpuimage/u;

    move-result-object v4

    sget-object v5, Lcom/netease/filterenginelibrary/gpuimage/u;->b:Lcom/netease/filterenginelibrary/gpuimage/u;

    if-ne v4, v5, :cond_1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/s;->d:I

    int-to-float v0, v0

    int-to-float v1, p2

    div-float v1, v0, v1

    int-to-float v4, p1

    mul-float/2addr v1, v4

    :goto_1
    const/4 v4, 0x2

    new-array v4, v4, [I

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    aput v1, v4, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    aput v0, v4, v2

    return-object v4

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/s;->c:I

    int-to-float v1, v0

    int-to-float v0, p1

    div-float v0, v1, v0

    int-to-float v4, p2

    mul-float/2addr v0, v4

    goto :goto_1
.end method

.method private b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/netease/filterenginelibrary/gpuimage/s;->a(II)[I

    move-result-object v2

    iget-object v3, p0, Lcom/netease/filterenginelibrary/gpuimage/s;->a:Lcom/netease/filterenginelibrary/gpuimage/r;

    aget v4, v2, v6

    invoke-static {v3, v4}, Lcom/netease/filterenginelibrary/gpuimage/r;->c(Lcom/netease/filterenginelibrary/gpuimage/r;I)V

    iget-object v3, p0, Lcom/netease/filterenginelibrary/gpuimage/s;->a:Lcom/netease/filterenginelibrary/gpuimage/r;

    aget v2, v2, v5

    invoke-static {v3, v2}, Lcom/netease/filterenginelibrary/gpuimage/r;->d(Lcom/netease/filterenginelibrary/gpuimage/r;I)V

    invoke-direct {p0, v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/s;->a(II)[I

    move-result-object v0

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/s;->a:Lcom/netease/filterenginelibrary/gpuimage/r;

    aget v2, v0, v6

    invoke-static {v1, v2}, Lcom/netease/filterenginelibrary/gpuimage/r;->e(Lcom/netease/filterenginelibrary/gpuimage/r;I)V

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/s;->a:Lcom/netease/filterenginelibrary/gpuimage/r;

    aget v2, v0, v5

    invoke-static {v1, v2}, Lcom/netease/filterenginelibrary/gpuimage/r;->f(Lcom/netease/filterenginelibrary/gpuimage/r;I)V

    aget v1, v0, v6

    aget v0, v0, v5

    invoke-static {p1, v1, v0, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    move-object p1, v0

    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_0
    return-object p1
.end method


# virtual methods
.method protected abstract a(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method protected varargs a([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 4

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/s;->a:Lcom/netease/filterenginelibrary/gpuimage/r;

    invoke-static {v0}, Lcom/netease/filterenginelibrary/gpuimage/r;->b(Lcom/netease/filterenginelibrary/gpuimage/r;)Lcom/netease/filterenginelibrary/gpuimage/P;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/s;->a:Lcom/netease/filterenginelibrary/gpuimage/r;

    invoke-static {v0}, Lcom/netease/filterenginelibrary/gpuimage/r;->b(Lcom/netease/filterenginelibrary/gpuimage/r;)Lcom/netease/filterenginelibrary/gpuimage/P;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/P;->b()I

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/s;->a:Lcom/netease/filterenginelibrary/gpuimage/r;

    invoke-static {v0}, Lcom/netease/filterenginelibrary/gpuimage/r;->b(Lcom/netease/filterenginelibrary/gpuimage/r;)Lcom/netease/filterenginelibrary/gpuimage/P;

    move-result-object v0

    iget-object v1, v0, Lcom/netease/filterenginelibrary/gpuimage/P;->c:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/s;->a:Lcom/netease/filterenginelibrary/gpuimage/r;

    invoke-static {v0}, Lcom/netease/filterenginelibrary/gpuimage/r;->b(Lcom/netease/filterenginelibrary/gpuimage/r;)Lcom/netease/filterenginelibrary/gpuimage/P;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/filterenginelibrary/gpuimage/P;->c:Ljava/lang/Object;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/s;->a:Lcom/netease/filterenginelibrary/gpuimage/r;

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/r;->g()I

    move-result v0

    iput v0, p0, Lcom/netease/filterenginelibrary/gpuimage/s;->c:I

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/s;->a:Lcom/netease/filterenginelibrary/gpuimage/r;

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/r;->h()I

    move-result v0

    iput v0, p0, Lcom/netease/filterenginelibrary/gpuimage/s;->d:I

    invoke-direct {p0}, Lcom/netease/filterenginelibrary/gpuimage/s;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "LOFTCAM"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/s;->a:Lcom/netease/filterenginelibrary/gpuimage/r;

    invoke-static {v0}, Lcom/netease/filterenginelibrary/gpuimage/r;->c(Lcom/netease/filterenginelibrary/gpuimage/r;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/s;->a:Lcom/netease/filterenginelibrary/gpuimage/r;

    invoke-static {v1}, Lcom/netease/filterenginelibrary/gpuimage/r;->c(Lcom/netease/filterenginelibrary/gpuimage/r;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/s;->b:Lcom/netease/filterenginelibrary/gpuimage/r;

    invoke-virtual {v0, p1}, Lcom/netease/filterenginelibrary/gpuimage/r;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected varargs a([Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/s;->a:Lcom/netease/filterenginelibrary/gpuimage/r;

    invoke-static {v0}, Lcom/netease/filterenginelibrary/gpuimage/r;->d(Lcom/netease/filterenginelibrary/gpuimage/r;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/s;->a:Lcom/netease/filterenginelibrary/gpuimage/r;

    invoke-static {v0}, Lcom/netease/filterenginelibrary/gpuimage/r;->d(Lcom/netease/filterenginelibrary/gpuimage/r;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/filterenginelibrary/gpuimage/s;->a([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/netease/filterenginelibrary/gpuimage/s;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/netease/filterenginelibrary/gpuimage/s;->a([Ljava/lang/Integer;)V

    return-void
.end method
