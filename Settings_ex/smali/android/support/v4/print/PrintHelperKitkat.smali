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

.field protected mIsMinMarginsHandlingCorrect:Z

.field private final mLock:Ljava/lang/Object;

.field mOrientation:I

.field protected mPrintActivityRespectsOrientation:Z

.field mScaleMode:I


# direct methods
.method static synthetic -get0(Landroid/support/v4/print/PrintHelperKitkat;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/support/v4/print/PrintHelperKitkat;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "original"    # Landroid/graphics/Bitmap;
    .param p2, "colorMode"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/support/v4/print/PrintHelperKitkat;->convertBitmapForColorMode(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/support/v4/print/PrintHelperKitkat;Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "maxSideLength"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/support/v4/print/PrintHelperKitkat;->loadConstrainedBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Landroid/support/v4/print/PrintHelperKitkat;IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;
    .locals 1
    .param p1, "imageWidth"    # I
    .param p2, "imageHeight"    # I
    .param p3, "content"    # Landroid/graphics/RectF;
    .param p4, "fittingMode"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v4/print/PrintHelperKitkat;->getMatrix(IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    invoke-static {p0}, Landroid/support/v4/print/PrintHelperKitkat;->isPortrait(Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Landroid/support/v4/print/PrintHelperKitkat;Landroid/print/PrintAttributes;ILandroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .locals 0
    .param p1, "attributes"    # Landroid/print/PrintAttributes;
    .param p2, "fittingMode"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p6, "writeResultCallback"    # Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    .prologue
    invoke-direct/range {p0 .. p6}, Landroid/support/v4/print/PrintHelperKitkat;->writeBitmap(Landroid/print/PrintAttributes;ILandroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;

    .line 102
    iput v2, p0, Landroid/support/v4/print/PrintHelperKitkat;->mScaleMode:I

    .line 104
    iput v2, p0, Landroid/support/v4/print/PrintHelperKitkat;->mColorMode:I

    .line 109
    iput-boolean v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mPrintActivityRespectsOrientation:Z

    .line 110
    iput-boolean v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mIsMinMarginsHandlingCorrect:Z

    .line 112
    iput-object p1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    .line 108
    return-void
.end method

.method private convertBitmapForColorMode(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "original"    # Landroid/graphics/Bitmap;
    .param p2, "colorMode"    # I

    .prologue
    const/4 v8, 0x0

    .line 682
    const/4 v5, 0x1

    if-eq p2, v5, :cond_0

    .line 683
    return-object p1

    .line 686
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 687
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 686
    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 688
    .local v3, "grayscale":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 689
    .local v0, "c":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 690
    .local v4, "p":Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 691
    .local v1, "cm":Landroid/graphics/ColorMatrix;
    invoke-virtual {v1, v8}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 692
    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 693
    .local v2, "f":Landroid/graphics/ColorMatrixColorFilter;
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 694
    invoke-virtual {v0, p1, v8, v8, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 695
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 697
    return-object v3
.end method

.method private getMatrix(IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;
    .locals 7
    .param p1, "imageWidth"    # I
    .param p2, "imageHeight"    # I
    .param p3, "content"    # Landroid/graphics/RectF;
    .param p4, "fittingMode"    # I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 292
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 295
    .local v0, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v4

    int-to-float v5, p1

    div-float v1, v4, v5

    .line 296
    .local v1, "scale":F
    const/4 v4, 0x2

    if-ne p4, v4, :cond_0

    .line 297
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v4

    int-to-float v5, p2

    div-float/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 301
    :goto_0
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 304
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v4

    .line 305
    int-to-float v5, p1

    mul-float/2addr v5, v1

    .line 304
    sub-float/2addr v4, v5

    div-float v2, v4, v6

    .line 306
    .local v2, "translateX":F
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v4

    .line 307
    int-to-float v5, p2

    mul-float/2addr v5, v1

    .line 306
    sub-float/2addr v4, v5

    div-float v3, v4, v6

    .line 308
    .local v3, "translateY":F
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 309
    return-object v0

    .line 299
    .end local v2    # "translateX":F
    .end local v3    # "translateY":F
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v4

    int-to-float v5, p2

    div-float/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_0
.end method

.method private static isPortrait(Landroid/graphics/Bitmap;)Z
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 192
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 193
    const/4 v0, 0x1

    return v0

    .line 195
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "o"    # Landroid/graphics/BitmapFactory$Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 663
    if-eqz p1, :cond_0

    iget-object v2, p0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 664
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "bad argument to loadBitmap"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 666
    :cond_1
    const/4 v0, 0x0

    .line 668
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 669
    .local v0, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    invoke-static {v0, v2, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 671
    if-eqz v0, :cond_2

    .line 673
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 669
    :cond_2
    :goto_0
    return-object v2

    .line 674
    :catch_0
    move-exception v1

    .line 675
    .local v1, "t":Ljava/io/IOException;
    const-string/jumbo v3, "PrintHelperKitkat"

    const-string/jumbo v4, "close fail "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 670
    .end local v0    # "is":Ljava/io/InputStream;
    .end local v1    # "t":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 671
    if-eqz v0, :cond_3

    .line 673
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 670
    :cond_3
    :goto_1
    throw v2

    .line 674
    :catch_1
    move-exception v1

    .line 675
    .restart local v1    # "t":Ljava/io/IOException;
    const-string/jumbo v3, "PrintHelperKitkat"

    const-string/jumbo v4, "close fail "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private loadConstrainedBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "maxSideLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 613
    if-lez p2, :cond_0

    if-nez p1, :cond_1

    .line 614
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "bad argument to getScaledBitmap"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 613
    :cond_1
    iget-object v6, p0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_0

    .line 617
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 618
    .local v3, "opt":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v8, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 619
    invoke-direct {p0, p1, v3}, Landroid/support/v4/print/PrintHelperKitkat;->loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 621
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 622
    .local v5, "w":I
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 625
    .local v1, "h":I
    if-lez v5, :cond_2

    if-gtz v1, :cond_3

    .line 626
    :cond_2
    return-object v7

    .line 630
    :cond_3
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 632
    .local v2, "imageSide":I
    const/4 v4, 0x1

    .line 633
    .local v4, "sampleSize":I
    :goto_0
    if-le v2, p2, :cond_4

    .line 634
    ushr-int/lit8 v2, v2, 0x1

    .line 635
    shl-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 639
    :cond_4
    if-lez v4, :cond_5

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    div-int/2addr v6, v4

    if-gtz v6, :cond_6

    .line 640
    :cond_5
    return-object v7

    .line 642
    :cond_6
    const/4 v0, 0x0

    .line 643
    .local v0, "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    iget-object v7, p0, Landroid/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 644
    :try_start_0
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v6, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 645
    iget-object v6, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v8, 0x1

    iput-boolean v8, v6, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 646
    iget-object v6, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    iput v4, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 647
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    monitor-exit v7

    .line 650
    :try_start_1
    invoke-direct {p0, p1, v0}, Landroid/support/v4/print/PrintHelperKitkat;->loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v6

    .line 652
    iget-object v7, p0, Landroid/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 653
    const/4 v8, 0x0

    :try_start_2
    iput-object v8, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v7

    .line 650
    return-object v6

    .line 643
    .local v0, "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 652
    .local v0, "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    :catchall_1
    move-exception v6

    monitor-exit v7

    throw v6

    .line 651
    :catchall_2
    move-exception v6

    .line 652
    iget-object v7, p0, Landroid/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 653
    const/4 v8, 0x0

    :try_start_3
    iput-object v8, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    monitor-exit v7

    .line 651
    throw v6

    .line 652
    :catchall_3
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method private writeBitmap(Landroid/print/PrintAttributes;ILandroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .locals 9
    .param p1, "attributes"    # Landroid/print/PrintAttributes;
    .param p2, "fittingMode"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p6, "writeResultCallback"    # Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    .prologue
    .line 327
    iget-boolean v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mIsMinMarginsHandlingCorrect:Z

    if-eqz v0, :cond_0

    .line 328
    move-object v3, p1

    .line 336
    .local v3, "pdfAttributes":Landroid/print/PrintAttributes;
    :goto_0
    new-instance v0, Landroid/support/v4/print/PrintHelperKitkat$2;

    move-object v1, p0

    move-object v2, p5

    move-object v4, p3

    move-object v5, p4

    move-object v6, p1

    move v7, p2

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/support/v4/print/PrintHelperKitkat$2;-><init>(Landroid/support/v4/print/PrintHelperKitkat;Landroid/os/CancellationSignal;Landroid/print/PrintAttributes;Landroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;Landroid/print/PrintAttributes;ILandroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/support/v4/print/PrintHelperKitkat$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 325
    return-void

    .line 332
    .end local v3    # "pdfAttributes":Landroid/print/PrintAttributes;
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v4/print/PrintHelperKitkat;->copyAttributes(Landroid/print/PrintAttributes;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    .line 333
    new-instance v1, Landroid/print/PrintAttributes$Margins;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v1, v2, v4, v5, v6}, Landroid/print/PrintAttributes$Margins;-><init>(IIII)V

    .line 332
    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setMinMargins(Landroid/print/PrintAttributes$Margins;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v3

    .restart local v3    # "pdfAttributes":Landroid/print/PrintAttributes;
    goto :goto_0
.end method


# virtual methods
.method protected copyAttributes(Landroid/print/PrintAttributes;)Landroid/print/PrintAttributes$Builder;
    .locals 3
    .param p1, "other"    # Landroid/print/PrintAttributes;

    .prologue
    .line 207
    new-instance v1, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v1}, Landroid/print/PrintAttributes$Builder;-><init>()V

    .line 208
    invoke-virtual {p1}, Landroid/print/PrintAttributes;->getMediaSize()Landroid/print/PrintAttributes$MediaSize;

    move-result-object v2

    .line 207
    invoke-virtual {v1, v2}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    move-result-object v1

    .line 209
    invoke-virtual {p1}, Landroid/print/PrintAttributes;->getResolution()Landroid/print/PrintAttributes$Resolution;

    move-result-object v2

    .line 207
    invoke-virtual {v1, v2}, Landroid/print/PrintAttributes$Builder;->setResolution(Landroid/print/PrintAttributes$Resolution;)Landroid/print/PrintAttributes$Builder;

    move-result-object v1

    .line 210
    invoke-virtual {p1}, Landroid/print/PrintAttributes;->getMinMargins()Landroid/print/PrintAttributes$Margins;

    move-result-object v2

    .line 207
    invoke-virtual {v1, v2}, Landroid/print/PrintAttributes$Builder;->setMinMargins(Landroid/print/PrintAttributes$Margins;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    .line 212
    .local v0, "b":Landroid/print/PrintAttributes$Builder;
    invoke-virtual {p1}, Landroid/print/PrintAttributes;->getColorMode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    invoke-virtual {p1}, Landroid/print/PrintAttributes;->getColorMode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    .line 216
    :cond_0
    return-object v0
.end method

.method public getColorMode()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mColorMode:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mOrientation:I

    if-nez v0, :cond_0

    .line 170
    const/4 v0, 0x1

    return v0

    .line 172
    :cond_0
    iget v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mOrientation:I

    return v0
.end method

.method public getScaleMode()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mScaleMode:I

    return v0
.end method

.method public printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;)V
    .locals 9
    .param p1, "jobName"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "callback"    # Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;

    .prologue
    .line 228
    if-nez p2, :cond_0

    .line 229
    return-void

    .line 231
    :cond_0
    iget v3, p0, Landroid/support/v4/print/PrintHelperKitkat;->mScaleMode:I

    .line 232
    .local v3, "fittingMode":I
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "print"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/print/PrintManager;

    .line 234
    .local v8, "printManager":Landroid/print/PrintManager;
    invoke-static {p2}, Landroid/support/v4/print/PrintHelperKitkat;->isPortrait(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    sget-object v7, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_PORTRAIT:Landroid/print/PrintAttributes$MediaSize;

    .line 239
    .local v7, "mediaSize":Landroid/print/PrintAttributes$MediaSize;
    :goto_0
    new-instance v0, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v0}, Landroid/print/PrintAttributes$Builder;-><init>()V

    invoke-virtual {v0, v7}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    .line 241
    iget v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mColorMode:I

    .line 239
    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v6

    .line 245
    .local v6, "attr":Landroid/print/PrintAttributes;
    new-instance v0, Landroid/support/v4/print/PrintHelperKitkat$1;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/print/PrintHelperKitkat$1;-><init>(Landroid/support/v4/print/PrintHelperKitkat;Ljava/lang/String;ILandroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;)V

    .line 244
    invoke-virtual {v8, p1, v0, v6}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    .line 227
    return-void

    .line 237
    .end local v6    # "attr":Landroid/print/PrintAttributes;
    .end local v7    # "mediaSize":Landroid/print/PrintAttributes$MediaSize;
    :cond_1
    sget-object v7, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_LANDSCAPE:Landroid/print/PrintAttributes$MediaSize;

    .restart local v7    # "mediaSize":Landroid/print/PrintAttributes$MediaSize;
    goto :goto_0
.end method

.method public printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;)V
    .locals 9
    .param p1, "jobName"    # Ljava/lang/String;
    .param p2, "imageFile"    # Landroid/net/Uri;
    .param p3, "callback"    # Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 448
    iget v4, p0, Landroid/support/v4/print/PrintHelperKitkat;->mScaleMode:I

    .line 450
    .local v4, "fittingMode":I
    new-instance v0, Landroid/support/v4/print/PrintHelperKitkat$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/print/PrintHelperKitkat$3;-><init>(Landroid/support/v4/print/PrintHelperKitkat;Ljava/lang/String;Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;ILandroid/net/Uri;)V

    .line 590
    .local v0, "printDocumentAdapter":Landroid/print/PrintDocumentAdapter;
    iget-object v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "print"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/print/PrintManager;

    .line 591
    .local v8, "printManager":Landroid/print/PrintManager;
    new-instance v7, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v7}, Landroid/print/PrintAttributes$Builder;-><init>()V

    .line 592
    .local v7, "builder":Landroid/print/PrintAttributes$Builder;
    iget v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mColorMode:I

    invoke-virtual {v7, v1}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    .line 594
    iget v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mOrientation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mOrientation:I

    if-nez v1, :cond_2

    .line 595
    :cond_0
    sget-object v1, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_LANDSCAPE:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v7, v1}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    .line 599
    :cond_1
    :goto_0
    invoke-virtual {v7}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v6

    .line 601
    .local v6, "attr":Landroid/print/PrintAttributes;
    invoke-virtual {v8, p1, v0, v6}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    .line 447
    return-void

    .line 596
    .end local v6    # "attr":Landroid/print/PrintAttributes;
    :cond_2
    iget v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 597
    sget-object v1, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_PORTRAIT:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v7, v1}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    goto :goto_0
.end method

.method public setColorMode(I)V
    .locals 0
    .param p1, "colorMode"    # I

    .prologue
    .line 148
    iput p1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mColorMode:I

    .line 147
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 158
    iput p1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mOrientation:I

    .line 157
    return-void
.end method

.method public setScaleMode(I)V
    .locals 0
    .param p1, "scaleMode"    # I

    .prologue
    .line 126
    iput p1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mScaleMode:I

    .line 125
    return-void
.end method
