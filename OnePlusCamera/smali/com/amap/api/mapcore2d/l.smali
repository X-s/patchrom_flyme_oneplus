.class public Lcom/amap/api/mapcore2d/l;
.super Ljava/lang/Object;
.source "CameraUpdateFactoryDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/l$a;
    }
.end annotation


# instance fields
.field a:Lcom/amap/api/mapcore2d/l$a;

.field b:F

.field c:F

.field d:F

.field e:F

.field f:Lcom/amap/api/maps2d/model/CameraPosition;

.field g:Lcom/amap/api/maps2d/model/LatLngBounds;

.field h:I

.field i:I

.field j:I

.field k:Landroid/graphics/Point;

.field l:Z

.field private m:F

.field private n:F

.field private o:Lcom/amap/api/mapcore2d/ad;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcom/amap/api/mapcore2d/l$a;->a:Lcom/amap/api/mapcore2d/l$a;

    iput-object v0, p0, Lcom/amap/api/mapcore2d/l;->a:Lcom/amap/api/mapcore2d/l$a;

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/amap/api/mapcore2d/l;->k:Landroid/graphics/Point;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/l;->l:Z

    .line 12
    return-void
.end method

.method public static a()Lcom/amap/api/mapcore2d/l;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/amap/api/mapcore2d/l;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/l;-><init>()V

    .line 32
    return-object v0
.end method

.method public static a(F)Lcom/amap/api/mapcore2d/l;
    .locals 2

    .prologue
    .line 61
    invoke-static {}, Lcom/amap/api/mapcore2d/l;->a()Lcom/amap/api/mapcore2d/l;

    move-result-object v0

    .line 62
    sget-object v1, Lcom/amap/api/mapcore2d/l$a;->f:Lcom/amap/api/mapcore2d/l$a;

    iput-object v1, v0, Lcom/amap/api/mapcore2d/l;->a:Lcom/amap/api/mapcore2d/l$a;

    .line 63
    iput p0, v0, Lcom/amap/api/mapcore2d/l;->d:F

    .line 64
    return-object v0
.end method

.method public static a(FF)Lcom/amap/api/mapcore2d/l;
    .locals 2

    .prologue
    .line 52
    invoke-static {}, Lcom/amap/api/mapcore2d/l;->a()Lcom/amap/api/mapcore2d/l;

    move-result-object v0

    .line 53
    sget-object v1, Lcom/amap/api/mapcore2d/l$a;->h:Lcom/amap/api/mapcore2d/l$a;

    iput-object v1, v0, Lcom/amap/api/mapcore2d/l;->a:Lcom/amap/api/mapcore2d/l$a;

    .line 54
    iput p0, v0, Lcom/amap/api/mapcore2d/l;->b:F

    .line 55
    iput p1, v0, Lcom/amap/api/mapcore2d/l;->c:F

    .line 56
    return-object v0
.end method

.method public static a(FLandroid/graphics/Point;)Lcom/amap/api/mapcore2d/l;
    .locals 2

    .prologue
    .line 73
    invoke-static {}, Lcom/amap/api/mapcore2d/l;->a()Lcom/amap/api/mapcore2d/l;

    move-result-object v0

    .line 74
    sget-object v1, Lcom/amap/api/mapcore2d/l$a;->g:Lcom/amap/api/mapcore2d/l$a;

    iput-object v1, v0, Lcom/amap/api/mapcore2d/l;->a:Lcom/amap/api/mapcore2d/l$a;

    .line 75
    iput p0, v0, Lcom/amap/api/mapcore2d/l;->e:F

    .line 76
    iput-object p1, v0, Lcom/amap/api/mapcore2d/l;->k:Landroid/graphics/Point;

    .line 77
    return-object v0
.end method

