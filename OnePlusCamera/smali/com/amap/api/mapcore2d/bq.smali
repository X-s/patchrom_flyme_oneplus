.class public Lcom/amap/api/mapcore2d/bq;
.super Ljava/lang/Object;
.source "TileOverlayDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore2d/aj;


# static fields
.field private static a:I


# instance fields
.field private b:Lcom/amap/api/mapcore2d/br;

.field private c:Lcom/amap/api/mapcore2d/am;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    sput v0, Lcom/amap/api/mapcore2d/bq;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/maps2d/model/TileOverlayOptions;Lcom/amap/api/mapcore2d/br;Lcom/amap/api/mapcore2d/au;Lcom/amap/api/mapcore2d/ay;Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p2, p0, Lcom/amap/api/mapcore2d/bq;->b:Lcom/amap/api/mapcore2d/br;

    .line 52
    new-instance v0, Lcom/amap/api/mapcore2d/am;

    invoke-direct {v0, p3}, Lcom/amap/api/mapcore2d/am;-><init>(Lcom/amap/api/mapcore2d/au;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bq;->c:Lcom/amap/api/mapcore2d/am;

    .line 53
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bq;->c:Lcom/amap/api/mapcore2d/am;

    iput-boolean v3, v0, Lcom/amap/api/mapcore2d/am;->e:Z

    .line 56
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bq;->c:Lcom/amap/api/mapcore2d/am;

    iput-boolean v3, v0, Lcom/amap/api/mapcore2d/am;->g:Z

    .line 57
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bq;->c:Lcom/amap/api/mapcore2d/am;

    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/TileOverlayOptions;->getDiskCacheEnabled()Z

    move-result v1

    iput-boolean v1, v0, Lcom/amap/api/mapcore2d/am;->f:Z

    .line 59
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bq;->c:Lcom/amap/api/mapcore2d/am;

    new-instance v1, Lcom/amap/api/mapcore2d/bk;

    invoke-direct {v1}, Lcom/amap/api/mapcore2d/bk;-><init>()V

    iput-object v1, v0, Lcom/amap/api/mapcore2d/am;->p:Lcom/amap/api/mapcore2d/bk;

    .line 60
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bq;->c:Lcom/amap/api/mapcore2d/am;

    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/TileOverlayOptions;->getTileProvider()Lcom/amap/api/maps2d/model/TileProvider;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/mapcore2d/am;->k:Lcom/amap/api/maps2d/model/TileProvider;

    .line 61
    iget-object v7, p0, Lcom/amap/api/mapcore2d/bq;->c:Lcom/amap/api/mapcore2d/am;

    new-instance v0, Lcom/amap/api/mapcore2d/az;

    iget-object v1, p4, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget v1, v1, Lcom/amap/api/mapcore2d/ay$a;->e:I

    iget-object v2, p4, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget v2, v2, Lcom/amap/api/mapcore2d/ay$a;->f:I

    const-wide/16 v4, 0x0

    iget-object v6, p0, Lcom/amap/api/mapcore2d/bq;->c:Lcom/amap/api/mapcore2d/am;

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/mapcore2d/az;-><init>(IIZJLcom/amap/api/mapcore2d/am;)V

    iput-object v0, v7, Lcom/amap/api/mapcore2d/am;->n:Lcom/amap/api/mapcore2d/az;

    .line 66
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/TileOverlayOptions;->getDiskCacheDir()Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    :goto_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bq;->c:Lcom/amap/api/mapcore2d/am;

    iput-object v0, v1, Lcom/amap/api/mapcore2d/am;->m:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bq;->c:Lcom/amap/api/mapcore2d/am;

    new-instance v1, Lcom/amap/api/mapcore2d/s;

    .line 72
    invoke-virtual {p2}, Lcom/amap/api/mapcore2d/br;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/amap/api/mapcore2d/bq;->c:Lcom/amap/api/mapcore2d/am;

    invoke-direct {v1, v2, v3, v4}, Lcom/amap/api/mapcore2d/s;-><init>(Landroid/content/Context;ZLcom/amap/api/mapcore2d/am;)V

    iput-object v1, v0, Lcom/amap/api/mapcore2d/am;->o:Lcom/amap/api/mapcore2d/s;

    .line 74
    new-instance v0, Lcom/amap/api/mapcore2d/bs;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bq;->c:Lcom/amap/api/mapcore2d/am;

    invoke-direct {v0, p4, p5, v1}, Lcom/amap/api/mapcore2d/bs;-><init>(Lcom/amap/api/mapcore2d/ay;Landroid/content/Context;Lcom/amap/api/mapcore2d/am;)V

    .line 76
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bq;->c:Lcom/amap/api/mapcore2d/am;

    iput-object v0, v1, Lcom/amap/api/mapcore2d/am;->q:Lcom/amap/api/mapcore2d/bs;

    .line 77
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bq;->c:Lcom/amap/api/mapcore2d/am;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/am;->a(Z)V

    .line 78
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/TileOverlayOptions;->isVisible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/bq;->d:Z

    .line 79
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bq;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bq;->e:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/TileOverlayOptions;->getZIndex()F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore2d/bq;->f:F

    .line 82
    return-void

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bq;->c:Lcom/amap/api/mapcore2d/am;

    iput-boolean v3, v1, Lcom/amap/api/mapcore2d/am;->f:Z

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    sget v0, Lcom/amap/api/mapcore2d/bq;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/amap/api/mapcore2d/bq;->a:I

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/amap/api/mapcore2d/bq;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bq;->b:Lcom/amap/api/mapcore2d/br;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/br;->b(Lcom/amap/api/mapcore2d/aj;)Z

    .line 94
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bq;->c:Lcom/amap/api/mapcore2d/am;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/am;->b()V

    .line 95
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bq;->c:Lcom/amap/api/mapcore2d/am;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/am;->q:Lcom/amap/api/mapcore2d/bs;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bs;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    const-string/jumbo v1, "TileOverlayDelegateImp"

    const-string/jumbo v2, "remove"

    .line 97
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(F)V
    .locals 0

    .prologue
    .line 123
    iput p1, p0, Lcom/amap/api/mapcore2d/bq;->f:F

    .line 124
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bq;->c:Lcom/amap/api/mapcore2d/am;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/am;->a(Landroid/graphics/Canvas;)V

    .line 146
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/bq;->d:Z

    .line 134
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bq;->c:Lcom/amap/api/mapcore2d/am;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/am;->a(Z)V

    .line 135
    return-void
.end method

.method public a(Lcom/amap/api/mapcore2d/aj;)Z
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bq;->c:Lcom/amap/api/mapcore2d/am;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/am;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    const-string/jumbo v1, "TileOverlayDelegateImp"

    const-string/jumbo v2, "remove"

    .line 109
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 165
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bq;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 118
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bq;->e:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string/jumbo v0, "TileOverlay"

    .line 116
    invoke-static {v0}, Lcom/amap/api/mapcore2d/bq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bq;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public d()F
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/amap/api/mapcore2d/bq;->f:F

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bq;->d:Z

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 159
    return v0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bq;->c:Lcom/amap/api/mapcore2d/am;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/am;->q:Lcom/amap/api/mapcore2d/bs;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bs;->c()V

    .line 172
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bq;->c:Lcom/amap/api/mapcore2d/am;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/am;->q:Lcom/amap/api/mapcore2d/bs;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bs;->d()V

    .line 179
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bq;->c:Lcom/amap/api/mapcore2d/am;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/am;->q:Lcom/amap/api/mapcore2d/bs;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bs;->b()V

    .line 191
    return-void
.end method
