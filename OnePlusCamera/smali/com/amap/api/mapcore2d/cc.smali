.class Lcom/amap/api/mapcore2d/cc;
.super Lcom/amap/api/mapcore2d/d;
.source "ZoomCtlAnim.java"


# instance fields
.field public c:F

.field public d:Z

.field private e:Landroid/view/animation/Animation$AnimationListener;

.field private f:Lcom/amap/api/mapcore2d/b;

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/b;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v0, 0xa0

    const/16 v1, 0x28

    .line 34
    invoke-direct {p0, v0, v1}, Lcom/amap/api/mapcore2d/d;-><init>(II)V

    .line 20
    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/cc;->m:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 25
    iput v0, p0, Lcom/amap/api/mapcore2d/cc;->c:F

    .line 30
    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/cc;->d:Z

    .line 36
    iput-object p1, p0, Lcom/amap/api/mapcore2d/cc;->f:Lcom/amap/api/mapcore2d/b;

    .line 37
    iput-object p2, p0, Lcom/amap/api/mapcore2d/cc;->e:Landroid/view/animation/Animation$AnimationListener;

    .line 38
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 5

    .prologue
    .line 43
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/cc;->l:Z

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cc;->f:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    iget v1, v0, Lcom/amap/api/mapcore2d/au;->c:F

    iget v2, p0, Lcom/amap/api/mapcore2d/cc;->k:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/amap/api/mapcore2d/au;->c:F

    .line 47
    :goto_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 48
    iget-object v1, p0, Lcom/amap/api/mapcore2d/cc;->f:Lcom/amap/api/mapcore2d/b;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    iget v1, v1, Lcom/amap/api/mapcore2d/au;->c:F

    iget-object v2, p0, Lcom/amap/api/mapcore2d/cc;->f:Lcom/amap/api/mapcore2d/b;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    iget v2, v2, Lcom/amap/api/mapcore2d/au;->c:F

    iget v3, p0, Lcom/amap/api/mapcore2d/cc;->g:F

    iget v4, p0, Lcom/amap/api/mapcore2d/cc;->h:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 49
    iget-object v1, p0, Lcom/amap/api/mapcore2d/cc;->f:Lcom/amap/api/mapcore2d/b;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/cc;->f:Lcom/amap/api/mapcore2d/b;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    iget v2, v2, Lcom/amap/api/mapcore2d/au;->c:F

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore2d/b;->d(F)Z

    .line 50
    iget-object v1, p0, Lcom/amap/api/mapcore2d/cc;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/b;->b(Landroid/graphics/Matrix;)Z

    .line 54
    :goto_1
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cc;->f:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    iget v1, v0, Lcom/amap/api/mapcore2d/au;->c:F

    iget v2, p0, Lcom/amap/api/mapcore2d/cc;->k:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/amap/api/mapcore2d/au;->c:F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public a(FFZFF)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 110
    iput-boolean p3, p0, Lcom/amap/api/mapcore2d/cc;->l:Z

    .line 111
    iput p4, p0, Lcom/amap/api/mapcore2d/cc;->g:F

    .line 112
    iput p5, p0, Lcom/amap/api/mapcore2d/cc;->h:F

    .line 114
    iput p1, p0, Lcom/amap/api/mapcore2d/cc;->i:F

    .line 115
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cc;->f:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    iget v1, p0, Lcom/amap/api/mapcore2d/cc;->i:F

    iput v1, v0, Lcom/amap/api/mapcore2d/au;->c:F

    .line 117
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/cc;->l:Z

    if-nez v0, :cond_0

    .line 121
    iget v0, p0, Lcom/amap/api/mapcore2d/cc;->i:F

    mul-float/2addr v0, v2

    iget v1, p0, Lcom/amap/api/mapcore2d/cc;->b:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/amap/api/mapcore2d/cc;->a:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore2d/cc;->k:F

    .line 122
    iget v0, p0, Lcom/amap/api/mapcore2d/cc;->i:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/amap/api/mapcore2d/cc;->j:F

    .line 124
    :goto_0
    return-void

    .line 118
    :cond_0
    iget v0, p0, Lcom/amap/api/mapcore2d/cc;->i:F

    iget v1, p0, Lcom/amap/api/mapcore2d/cc;->b:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/amap/api/mapcore2d/cc;->a:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore2d/cc;->k:F

    .line 119
    iget v0, p0, Lcom/amap/api/mapcore2d/cc;->i:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore2d/cc;->j:F

    goto :goto_0
.end method

