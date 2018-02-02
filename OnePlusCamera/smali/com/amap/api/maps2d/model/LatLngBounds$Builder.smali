.class public final Lcom/amap/api/maps2d/model/LatLngBounds$Builder;
.super Ljava/lang/Object;
.source "LatLngBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/maps2d/model/LatLngBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private a:D

.field private b:D

.field private c:D

.field private d:D


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 248
    iput-wide v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->a:D

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 249
    iput-wide v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->b:D

    .line 250
    iput-wide v2, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->c:D

    .line 251
    iput-wide v2, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->d:D

    return-void
.end method

.method private a(D)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 281
    iget-wide v2, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->c:D

    iget-wide v4, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->d:D

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_1

    .line 282
    iget-wide v2, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->c:D

    cmpg-double v2, v2, p1

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->d:D

    cmpg-double v2, p1, v2

    if-gtz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 283
    :cond_1
    iget-wide v2, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->c:D

    cmpg-double v2, v2, p1

    if-gtz v2, :cond_4

    move v2, v0

    :goto_1
    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->d:D

    cmpg-double v2, p1, v2

    if-gtz v2, :cond_3

    :cond_2
    move v1, v0

    :cond_3
    return v1

    :cond_4
    move v2, v1

    goto :goto_1
.end method


# virtual methods
.method public build()Lcom/amap/api/maps2d/model/LatLngBounds;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const-string/jumbo v1, "build"

    .line 294
    :try_start_0
    iget-wide v2, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->c:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    new-instance v0, Lcom/amap/api/maps2d/model/LatLngBounds;

    new-instance v2, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->a:D

    iget-wide v6, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->c:D

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    new-instance v3, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->b:D

    iget-wide v6, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->d:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    invoke-direct {v0, v2, v3}, Lcom/amap/api/maps2d/model/LatLngBounds;-><init>(Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;)V

    return-object v0

    :cond_0
    const-string/jumbo v0, "LatLngBounds"

    const-string/jumbo v2, "no included points"

    .line 295
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    return-object v8

    .line 298
    :catch_0
    move-exception v0

    const-string/jumbo v2, "LatLngBounds"

    .line 301
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    return-object v8
.end method

.method public include(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;
    .locals 6

    .prologue
    .line 262
    iget-wide v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->a:D

    iget-wide v2, p1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->a:D

    .line 263
    iget-wide v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->b:D

    iget-wide v2, p1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->b:D

    .line 264
    iget-wide v0, p1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    .line 265
    iget-wide v2, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->c:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_0

    .line 268
    invoke-direct {p0, v0, v1}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->a(D)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 277
    :goto_0
    return-object p0

    .line 266
    :cond_0
    iput-wide v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->c:D

    .line 267
    iput-wide v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->d:D

    goto :goto_0

    .line 269
    :cond_1
    iget-wide v2, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->c:D

    invoke-static {v2, v3, v0, v1}, Lcom/amap/api/maps2d/model/LatLngBounds;->a(DD)D

    move-result-wide v2

    iget-wide v4, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->d:D

    .line 270
    invoke-static {v4, v5, v0, v1}, Lcom/amap/api/maps2d/model/LatLngBounds;->b(DD)D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-gez v2, :cond_2

    .line 272
    iput-wide v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->c:D

    goto :goto_0

    .line 274
    :cond_2
    iput-wide v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->d:D

    goto :goto_0
.end method
