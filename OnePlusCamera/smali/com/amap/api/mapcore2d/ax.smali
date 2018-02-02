.class Lcom/amap/api/mapcore2d/ax;
.super Ljava/lang/Object;
.source "MarkerDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore2d/aa;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/ax$a;
    }
.end annotation


# static fields
.field private static a:I


# instance fields
.field private b:I

.field private c:F

.field private d:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/amap/api/maps2d/model/BitmapDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Lcom/amap/api/maps2d/model/LatLng;

.field private h:Lcom/amap/api/maps2d/model/LatLng;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:F

.field private l:F

.field private m:Z

.field private n:Z

.field private o:Lcom/amap/api/mapcore2d/as;

.field private p:Ljava/lang/Object;

.field private q:Z

.field private r:Lcom/amap/api/mapcore2d/ax$a;

.field private s:Z

.field private t:I

.field private u:I

.field private v:F

.field private w:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    sput v0, Lcom/amap/api/mapcore2d/ax;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/maps2d/model/MarkerOptions;Lcom/amap/api/mapcore2d/as;)V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v1, p0, Lcom/amap/api/mapcore2d/ax;->b:I

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/amap/api/mapcore2d/ax;->c:F

    .line 25
    iput-object v2, p0, Lcom/amap/api/mapcore2d/ax;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/16 v0, 0x14

    .line 29
    iput v0, p0, Lcom/amap/api/mapcore2d/ax;->e:I

    const/high16 v0, 0x3f000000    # 0.5f

    .line 36
    iput v0, p0, Lcom/amap/api/mapcore2d/ax;->k:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 37
    iput v0, p0, Lcom/amap/api/mapcore2d/ax;->l:F

    .line 38
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/ax;->m:Z

    .line 39
    iput-boolean v3, p0, Lcom/amap/api/mapcore2d/ax;->n:Z

    .line 42
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/ax;->q:Z

    .line 44
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/ax;->s:Z

    const-string/jumbo v1, "MarkerDelegateImp"

    .line 141
    iput-object p2, p0, Lcom/amap/api/mapcore2d/ax;->o:Lcom/amap/api/mapcore2d/as;

    .line 142
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/MarkerOptions;->isGps()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/ax;->q:Z

    .line 143
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/MarkerOptions;->getZIndex()F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore2d/ax;->v:F

    .line 144
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/MarkerOptions;->getPosition()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    if-nez v0, :cond_1

    .line 158
    :goto_0
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/MarkerOptions;->getAnchorU()F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore2d/ax;->k:F

    .line 159
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/MarkerOptions;->getAnchorV()F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore2d/ax;->l:F

    .line 161
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/MarkerOptions;->isVisible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/ax;->n:Z

    .line 162
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/MarkerOptions;->getSnippet()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ax;->j:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/MarkerOptions;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ax;->i:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/MarkerOptions;->isDraggable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/ax;->m:Z

    .line 165
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/MarkerOptions;->getPeriod()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore2d/ax;->e:I

    .line 166
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ax;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ax;->f:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/MarkerOptions;->getIcons()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/ax;->b(Ljava/util/ArrayList;)V

    .line 169
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_3

    .line 176
    :cond_0
    :goto_1
    return-void

    .line 145
    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/ax;->q:Z

    if-nez v0, :cond_2

    .line 156
    :goto_2
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/MarkerOptions;->getPosition()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ax;->g:Lcom/amap/api/maps2d/model/LatLng;

    goto :goto_0

    .line 148
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/MarkerOptions;->getPosition()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    iget-wide v2, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    .line 149
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/MarkerOptions;->getPosition()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    iget-wide v4, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    .line 147
    invoke-static {v2, v3, v4, v5}, Lcom/amap/api/mapcore2d/en;->a(DD)[D

    move-result-object v0

    .line 150
    new-instance v2, Lcom/amap/api/maps2d/model/LatLng;

    const/4 v3, 0x1

    aget-wide v4, v0, v3

    const/4 v3, 0x0

    aget-wide v6, v0, v3

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    iput-object v2, p0, Lcom/amap/api/mapcore2d/ax;->h:Lcom/amap/api/maps2d/model/LatLng;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 154
    :catch_0
    move-exception v0

    const-string/jumbo v2, "MarkerDelegateImp"

    .line 152
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/MarkerOptions;->getPosition()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ax;->h:Lcom/amap/api/maps2d/model/LatLng;

    goto :goto_2

    .line 169
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 170
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 171
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/MarkerOptions;->getIcon()Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore2d/ax;->b(Lcom/amap/api/maps2d/model/BitmapDescriptor;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/ax;I)I
    .locals 0

    .prologue
    .line 20
    iput p1, p0, Lcom/amap/api/mapcore2d/ax;->b:I

    return p1
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/ax;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/mapcore2d/ax;)I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/amap/api/mapcore2d/ax;->b:I

    return v0