.method public a(FZFF)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 127
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cc;->f:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->c:[F

    iget-object v1, p0, Lcom/amap/api/mapcore2d/cc;->f:Lcom/amap/api/mapcore2d/b;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/b;->c:[F

    aget v1, v1, v6

    aput v1, v0, v7

    .line 128
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cc;->f:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->c:[F

    aput p1, v0, v6

    .line 129
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cc;->f:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->c:[F

    aget v0, v0, v7

    iget-object v1, p0, Lcom/amap/api/mapcore2d/cc;->f:Lcom/amap/api/mapcore2d/b;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/b;->c:[F

    aget v1, v1, v6

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 130
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cc;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/cc;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/b;->B()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/ay;->a(Z)V

    .line 133
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/cc;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    iput-boolean v6, p0, Lcom/amap/api/mapcore2d/cc;->m:Z

    .line 142
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/cc;->e()V

    .line 143
    iget v1, p0, Lcom/amap/api/mapcore2d/cc;->j:F

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/mapcore2d/cc;->a(FFZFF)V

    .line 145
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cc;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    invoke-virtual {v0, v6}, Lcom/amap/api/mapcore2d/ay$a;->a(Z)V

    .line 146
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cc;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iput-boolean v6, v0, Lcom/amap/api/mapcore2d/ay$a;->b:Z

    .line 147
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cc;->e:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, v8}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 148
    invoke-super {p0}, Lcom/amap/api/mapcore2d/d;->d()V

    .line 149
    iput-boolean v7, p0, Lcom/amap/api/mapcore2d/cc;->m:Z

    .line 151
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0xa0

    .line 134
    iput v0, p0, Lcom/amap/api/mapcore2d/cc;->a:I

    .line 135
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cc;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->J()F

    move-result v1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/mapcore2d/cc;->a(FFZFF)V

    .line 136
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cc;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    invoke-virtual {v0, v6}, Lcom/amap/api/mapcore2d/ay$a;->a(Z)V

    .line 137
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cc;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iput-boolean v6, v0, Lcom/amap/api/mapcore2d/ay$a;->b:Z

    .line 138
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cc;->e:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, v8}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 139
    invoke-super {p0}, Lcom/amap/api/mapcore2d/d;->d()V

    goto :goto_0
.end method

.method protected b()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 63
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/cc;->m:Z

    if-nez v0, :cond_1

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cc;->f:Lcom/amap/api/mapcore2d/b;

    if-nez v0, :cond_2

    .line 67
    :cond_0
    return-void

    .line 64
    :cond_1
    return-void

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cc;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cc;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/amap/api/mapcore2d/ay$a;->b:Z

    .line 70
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/cc;->d:Z

    if-eq v0, v4, :cond_3

    .line 81
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cc;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->D()Lcom/amap/api/mapcore2d/ap;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/mapcore2d/cc;->c:F

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/ap;->c(F)F

    .line 82
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cc;->e:Landroid/view/animation/Animation$AnimationListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 83
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/cc;->d:Z

    if-eq v0, v4, :cond_4

    .line 99
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cc;->f:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/amap/api/mapcore2d/au;->c:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 100
    sput v0, Lcom/amap/api/mapcore2d/ba;->j:F

    .line 101
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cc;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/ay;->a(Z)V

    .line 102
    invoke-static {}, Lcom/amap/api/mapcore2d/k;->a()Lcom/amap/api/mapcore2d/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/k;->b()V

    .line 106
    :goto_2
    return-void

    .line 71
    :cond_3
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/amap/api/mapcore2d/cc;->g:F

    float-to-int v1, v1

    iget v2, p0, Lcom/amap/api/mapcore2d/cc;->h:F

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 72
    iget-object v1, p0, Lcom/amap/api/mapcore2d/cc;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/b;->s()Lcom/amap/api/mapcore2d/bf;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/mapcore2d/cc;->g:F

    float-to-int v2, v2

    iget v3, p0, Lcom/amap/api/mapcore2d/cc;->h:F

    float-to-int v3, v3

    invoke-interface {v1, v2, v3}, Lcom/amap/api/mapcore2d/bf;->a(II)Lcom/amap/api/mapcore2d/u;

    move-result-object v1

    .line 74
    iget-object v2, p0, Lcom/amap/api/mapcore2d/cc;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/cc;->f:Lcom/amap/api/mapcore2d/b;

    .line 75
    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v3

    iget-object v3, v3, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    .line 76
    invoke-virtual {v3, v1}, Lcom/amap/api/mapcore2d/au;->a(Lcom/amap/api/mapcore2d/u;)Lcom/amap/api/mapcore2d/u;

    move-result-object v1

    iput-object v1, v2, Lcom/amap/api/mapcore2d/au;->l:Lcom/amap/api/mapcore2d/u;

    .line 77
    iget-object v1, p0, Lcom/amap/api/mapcore2d/cc;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/au;->a(Landroid/graphics/Point;)V

    .line 78
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cc;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore2d/ay$d;->a(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    const-string/jumbo v1, "ZoomCtlAnim"

    const-string/jumbo v2, "onStop"

    .line 104
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 84
    :cond_4
    :try_start_1
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/cc;->f:Lcom/amap/api/mapcore2d/b;

    .line 85
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/ay$d;->c()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/amap/api/mapcore2d/cc;->f:Lcom/amap/api/mapcore2d/b;

    .line 86
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/ay$d;->d()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 87
    iget-object v1, p0, Lcom/amap/api/mapcore2d/cc;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/b;->s()Lcom/amap/api/mapcore2d/bf;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore2d/cc;->f:Lcom/amap/api/mapcore2d/b;

    .line 88
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/ay$d;->c()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/amap/api/mapcore2d/cc;->f:Lcom/amap/api/mapcore2d/b;

    .line 89
    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v3

    iget-object v3, v3, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/ay$d;->d()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 87
    invoke-interface {v1, v2, v3}, Lcom/amap/api/mapcore2d/bf;->a(II)Lcom/amap/api/mapcore2d/u;

    move-result-object v1

    .line 90
    iget-object v2, p0, Lcom/amap/api/mapcore2d/cc;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/cc;->f:Lcom/amap/api/mapcore2d/b;

    .line 91
    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v3

    iget-object v3, v3, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    .line 92
    invoke-virtual {v3, v1}, Lcom/amap/api/mapcore2d/au;->a(Lcom/amap/api/mapcore2d/u;)Lcom/amap/api/mapcore2d/u;

    move-result-object v1

    iput-object v1, v2, Lcom/amap/api/mapcore2d/au;->l:Lcom/amap/api/mapcore2d/u;

    .line 93
    iget-object v1, p0, Lcom/amap/api/mapcore2d/cc;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    .line 94
    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/au;->a(Landroid/graphics/Point;)V

    .line 95
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cc;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore2d/ay$d;->a(ZZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/cc;->b()V

    .line 59
    return-void
.end method
