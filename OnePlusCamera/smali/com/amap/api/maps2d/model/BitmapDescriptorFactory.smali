.class public final Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;
.super Ljava/lang/Object;
.source "BitmapDescriptorFactory.java"


# static fields
.field public static final HUE_AZURE:F = 210.0f

.field public static final HUE_BLUE:F = 240.0f

.field public static final HUE_CYAN:F = 180.0f

.field public static final HUE_GREEN:F = 120.0f

.field public static final HUE_MAGENTA:F = 300.0f

.field public static final HUE_ORANGE:F = 30.0f

.field public static final HUE_RED:F = 0.0f

.field public static final HUE_ROSE:F = 330.0f

.field public static final HUE_VIOLET:F = 270.0f

.field public static final HUE_YELLOW:F = 60.0f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 118
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 119
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 118
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->measure(II)V

    .line 120
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 121
    invoke-virtual {p0}, Landroid/view/View;->buildDrawingCache()V

    .line 122
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 123
    return-object v0
.end method

.method public static defaultMarker()Lcom/amap/api/maps2d/model/BitmapDescriptor;
    .locals 3

    .prologue
    const-string/jumbo v1, "defaultMarker"

    .line 217
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amap/api/mapcore2d/ah$a;->b:Lcom/amap/api/mapcore2d/ah$a;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/ah$a;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ".png"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/amap/api/maps2d/model/BitmapDescriptor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "BitmapDescriptorFactory"

    .line 220
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 221
    return-object v0
.end method

.method public static defaultMarker(F)Lcom/amap/api/maps2d/model/BitmapDescriptor;
    .locals 5

    .prologue
    const/high16 v2, 0x43a50000    # 330.0f

    const/4 v3, 0x0

    const-string/jumbo v4, "defaultMarker"

    const/high16 v0, 0x41700000    # 15.0f

    .line 236
    add-float/2addr v0, p0

    float-to-int v0, v0

    :try_start_0
    div-int/lit8 v0, v0, 0x1e

    mul-int/lit8 v0, v0, 0x1e

    int-to-float v0, v0

    .line 237
    cmpl-float v1, v0, v2

    if-lez v1, :cond_1

    move v1, v2

    :goto_0
    const-string/jumbo v0, ""

    .line 243
    cmpl-float v3, v1, v3

    if-nez v3, :cond_3

    const-string/jumbo v0, "RED"

    .line 264
    :cond_0
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "2d.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v0

    return-object v0

    .line 239
    :cond_1
    cmpg-float v1, v0, v3

    if-gez v1, :cond_2

    move v1, v3

    .line 240
    goto :goto_0

    :cond_2
    move v1, v0

    .line 239
    goto :goto_0

    :cond_3
    const/high16 v3, 0x41f00000    # 30.0f

    .line 245
    cmpl-float v3, v1, v3

    if-nez v3, :cond_4

    const-string/jumbo v0, "ORANGE"

    goto :goto_1

    :cond_4
    const/high16 v3, 0x42700000    # 60.0f

    .line 247
    cmpl-float v3, v1, v3

    if-nez v3, :cond_5

    const-string/jumbo v0, "YELLOW"

    goto :goto_1

    :cond_5
    const/high16 v3, 0x42f00000    # 120.0f

    .line 249
    cmpl-float v3, v1, v3

    if-nez v3, :cond_6

    const-string/jumbo v0, "GREEN"

    goto :goto_1

    :cond_6
    const/high16 v3, 0x43340000    # 180.0f

    .line 251
    cmpl-float v3, v1, v3

    if-nez v3, :cond_7

    const-string/jumbo v0, "CYAN"

    goto :goto_1

    :cond_7
    const/high16 v3, 0x43520000    # 210.0f

    .line 253
    cmpl-float v3, v1, v3

    if-nez v3, :cond_8

    const-string/jumbo v0, "AZURE"

    goto :goto_1

    :cond_8
    const/high16 v3, 0x43700000    # 240.0f

    .line 255
    cmpl-float v3, v1, v3

    if-nez v3, :cond_9

    const-string/jumbo v0, "BLUE"

    goto :goto_1

    :cond_9
    const/high16 v3, 0x43870000    # 270.0f

    .line 257
    cmpl-float v3, v1, v3

    if-nez v3, :cond_a

    const-string/jumbo v0, "VIOLET"

    goto :goto_1

    :cond_a
    const/high16 v3, 0x43960000    # 300.0f

    .line 259
    cmpl-float v3, v1, v3

    if-nez v3, :cond_b

    const-string/jumbo v0, "MAGENTAV"

    goto :goto_1

    .line 261
    :cond_b
    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const-string/jumbo v0, "ROSE"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 264
    :catch_0
    move-exception v0

    const-string/jumbo v1, "BitmapDescriptorFactory"

    .line 266
    invoke-static {v0, v1, v4}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 267
    return-object v0