.end method

.method private b(FF)Lcom/amap/api/mapcore2d/ad;
    .locals 8

    .prologue
    .line 291
    iget v0, p0, Lcom/amap/api/mapcore2d/ax;->c:F

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    .line 292
    new-instance v1, Lcom/amap/api/mapcore2d/ad;

    invoke-direct {v1}, Lcom/amap/api/mapcore2d/ad;-><init>()V

    .line 293
    float-to-double v2, p1

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    float-to-double v4, p2

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Lcom/amap/api/mapcore2d/ad;->a:I

    .line 294
    float-to-double v2, p2

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    float-to-double v4, p1

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, v1, Lcom/amap/api/mapcore2d/ad;->b:I

    .line 295
    return-object v1
.end method

.method private b(Lcom/amap/api/maps2d/model/BitmapDescriptor;)V
    .locals 2

    .prologue
    .line 132
    if-nez p1, :cond_0

    .line 136
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->o:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/as;->a()Lcom/amap/api/mapcore2d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    .line 137
    return-void

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ax;->w()V

    .line 134
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/BitmapDescriptor;->clone()Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic c(Lcom/amap/api/mapcore2d/ax;)I
    .locals 2

    .prologue
    .line 20
    iget v0, p0, Lcom/amap/api/mapcore2d/ax;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amap/api/mapcore2d/ax;->b:I

    return v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    sget v0, Lcom/amap/api/mapcore2d/ax;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/amap/api/mapcore2d/ax;->a:I

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/amap/api/mapcore2d/ax;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/amap/api/mapcore2d/ax;)Lcom/amap/api/mapcore2d/as;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->o:Lcom/amap/api/mapcore2d/as;

    return-object v0
.end method

.method static synthetic e(Lcom/amap/api/mapcore2d/ax;)I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/amap/api/mapcore2d/ax;->e:I

    return v0
.end method


# virtual methods
.method public A()Lcom/amap/api/maps2d/model/BitmapDescriptor;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 390
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_2

    .line 391
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ax;->w()V

    .line 392
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;->defaultMarker()Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/model/BitmapDescriptor;

    return-object v0

    .line 390
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 395
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ax;->A()Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public B()F
    .locals 1

    .prologue
    .line 454
    iget v0, p0, Lcom/amap/api/mapcore2d/ax;->k:F

    return v0
.end method

.method public C()F
    .locals 1

    .prologue
    .line 459
    iget v0, p0, Lcom/amap/api/mapcore2d/ax;->l:F

    return v0
.end method

.method public a(F)V
    .locals 2

    .prologue
    const/high16 v1, 0x43b40000    # 360.0f

    .line 469
    neg-float v0, p1

    rem-float/2addr v0, v1

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore2d/ax;->c:F

    .line 470
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ax;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 474
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->o:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/as;->a()Lcom/amap/api/mapcore2d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    .line 475
    return-void

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->o:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/as;->e(Lcom/amap/api/mapcore2d/aa;)V

    .line 472
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->o:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/as;->d(Lcom/amap/api/mapcore2d/aa;)V

    goto :goto_0
.end method

