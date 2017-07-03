.class public Lcom/netease/filterenginelibrary/utils/BitmapUtils;
.super Ljava/lang/Object;


# static fields
.field public static final ASSETS_SCALE_SIZE:I = 0x4

.field private static final a:F = 1.0E-6f


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateDstRect(IIIILcom/netease/filterenginelibrary/utils/ScalingLogic;)Landroid/graphics/Rect;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/netease/filterenginelibrary/utils/ScalingLogic;->FIT:Lcom/netease/filterenginelibrary/utils/ScalingLogic;

    if-ne p4, v0, :cond_1

    int-to-float v0, p0

    int-to-float v1, p1

    div-float v1, v0, v1

    int-to-float v0, p2

    int-to-float v2, p3

    div-float/2addr v0, v2

    cmpl-float v0, v1, v0

    if-lez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    int-to-float v2, p2

    div-float v1, v2, v1

    float-to-int v1, v1

    invoke-direct {v0, v3, v3, p2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    int-to-float v2, p3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {v0, v3, v3, v1, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3

    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v0, 0x1

    if-ge v1, p2, :cond_0

    if-lt v2, p1, :cond_1

    :cond_0
    if-le v2, v1, :cond_2

    int-to-float v0, v1

    int-to-float v1, p2

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :cond_1
    :goto_0
    return v0

    :cond_2
    int-to-float v0, v2

    int-to-float v1, p1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0
.end method

.method public static calculateSampleSize(IIIILcom/netease/filterenginelibrary/utils/ScalingLogic;)I
    .locals 3

    sget-object v0, Lcom/netease/filterenginelibrary/utils/ScalingLogic;->FIT:Lcom/netease/filterenginelibrary/utils/ScalingLogic;

    if-ne p4, v0, :cond_1

    int-to-float v0, p0

    int-to-float v1, p1

    div-float/2addr v0, v1

    int-to-float v1, p2

    int-to-float v2, p3

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    div-int v0, p0, p2

    :goto_0
    return v0

    :cond_0
    div-int v0, p1, p3

    goto :goto_0

    :cond_1
    int-to-float v0, p0

    int-to-float v1, p1

    div-float/2addr v0, v1

    int-to-float v1, p2

    int-to-float v2, p3

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    div-int v0, p1, p3

    goto :goto_0

    :cond_2
    div-int v0, p0, p2

    goto :goto_0
.end method

.method public static calculateSrcRect(IIIILcom/netease/filterenginelibrary/utils/ScalingLogic;)Landroid/graphics/Rect;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/netease/filterenginelibrary/utils/ScalingLogic;->CROP:Lcom/netease/filterenginelibrary/utils/ScalingLogic;

    if-ne p4, v0, :cond_1

    int-to-float v0, p0

    int-to-float v1, p1

    div-float/2addr v0, v1

    int-to-float v1, p2

    int-to-float v2, p3

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    int-to-float v0, p1

    mul-float/2addr v0, v1

    float-to-int v1, v0

    sub-int v0, p0, v1

    div-int/lit8 v2, v0, 0x2

    new-instance v0, Landroid/graphics/Rect;

    add-int/2addr v1, v2

    invoke-direct {v0, v2, v3, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    return-object v0

    :cond_0
    int-to-float v0, p0

    div-float/2addr v0, v1

    float-to-int v1, v0

    sub-int v0, p1, v1

    div-int/lit8 v2, v0, 0x2

    new-instance v0, Landroid/graphics/Rect;

    add-int/2addr v1, v2

    invoke-direct {v0, v3, v2, p0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, p0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method public static createCropedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;
    .locals 6

    const/high16 v3, 0x3f800000    # 1.0f

    const v2, 0x358637bd    # 1.0E-6f

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p1, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    mul-int/2addr v2, v0

    iget v3, p1, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    mul-int/2addr v3, v1

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iget v5, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    int-to-float v1, v1

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-static {p0, v2, v3, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    move-object p0, v0

    goto :goto_0
.end method

.method public static createScaledBitmap(Landroid/graphics/Bitmap;IILcom/netease/filterenginelibrary/utils/ScalingLogic;)Landroid/graphics/Bitmap;
    .locals 6

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1, p1, p2, p3}, Lcom/netease/filterenginelibrary/utils/BitmapUtils;->calculateSrcRect(IIIILcom/netease/filterenginelibrary/utils/ScalingLogic;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v0, v1, p1, p2, p3}, Lcom/netease/filterenginelibrary/utils/BitmapUtils;->calculateDstRect(IIIILcom/netease/filterenginelibrary/utils/ScalingLogic;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v3, p0, v2, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public static decodeFile(Ljava/lang/String;IILcom/netease/filterenginelibrary/utils/ScalingLogic;)Landroid/graphics/Bitmap;
    .locals 4

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sget-object v3, Lcom/netease/filterenginelibrary/utils/ScalingLogic;->FIT:Lcom/netease/filterenginelibrary/utils/ScalingLogic;

    invoke-static {v1, v2, p1, p2, v3}, Lcom/netease/filterenginelibrary/utils/BitmapUtils;->calculateSampleSize(IIIILcom/netease/filterenginelibrary/utils/ScalingLogic;)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static decodeSampledBitmapFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-static {v0, p1, p2}, Lcom/netease/filterenginelibrary/utils/BitmapUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getOptimalSize(Landroid/content/Context;Landroid/net/Uri;I)I
    .locals 1

    if-eqz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1}, Lcom/netease/filterenginelibrary/utils/FileUtils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/netease/filterenginelibrary/utils/BitmapUtils;->getOptimalSize(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static getOptimalSize(Ljava/lang/String;I)I
    .locals 2

    if-eqz p0, :cond_0

    if-gez p1, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt v0, p1, :cond_3

    if-le v1, p1, :cond_4

    :cond_3
    move v0, p1

    goto :goto_0

    :cond_4
    if-gt v0, v1, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public static getThumbNailFromAssets(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput p2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    const/4 v3, 0x0

    :try_start_1
    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    move-object v2, v0

    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_1
    :goto_3
    throw v0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method
