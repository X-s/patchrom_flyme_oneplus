.class Lcom/amap/api/mapcore2d/bv;
.super Lcom/amap/api/mapcore2d/d;
.source "TransAnim.java"


# instance fields
.field private c:Lcom/amap/api/mapcore2d/u;

.field private d:Lcom/amap/api/mapcore2d/u;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Lcom/amap/api/mapcore2d/bw;


# direct methods
.method public constructor <init>(IILcom/amap/api/mapcore2d/u;Lcom/amap/api/mapcore2d/u;ILcom/amap/api/mapcore2d/bw;)V
    .locals 4

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore2d/d;-><init>(II)V

    .line 29
    iput-object p3, p0, Lcom/amap/api/mapcore2d/bv;->c:Lcom/amap/api/mapcore2d/u;

    .line 30
    iput-object p4, p0, Lcom/amap/api/mapcore2d/bv;->d:Lcom/amap/api/mapcore2d/u;

    .line 32
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bv;->c:Lcom/amap/api/mapcore2d/u;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/u;->e()D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/amap/api/mapcore2d/bv;->e:I

    .line 33
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bv;->c:Lcom/amap/api/mapcore2d/u;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/u;->f()D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/amap/api/mapcore2d/bv;->f:I

    .line 34
    iput-object p6, p0, Lcom/amap/api/mapcore2d/bv;->l:Lcom/amap/api/mapcore2d/bw;

    .line 35
    invoke-virtual {p4}, Lcom/amap/api/mapcore2d/u;->e()D

    move-result-wide v0

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bv;->c:Lcom/amap/api/mapcore2d/u;

    .line 36
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/u;->e()D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 35
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/amap/api/mapcore2d/bv;->i:I

    .line 37
    invoke-virtual {p4}, Lcom/amap/api/mapcore2d/u;->f()D

    move-result-wide v0

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bv;->c:Lcom/amap/api/mapcore2d/u;

    .line 38
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/u;->f()D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 37
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/amap/api/mapcore2d/bv;->j:I

    .line 39
    invoke-direct {p0, p5}, Lcom/amap/api/mapcore2d/bv;->a(I)V

    .line 40
    return-void
.end method

.method private a(III)I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    if-gt p2, p1, :cond_0

    .line 104
    sub-int v0, p1, p3

    .line 105
    if-le v0, p2, :cond_2

    move p2, v0

    .line 110
    :goto_0
    return p2

    .line 98
    :cond_0
    add-int v0, p1, p3

    .line 99
    if-ge v0, p2, :cond_1

    move p2, v0

    goto :goto_0

    .line 101
    :cond_1
    iput v1, p0, Lcom/amap/api/mapcore2d/bv;->k:I

    goto :goto_0

    .line 107
    :cond_2
    iput v1, p0, Lcom/amap/api/mapcore2d/bv;->k:I

    goto :goto_0
.end method

.method private a(I)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 43
    div-int/lit8 v0, p1, 0xa

    div-int/lit8 v0, v0, 0xa

    .line 44
    if-lt v0, v1, :cond_0

    .line 47
    :goto_0
    iget v1, p0, Lcom/amap/api/mapcore2d/bv;->i:I

    div-int/2addr v1, v0

    iput v1, p0, Lcom/amap/api/mapcore2d/bv;->g:I

    .line 48
    iget v1, p0, Lcom/amap/api/mapcore2d/bv;->j:I

    div-int v0, v1, v0

    iput v0, p0, Lcom/amap/api/mapcore2d/bv;->h:I

    .line 50
    return-void

    :cond_0
    move v0, v1

    .line 45
    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 73
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bv;->d:Lcom/amap/api/mapcore2d/u;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/u;->e()D

    move-result-wide v0

    double-to-int v0, v0

    .line 74
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bv;->d:Lcom/amap/api/mapcore2d/u;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/u;->f()D

    move-result-wide v2

    double-to-int v7, v2

    .line 76
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bv;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    iget v1, p0, Lcom/amap/api/mapcore2d/bv;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/amap/api/mapcore2d/bv;->k:I

    .line 83
    iget v1, p0, Lcom/amap/api/mapcore2d/bv;->e:I

    iget v2, p0, Lcom/amap/api/mapcore2d/bv;->g:I

    invoke-direct {p0, v1, v0, v2}, Lcom/amap/api/mapcore2d/bv;->a(III)I

    move-result v1

    iput v1, p0, Lcom/amap/api/mapcore2d/bv;->e:I

    .line 84
    iget v1, p0, Lcom/amap/api/mapcore2d/bv;->f:I

    iget v2, p0, Lcom/amap/api/mapcore2d/bv;->h:I

    invoke-direct {p0, v1, v7, v2}, Lcom/amap/api/mapcore2d/bv;->a(III)I

    move-result v1

    iput v1, p0, Lcom/amap/api/mapcore2d/bv;->f:I

    .line 86
    iget-object v8, p0, Lcom/amap/api/mapcore2d/bv;->l:Lcom/amap/api/mapcore2d/bw;

    new-instance v1, Lcom/amap/api/mapcore2d/u;

    iget v2, p0, Lcom/amap/api/mapcore2d/bv;->f:I

    int-to-double v2, v2

    iget v4, p0, Lcom/amap/api/mapcore2d/bv;->e:I

    int-to-double v4, v4

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/mapcore2d/u;-><init>(DDZ)V

    invoke-interface {v8, v1}, Lcom/amap/api/mapcore2d/bw;->a(Lcom/amap/api/mapcore2d/u;)V

    .line 87
    iget v1, p0, Lcom/amap/api/mapcore2d/bv;->e:I

    if-eq v1, v0, :cond_2

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iput v0, p0, Lcom/amap/api/mapcore2d/bv;->e:I

    .line 78
    iput v7, p0, Lcom/amap/api/mapcore2d/bv;->f:I

    .line 80
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bv;->l:Lcom/amap/api/mapcore2d/bw;

    new-instance v1, Lcom/amap/api/mapcore2d/u;

    iget v2, p0, Lcom/amap/api/mapcore2d/bv;->f:I

    int-to-double v2, v2

    iget v4, p0, Lcom/amap/api/mapcore2d/bv;->e:I

    int-to-double v4, v4

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/mapcore2d/u;-><init>(DDZ)V

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/bw;->a(Lcom/amap/api/mapcore2d/u;)V

    goto :goto_0

    .line 87
    :cond_2
    iget v0, p0, Lcom/amap/api/mapcore2d/bv;->f:I

    if-ne v0, v7, :cond_0

    .line 88
    invoke-virtual {p0, v6}, Lcom/amap/api/mapcore2d/bv;->a(Z)V

    .line 89
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/bv;->b(Z)V

    .line 90
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bv;->g()V

    goto :goto_0
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bv;->l:Lcom/amap/api/mapcore2d/bw;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/bw;->c()V

    .line 62
    invoke-static {}, Lcom/amap/api/mapcore2d/m;->a()Lcom/amap/api/mapcore2d/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/m;->b()V

    .line 63
    return-void
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bv;->l:Lcom/amap/api/mapcore2d/bw;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/bw;->c()V

    .line 56
    invoke-static {}, Lcom/amap/api/mapcore2d/k;->a()Lcom/amap/api/mapcore2d/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/k;->b()V

    .line 57
    return-void
.end method

.method protected g()V
    .locals 1

    .prologue
    .line 114
    invoke-static {}, Lcom/amap/api/mapcore2d/bj;->a()Lcom/amap/api/mapcore2d/bj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bj;->b()V

    .line 115
    return-void
.end method