.end method

.method public static fromAsset(Ljava/lang/String;)Lcom/amap/api/maps2d/model/BitmapDescriptor;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v3, "fromAsset"

    :try_start_0
    const-class v0, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/assets/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 157
    :try_start_1
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 168
    invoke-static {v0}, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps2d/model/BitmapDescriptor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 173
    if-nez v1, :cond_0

    .line 178
    :goto_0
    return-object v0

    .line 175
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    const-string/jumbo v1, "BitmapDescriptorFactory"

    .line 177
    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-object v2

    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_3
    const-string/jumbo v4, "BitmapDescriptorFactory"

    .line 170
    invoke-static {v0, v4, v3}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 173
    if-nez v1, :cond_1

    .line 178
    :goto_2
    return-object v2

    .line 175
    :cond_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 179
    :catch_2
    move-exception v0

    const-string/jumbo v1, "BitmapDescriptorFactory"

    .line 177
    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-object v2

    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 173
    :goto_3
    if-nez v1, :cond_2

    .line 178
    :goto_4
    throw v0

    .line 175
    :cond_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    .line 179
    :catch_3
    move-exception v0

    const-string/jumbo v1, "BitmapDescriptorFactory"

    .line 177
    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-object v2

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method public static fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps2d/model/BitmapDescriptor;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 279
    if-eqz p0, :cond_0

    .line 282
    new-instance v0, Lcom/amap/api/maps2d/model/BitmapDescriptor;

    invoke-direct {v0, p0}, Lcom/amap/api/maps2d/model/BitmapDescriptor;-><init>(Landroid/graphics/Bitmap;)V

    .line 283
    return-object v0

    .line 280
    :cond_0
    return-object v0
.end method

.method public static fromFile(Ljava/lang/String;)Lcom/amap/api/maps2d/model/BitmapDescriptor;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string/jumbo v1, "fromFile"

    .line 194
    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore2d/aq;->a:Landroid/content/Context;

    .line 195
    if-nez v0, :cond_0

    .line 201
    return-object v3

    .line 196
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 197
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 198
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 199
    invoke-static {v2}, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps2d/model/BitmapDescriptor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 201
    :catch_0
    move-exception v0

    const-string/jumbo v2, "BitmapDescriptorFactory"

    .line 203
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-object v3
.end method

.method public static fromPath(Ljava/lang/String;)Lcom/amap/api/maps2d/model/BitmapDescriptor;
    .locals 3

    .prologue
    const-string/jumbo v1, "fromPath"

    .line 136
    :try_start_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 137
    invoke-static {v0}, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps2d/model/BitmapDescriptor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "BitmapDescriptorFactory"

    .line 139
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 140
    return-object v0
.end method

.method public static fromResource(I)Lcom/amap/api/maps2d/model/BitmapDescriptor;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string/jumbo v1, "fromResource"

    .line 77
    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore2d/aq;->a:Landroid/content/Context;

    .line 78
    if-nez v0, :cond_0

    .line 83
    return-object v3

    .line 79
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 81
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps2d/model/BitmapDescriptor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 83
    :catch_0
    move-exception v0

    const-string/jumbo v2, "BitmapDescriptorFactory"

    .line 85
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-object v3
.end method

.method public static fromView(Landroid/view/View;)Lcom/amap/api/maps2d/model/BitmapDescriptor;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string/jumbo v1, "fromView"

    .line 100
    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore2d/aq;->a:Landroid/content/Context;

    .line 101
    if-nez v0, :cond_0

    .line 107
    return-object v3

    .line 102
    :cond_0
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 103
    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 104
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->destroyDrawingCache()V

    .line 105
    invoke-static {v2}, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps2d/model/BitmapDescriptor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 107
    :catch_0
    move-exception v0

    const-string/jumbo v2, "BitmapDescriptorFactory"

    .line 109
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-object v3
.end method