.method public a(FF)V
    .locals 1

    .prologue
    .line 441
    iget v0, p0, Lcom/amap/api/mapcore2d/ax;->k:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/amap/api/mapcore2d/ax;->l:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    .line 442
    return-void

    .line 443
    :cond_0
    iput p1, p0, Lcom/amap/api/mapcore2d/ax;->k:F

    .line 444
    iput p2, p0, Lcom/amap/api/mapcore2d/ax;->l:F

    .line 445
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ax;->k()Z

    move-result v0

    if-nez v0, :cond_1

    .line 449
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->o:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/as;->a()Lcom/amap/api/mapcore2d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    .line 450
    return-void

    .line 446
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->o:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/as;->e(Lcom/amap/api/mapcore2d/aa;)V

    .line 447
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->o:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/as;->d(Lcom/amap/api/mapcore2d/aa;)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 546
    if-le p1, v0, :cond_0

    .line 549
    iput p1, p0, Lcom/amap/api/mapcore2d/ax;->e:I

    .line 551
    :goto_0
    return-void

    .line 547
    :cond_0
    iput v0, p0, Lcom/amap/api/mapcore2d/ax;->e:I

    goto :goto_0
.end method

.method public a(II)V
    .locals 1

    .prologue
    .line 597
    iput p1, p0, Lcom/amap/api/mapcore2d/ax;->t:I

    .line 598
    iput p2, p0, Lcom/amap/api/mapcore2d/ax;->u:I

    .line 599
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/ax;->s:Z

    .line 607
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ax;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 610
    :goto_0
    return-void

    .line 608
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ax;->i()V

    goto :goto_0
.end method