.method static a(Lcom/amap/api/mapcore2d/ad;FFF)Lcom/amap/api/mapcore2d/l;
    .locals 2

    .prologue
    .line 144
    invoke-static {}, Lcom/amap/api/mapcore2d/l;->a()Lcom/amap/api/mapcore2d/l;

    move-result-object v0

    .line 145
    sget-object v1, Lcom/amap/api/mapcore2d/l$a;->l:Lcom/amap/api/mapcore2d/l$a;

    iput-object v1, v0, Lcom/amap/api/mapcore2d/l;->a:Lcom/amap/api/mapcore2d/l$a;

    .line 146
    iput-object p0, v0, Lcom/amap/api/mapcore2d/l;->o:Lcom/amap/api/mapcore2d/ad;

    .line 147
    iput p1, v0, Lcom/amap/api/mapcore2d/l;->d:F

    .line 148
    iput p2, v0, Lcom/amap/api/mapcore2d/l;->n:F

    .line 149
    iput p3, v0, Lcom/amap/api/mapcore2d/l;->m:F

    .line 150
    return-object v0
.end method

.method public static a(Lcom/amap/api/maps2d/model/CameraPosition;)Lcom/amap/api/mapcore2d/l;
    .locals 2

    .prologue
    .line 83
    invoke-static {}, Lcom/amap/api/mapcore2d/l;->a()Lcom/amap/api/mapcore2d/l;

    move-result-object v0

    .line 84
    sget-object v1, Lcom/amap/api/mapcore2d/l$a;->i:Lcom/amap/api/mapcore2d/l$a;

    iput-object v1, v0, Lcom/amap/api/mapcore2d/l;->a:Lcom/amap/api/mapcore2d/l$a;

    .line 85
    iput-object p0, v0, Lcom/amap/api/mapcore2d/l;->f:Lcom/amap/api/maps2d/model/CameraPosition;

    .line 86
    return-object v0
.end method

