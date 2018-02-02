.class Landroid/support/v4/print/PrintHelperKitkat;
.super Ljava/lang/Object;
.source "PrintHelperKitkat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;
    }
.end annotation


# static fields
.field public static final COLOR_MODE_COLOR:I = 0x2

.field public static final COLOR_MODE_MONOCHROME:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "PrintHelperKitkat"

.field private static final MAX_PRINT_SIZE:I = 0xdac

.field public static final ORIENTATION_LANDSCAPE:I = 0x1

.field public static final ORIENTATION_PORTRAIT:I = 0x2

.field public static final SCALE_MODE_FILL:I = 0x2

.field public static final SCALE_MODE_FIT:I = 0x1


# instance fields
.field mColorMode:I

.field final mContext:Landroid/content/Context;

.field mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

.field private final mLock:Ljava/lang/Object;

.field mOrientation:I

.field mScaleMode:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;

    .line 85
    iput v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mScaleMode:I

    .line 87
    iput v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mColorMode:I

    const/4 v0, 0x1

    .line 89
    iput v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mOrientation:I

    .line 92
    iput-object p1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    .line 93
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/print/PrintHelperKitkat;IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v4/print/PrintHelperKitkat;->getMatrix(IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v4/print/PrintHelperKitkat;Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/support/v4/print/PrintHelperKitkat;->loadConstrainedBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v4/print/PrintHelperKitkat;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private getMatrix(IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 270
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 273
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    int-to-float v2, p1

    div-float/2addr v0, v2

    const/4 v2, 0x2

    .line 274
    if-eq p4, v2, :cond_0

    .line 277
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v2

    int-to-float v3, p2

    div-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 279
    :goto_0
    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 282
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v2

    int-to-float v3, p1

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    .line 284
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v3

    int-to-float v4, p2

    mul-float/2addr v0, v4

    sub-float v0, v3, v0

    div-float/2addr v0, v5

    .line 286
    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 287
    return-object v1

    .line 275
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v2

    int-to-float v3, p2

    div-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0
.end method

.method private loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 527
    if-nez p1, :cond_1

    .line 528
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bad argument to loadBitmap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 527
    :cond_1
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 532
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v0, 0x0

    .line 533
    invoke-static {v1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 535
    if-nez v1, :cond_2

    .line 540
    :goto_0
    return-object v0

    .line 537
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 540
    :catch_0
    move-exception v1

    const-string/jumbo v2, "PrintHelperKitkat"

    const-string/jumbo v3, "close fail "

    .line 539
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 540
    :catchall_0
    move-exception v0

    .line 535
    if-nez v1, :cond_3

    .line 540
    :goto_1
    throw v0

    .line 537
    :cond_3
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 540
    :catch_1
    move-exception v1

    const-string/jumbo v2, "PrintHelperKitkat"

    const-string/jumbo v3, "close fail "

    .line 539
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private loadConstrainedBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 477
    if-gtz p2, :cond_1

    .line 478
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bad argument to getScaledBitmap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_1
    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 481
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 482
    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 483
    invoke-direct {p0, p1, v1}, Landroid/support/v4/print/PrintHelperKitkat;->loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 485
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 486
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 489
    if-gtz v2, :cond_3

    .line 490
    :cond_2
    return-object v4

    .line 489
    :cond_3
    if-lez v3, :cond_2

    .line 494
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 497
    :goto_0
    if-gt v1, p2, :cond_5

    .line 503
    if-gtz v0, :cond_6

    .line 504
    :cond_4
    return-object v4

    .line 498
    :cond_5
    ushr-int/lit8 v1, v1, 0x1

    .line 499
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 503
    :cond_6
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    div-int/2addr v1, v0

    if-lez v1, :cond_4

    .line 507
    iget-object v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 508
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v2, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 509
    iget-object v2, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 510
    iget-object v2, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 511
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 512
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    :try_start_1
    invoke-direct {p0, p1, v0}, Landroid/support/v4/print/PrintHelperKitkat;->loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v0

    .line 516
    iget-object v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 517
    :try_start_2
    iput-object v2, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 518
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v0

    .line 512
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 518
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    .line 516
    iget-object v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 517
    :try_start_5
    iput-object v2, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 518
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0
.end method


# virtual methods
.method public getColorMode()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mColorMode:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mOrientation:I

    return v0
.end method

.method public getScaleMode()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mScaleMode:I

    return v0
.end method

.method public printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;)V
    .locals 8

    .prologue
    .line 170
    if-eqz p2, :cond_0

    .line 173
    iget v4, p0, Landroid/support/v4/print/PrintHelperKitkat;->mScaleMode:I

    .line 174
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "print"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/print/PrintManager;

    .line 175
    sget-object v0, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_PORTRAIT:Landroid/print/PrintAttributes$MediaSize;

    .line 176
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 179
    :goto_0
    new-instance v1, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v1}, Landroid/print/PrintAttributes$Builder;-><init>()V

    invoke-virtual {v1, v0}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mColorMode:I

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v7

    .line 184
    new-instance v0, Landroid/support/v4/print/PrintHelperKitkat$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/print/PrintHelperKitkat$1;-><init>(Landroid/support/v4/print/PrintHelperKitkat;Ljava/lang/String;Landroid/graphics/Bitmap;ILandroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;)V

    invoke-virtual {v6, p1, v0, v7}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    .line 258
    return-void

    .line 171
    :cond_0
    return-void

    .line 177
    :cond_1
    sget-object v0, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_LANDSCAPE:Landroid/print/PrintAttributes$MediaSize;

    goto :goto_0
.end method

.method public printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 301
    iget v5, p0, Landroid/support/v4/print/PrintHelperKitkat;->mScaleMode:I

    .line 303
    new-instance v0, Landroid/support/v4/print/PrintHelperKitkat$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/print/PrintHelperKitkat$2;-><init>(Landroid/support/v4/print/PrintHelperKitkat;Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;I)V

    .line 454
    iget-object v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "print"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrintManager;

    .line 455
    new-instance v2, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v2}, Landroid/print/PrintAttributes$Builder;-><init>()V

    .line 456
    iget v3, p0, Landroid/support/v4/print/PrintHelperKitkat;->mColorMode:I

    invoke-virtual {v2, v3}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    .line 458
    iget v3, p0, Landroid/support/v4/print/PrintHelperKitkat;->mOrientation:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 460
    iget v3, p0, Landroid/support/v4/print/PrintHelperKitkat;->mOrientation:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 463
    :goto_0
    invoke-virtual {v2}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v2

    .line 465
    invoke-virtual {v1, p1, v0, v2}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    .line 466
    return-void

    .line 459
    :cond_0
    sget-object v3, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_LANDSCAPE:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v2, v3}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    goto :goto_0

    .line 461
    :cond_1
    sget-object v3, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_PORTRAIT:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v2, v3}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    goto :goto_0
.end method

.method public setColorMode(I)V
    .locals 0

    .prologue
    .line 128
    iput p1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mColorMode:I

    .line 129
    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .prologue
    .line 138
    iput p1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mOrientation:I

    .line 139
    return-void
.end method

.method public setScaleMode(I)V
    .locals 0

    .prologue
    .line 106
    iput p1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mScaleMode:I

    .line 107
    return-void
.end method