.method public a(Landroid/graphics/Canvas;Lcom/amap/api/mapcore2d/w;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 493
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/ax;->n:Z

    if-nez v0, :cond_1

    .line 495
    :cond_0
    return-void

    .line 493
    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ax;->t()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 494
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ax;->A()Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ax;->q()Z

    move-result v0

    if-nez v0, :cond_3

    .line 501
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ax;->z()Lcom/amap/api/mapcore2d/ad;

    move-result-object v0

    move-object v1, v0

    .line 504
    :goto_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ax;->p()Ljava/util/ArrayList;

    move-result-object v0

    .line 505
    if-eqz v0, :cond_4

    .line 508
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, v5, :cond_5

    .line 510
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v3, v5, :cond_6

    move-object v0, v2

    .line 513
    :goto_1
    if-nez v0, :cond_7

    .line 522
    :cond_2
    :goto_2
    return-void

    .line 499
    :cond_3
    new-instance v0, Lcom/amap/api/mapcore2d/ad;

    iget v1, p0, Lcom/amap/api/mapcore2d/ax;->t:I

    iget v3, p0, Lcom/amap/api/mapcore2d/ax;->u:I

    invoke-direct {v0, v1, v3}, Lcom/amap/api/mapcore2d/ad;-><init>(II)V

    move-object v1, v0

    goto :goto_0

    .line 506
    :cond_4
    return-void

    .line 509
    :cond_5
    iget v3, p0, Lcom/amap/api/mapcore2d/ax;->b:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 511
    :cond_6
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 513
    :cond_7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 514
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 515
    iget v3, p0, Lcom/amap/api/mapcore2d/ax;->c:F

    iget v4, v1, Lcom/amap/api/mapcore2d/ad;->a:I

    int-to-float v4, v4

    iget v5, v1, Lcom/amap/api/mapcore2d/ad;->b:I

    int-to-float v5, v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 517
    iget v3, v1, Lcom/amap/api/mapcore2d/ad;->a:I

    int-to-float v3, v3

    .line 518
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ax;->B()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v1, v1, Lcom/amap/api/mapcore2d/ad;->b:I

    int-to-float v1, v1

    .line 519
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ax;->C()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sub-float/2addr v1, v4

    .line 517
    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 520
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2
.end method

.method public a(Lcom/amap/api/maps2d/model/BitmapDescriptor;)V
    .locals 1

    .prologue
    .line 375
    if-nez p1, :cond_1

    .line 376
    :cond_0
    return-void

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 379
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ax;->k()Z

    move-result v0

    if-nez v0, :cond_2

    .line 385
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->o:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/as;->a()Lcom/amap/api/mapcore2d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    .line 386
    return-void

    .line 382
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->o:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/as;->e(Lcom/amap/api/mapcore2d/aa;)V

    .line 383
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->o:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/as;->d(Lcom/amap/api/mapcore2d/aa;)V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/maps2d/model/LatLng;)V
    .locals 1

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/ax;->q:Z

    if-nez v0, :cond_0

    .line 344
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ax;->g:Lcom/amap/api/maps2d/model/LatLng;

    .line 346
    :goto_0
    return-void

    .line 342
    :cond_0
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ax;->h:Lcom/amap/api/maps2d/model/LatLng;

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 526
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ax;->p:Ljava/lang/Object;

    .line 527
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ax;->i:Ljava/lang/String;

    .line 351
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps2d/model/BitmapDescriptor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 561
    if-eqz p1, :cond_0

    .line 564
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/ax;->b(Ljava/util/ArrayList;)V

    .line 565
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->r:Lcom/amap/api/mapcore2d/ax$a;

    if-eqz v0, :cond_1

    .line 569
    :goto_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ax;->k()Z

    move-result v0

    if-nez v0, :cond_2

    .line 573
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->o:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/as;->a()Lcom/amap/api/mapcore2d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    .line 574
    return-void

    .line 562
    :cond_0
    return-void

    .line 566
    :cond_1
    new-instance v0, Lcom/amap/api/mapcore2d/ax$a;

    invoke-direct {v0, p0, v1}, Lcom/amap/api/mapcore2d/ax$a;-><init>(Lcom/amap/api/mapcore2d/ax;Lcom/amap/api/mapcore2d/ax$1;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ax;->r:Lcom/amap/api/mapcore2d/ax$a;

    .line 567
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->r:Lcom/amap/api/mapcore2d/ax$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ax$a;->start()V

    goto :goto_0

    .line 570
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->o:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/as;->e(Lcom/amap/api/mapcore2d/aa;)V

    .line 571
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->o:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/as;->d(Lcom/amap/api/mapcore2d/aa;)V

    goto :goto_1
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 370
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/ax;->m:Z

    .line 371
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->o:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/as;->b(Lcom/amap/api/mapcore2d/aa;)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/amap/api/mapcore2d/aa;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 479
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 481
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 480
    :cond_1
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/aa;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ax;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 483
    return v2
.end method

.method public b()Landroid/graphics/Rect;
    .locals 13

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const-string/jumbo v1, "getRect"

    .line 247
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ax;->z()Lcom/amap/api/mapcore2d/ad;

    move-result-object v0

    .line 248
    if-eqz v0, :cond_0

    .line 253
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ax;->n()I

    move-result v2

    .line 254
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ax;->y()I

    move-result v3

    .line 255
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 256
    iget v5, p0, Lcom/amap/api/mapcore2d/ax;->c:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1

    .line 257
    iget v5, v0, Lcom/amap/api/mapcore2d/ad;->b:I

    int-to-float v5, v5

    int-to-float v6, v3

    iget v7, p0, Lcom/amap/api/mapcore2d/ax;->l:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 258
    iget v5, v0, Lcom/amap/api/mapcore2d/ad;->a:I

    int-to-float v5, v5

    iget v6, p0, Lcom/amap/api/mapcore2d/ax;->k:F

    int-to-float v7, v2

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 259
    iget v5, v0, Lcom/amap/api/mapcore2d/ad;->b:I

    int-to-float v5, v5

    int-to-float v3, v3

    iget v6, p0, Lcom/amap/api/mapcore2d/ax;->l:F

    sub-float v6, v10, v6

    mul-float/2addr v3, v6

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v4, Landroid/graphics/Rect;->bottom:I

    .line 260
    iget v0, v0, Lcom/amap/api/mapcore2d/ad;->a:I

    int-to-float v0, v0

    iget v3, p0, Lcom/amap/api/mapcore2d/ax;->k:F

    sub-float v3, v10, v3

    int-to-float v2, v2

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v4, Landroid/graphics/Rect;->right:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :goto_0
    return-object v4

    .line 249
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v12, v12, v12, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    .line 262
    :cond_1
    :try_start_1
    iget v5, p0, Lcom/amap/api/mapcore2d/ax;->k:F

    neg-float v5, v5

    int-to-float v6, v2

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/amap/api/mapcore2d/ax;->l:F

    sub-float/2addr v6, v10

    int-to-float v7, v3

    mul-float/2addr v6, v7

    invoke-direct {p0, v5, v6}, Lcom/amap/api/mapcore2d/ax;->b(FF)Lcom/amap/api/mapcore2d/ad;

    move-result-object v5

    .line 264
    iget v6, p0, Lcom/amap/api/mapcore2d/ax;->k:F

    neg-float v6, v6

    int-to-float v7, v2

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/amap/api/mapcore2d/ax;->l:F

    int-to-float v8, v3

    mul-float/2addr v7, v8

    invoke-direct {p0, v6, v7}, Lcom/amap/api/mapcore2d/ax;->b(FF)Lcom/amap/api/mapcore2d/ad;

    move-result-object v6

    .line 266
    iget v7, p0, Lcom/amap/api/mapcore2d/ax;->k:F

    sub-float v7, v10, v7

    int-to-float v8, v2

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/amap/api/mapcore2d/ax;->l:F

    int-to-float v9, v3

    mul-float/2addr v8, v9

    invoke-direct {p0, v7, v8}, Lcom/amap/api/mapcore2d/ax;->b(FF)Lcom/amap/api/mapcore2d/ad;

    move-result-object v7

    .line 268
    iget v8, p0, Lcom/amap/api/mapcore2d/ax;->k:F

    sub-float v8, v10, v8

    int-to-float v2, v2

    mul-float/2addr v2, v8

    iget v8, p0, Lcom/amap/api/mapcore2d/ax;->l:F

    sub-float/2addr v8, v10

    int-to-float v3, v3

    mul-float/2addr v3, v8

    invoke-direct {p0, v2, v3}, Lcom/amap/api/mapcore2d/ax;->b(FF)Lcom/amap/api/mapcore2d/ad;

    move-result-object v2

    .line 270
    iget v3, v0, Lcom/amap/api/mapcore2d/ad;->b:I

    iget v8, v5, Lcom/amap/api/mapcore2d/ad;->b:I

    iget v9, v6, Lcom/amap/api/mapcore2d/ad;->b:I

    iget v10, v7, Lcom/amap/api/mapcore2d/ad;->b:I

    iget v11, v2, Lcom/amap/api/mapcore2d/ad;->b:I

    .line 271
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    sub-int/2addr v3, v8

    iput v3, v4, Landroid/graphics/Rect;->top:I

    .line 272
    iget v3, v0, Lcom/amap/api/mapcore2d/ad;->a:I

    iget v8, v5, Lcom/amap/api/mapcore2d/ad;->a:I

    iget v9, v6, Lcom/amap/api/mapcore2d/ad;->a:I

    iget v10, v7, Lcom/amap/api/mapcore2d/ad;->a:I

    iget v11, v2, Lcom/amap/api/mapcore2d/ad;->a:I

    .line 273
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int/2addr v3, v8

    iput v3, v4, Landroid/graphics/Rect;->left:I

    .line 274
    iget v3, v0, Lcom/amap/api/mapcore2d/ad;->b:I

    iget v8, v5, Lcom/amap/api/mapcore2d/ad;->b:I

    iget v9, v6, Lcom/amap/api/mapcore2d/ad;->b:I

    iget v10, v7, Lcom/amap/api/mapcore2d/ad;->b:I

    iget v11, v2, Lcom/amap/api/mapcore2d/ad;->b:I

    .line 275
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    sub-int/2addr v3, v8

    iput v3, v4, Landroid/graphics/Rect;->bottom:I

    .line 276
    iget v0, v0, Lcom/amap/api/mapcore2d/ad;->a:I

    iget v3, v5, Lcom/amap/api/mapcore2d/ad;->a:I

    iget v5, v6, Lcom/amap/api/mapcore2d/ad;->a:I

    iget v6, v7, Lcom/amap/api/mapcore2d/ad;->a:I

    iget v2, v2, Lcom/amap/api/mapcore2d/ad;->a:I

    .line 277
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v4, Landroid/graphics/Rect;->right:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 282
    :catch_0
    move-exception v0

    const-string/jumbo v2, "MarkerDelegateImp"

    .line 284
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v12, v12, v12, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public b(F)V
    .locals 1

    .prologue
    .line 651
    iput p1, p0, Lcom/amap/api/mapcore2d/ax;->v:F

    .line 652
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->o:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/as;->d()V

    .line 653
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 663
    iput p1, p0, Lcom/amap/api/mapcore2d/ax;->w:I

    .line 665
    return-void
.end method

.method public b(Lcom/amap/api/maps2d/model/LatLng;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const-string/jumbo v1, "setPosition"

    .line 324
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/ax;->q:Z

    if-nez v0, :cond_0

    .line 334
    :goto_0
    iput-boolean v8, p0, Lcom/amap/api/mapcore2d/ax;->s:Z

    .line 335
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ax;->g:Lcom/amap/api/maps2d/model/LatLng;

    .line 336
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->o:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/as;->a()Lcom/amap/api/mapcore2d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    .line 337
    return-void

    .line 326
    :cond_0
    :try_start_0
    iget-wide v2, p1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    iget-wide v4, p1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    invoke-static {v2, v3, v4, v5}, Lcom/amap/api/mapcore2d/en;->a(DD)[D

    move-result-object v0

    .line 328
    new-instance v2, Lcom/amap/api/maps2d/model/LatLng;

    const/4 v3, 0x1

    aget-wide v4, v0, v3

    const/4 v3, 0x0

    aget-wide v6, v0, v3

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    iput-object v2, p0, Lcom/amap/api/mapcore2d/ax;->h:Lcom/amap/api/maps2d/model/LatLng;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 332
    :catch_0
    move-exception v0

    const-string/jumbo v2, "MarkerDelegateImp"

    .line 330
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ax;->h:Lcom/amap/api/maps2d/model/LatLng;

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ax;->j:Ljava/lang/String;

    .line 361
    return-void
.end method

.method public b(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps2d/model/BitmapDescriptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 114
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ax;->w()V

    .line 115
    if-nez p1, :cond_1

    .line 128
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->o:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/as;->a()Lcom/amap/api/mapcore2d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    .line 129
    return-void

    .line 116
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 121
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->r:Lcom/amap/api/mapcore2d/ax$a;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lcom/amap/api/mapcore2d/ax$a;

    invoke-direct {v0, p0, v3}, Lcom/amap/api/mapcore2d/ax$a;-><init>(Lcom/amap/api/mapcore2d/ax;Lcom/amap/api/mapcore2d/ax$1;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ax;->r:Lcom/amap/api/mapcore2d/ax$a;

    .line 124
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->r:Lcom/amap/api/mapcore2d/ax$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ax$a;->start()V

    goto :goto_0

    .line 116
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/model/BitmapDescriptor;

    .line 117
    if-eqz v0, :cond_2

    .line 118
    iget-object v2, p0, Lcom/amap/api/mapcore2d/ax;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/BitmapDescriptor;->clone()Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 427
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/ax;->n:Z

    .line 428
    if-eqz p1, :cond_1

    .line 431
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->o:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/as;->a()Lcom/amap/api/mapcore2d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    .line 432
    return-void

    .line 428
    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ax;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->o:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/as;->e(Lcom/amap/api/mapcore2d/aa;)V

    goto :goto_0
.end method

.method public c()Lcom/amap/api/maps2d/model/LatLng;
    .locals 6

    .prologue
    .line 536
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/ax;->s:Z

    if-nez v0, :cond_0

    .line 541
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/ax;->q:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->g:Lcom/amap/api/maps2d/model/LatLng;

    :goto_0
    return-object v0

    .line 537
    :cond_0
    new-instance v0, Lcom/amap/api/mapcore2d/r;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/r;-><init>()V

    .line 538
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ax;->o:Lcom/amap/api/mapcore2d/as;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/as;->a:Lcom/amap/api/mapcore2d/b;

    iget v2, p0, Lcom/amap/api/mapcore2d/ax;->t:I

    iget v3, p0, Lcom/amap/api/mapcore2d/ax;->u:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/amap/api/mapcore2d/b;->a(IILcom/amap/api/mapcore2d/r;)V

    .line 539
    new-instance v1, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v0, Lcom/amap/api/mapcore2d/r;->b:D

    iget-wide v4, v0, Lcom/amap/api/mapcore2d/r;->a:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    return-object v1

    .line 541
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->h:Lcom/amap/api/maps2d/model/LatLng;

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 318
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->f:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string/jumbo v0, "Marker"

    .line 316
    invoke-static {v0}, Lcom/amap/api/mapcore2d/ax;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ax;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public e()Lcom/amap/api/mapcore2d/r;
    .locals 4

    .prologue
    .line 215
    new-instance v0, Lcom/amap/api/mapcore2d/r;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/r;-><init>()V

    .line 216
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ax;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v1, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-object v0

    .line 216
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ax;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ax;->n()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/amap/api/mapcore2d/ax;->k:F

    mul-float/2addr v1, v2

    float-to-double v2, v1

    iput-wide v2, v0, Lcom/amap/api/mapcore2d/r;->a:D

    .line 218
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ax;->y()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/amap/api/mapcore2d/ax;->l:F

    mul-float/2addr v1, v2

    float-to-double v2, v1

    iput-wide v2, v0, Lcom/amap/api/mapcore2d/r;->b:D

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->i:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->j:Ljava/lang/String;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 402
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/ax;->m:Z

    return v0
.end method

.method public i()V
    .locals 1

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ax;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->o:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/as;->d(Lcom/amap/api/mapcore2d/aa;)V

    .line 411
    return-void

    .line 408
    :cond_0
    return-void
.end method

.method public j()V
    .locals 1

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ax;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 418
    :goto_0
    return-void

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->o:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/as;->e(Lcom/amap/api/mapcore2d/aa;)V

    goto :goto_0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->o:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/as;->f(Lcom/amap/api/mapcore2d/aa;)Z

    move-result v0

    return v0
.end method

.method public l()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string/jumbo v1, "destroy"

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/amap/api/mapcore2d/ax;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/amap/api/mapcore2d/ax;->g:Lcom/amap/api/maps2d/model/LatLng;

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/amap/api/mapcore2d/ax;->p:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_1
    iput-object v3, p0, Lcom/amap/api/mapcore2d/ax;->r:Lcom/amap/api/mapcore2d/ax$a;

    .line 102
    return-void

    :cond_1
    const/4 v0, 0x0

    .line 73
    :try_start_1
    iput-object v0, p0, Lcom/amap/api/mapcore2d/ax;->g:Lcom/amap/api/maps2d/model/LatLng;

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/amap/api/mapcore2d/ax;->p:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/amap/api/mapcore2d/ax;->r:Lcom/amap/api/mapcore2d/ax$a;

    .line 76
    return-void

    .line 78
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/model/BitmapDescriptor;

    .line 79
    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    const-string/jumbo v2, "MarkerDelegateImp"

    .line 95
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "destroy erro"

    const-string/jumbo v1, "MarkerDelegateImp destroy"

    .line 96
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public m()I
    .locals 1

    .prologue
    .line 488
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public n()I
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ax;->A()Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/BitmapDescriptor;->getWidth()I

    move-result v0

    .line 206
    return v0
.end method

.method public o()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 555
    iget v0, p0, Lcom/amap/api/mapcore2d/ax;->e:I

    return v0
.end method

.method public p()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps2d/model/BitmapDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 578
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_1

    .line 585
    :cond_0
    return-object v1

    .line 578
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 579
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 580
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 583
    return-object v1

    .line 580
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/model/BitmapDescriptor;

    .line 581
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 614
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/ax;->s:Z

    return v0
.end method

.method public r()F
    .locals 1

    .prologue
    .line 657
    iget v0, p0, Lcom/amap/api/mapcore2d/ax;->v:F

    return v0
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 436
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/ax;->n:Z

    return v0
.end method

.method public t()Lcom/amap/api/maps2d/model/LatLng;
    .locals 6

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/ax;->s:Z

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->g:Lcom/amap/api/maps2d/model/LatLng;

    return-object v0

    .line 306
    :cond_0
    new-instance v0, Lcom/amap/api/mapcore2d/r;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/r;-><init>()V

    .line 307
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ax;->o:Lcom/amap/api/mapcore2d/as;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/as;->a:Lcom/amap/api/mapcore2d/b;

    iget v2, p0, Lcom/amap/api/mapcore2d/ax;->t:I

    iget v3, p0, Lcom/amap/api/mapcore2d/ax;->u:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/amap/api/mapcore2d/b;->a(IILcom/amap/api/mapcore2d/r;)V

    .line 308
    new-instance v1, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v0, Lcom/amap/api/mapcore2d/r;->b:D

    iget-wide v4, v0, Lcom/amap/api/mapcore2d/r;->a:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    return-object v1
.end method

.method public u()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->p:Ljava/lang/Object;

    return-object v0
.end method

.method public v()I
    .locals 1

    .prologue
    .line 670
    iget v0, p0, Lcom/amap/api/mapcore2d/ax;->w:I

    return v0
.end method

.method w()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 110
    :goto_0
    return-void

    .line 106
    :cond_0
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ax;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    goto :goto_0
.end method

.method public x()Lcom/amap/api/mapcore2d/ad;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const-wide v6, 0x412e848000000000L    # 1000000.0

    .line 179
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ax;->t()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    new-instance v1, Lcom/amap/api/mapcore2d/ad;

    invoke-direct {v1}, Lcom/amap/api/mapcore2d/ad;-><init>()V

    .line 186
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/ax;->q:Z

    if-nez v0, :cond_1

    .line 190
    new-instance v0, Lcom/amap/api/mapcore2d/u;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ax;->t()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v2

    iget-wide v2, v2, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    mul-double/2addr v2, v6

    double-to-int v2, v2

    .line 191
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ax;->t()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v3

    iget-wide v4, v3, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-direct {v0, v2, v3}, Lcom/amap/api/mapcore2d/u;-><init>(II)V

    .line 193
    :goto_0
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 194
    iget-object v3, p0, Lcom/amap/api/mapcore2d/ax;->o:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/as;->a()Lcom/amap/api/mapcore2d/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/b;->s()Lcom/amap/api/mapcore2d/bf;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Lcom/amap/api/mapcore2d/bf;->a(Lcom/amap/api/mapcore2d/u;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 195
    iget v0, v2, Landroid/graphics/Point;->x:I

    iput v0, v1, Lcom/amap/api/mapcore2d/ad;->a:I

    .line 196
    iget v0, v2, Landroid/graphics/Point;->y:I

    iput v0, v1, Lcom/amap/api/mapcore2d/ad;->b:I

    .line 201
    :goto_1
    return-object v1

    .line 180
    :cond_0
    return-object v1

    .line 187
    :cond_1
    new-instance v0, Lcom/amap/api/mapcore2d/u;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ax;->c()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v2

    iget-wide v2, v2, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    mul-double/2addr v2, v6

    double-to-int v2, v2

    .line 188
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ax;->c()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v3

    iget-wide v4, v3, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-direct {v0, v2, v3}, Lcom/amap/api/mapcore2d/u;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 199
    :catch_0
    move-exception v0

    .line 198
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public y()I
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ax;->A()Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/BitmapDescriptor;->getHeight()I

    move-result v0

    .line 211
    return v0
.end method

.method public z()Lcom/amap/api/mapcore2d/ad;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 233
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ax;->x()Lcom/amap/api/mapcore2d/ad;

    move-result-object v0

    .line 234
    if-eqz v0, :cond_0

    .line 240
    return-object v0

    .line 235
    :cond_0
    return-object v1
.end method