.method public static a(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/mapcore2d/l;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 92
    invoke-static {}, Lcom/amap/api/mapcore2d/l;->a()Lcom/amap/api/mapcore2d/l;

    move-result-object v0

    .line 93
    sget-object v1, Lcom/amap/api/mapcore2d/l$a;->c:Lcom/amap/api/mapcore2d/l$a;

    iput-object v1, v0, Lcom/amap/api/mapcore2d/l;->a:Lcom/amap/api/mapcore2d/l$a;

    .line 94
    new-instance v1, Lcom/amap/api/maps2d/model/CameraPosition;

    invoke-direct {v1, p0, v2, v2, v2}, Lcom/amap/api/maps2d/model/CameraPosition;-><init>(Lcom/amap/api/maps2d/model/LatLng;FFF)V

    iput-object v1, v0, Lcom/amap/api/mapcore2d/l;->f:Lcom/amap/api/maps2d/model/CameraPosition;

    .line 95
    return-object v0
.end method

.method public static a(Lcom/amap/api/maps2d/model/LatLng;F)Lcom/amap/api/mapcore2d/l;
    .locals 1

    .prologue
    .line 131
    invoke-static {}, Lcom/amap/api/maps2d/model/CameraPosition;->builder()Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->target(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v0

    .line 132
    invoke-virtual {v0, p1}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->zoom(F)Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->build()Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object v0

    .line 131
    invoke-static {v0}, Lcom/amap/api/mapcore2d/l;->a(Lcom/amap/api/maps2d/model/CameraPosition;)Lcom/amap/api/mapcore2d/l;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/amap/api/maps2d/model/LatLng;FFF)Lcom/amap/api/mapcore2d/l;
    .locals 1

    .prologue
    .line 137
    invoke-static {}, Lcom/amap/api/maps2d/model/CameraPosition;->builder()Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->target(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v0

    .line 138
    invoke-virtual {v0, p1}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->zoom(F)Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->bearing(F)Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->tilt(F)Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->build()Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object v0

    .line 137
    invoke-static {v0}, Lcom/amap/api/mapcore2d/l;->a(Lcom/amap/api/maps2d/model/CameraPosition;)Lcom/amap/api/mapcore2d/l;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/amap/api/maps2d/model/LatLngBounds;I)Lcom/amap/api/mapcore2d/l;
    .locals 2

    .prologue
    .line 156
    invoke-static {}, Lcom/amap/api/mapcore2d/l;->a()Lcom/amap/api/mapcore2d/l;

    move-result-object v0

    .line 157
    sget-object v1, Lcom/amap/api/mapcore2d/l$a;->j:Lcom/amap/api/mapcore2d/l$a;

    iput-object v1, v0, Lcom/amap/api/mapcore2d/l;->a:Lcom/amap/api/mapcore2d/l$a;

    .line 158
    iput-object p0, v0, Lcom/amap/api/mapcore2d/l;->g:Lcom/amap/api/maps2d/model/LatLngBounds;

    .line 159
    iput p1, v0, Lcom/amap/api/mapcore2d/l;->h:I

    .line 160
    return-object v0
.end method

.method public static a(Lcom/amap/api/maps2d/model/LatLngBounds;III)Lcom/amap/api/mapcore2d/l;
    .locals 2

    .prologue
    .line 166
    invoke-static {}, Lcom/amap/api/mapcore2d/l;->a()Lcom/amap/api/mapcore2d/l;

    move-result-object v0

    .line 167
    sget-object v1, Lcom/amap/api/mapcore2d/l$a;->k:Lcom/amap/api/mapcore2d/l$a;

    iput-object v1, v0, Lcom/amap/api/mapcore2d/l;->a:Lcom/amap/api/mapcore2d/l$a;

    .line 168
    iput-object p0, v0, Lcom/amap/api/mapcore2d/l;->g:Lcom/amap/api/maps2d/model/LatLngBounds;

    .line 169
    iput p3, v0, Lcom/amap/api/mapcore2d/l;->h:I

    .line 170
    iput p1, v0, Lcom/amap/api/mapcore2d/l;->i:I

    .line 171
    iput p2, v0, Lcom/amap/api/mapcore2d/l;->j:I

    .line 172
    return-object v0
.end method

.method public static b()Lcom/amap/api/mapcore2d/l;
    .locals 2

    .prologue
    .line 37
    invoke-static {}, Lcom/amap/api/mapcore2d/l;->a()Lcom/amap/api/mapcore2d/l;

    move-result-object v0

    .line 38
    sget-object v1, Lcom/amap/api/mapcore2d/l$a;->b:Lcom/amap/api/mapcore2d/l$a;

    iput-object v1, v0, Lcom/amap/api/mapcore2d/l;->a:Lcom/amap/api/mapcore2d/l$a;

    .line 39
    return-object v0
.end method

.method public static b(F)Lcom/amap/api/mapcore2d/l;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-static {p0, v0}, Lcom/amap/api/mapcore2d/l;->a(FLandroid/graphics/Point;)Lcom/amap/api/mapcore2d/l;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/mapcore2d/l;
    .locals 1

    .prologue
    .line 125
    invoke-static {}, Lcom/amap/api/maps2d/model/CameraPosition;->builder()Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->target(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->build()Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object v0

    .line 125
    invoke-static {v0}, Lcom/amap/api/mapcore2d/l;->a(Lcom/amap/api/maps2d/model/CameraPosition;)Lcom/amap/api/mapcore2d/l;

    move-result-object v0

    return-object v0
.end method

.method public static c()Lcom/amap/api/mapcore2d/l;
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Lcom/amap/api/mapcore2d/l;->a()Lcom/amap/api/mapcore2d/l;

    move-result-object v0

    .line 45
    sget-object v1, Lcom/amap/api/mapcore2d/l$a;->e:Lcom/amap/api/mapcore2d/l$a;

    iput-object v1, v0, Lcom/amap/api/mapcore2d/l;->a:Lcom/amap/api/mapcore2d/l$a;

    .line 46
    return-object v0
.end method
