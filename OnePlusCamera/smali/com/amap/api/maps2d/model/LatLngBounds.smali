.class public final Lcom/amap/api/maps2d/model/LatLngBounds;
.super Ljava/lang/Object;
.source "LatLngBounds.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/maps2d/model/LatLngBounds$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/amap/api/maps2d/model/e;


# instance fields
.field private final a:I

.field private b:Z

.field public final northeast:Lcom/amap/api/maps2d/model/LatLng;

.field public final southwest:Lcom/amap/api/maps2d/model/LatLng;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/amap/api/maps2d/model/e;

    invoke-direct {v0}, Lcom/amap/api/maps2d/model/e;-><init>()V

    sput-object v0, Lcom/amap/api/maps2d/model/LatLngBounds;->CREATOR:Lcom/amap/api/maps2d/model/e;

    return-void
.end method

.method constructor <init>(ILcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;)V
    .locals 6

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->b:Z

    const-string/jumbo v1, "LatLngBounds"

    .line 27
    if-eqz p2, :cond_1

    .line 32
    :goto_0
    if-eqz p3, :cond_2

    .line 37
    :goto_1
    :try_start_0
    iget-wide v2, p3, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v4, p2, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_0

    const-string/jumbo v0, "LatLngBounds"

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "southern latitude exceeds northern latitude ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p2, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p3, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :cond_0
    :goto_2
    iput p1, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->a:I

    .line 46
    iput-object p2, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    .line 47
    iput-object p3, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    .line 48
    return-void

    :cond_1
    :try_start_1
    const-string/jumbo v0, "LatLngBounds"

    const-string/jumbo v2, "null southwest"

    .line 28
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->b:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    const-string/jumbo v2, "LatLngBounds"

    .line 43
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :try_start_2
    const-string/jumbo v0, "LatLngBounds"

    const-string/jumbo v2, "null northeast"

    .line 33
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->b:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public constructor <init>(Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 58
    invoke-direct {p0, v0, p1, p2}, Lcom/amap/api/maps2d/model/LatLngBounds;-><init>(ILcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;)V

    .line 59
    return-void
.end method

.method static synthetic a(DD)D
    .locals 2

    .prologue
    .line 13
    invoke-static {p0, p1, p2, p3}, Lcom/amap/api/maps2d/model/LatLngBounds;->c(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private a(D)Z
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v0, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    cmpg-double v0, v0, p1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v0, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/amap/api/maps2d/model/LatLngBounds;)Z
    .locals 12

    .prologue
    const/4 v0, 0x0

    .line 123
    if-nez p1, :cond_1

    .line 126
    :cond_0
    return v0

    .line 123
    :cond_1
    iget-object v1, p1, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p1, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    iget-object v1, p1, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    add-double/2addr v2, v4

    iget-object v1, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    sub-double/2addr v2, v4

    iget-object v1, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    sub-double/2addr v2, v4

    .line 130
    iget-object v1, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    iget-object v1, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v6, v1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    sub-double/2addr v4, v6

    iget-object v1, p1, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v6, v1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    add-double/2addr v4, v6

    iget-object v1, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v6, v1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    sub-double/2addr v4, v6

    .line 132
    iget-object v1, p1, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v6, v1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-object v1, p1, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v8, v1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    add-double/2addr v6, v8

    iget-object v1, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v8, v1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    sub-double/2addr v6, v8

    iget-object v1, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v8, v1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    sub-double/2addr v6, v8

    .line 134
    iget-object v1, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v8, v1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-object v1, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v10, v1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    sub-double/2addr v8, v10

    iget-object v1, p1, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v10, v1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    add-double/2addr v8, v10

    iget-object v1, p1, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v10, v1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    sub-double/2addr v8, v10

    .line 136
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v1, v2, v4

    if-gez v1, :cond_2

    .line 137
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v1, v2, v8

    if-gez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method static synthetic b(DD)D
    .locals 2

    .prologue
    .line 13
    invoke-static {p0, p1, p2, p3}, Lcom/amap/api/maps2d/model/LatLngBounds;->d(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private b(D)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 203
    iget-object v2, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    iget-object v4, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_1

    .line 204
    iget-object v2, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    cmpg-double v2, v2, p1

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    cmpg-double v2, p1, v2

    if-gtz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 206
    :cond_1
    iget-object v2, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    cmpg-double v2, v2, p1

    if-gtz v2, :cond_4

    move v2, v0

    :goto_1
    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

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

.method public static builder()Lcom/amap/api/maps2d/model/LatLngBounds$Builder;
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    invoke-direct {v0}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;-><init>()V

    return-object v0
.end method

.method private static c(DD)D
    .locals 4

    .prologue
    const-wide v2, 0x4076800000000000L    # 360.0

    .line 177
    sub-double v0, p0, p2

    add-double/2addr v0, v2

    rem-double/2addr v0, v2

    return-wide v0
.end method

.method private static d(DD)D
    .locals 4

    .prologue
    const-wide v2, 0x4076800000000000L    # 360.0

    .line 182
    sub-double v0, p2, p0

    add-double/2addr v0, v2

    rem-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method a()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->a:I

    return v0
.end method

.method public contains(Lcom/amap/api/maps2d/model/LatLng;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 80
    if-eqz p1, :cond_1

    .line 84
    iget-boolean v1, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->b:Z

    if-eqz v1, :cond_2

    .line 89
    iget-wide v2, p1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    invoke-direct {p0, v2, v3}, Lcom/amap/api/maps2d/model/LatLngBounds;->a(D)Z

    move-result v1

    if-nez v1, :cond_3

    .line 90
    :cond_0
    :goto_0
    return v0

    .line 81
    :cond_1
    return v0

    :cond_2
    const-string/jumbo v1, "LatLngBounds"

    const-string/jumbo v2, "this LatLngBounds is invalid!"

    .line 85
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return v0

    .line 89
    :cond_3
    iget-wide v2, p1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    .line 90
    invoke-direct {p0, v2, v3}, Lcom/amap/api/maps2d/model/LatLngBounds;->b(D)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public contains(Lcom/amap/api/maps2d/model/LatLngBounds;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 95
    if-eqz p1, :cond_1

    .line 99
    iget-boolean v1, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->b:Z

    if-eqz v1, :cond_2

    .line 103
    iget-object v1, p1, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {p0, v1}, Lcom/amap/api/maps2d/model/LatLngBounds;->contains(Lcom/amap/api/maps2d/model/LatLng;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 107
    :cond_0
    :goto_0
    return v0

    .line 96
    :cond_1
    return v0

    :cond_2
    const-string/jumbo v1, "LatLngBounds"

    const-string/jumbo v2, "this LatLngBounds is invalid!"

    .line 100
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return v0

    .line 103
    :cond_3
    iget-object v1, p1, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    .line 104
    invoke-virtual {p0, v1}, Lcom/amap/api/maps2d/model/LatLngBounds;->contains(Lcom/amap/api/maps2d/model/LatLng;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 105
    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 236
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 215
    if-eq p0, p1, :cond_1

    .line 217
    instance-of v2, p1, Lcom/amap/api/maps2d/model/LatLngBounds;

    if-eqz v2, :cond_2

    .line 219
    check-cast p1, Lcom/amap/api/maps2d/model/LatLngBounds;

    .line 220
    iget-object v2, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-object v3, p1, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {v2, v3}, Lcom/amap/api/maps2d/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :goto_0
    move v0, v1

    .line 221
    :cond_0
    return v0

    .line 216
    :cond_1
    return v0

    .line 218
    :cond_2
    return v1

    .line 220
    :cond_3
    iget-object v2, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-object v3, p1, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    .line 221
    invoke-virtual {v2, v3}, Lcom/amap/api/maps2d/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v0, 0x2

    .line 211
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cj;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public including(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds;
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 150
    if-eqz p1, :cond_1

    .line 154
    iget-boolean v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->b:Z

    if-eqz v0, :cond_2

    .line 158
    iget-object v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v0, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v2, p1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 159
    iget-object v2, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v4, p1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 160
    iget-object v4, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    .line 161
    iget-object v6, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v6, v6, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    .line 162
    iget-wide v8, p1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    .line 163
    invoke-direct {p0, v8, v9}, Lcom/amap/api/maps2d/model/LatLngBounds;->b(D)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 171
    :cond_0
    :goto_0
    new-instance v4, Lcom/amap/api/maps2d/model/LatLngBounds;

    new-instance v5, Lcom/amap/api/maps2d/model/LatLng;

    invoke-direct {v5, v0, v1, v8, v9}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    new-instance v0, Lcom/amap/api/maps2d/model/LatLng;

    invoke-direct {v0, v2, v3, v8, v9}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    invoke-direct {v4, v5, v0}, Lcom/amap/api/maps2d/model/LatLngBounds;-><init>(Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;)V

    return-object v4

    .line 151
    :cond_1
    return-object p0

    :cond_2
    const-string/jumbo v0, "LatLngBounds"

    const-string/jumbo v1, "this LatLngBounds is invalid!"

    .line 155
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-object v2

    .line 164
    :cond_3
    invoke-static {v6, v7, v8, v9}, Lcom/amap/api/maps2d/model/LatLngBounds;->c(DD)D

    move-result-wide v6

    .line 165
    invoke-static {v4, v5, v8, v9}, Lcom/amap/api/maps2d/model/LatLngBounds;->d(DD)D

    move-result-wide v4

    cmpg-double v4, v6, v4

    if-gez v4, :cond_0

    goto :goto_0
.end method

.method public intersects(Lcom/amap/api/maps2d/model/LatLngBounds;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 112
    if-eqz p1, :cond_1

    .line 115
    iget-boolean v1, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->b:Z

    if-eqz v1, :cond_2

    .line 119
    invoke-direct {p0, p1}, Lcom/amap/api/maps2d/model/LatLngBounds;->a(Lcom/amap/api/maps2d/model/LatLngBounds;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 113
    :cond_1
    return v0

    :cond_2
    const-string/jumbo v1, "LatLngBounds"

    const-string/jumbo v2, "this LatLngBounds is invalid!"

    .line 116
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return v0

    .line 119
    :cond_3
    invoke-direct {p1, p0}, Lcom/amap/api/maps2d/model/LatLngBounds;->a(Lcom/amap/api/maps2d/model/LatLngBounds;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x2

    .line 229
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "southwest"

    iget-object v3, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    .line 230
    invoke-static {v2, v3}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "northeast"

    iget-object v3, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    .line 231
    invoke-static {v2, v3}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 229
    invoke-static {v0}, Lcom/amap/api/mapcore2d/cj;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 241
    invoke-static {p0, p1, p2}, Lcom/amap/api/maps2d/model/e;->a(Lcom/amap/api/maps2d/model/LatLngBounds;Landroid/os/Parcel;I)V

    .line 242
    return-void
.end method
