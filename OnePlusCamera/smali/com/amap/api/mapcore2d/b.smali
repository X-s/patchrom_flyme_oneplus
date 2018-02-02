.class Lcom/amap/api/mapcore2d/b;
.super Landroid/view/View;
.source "AMapDelegateImpGLSurfaceView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Lcom/amap/api/mapcore2d/ba$b;
.implements Lcom/amap/api/mapcore2d/bj$a;
.implements Lcom/amap/api/mapcore2d/k$a;
.implements Lcom/amap/api/mapcore2d/m$a;
.implements Lcom/amap/api/mapcore2d/w;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/b$a;,
        Lcom/amap/api/mapcore2d/b$b;
    }
.end annotation


# static fields
.field private static aD:I

.field private static aE:Landroid/graphics/Paint;

.field private static aF:Landroid/graphics/Bitmap;


# instance fields
.field private A:Lcom/amap/api/mapcore2d/ca;

.field private B:Lcom/amap/api/mapcore2d/bi;

.field private C:Lcom/amap/api/maps2d/LocationSource;

.field private D:Lcom/amap/api/mapcore2d/o;

.field private E:Lcom/amap/api/mapcore2d/a;

.field private F:Z

.field private G:Z

.field private H:Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;

.field private I:Lcom/amap/api/mapcore2d/j;

.field private J:Lcom/amap/api/maps2d/AMap$CancelableCallback;

.field private K:Lcom/amap/api/mapcore2d/au;

.field private L:Z

.field private M:Z

.field private N:Landroid/view/View;

.field private O:Lcom/amap/api/maps2d/AMap$OnInfoWindowClickListener;

.field private P:Lcom/amap/api/maps2d/AMap$InfoWindowAdapter;

.field private Q:Lcom/amap/api/mapcore2d/ax;

.field private R:Lcom/amap/api/maps2d/AMap$OnMarkerClickListener;

.field private S:Landroid/graphics/drawable/Drawable;

.field private T:Lcom/amap/api/mapcore2d/ag;

.field private U:Z

.field private V:Z

.field private W:Z

.field private Z:Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;

.field a:Lcom/amap/api/mapcore2d/ay;

.field private aA:J

.field private aB:I

.field private aC:I

.field private aG:I

.field private aH:Z

.field private aI:Lcom/amap/api/mapcore2d/b$a;

.field private aa:Lcom/amap/api/maps2d/AMap$OnMapTouchListener;

.field private ab:Lcom/amap/api/maps2d/AMap$OnMapLongClickListener;

.field private ac:Lcom/amap/api/maps2d/AMap$OnMapLoadedListener;

.field private ad:Lcom/amap/api/maps2d/AMap$OnMapClickListener;

.field private ae:Z

.field private af:Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;

.field private ag:Ljava/util/Timer;

.field private ah:Ljava/lang/Thread;

.field private ai:Ljava/util/TimerTask;

.field private aj:Landroid/os/Handler;

.field private ak:Landroid/os/Handler;

.field private al:Landroid/graphics/Point;

.field private am:Landroid/view/GestureDetector;

.field private an:Lcom/amap/api/mapcore2d/ba$a;

.field private ao:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/GestureDetector$OnGestureListener;",
            ">;"
        }
    .end annotation
.end field

.field private ap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/mapcore2d/ba$b;",
            ">;"
        }
    .end annotation
.end field

.field private aq:Landroid/widget/Scroller;

.field private ar:I

.field private as:I

.field private at:Landroid/graphics/Matrix;

.field private au:F

.field private av:Z

.field private aw:F

.field private ax:F

.field private ay:I

.field private az:I

.field public b:Lcom/amap/api/mapcore2d/ap;

.field c:[F

.field d:Z

.field e:Lcom/amap/api/mapcore2d/ar;

.field f:Lcom/amap/api/mapcore2d/cb;

.field public g:Lcom/amap/api/mapcore2d/at;

.field protected h:Lcom/amap/api/mapcore2d/ak;

.field public i:Lcom/amap/api/mapcore2d/br;

.field public j:Lcom/amap/api/mapcore2d/as;

.field final k:Landroid/os/Handler;

.field l:F

.field private m:Landroid/content/Context;

.field private n:Z

.field private o:Z

.field private p:Lcom/amap/api/maps2d/model/Marker;

.field private q:Lcom/amap/api/mapcore2d/aa;

.field private final r:[I

.field private s:Z

.field private t:I

.field private u:Lcom/amap/api/mapcore2d/ao;

.field private v:Landroid/location/Location;

.field private w:Lcom/amap/api/mapcore2d/c;

.field private x:Lcom/amap/api/maps2d/AMap$OnMyLocationChangeListener;

.field private y:Z

.field private z:Lcom/amap/api/mapcore2d/bb;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v0, 0xde

    const/16 v1, 0xd7

    const/16 v2, 0xd6

    .line 1909
    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/amap/api/mapcore2d/b;->aD:I

    .line 1910
    sput-object v3, Lcom/amap/api/mapcore2d/b;->aE:Landroid/graphics/Paint;

    .line 1911
    sput-object v3, Lcom/amap/api/mapcore2d/b;->aF:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1299
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 93
    iput-boolean v3, p0, Lcom/amap/api/mapcore2d/b;->n:Z

    .line 94
    iput-boolean v5, p0, Lcom/amap/api/mapcore2d/b;->o:Z

    const/16 v0, 0x15

    .line 97
    new-array v0, v0, [I

    const v1, 0x989680

    aput v1, v0, v3

    const v1, 0x4c4b40

    aput v1, v0, v5

    const v1, 0x1e8480

    aput v1, v0, v6

    const/4 v1, 0x3

    const v2, 0xf4240

    aput v2, v0, v1

    const/4 v1, 0x4

    const v2, 0x7a120

    aput v2, v0, v1

    const v1, 0x30d40

    aput v1, v0, v7

    const/4 v1, 0x6

    const v2, 0x186a0

    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, 0xc350

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x7530

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x4e20

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x2710

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x1388

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x7d0

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x3e8

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x1f4

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0xc8

    aput v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x64

    aput v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x32

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x19

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0x14

    aput v7, v0, v1

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->r:[I

    .line 100
    iput-boolean v5, p0, Lcom/amap/api/mapcore2d/b;->s:Z

    .line 101
    iput v5, p0, Lcom/amap/api/mapcore2d/b;->t:I

    .line 102
    new-array v0, v6, [F

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->c:[F

    .line 106
    iput-boolean v3, p0, Lcom/amap/api/mapcore2d/b;->d:Z

    .line 111
    new-instance v0, Lcom/amap/api/mapcore2d/ar;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/ar;-><init>(Lcom/amap/api/mapcore2d/b;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->e:Lcom/amap/api/mapcore2d/ar;

    .line 118
    iput-boolean v5, p0, Lcom/amap/api/mapcore2d/b;->y:Z

    .line 127
    iput-object v4, p0, Lcom/amap/api/mapcore2d/b;->E:Lcom/amap/api/mapcore2d/a;

    .line 128
    iput-boolean v3, p0, Lcom/amap/api/mapcore2d/b;->F:Z

    .line 129
    iput-boolean v3, p0, Lcom/amap/api/mapcore2d/b;->G:Z

    .line 145
    iput-object v4, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    .line 147
    iput-boolean v3, p0, Lcom/amap/api/mapcore2d/b;->L:Z

    .line 148
    iput-boolean v3, p0, Lcom/amap/api/mapcore2d/b;->M:Z

    .line 154
    iput-object v4, p0, Lcom/amap/api/mapcore2d/b;->S:Landroid/graphics/drawable/Drawable;

    .line 156
    iput-boolean v3, p0, Lcom/amap/api/mapcore2d/b;->U:Z

    .line 157
    iput-boolean v3, p0, Lcom/amap/api/mapcore2d/b;->V:Z

    .line 158
    iput-boolean v3, p0, Lcom/amap/api/mapcore2d/b;->W:Z

    .line 164
    iput-boolean v3, p0, Lcom/amap/api/mapcore2d/b;->ae:Z

    .line 165
    iput-object v4, p0, Lcom/amap/api/mapcore2d/b;->af:Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;

    .line 169
    iput-object v4, p0, Lcom/amap/api/mapcore2d/b;->ag:Ljava/util/Timer;

    .line 171
    iput-object v4, p0, Lcom/amap/api/mapcore2d/b;->ah:Ljava/lang/Thread;

    .line 173
    new-instance v0, Lcom/amap/api/mapcore2d/b$1;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/b$1;-><init>(Lcom/amap/api/mapcore2d/b;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->ai:Ljava/util/TimerTask;

    .line 183
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->aj:Landroid/os/Handler;

    .line 185
    new-instance v0, Lcom/amap/api/mapcore2d/b$2;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/b$2;-><init>(Lcom/amap/api/mapcore2d/b;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->ak:Landroid/os/Handler;

    .line 201
    new-instance v0, Lcom/amap/api/mapcore2d/b$3;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/b$3;-><init>(Lcom/amap/api/mapcore2d/b;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/os/Handler;

    .line 1876
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->ao:Ljava/util/ArrayList;

    .line 1877
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->ap:Ljava/util/ArrayList;

    .line 1879
    iput v3, p0, Lcom/amap/api/mapcore2d/b;->ar:I

    .line 1880
    iput v3, p0, Lcom/amap/api/mapcore2d/b;->as:I

    .line 1881
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->at:Landroid/graphics/Matrix;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1882
    iput v0, p0, Lcom/amap/api/mapcore2d/b;->au:F

    .line 1883
    iput-boolean v3, p0, Lcom/amap/api/mapcore2d/b;->av:Z

    const-wide/16 v0, 0x0

    .line 1888
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/b;->aA:J

    .line 1889
    iput v3, p0, Lcom/amap/api/mapcore2d/b;->aB:I

    .line 1890
    iput v3, p0, Lcom/amap/api/mapcore2d/b;->aC:I

    .line 2340
    iput v3, p0, Lcom/amap/api/mapcore2d/b;->aG:I

    .line 2342
    iput-boolean v3, p0, Lcom/amap/api/mapcore2d/b;->aH:Z

    .line 2558
    iput-object v4, p0, Lcom/amap/api/mapcore2d/b;->aI:Lcom/amap/api/mapcore2d/b$a;

    const/high16 v0, -0x40800000    # -1.0f

    .line 2659
    iput v0, p0, Lcom/amap/api/mapcore2d/b;->l:F

    .line 1300
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->U()V

    .line 1301
    invoke-virtual {p0, v5}, Lcom/amap/api/mapcore2d/b;->setClickable(Z)V

    .line 1302
    invoke-direct {p0, p1, v4}, Lcom/amap/api/mapcore2d/b;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1303
    return-void
.end method

.method public static H()I
    .locals 1

    .prologue
    .line 1914
    sget v0, Lcom/amap/api/mapcore2d/b;->aD:I

    return v0
.end method

.method public static declared-synchronized I()Landroid/graphics/Paint;
    .locals 5

    .prologue
    const-class v1, Lcom/amap/api/mapcore2d/b;

    monitor-enter v1

    .line 1918
    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore2d/b;->aE:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 1926
    :goto_0
    sget-object v0, Lcom/amap/api/mapcore2d/b;->aE:Landroid/graphics/Paint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1919
    :cond_0
    :try_start_1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/amap/api/mapcore2d/b;->aE:Landroid/graphics/Paint;

    .line 1920
    sget-object v0, Lcom/amap/api/mapcore2d/b;->aE:Landroid/graphics/Paint;

    const v2, -0x777778

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1921
    sget-object v0, Lcom/amap/api/mapcore2d/b;->aE:Landroid/graphics/Paint;

    const/16 v2, 0x5a

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1922
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    aput v4, v2, v3

    const/4 v3, 0x1

    const/high16 v4, 0x40200000    # 2.5f

    aput v4, v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 1924
    sget-object v2, Lcom/amap/api/mapcore2d/b;->aE:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private U()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    const-string/jumbo v3, "setLayerType"

    const-class v2, Landroid/view/View;

    .line 1270
    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1272
    array-length v5, v4

    move v2, v1

    :goto_0
    if-lt v2, v5, :cond_0

    .line 1279
    :goto_1
    if-nez v0, :cond_2

    .line 1287
    :goto_2
    return-void

    .line 1272
    :cond_0
    aget-object v1, v4, v2

    .line 1273
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "setLayerType"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1272
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 1275
    goto :goto_1

    :cond_2
    :try_start_0
    const-class v1, Landroid/view/View;

    const-string/jumbo v2, "LAYER_TYPE_SOFTWARE"

    .line 1281
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x2

    .line 1282
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    const/4 v1, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v1

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1285
    :catch_0
    move-exception v0

    const-string/jumbo v1, "AMapDelegateImpGLSurfaceView"

    .line 1284
    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private V()V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 1445
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->m:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore2d/b;->a(Landroid/content/Context;)V

    .line 1446
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1449
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/at;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Lcom/amap/api/mapcore2d/at;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1451
    return-void
.end method

.method private W()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1687
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay;->a()V

    .line 1688
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    if-nez v0, :cond_0

    .line 1692
    :goto_0
    iput-object v2, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    .line 1694
    iput-object v2, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    .line 1697
    return-void

    .line 1689
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/ap;->a(Z)V

    .line 1690
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ap;->e()V

    goto :goto_0
.end method

.method private X()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1700
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->L:Z

    if-nez v0, :cond_1

    .line 1702
    :goto_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->W:Z

    if-nez v0, :cond_2

    .line 1709
    :goto_1
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->M:Z

    if-nez v0, :cond_3

    .line 1716
    :goto_2
    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/b;->V:Z

    .line 1717
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->Z:Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;

    if-nez v0, :cond_4

    .line 1722
    :cond_0
    :goto_3
    return-void

    .line 1701
    :cond_1
    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/b;->L:Z

    goto :goto_0

    .line 1703
    :cond_2
    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/b;->W:Z

    .line 1705
    invoke-static {}, Lcom/amap/api/mapcore2d/l;->a()Lcom/amap/api/mapcore2d/l;

    move-result-object v0

    .line 1706
    iput-boolean v4, v0, Lcom/amap/api/mapcore2d/l;->l:Z

    .line 1707
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->e:Lcom/amap/api/mapcore2d/ar;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/ar;->a(Lcom/amap/api/mapcore2d/l;)V

    goto :goto_1

    .line 1710
    :cond_3
    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/b;->M:Z

    .line 1712
    invoke-static {}, Lcom/amap/api/mapcore2d/l;->a()Lcom/amap/api/mapcore2d/l;

    move-result-object v0

    .line 1713
    iput-boolean v4, v0, Lcom/amap/api/mapcore2d/l;->l:Z

    .line 1714
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->e:Lcom/amap/api/mapcore2d/ar;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/ar;->a(Lcom/amap/api/mapcore2d/l;)V

    goto :goto_2

    .line 1717
    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->p:Lcom/amap/api/maps2d/model/Marker;

    if-eqz v0, :cond_0

    .line 1718
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->Z:Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->p:Lcom/amap/api/maps2d/model/Marker;

    invoke-interface {v0, v1}, Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;->onMarkerDragEnd(Lcom/amap/api/maps2d/model/Marker;)V

    .line 1719
    iput-object v3, p0, Lcom/amap/api/mapcore2d/b;->p:Lcom/amap/api/maps2d/model/Marker;

    .line 1720
    iput-object v3, p0, Lcom/amap/api/mapcore2d/b;->q:Lcom/amap/api/mapcore2d/aa;

    goto :goto_3
.end method

.method private Y()V
    .locals 4

    .prologue
    .line 2007
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->al:Landroid/graphics/Point;

    if-eqz v0, :cond_0

    .line 2010
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->al:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/amap/api/mapcore2d/b;->aB:I

    sub-int/2addr v0, v1

    .line 2011
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->al:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/amap/api/mapcore2d/b;->aC:I

    sub-int/2addr v1, v2

    .line 2012
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->al:Landroid/graphics/Point;

    iget v3, p0, Lcom/amap/api/mapcore2d/b;->aB:I

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 2013
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->al:Landroid/graphics/Point;

    iget v3, p0, Lcom/amap/api/mapcore2d/b;->aC:I

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 2014
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    invoke-virtual {v2, v0, v1}, Lcom/amap/api/mapcore2d/ap;->b(II)V

    .line 2015
    return-void

    .line 2008
    :cond_0
    return-void
.end method

.method private Z()Lcom/amap/api/maps2d/model/CameraPosition;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const-wide v4, 0x412e848000000000L    # 1000000.0

    .line 2045
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->C()Lcom/amap/api/mapcore2d/u;

    move-result-object v0

    .line 2046
    if-eqz v0, :cond_0

    .line 2049
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/u;->b()I

    move-result v1

    int-to-double v2, v1

    div-double/2addr v2, v4

    .line 2050
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/u;->a()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v0, v4

    .line 2051
    new-instance v4, Lcom/amap/api/maps2d/model/LatLng;

    invoke-direct {v4, v2, v3, v0, v1}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    .line 2052
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->f()F

    move-result v0

    .line 2053
    invoke-static {v4, v0}, Lcom/amap/api/maps2d/model/CameraPosition;->fromLatLngZoom(Lcom/amap/api/maps2d/model/LatLng;F)Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object v0

    .line 2054
    return-object v0

    .line 2047
    :cond_0
    return-object v1
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/b;Lcom/amap/api/maps2d/AMap$CancelableCallback;)Lcom/amap/api/maps2d/AMap$CancelableCallback;
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/b;Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;)Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->af:Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$OnMapTouchListener;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->aa:Lcom/amap/api/maps2d/AMap$OnMapTouchListener;

    return-object v0
.end method

.method private a(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLng;
    .locals 7

    .prologue
    .line 2149
    new-instance v6, Lcom/amap/api/mapcore2d/ad;

    invoke-direct {v6}, Lcom/amap/api/mapcore2d/ad;-><init>()V

    .line 2150
    iget-wide v2, p1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v4, p1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/amap/api/mapcore2d/b;->b(DDLcom/amap/api/mapcore2d/ad;)V

    .line 2151
    iget v0, v6, Lcom/amap/api/mapcore2d/ad;->b:I

    add-int/lit8 v0, v0, -0x3c

    iput v0, v6, Lcom/amap/api/mapcore2d/ad;->b:I

    .line 2152
    new-instance v0, Lcom/amap/api/mapcore2d/r;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/r;-><init>()V

    .line 2153
    iget v1, v6, Lcom/amap/api/mapcore2d/ad;->a:I

    iget v2, v6, Lcom/amap/api/mapcore2d/ad;->b:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/amap/api/mapcore2d/b;->a(IILcom/amap/api/mapcore2d/r;)V

    .line 2154
    new-instance v1, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v0, Lcom/amap/api/mapcore2d/r;->b:D

    iget-wide v4, v0, Lcom/amap/api/mapcore2d/r;->a:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    .line 2155
    return-object v1
.end method

.method private a(FLandroid/graphics/PointF;FF)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string/jumbo v1, "doScale"

    .line 2464
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->f()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    const/4 v0, 0x2

    .line 2471
    iput v0, p0, Lcom/amap/api/mapcore2d/b;->aG:I

    .line 2472
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$d;->c()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 2473
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/ay$d;->d()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 2474
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    .line 2475
    iget-object v4, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v4, v4, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v4}, Lcom/amap/api/mapcore2d/ay$d;->e()F

    move-result v4

    float-to-double v4, v4

    add-double/2addr v2, v4

    double-to-float v2, v2

    .line 2476
    invoke-virtual {p0, v2}, Lcom/amap/api/mapcore2d/b;->a(F)F

    move-result v2

    .line 2477
    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/ay$d;->e()F

    move-result v3

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_0

    .line 2478
    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->c:[F

    iget-object v4, p0, Lcom/amap/api/mapcore2d/b;->c:[F

    aget v4, v4, v7

    aput v4, v3, v6

    .line 2479
    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->c:[F

    aput v2, v3, v7

    .line 2480
    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->c:[F

    aget v3, v3, v6

    iget-object v4, p0, Lcom/amap/api/mapcore2d/b;->c:[F

    aget v4, v4, v7

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    .line 2481
    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/ay;->b:Lcom/amap/api/mapcore2d/ay$e;

    invoke-virtual {v3, v0, v1}, Lcom/amap/api/mapcore2d/ay$e;->a(II)Lcom/amap/api/mapcore2d/u;

    move-result-object v0

    .line 2482
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore2d/ay$d;->a(F)V

    .line 2483
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/ay$d;->a(Lcom/amap/api/mapcore2d/u;)V

    .line 2484
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->aa()V

    .line 2556
    :cond_0
    return-void

    .line 2465
    :cond_1
    return-void

    .line 2469
    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMapDelegateImpGLSurfaceView"

    .line 2468
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(II)V
    .locals 1

    .prologue
    .line 2018
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->al:Landroid/graphics/Point;

    if-eqz v0, :cond_0

    .line 2021
    iput p1, p0, Lcom/amap/api/mapcore2d/b;->aB:I

    .line 2022
    iput p2, p0, Lcom/amap/api/mapcore2d/b;->aC:I

    .line 2023
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->Y()V

    .line 2024
    return-void

    .line 2019
    :cond_0
    return-void
.end method

.method private a(IILcom/amap/api/mapcore2d/ad;)V
    .locals 7

    .prologue
    .line 2734
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->f()F

    .line 2735
    new-instance v1, Landroid/graphics/PointF;

    int-to-float v0, p1

    int-to-float v2, p2

    invoke-direct {v1, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2736
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/au;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/au;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/au;->l:Lcom/amap/api/mapcore2d/u;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/au;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/au;->n:Landroid/graphics/Point;

    iget-object v4, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/au;

    iget-wide v4, v4, Lcom/amap/api/mapcore2d/au;->k:D

    iget-object v6, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/au;

    iget-object v6, v6, Lcom/amap/api/mapcore2d/au;->o:Lcom/amap/api/mapcore2d/au$a;

    invoke-virtual/range {v0 .. v6}, Lcom/amap/api/mapcore2d/au;->a(Landroid/graphics/PointF;Lcom/amap/api/mapcore2d/u;Landroid/graphics/Point;DLcom/amap/api/mapcore2d/au$a;)Lcom/amap/api/mapcore2d/u;

    move-result-object v0

    .line 2740
    if-nez p3, :cond_0

    .line 2744
    :goto_0
    return-void

    .line 2741
    :cond_0
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/u;->e()D

    move-result-wide v2

    double-to-int v1, v2

    iput v1, p3, Lcom/amap/api/mapcore2d/ad;->a:I

    .line 2742
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/u;->f()D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p3, Lcom/amap/api/mapcore2d/ad;->b:I

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1893
    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->al:Landroid/graphics/Point;

    .line 1894
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->am:Landroid/view/GestureDetector;

    .line 1895
    invoke-static {p1, p0}, Lcom/amap/api/mapcore2d/ba;->a(Landroid/content/Context;Lcom/amap/api/mapcore2d/ba$b;)Lcom/amap/api/mapcore2d/ba$a;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->an:Lcom/amap/api/mapcore2d/ba$a;

    .line 1896
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->aq:Landroid/widget/Scroller;

    .line 1897
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1898
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1899
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/amap/api/mapcore2d/b;->ay:I

    .line 1900
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/amap/api/mapcore2d/b;->az:I

    .line 1901
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/amap/api/mapcore2d/b;->ar:I

    .line 1902
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/amap/api/mapcore2d/b;->as:I

    .line 1903
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v5, -0x1

    const/4 v1, -0x2

    const-wide/16 v8, 0x0

    const/4 v4, 0x0

    .line 1335
    invoke-static {p1}, Lcom/amap/api/mapcore2d/cl;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore2d/p;->b:Ljava/lang/String;

    const-string/jumbo v7, "initEnviornment"

    .line 1337
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->m:Landroid/content/Context;

    .line 1339
    new-instance v0, Lcom/amap/api/mapcore2d/f;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->m:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lcom/amap/api/mapcore2d/f;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/w;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->ah:Ljava/lang/Thread;

    .line 1341
    new-instance v0, Lcom/amap/api/mapcore2d/bg;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/bg;-><init>(Lcom/amap/api/mapcore2d/w;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->T:Lcom/amap/api/mapcore2d/ag;

    const/16 v0, 0xde

    const/16 v2, 0xd7

    const/16 v3, 0xd6

    .line 1342
    invoke-static {v0, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/b;->setBackgroundColor(I)V

    .line 1344
    invoke-static {}, Lcom/amap/api/mapcore2d/m;->a()Lcom/amap/api/mapcore2d/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/m;->a(Lcom/amap/api/mapcore2d/m$a;)V

    .line 1346
    invoke-static {}, Lcom/amap/api/mapcore2d/k;->a()Lcom/amap/api/mapcore2d/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/k;->a(Lcom/amap/api/mapcore2d/k$a;)V

    .line 1347
    new-instance v0, Lcom/amap/api/mapcore2d/a;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/a;-><init>(Lcom/amap/api/mapcore2d/b;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->E:Lcom/amap/api/mapcore2d/a;

    .line 1348
    new-instance v0, Lcom/amap/api/mapcore2d/c;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/c;-><init>(Lcom/amap/api/mapcore2d/w;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->w:Lcom/amap/api/mapcore2d/c;

    .line 1349
    new-instance v0, Lcom/amap/api/mapcore2d/j;

    invoke-direct {v0, p1}, Lcom/amap/api/mapcore2d/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->I:Lcom/amap/api/mapcore2d/j;

    .line 1350
    new-instance v0, Lcom/amap/api/mapcore2d/br;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->m:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lcom/amap/api/mapcore2d/br;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/w;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/br;

    .line 1351
    new-instance v0, Lcom/amap/api/mapcore2d/ay;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->m:Landroid/content/Context;

    sget v3, Lcom/amap/api/mapcore2d/p;->j:I

    invoke-direct {v0, v2, p0, v3}, Lcom/amap/api/mapcore2d/ay;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/b;I)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    .line 1353
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/br;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/br;->a(Z)V

    .line 1354
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/au;

    .line 1356
    new-instance v0, Lcom/amap/api/mapcore2d/ap;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    invoke-direct {v0, v2}, Lcom/amap/api/mapcore2d/ap;-><init>(Lcom/amap/api/mapcore2d/ay;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    .line 1357
    new-instance v0, Lcom/amap/api/mapcore2d/bx;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/bx;-><init>(Lcom/amap/api/mapcore2d/w;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/ak;

    .line 1360
    new-instance v0, Lcom/amap/api/mapcore2d/cb;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->m:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    invoke-direct {v0, v2, v3, p0}, Lcom/amap/api/mapcore2d/cb;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/ap;Lcom/amap/api/mapcore2d/w;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->f:Lcom/amap/api/mapcore2d/cb;

    .line 1361
    new-instance v0, Lcom/amap/api/mapcore2d/at;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->m:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lcom/amap/api/mapcore2d/at;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/w;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/at;

    .line 1362
    new-instance v0, Lcom/amap/api/mapcore2d/ao;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->m:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->e:Lcom/amap/api/mapcore2d/ar;

    invoke-direct {v0, v2, v3, p0}, Lcom/amap/api/mapcore2d/ao;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/ar;Lcom/amap/api/mapcore2d/w;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->u:Lcom/amap/api/mapcore2d/ao;

    .line 1363
    new-instance v0, Lcom/amap/api/mapcore2d/ca;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->m:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lcom/amap/api/mapcore2d/ca;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/b;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->A:Lcom/amap/api/mapcore2d/ca;

    .line 1364
    new-instance v0, Lcom/amap/api/mapcore2d/bi;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->m:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lcom/amap/api/mapcore2d/bi;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/b;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->B:Lcom/amap/api/mapcore2d/bi;

    .line 1365
    new-instance v0, Lcom/amap/api/mapcore2d/o;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->m:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->e:Lcom/amap/api/mapcore2d/ar;

    invoke-direct {v0, v2, v3, p0}, Lcom/amap/api/mapcore2d/o;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/ar;Lcom/amap/api/mapcore2d/w;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->D:Lcom/amap/api/mapcore2d/o;

    .line 1366
    new-instance v0, Lcom/amap/api/mapcore2d/as;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->m:Landroid/content/Context;

    invoke-direct {v0, v2, p2, p0}, Lcom/amap/api/mapcore2d/as;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/amap/api/mapcore2d/b;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/as;

    .line 1367
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1370
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->V()V

    .line 1371
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/at;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/br;

    invoke-virtual {v2, v3, v0}, Lcom/amap/api/mapcore2d/at;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1372
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/at;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->A:Lcom/amap/api/mapcore2d/ca;

    invoke-virtual {v2, v3, v0}, Lcom/amap/api/mapcore2d/at;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1373
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/at;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->B:Lcom/amap/api/mapcore2d/bi;

    invoke-virtual {v2, v3, v0}, Lcom/amap/api/mapcore2d/at;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1374
    new-instance v2, Lcom/amap/api/mapcore2d/at$a;

    invoke-direct {v2, v0}, Lcom/amap/api/mapcore2d/at$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1376
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/at;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v0, v3, v2}, Lcom/amap/api/mapcore2d/at;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1377
    new-instance v0, Lcom/amap/api/mapcore2d/at$a;

    new-instance v3, Lcom/amap/api/maps2d/model/LatLng;

    invoke-direct {v3, v8, v9, v8, v9}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    const/16 v6, 0x53

    move v2, v1

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/mapcore2d/at$a;-><init>(IILcom/amap/api/maps2d/model/LatLng;III)V

    .line 1381
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/at;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->f:Lcom/amap/api/mapcore2d/cb;

    invoke-virtual {v2, v3, v0}, Lcom/amap/api/mapcore2d/at;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1382
    new-instance v0, Lcom/amap/api/mapcore2d/at$a;

    new-instance v3, Lcom/amap/api/maps2d/model/LatLng;

    invoke-direct {v3, v8, v9, v8, v9}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    const/16 v6, 0x53

    move v2, v1

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/mapcore2d/at$a;-><init>(IILcom/amap/api/maps2d/model/LatLng;III)V

    .line 1387
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/at;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->u:Lcom/amap/api/mapcore2d/ao;

    invoke-virtual {v2, v3, v0}, Lcom/amap/api/mapcore2d/at;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1389
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->q()Lcom/amap/api/mapcore2d/ak;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->d()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 1395
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->D:Lcom/amap/api/mapcore2d/o;

    invoke-virtual {v0, v10}, Lcom/amap/api/mapcore2d/o;->setVisibility(I)V

    .line 1396
    new-instance v0, Lcom/amap/api/mapcore2d/at$a;

    new-instance v3, Lcom/amap/api/maps2d/model/LatLng;

    invoke-direct {v3, v8, v9, v8, v9}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    const/16 v6, 0x33

    move v2, v1

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/mapcore2d/at$a;-><init>(IILcom/amap/api/maps2d/model/LatLng;III)V

    .line 1401
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/at;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->D:Lcom/amap/api/mapcore2d/o;

    invoke-virtual {v1, v2, v0}, Lcom/amap/api/mapcore2d/at;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1402
    new-instance v0, Lcom/amap/api/mapcore2d/bb;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/bb;-><init>(Lcom/amap/api/mapcore2d/w;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/bb;

    .line 1403
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->f:Lcom/amap/api/mapcore2d/cb;

    sget v1, Lcom/amap/api/mapcore2d/g;->a:I

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/cb;->setId(I)V

    .line 1405
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ah:Ljava/lang/Thread;

    const-string/jumbo v1, "AuthThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1406
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ah:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1407
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ag:Ljava/util/Timer;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_1

    .line 1415
    :goto_1
    return-void

    .line 1390
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->u:Lcom/amap/api/mapcore2d/ao;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/ao;->setVisibility(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1394
    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMapDelegateImpGLSurfaceView"

    .line 1393
    invoke-static {v0, v2, v7}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1408
    :cond_1
    :try_start_3
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->ag:Ljava/util/Timer;

    .line 1409
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ag:Ljava/util/Timer;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->ai:Ljava/util/TimerTask;

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1413
    :catch_1
    move-exception v0

    const-string/jumbo v1, "AMapDelegateImpGLSurfaceView"

    .line 1412
    invoke-static {v0, v1, v7}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 6

    .prologue
    .line 1725
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->V:Z

    if-nez v0, :cond_1

    .line 1739
    :cond_0
    :goto_0
    return-void

    .line 1725
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->q:Lcom/amap/api/mapcore2d/aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->p:Lcom/amap/api/maps2d/model/Marker;

    if-eqz v0, :cond_0

    .line 1726
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 1727
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/high16 v2, 0x42700000    # 60.0f

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 1728
    new-instance v2, Lcom/amap/api/mapcore2d/r;

    invoke-direct {v2}, Lcom/amap/api/mapcore2d/r;-><init>()V

    .line 1729
    invoke-virtual {p0, v0, v1, v2}, Lcom/amap/api/mapcore2d/b;->a(IILcom/amap/api/mapcore2d/r;)V

    .line 1730
    new-instance v0, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v2, Lcom/amap/api/mapcore2d/r;->b:D

    iget-wide v2, v2, Lcom/amap/api/mapcore2d/r;->a:D

    invoke-direct {v0, v4, v5, v2, v3}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    .line 1731
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->q:Lcom/amap/api/mapcore2d/aa;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->q:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v1}, Lcom/amap/api/mapcore2d/aa;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1732
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->q:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v1, v0}, Lcom/amap/api/mapcore2d/aa;->a(Lcom/amap/api/maps2d/model/LatLng;)V

    .line 1733
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->Z:Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;

    if-eqz v0, :cond_0

    .line 1734
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->Z:Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->p:Lcom/amap/api/maps2d/model/Marker;

    invoke-interface {v0, v1}, Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;->onMarkerDrag(Lcom/amap/api/maps2d/model/Marker;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/b;ZLcom/amap/api/maps2d/model/CameraPosition;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore2d/b;->a(ZLcom/amap/api/maps2d/model/CameraPosition;)V

    return-void
.end method

.method private a(ZLcom/amap/api/maps2d/model/CameraPosition;)V
    .locals 3

    .prologue
    const-string/jumbo v0, "cameraChangeFinish"

    .line 2608
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->H:Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;

    if-eqz v1, :cond_0

    .line 2611
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->I:Lcom/amap/api/mapcore2d/j;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/j;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2614
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2617
    if-eqz p2, :cond_3

    .line 2625
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->H:Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;

    invoke-interface {v0, p2}, Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;->onCameraChangeFinish(Lcom/amap/api/maps2d/model/CameraPosition;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 2629
    :goto_1
    return-void

    .line 2609
    :cond_0
    return-void

    .line 2612
    :cond_1
    return-void

    .line 2615
    :cond_2
    return-void

    .line 2619
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->g()Lcom/amap/api/maps2d/model/CameraPosition;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p2

    goto :goto_0

    .line 2622
    :catch_0
    move-exception v1

    const-string/jumbo v2, "AMapDelegateImpGLSurfaceView"

    .line 2621
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2628
    :catch_1
    move-exception v0

    .line 2627
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/b;Z)Z
    .locals 0

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/b;->F:Z

    return p1
.end method

.method private aa()V
    .locals 12

    .prologue
    const/16 v2, 0x78

    const/16 v1, 0x64

    const/16 v0, 0x32

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 2662
    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->B:Lcom/amap/api/mapcore2d/bi;

    if-eqz v3, :cond_2

    .line 2665
    iget v3, p0, Lcom/amap/api/mapcore2d/b;->l:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    .line 2666
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v3

    .line 2667
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getHeight()I

    move-result v4

    .line 2668
    iget-object v5, p0, Lcom/amap/api/mapcore2d/b;->m:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 2670
    if-le v5, v2, :cond_3

    const/16 v6, 0xa0

    .line 2671
    if-le v5, v6, :cond_4

    const/16 v1, 0xf0

    .line 2677
    if-le v5, v1, :cond_6

    const/16 v1, 0x140

    .line 2683
    if-le v5, v1, :cond_0

    const/16 v1, 0x1e0

    .line 2685
    if-le v5, v1, :cond_0

    const/16 v0, 0x28

    .line 2690
    :cond_0
    :goto_0
    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore2d/b;->l:F

    .line 2694
    :cond_1
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->ab()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    .line 2695
    if-eqz v0, :cond_8

    .line 2698
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->f()F

    move-result v1

    .line 2700
    iget v2, p0, Lcom/amap/api/mapcore2d/b;->l:F

    .line 2701
    iget-wide v4, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    mul-double/2addr v4, v10

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v8

    mul-double/2addr v4, v10

    const-wide v6, 0x415854a640000000L    # 6378137.0

    mul-double/2addr v4, v6

    float-to-double v6, v1

    .line 2702
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide/high16 v8, 0x4070000000000000L    # 256.0

    mul-double/2addr v6, v8

    div-double/2addr v4, v6

    double-to-float v0, v4

    float-to-double v4, v0

    .line 2703
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->r:[I

    float-to-int v3, v1

    aget v0, v0, v3

    int-to-double v6, v0

    float-to-double v2, v2

    mul-double/2addr v2, v4

    div-double v2, v6, v2

    double-to-int v0, v2

    .line 2704
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->r:[I

    float-to-int v1, v1

    aget v1, v2, v1

    invoke-static {v1}, Lcom/amap/api/mapcore2d/cj;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 2706
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->B:Lcom/amap/api/mapcore2d/bi;

    invoke-virtual {v2, v0}, Lcom/amap/api/mapcore2d/bi;->a(I)V

    .line 2707
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->B:Lcom/amap/api/mapcore2d/bi;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bi;->a(Ljava/lang/String;)V

    .line 2708
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->B:Lcom/amap/api/mapcore2d/bi;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bi;->invalidate()V

    .line 2709
    return-void

    .line 2663
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 2670
    goto :goto_0

    .line 2672
    :cond_4
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v3, 0x1e0

    if-le v0, v3, :cond_5

    move v0, v1

    .line 2675
    goto :goto_0

    :cond_5
    move v0, v2

    .line 2673
    goto :goto_0

    .line 2678
    :cond_6
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_7

    const/16 v0, 0x46

    .line 2681
    goto :goto_0

    :cond_7
    const/16 v0, 0x3c

    .line 2679
    goto :goto_0

    .line 2696
    :cond_8
    return-void
.end method

.method private ab()Lcom/amap/api/maps2d/model/LatLng;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2814
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->C()Lcom/amap/api/mapcore2d/u;

    move-result-object v0

    .line 2815
    if-eqz v0, :cond_0

    .line 2818
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/u;->b()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Lcom/amap/api/mapcore2d/q;->a(J)D

    move-result-wide v2

    .line 2819
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/u;->a()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/q;->a(J)D

    move-result-wide v0

    .line 2820
    new-instance v4, Lcom/amap/api/maps2d/model/LatLng;

    invoke-direct {v4, v2, v3, v0, v1}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    .line 2821
    return-object v4

    .line 2816
    :cond_0
    return-object v1
.end method

.method private ac()Lcom/amap/api/mapcore2d/ad;
    .locals 4

    .prologue
    .line 2825
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->C()Lcom/amap/api/mapcore2d/u;

    move-result-object v0

    .line 2826
    new-instance v1, Lcom/amap/api/mapcore2d/ad;

    invoke-direct {v1}, Lcom/amap/api/mapcore2d/ad;-><init>()V

    .line 2827
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/u;->e()D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v1, Lcom/amap/api/mapcore2d/ad;->a:I

    .line 2828
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/u;->f()D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, v1, Lcom/amap/api/mapcore2d/ad;->b:I

    .line 2829
    return-object v1
.end method

.method static synthetic b(Lcom/amap/api/mapcore2d/b;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->aa()V

    return-void
.end method

.method private b(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2028
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->an:Lcom/amap/api/mapcore2d/ba$a;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getHeight()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/amap/api/mapcore2d/ba$a;->a(Landroid/view/MotionEvent;II)Z

    move-result v0

    .line 2029
    if-eqz v0, :cond_1

    .line 2032
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v3, :cond_2

    .line 2035
    :cond_0
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    .line 2038
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v3, :cond_4

    .line 2041
    :goto_3
    return v0

    .line 2030
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->am:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 2032
    :cond_2
    iget-boolean v1, p0, Lcom/amap/api/mapcore2d/b;->W:Z

    if-eqz v1, :cond_0

    .line 2033
    invoke-static {}, Lcom/amap/api/mapcore2d/k;->a()Lcom/amap/api/mapcore2d/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/k;->b()V

    goto :goto_1

    .line 2036
    :cond_3
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/b;->a(Landroid/view/MotionEvent;)V

    goto :goto_2

    .line 2039
    :cond_4
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->X()V

    goto :goto_3
.end method

.method static synthetic b(Lcom/amap/api/mapcore2d/b;Z)Z
    .locals 0

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/b;->G:Z

    return p1
.end method

.method static synthetic c(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$OnMapLoadedListener;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ac:Lcom/amap/api/maps2d/AMap$OnMapLoadedListener;

    return-object v0
.end method

.method static synthetic d(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/ca;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->A:Lcom/amap/api/mapcore2d/ca;

    return-object v0
.end method

.method static synthetic e(Lcom/amap/api/mapcore2d/b;)Landroid/view/View;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/ax;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->Q:Lcom/amap/api/mapcore2d/ax;

    return-object v0
.end method

.method static synthetic g(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->af:Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;

    return-object v0
.end method

.method static synthetic h(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/model/CameraPosition;
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->Z()Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->H:Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;

    return-object v0
.end method

.method static synthetic j(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$CancelableCallback;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    return-object v0
.end method

.method static synthetic k(Lcom/amap/api/mapcore2d/b;)Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->G:Z

    return v0
.end method

.method static synthetic l(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/model/LatLng;
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->ab()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    return-object v0
.end method

.method static synthetic m(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/j;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->I:Lcom/amap/api/mapcore2d/j;

    return-object v0
.end method


# virtual methods
.method A()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->A:Lcom/amap/api/mapcore2d/ca;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ca;->c()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public B()Z
    .locals 1

    .prologue
    .line 1422
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->o:Z

    return v0
.end method

.method public C()Lcom/amap/api/mapcore2d/u;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1434
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    if-nez v0, :cond_1

    .line 1435
    :cond_0
    return-object v1

    .line 1434
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    if-eqz v0, :cond_0

    .line 1437
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$d;->f()Lcom/amap/api/mapcore2d/u;

    move-result-object v0

    return-object v0
.end method

.method public D()Lcom/amap/api/mapcore2d/ap;
    .locals 1

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    return-object v0
.end method

.method public E()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1530
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    if-nez v0, :cond_1

    .line 1531
    :cond_0
    return v2

    .line 1530
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    if-eqz v0, :cond_0

    .line 1533
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    .line 1534
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay$a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/ay$a;->b(Ljava/lang/String;)Lcom/amap/api/mapcore2d/am;

    move-result-object v0

    .line 1535
    if-nez v0, :cond_2

    .line 1538
    return v2

    .line 1536
    :cond_2
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/am;->a()Z

    move-result v0

    return v0
.end method

.method public F()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v0, ""

    .line 1669
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1677
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay$a;->i:Ljava/lang/String;

    .line 1679
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/ay$a;->b(Ljava/lang/String;)Lcom/amap/api/mapcore2d/am;

    move-result-object v0

    .line 1680
    if-nez v0, :cond_1

    .line 1683
    return v2

    .line 1670
    :cond_0
    return v2

    .line 1681
    :cond_1
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/am;->a()Z

    move-result v0

    return v0
.end method

.method public G()Lcom/amap/api/mapcore2d/ba;
    .locals 1

    .prologue
    .line 1906
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->an:Lcom/amap/api/mapcore2d/ba$a;

    return-object v0
.end method

.method public J()F
    .locals 1

    .prologue
    .line 1976
    iget v0, p0, Lcom/amap/api/mapcore2d/b;->au:F

    return v0
.end method

.method public K()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1980
    iput v0, p0, Lcom/amap/api/mapcore2d/b;->aw:F

    .line 1981
    iput v0, p0, Lcom/amap/api/mapcore2d/b;->ax:F

    .line 1982
    return-void
.end method

.method public L()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2602
    return v0
.end method

.method protected M()V
    .locals 2

    .prologue
    .line 2638
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2639
    return-void
.end method

.method N()V
    .locals 2

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2653
    return-void
.end method

.method public O()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2834
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    if-nez v0, :cond_0

    .line 2838
    :goto_0
    return-void

    .line 2835
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    invoke-interface {v0}, Lcom/amap/api/maps2d/AMap$CancelableCallback;->onCancel()V

    .line 2836
    iput-object v1, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    goto :goto_0
.end method

.method public P()V
    .locals 0

    .prologue
    .line 2846
    return-void
.end method

.method public Q()V
    .locals 2

    .prologue
    .line 2850
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2851
    return-void
.end method

.method public R()V
    .locals 1

    .prologue
    .line 2858
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    .line 2859
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/at;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/at;->postInvalidate()V

    .line 2860
    return-void
.end method

.method public S()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps2d/model/Marker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2864
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/cj;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2867
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/as;->g()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2865
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public T()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2913
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/maps2d/AMap$OnCacheRemoveListener;)V

    .line 2914
    return-void
.end method

.method public a(F)F
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$d;->b()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$d;->b()I

    move-result v0

    int-to-float p1, v0

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$d;->a()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$d;->a()I

    move-result v0

    int-to-float p1, v0

    .line 478
    :cond_1
    return p1
.end method

.method public a()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/os/Handler;

    return-object v0
.end method

.method public a(Lcom/amap/api/maps2d/model/PolygonOptions;)Lcom/amap/api/mapcore2d/ae;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 737
    new-instance v0, Lcom/amap/api/mapcore2d/bd;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/bd;-><init>(Lcom/amap/api/mapcore2d/b;)V

    .line 738
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/PolygonOptions;->getFillColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bd;->a(I)V

    .line 739
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/PolygonOptions;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bd;->a(Ljava/util/List;)V

    .line 740
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/PolygonOptions;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bd;->a(Z)V

    .line 741
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/PolygonOptions;->getStrokeWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bd;->b(F)V

    .line 742
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/PolygonOptions;->getZIndex()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bd;->a(F)V

    .line 743
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/PolygonOptions;->getStrokeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bd;->b(I)V

    .line 745
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    if-eqz v1, :cond_0

    .line 748
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->g:Lcom/amap/api/mapcore2d/t;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/t;->a(Lcom/amap/api/mapcore2d/ac;)V

    .line 749
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    .line 750
    return-object v0

    .line 746
    :cond_0
    return-object v2
.end method

.method public a(Lcom/amap/api/maps2d/model/PolylineOptions;)Lcom/amap/api/mapcore2d/af;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 672
    new-instance v0, Lcom/amap/api/mapcore2d/be;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/be;-><init>(Lcom/amap/api/mapcore2d/b;)V

    .line 673
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/PolylineOptions;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/be;->a(I)V

    .line 674
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/PolylineOptions;->isDottedLine()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/be;->b(Z)V

    .line 675
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/PolylineOptions;->isGeodesic()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/be;->c(Z)V

    .line 676
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/PolylineOptions;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/be;->a(Ljava/util/List;)V

    .line 677
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/PolylineOptions;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/be;->a(Z)V

    .line 678
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/PolylineOptions;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/be;->b(F)V

    .line 679
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/PolylineOptions;->getZIndex()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/be;->a(F)V

    .line 681
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    if-eqz v1, :cond_0

    .line 684
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->g:Lcom/amap/api/mapcore2d/t;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/t;->a(Lcom/amap/api/mapcore2d/ac;)V

    .line 685
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    .line 686
    return-object v0

    .line 682
    :cond_0
    return-object v2
.end method

.method public a(Lcom/amap/api/maps2d/model/CircleOptions;)Lcom/amap/api/mapcore2d/x;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 692
    new-instance v0, Lcom/amap/api/mapcore2d/n;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/n;-><init>(Lcom/amap/api/mapcore2d/b;)V

    .line 693
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/CircleOptions;->getFillColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/n;->b(I)V

    .line 694
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/CircleOptions;->getCenter()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/n;->a(Lcom/amap/api/maps2d/model/LatLng;)V

    .line 695
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/CircleOptions;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/n;->a(Z)V

    .line 696
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/CircleOptions;->getStrokeWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/n;->b(F)V

    .line 697
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/CircleOptions;->getZIndex()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/n;->a(F)V

    .line 698
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/CircleOptions;->getStrokeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/n;->a(I)V

    .line 699
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/CircleOptions;->getRadius()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/mapcore2d/n;->a(D)V

    .line 701
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    if-eqz v1, :cond_0

    .line 704
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->g:Lcom/amap/api/mapcore2d/t;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/t;->a(Lcom/amap/api/mapcore2d/ac;)V

    .line 705
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    .line 706
    return-object v0

    .line 702
    :cond_0
    return-object v4
.end method

.method public a(Lcom/amap/api/maps2d/model/GroundOverlayOptions;)Lcom/amap/api/mapcore2d/y;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 712
    new-instance v0, Lcom/amap/api/mapcore2d/v;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/v;-><init>(Lcom/amap/api/mapcore2d/b;)V

    .line 714
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->getAnchorU()F

    move-result v1

    .line 715
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->getAnchorV()F

    move-result v2

    .line 714
    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore2d/v;->b(FF)V

    .line 716
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->getBearing()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/v;->c(F)V

    .line 717
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->getWidth()F

    move-result v1

    .line 718
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->getHeight()F

    move-result v2

    .line 717
    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore2d/v;->a(FF)V

    .line 719
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->getImage()Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/v;->a(Lcom/amap/api/maps2d/model/BitmapDescriptor;)V

    .line 720
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->getLocation()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/v;->a(Lcom/amap/api/maps2d/model/LatLng;)V

    .line 721
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->getBounds()Lcom/amap/api/maps2d/model/LatLngBounds;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/v;->a(Lcom/amap/api/maps2d/model/LatLngBounds;)V

    .line 722
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->getTransparency()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/v;->d(F)V

    .line 723
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/v;->a(Z)V

    .line 724
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->getZIndex()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/v;->a(F)V

    .line 726
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    if-eqz v1, :cond_0

    .line 729
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->g:Lcom/amap/api/mapcore2d/t;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/t;->a(Lcom/amap/api/mapcore2d/ac;)V

    .line 730
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    .line 731
    return-object v0

    .line 727
    :cond_0
    return-object v3
.end method

.method public a(Lcom/amap/api/maps2d/model/MarkerOptions;)Lcom/amap/api/maps2d/model/Marker;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 755
    new-instance v0, Lcom/amap/api/mapcore2d/ax;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/as;

    invoke-direct {v0, p1, v1}, Lcom/amap/api/mapcore2d/ax;-><init>(Lcom/amap/api/maps2d/model/MarkerOptions;Lcom/amap/api/mapcore2d/as;)V

    .line 758
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/as;->a(Lcom/amap/api/mapcore2d/aa;)V

    .line 759
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    .line 760
    new-instance v1, Lcom/amap/api/maps2d/model/Marker;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/Marker;-><init>(Lcom/amap/api/mapcore2d/aa;)V

    return-object v1
.end method

.method public a(Lcom/amap/api/maps2d/model/TextOptions;)Lcom/amap/api/maps2d/model/Text;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2964
    new-instance v0, Lcom/amap/api/mapcore2d/bm;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/as;

    invoke-direct {v0, p0, p1, v1}, Lcom/amap/api/mapcore2d/bm;-><init>(Lcom/amap/api/mapcore2d/w;Lcom/amap/api/maps2d/model/TextOptions;Lcom/amap/api/mapcore2d/as;)V

    .line 2966
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/as;->a(Lcom/amap/api/mapcore2d/ai;)V

    .line 2967
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    .line 2968
    new-instance v1, Lcom/amap/api/maps2d/model/Text;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/Text;-><init>(Lcom/amap/api/mapcore2d/ai;)V

    return-object v1
.end method

.method public a(Lcom/amap/api/maps2d/model/TileOverlayOptions;)Lcom/amap/api/maps2d/model/TileOverlay;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 779
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    if-eqz v0, :cond_0

    .line 782
    new-instance v0, Lcom/amap/api/mapcore2d/bq;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/br;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v3, v1, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    iget-object v4, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v5, p0, Lcom/amap/api/mapcore2d/b;->m:Landroid/content/Context;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore2d/bq;-><init>(Lcom/amap/api/maps2d/model/TileOverlayOptions;Lcom/amap/api/mapcore2d/br;Lcom/amap/api/mapcore2d/au;Lcom/amap/api/mapcore2d/ay;Landroid/content/Context;)V

    .line 788
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/br;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/br;->a(Lcom/amap/api/mapcore2d/aj;)V

    .line 789
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    .line 790
    new-instance v1, Lcom/amap/api/maps2d/model/TileOverlay;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/TileOverlay;-><init>(Lcom/amap/api/mapcore2d/aj;)V

    return-object v1

    .line 780
    :cond_0
    return-object v1
.end method

.method public a(DDLcom/amap/api/mapcore2d/ad;)V
    .locals 7

    .prologue
    const-wide v4, 0x412e848000000000L    # 1000000.0

    .line 2763
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/au;

    new-instance v1, Lcom/amap/api/mapcore2d/u;

    mul-double v2, p1, v4

    double-to-int v2, v2

    mul-double/2addr v4, p3

    double-to-int v3, v4

    invoke-direct {v1, v2, v3}, Lcom/amap/api/mapcore2d/u;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/au;->b(Lcom/amap/api/mapcore2d/u;)Lcom/amap/api/mapcore2d/u;

    move-result-object v0

    .line 2765
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/u;->a()I

    move-result v1

    iput v1, p5, Lcom/amap/api/mapcore2d/ad;->a:I

    .line 2766
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/u;->b()I

    move-result v0

    iput v0, p5, Lcom/amap/api/mapcore2d/ad;->b:I

    .line 2768
    return-void
.end method

.method public a(DDLcom/amap/api/mapcore2d/r;)V
    .locals 7

    .prologue
    .line 2748
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->f()F

    .line 2749
    invoke-static {p1, p2}, Lcom/amap/api/mapcore2d/q;->a(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 2750
    invoke-static {p3, p4}, Lcom/amap/api/mapcore2d/q;->a(D)J

    move-result-wide v2

    long-to-int v2, v2

    .line 2751
    new-instance v1, Lcom/amap/api/mapcore2d/u;

    invoke-direct {v1, v0, v2}, Lcom/amap/api/mapcore2d/u;-><init>(II)V

    .line 2752
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/au;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/au;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/au;->l:Lcom/amap/api/mapcore2d/u;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/au;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/au;->n:Landroid/graphics/Point;

    iget-object v4, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/au;

    iget-wide v4, v4, Lcom/amap/api/mapcore2d/au;->k:D

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/mapcore2d/au;->b(Lcom/amap/api/mapcore2d/u;Lcom/amap/api/mapcore2d/u;Landroid/graphics/Point;D)Landroid/graphics/PointF;

    move-result-object v0

    .line 2755
    if-nez p5, :cond_0

    .line 2759
    :goto_0
    return-void

    .line 2756
    :cond_0
    iget v1, v0, Landroid/graphics/PointF;->x:F

    float-to-double v2, v1

    iput-wide v2, p5, Lcom/amap/api/mapcore2d/r;->a:D

    .line 2757
    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-double v0, v0

    iput-wide v0, p5, Lcom/amap/api/mapcore2d/r;->b:D

    goto :goto_0
.end method

.method public a(FLandroid/graphics/Point;Z)V
    .locals 12

    .prologue
    const/4 v6, 0x0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 618
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    if-eqz v0, :cond_0

    .line 622
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->f()F

    move-result v0

    .line 623
    add-float v1, v0, p1

    invoke-static {v1}, Lcom/amap/api/mapcore2d/cj;->b(F)F

    move-result v1

    sub-float v0, v1, v0

    const/4 v1, 0x0

    .line 624
    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 625
    return-void

    .line 619
    :cond_0
    return-void

    .line 628
    :cond_1
    new-instance v0, Lcom/amap/api/mapcore2d/ad;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/ad;-><init>()V

    .line 629
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->ac()Lcom/amap/api/mapcore2d/ad;

    move-result-object v0

    .line 632
    if-nez p2, :cond_2

    .line 651
    :goto_0
    return-void

    .line 633
    :cond_2
    new-instance v1, Lcom/amap/api/mapcore2d/ad;

    invoke-direct {v1}, Lcom/amap/api/mapcore2d/ad;-><init>()V

    .line 634
    iget v2, p2, Landroid/graphics/Point;->x:I

    iget v3, p2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v2, v3, v1}, Lcom/amap/api/mapcore2d/b;->a(IILcom/amap/api/mapcore2d/ad;)V

    .line 635
    iget v2, v0, Lcom/amap/api/mapcore2d/ad;->a:I

    iget v3, v1, Lcom/amap/api/mapcore2d/ad;->a:I

    sub-int/2addr v2, v3

    .line 636
    iget v3, v0, Lcom/amap/api/mapcore2d/ad;->b:I

    iget v4, v1, Lcom/amap/api/mapcore2d/ad;->b:I

    sub-int/2addr v3, v4

    .line 637
    int-to-double v4, v2

    float-to-double v8, p1

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double/2addr v4, v8

    int-to-double v8, v2

    sub-double/2addr v4, v8

    double-to-int v2, v4

    .line 638
    int-to-double v4, v3

    float-to-double v8, p1

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double/2addr v4, v8

    int-to-double v8, v3

    sub-double/2addr v4, v8

    double-to-int v3, v4

    .line 639
    iget v4, v1, Lcom/amap/api/mapcore2d/ad;->a:I

    add-int/2addr v2, v4

    iput v2, v0, Lcom/amap/api/mapcore2d/ad;->a:I

    .line 640
    iget v1, v1, Lcom/amap/api/mapcore2d/ad;->b:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/amap/api/mapcore2d/ad;->b:I

    .line 641
    new-instance v1, Lcom/amap/api/mapcore2d/u;

    iget v2, v0, Lcom/amap/api/mapcore2d/ad;->b:I

    int-to-double v2, v2

    iget v0, v0, Lcom/amap/api/mapcore2d/ad;->a:I

    int-to-double v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/mapcore2d/u;-><init>(DDZ)V

    .line 642
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    .line 643
    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/au;->b(Lcom/amap/api/mapcore2d/u;)Lcom/amap/api/mapcore2d/u;

    move-result-object v0

    .line 644
    if-nez p3, :cond_3

    .line 647
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/ap;->a(Lcom/amap/api/mapcore2d/u;)V

    .line 648
    invoke-static {}, Lcom/amap/api/mapcore2d/k;->a()Lcom/amap/api/mapcore2d/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/k;->b()V

    goto :goto_0

    .line 645
    :cond_3
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2}, Lcom/amap/api/mapcore2d/ap;->a(Lcom/amap/api/mapcore2d/u;I)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 828
    if-eq p1, v0, :cond_0

    .line 833
    iput v1, p0, Lcom/amap/api/mapcore2d/b;->t:I

    .line 834
    invoke-virtual {p0, v2}, Lcom/amap/api/mapcore2d/b;->h(Z)V

    .line 835
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->A:Lcom/amap/api/mapcore2d/ca;

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/ca;->a(Z)V

    .line 837
    :goto_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    .line 838
    return-void

    .line 829
    :cond_0
    iput v0, p0, Lcom/amap/api/mapcore2d/b;->t:I

    .line 830
    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore2d/b;->h(Z)V

    .line 831
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->A:Lcom/amap/api/mapcore2d/ca;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/ca;->a(Z)V

    goto :goto_0
.end method

.method public a(IILcom/amap/api/mapcore2d/r;)V
    .locals 7

    .prologue
    .line 2720
    new-instance v1, Landroid/graphics/PointF;

    int-to-float v0, p1

    int-to-float v2, p2

    invoke-direct {v1, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2721
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/au;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/au;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/au;->l:Lcom/amap/api/mapcore2d/u;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/au;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/au;->n:Landroid/graphics/Point;

    iget-object v4, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/au;

    iget-wide v4, v4, Lcom/amap/api/mapcore2d/au;->k:D

    iget-object v6, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/au;

    iget-object v6, v6, Lcom/amap/api/mapcore2d/au;->o:Lcom/amap/api/mapcore2d/au$a;

    invoke-virtual/range {v0 .. v6}, Lcom/amap/api/mapcore2d/au;->a(Landroid/graphics/PointF;Lcom/amap/api/mapcore2d/u;Landroid/graphics/Point;DLcom/amap/api/mapcore2d/au$a;)Lcom/amap/api/mapcore2d/u;

    move-result-object v0

    .line 2725
    if-nez p3, :cond_0

    .line 2731
    :goto_0
    return-void

    .line 2726
    :cond_0
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/u;->b()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Lcom/amap/api/mapcore2d/q;->a(J)D

    move-result-wide v2

    .line 2727
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/u;->a()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/q;->a(J)D

    move-result-wide v0

    .line 2728
    iput-wide v2, p3, Lcom/amap/api/mapcore2d/r;->b:D

    .line 2729
    iput-wide v0, p3, Lcom/amap/api/mapcore2d/r;->a:D

    goto :goto_0
.end method

.method public a(Landroid/location/Location;)V
    .locals 8

    .prologue
    :try_start_0
    const-string/jumbo v1, "showMyLocationOverlay"

    .line 407
    if-eqz p1, :cond_1

    .line 410
    new-instance v2, Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    .line 411
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 413
    :try_start_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->n()Z

    move-result v0

    if-nez v0, :cond_2

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/bb;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bb;->a()V

    const/4 v0, 0x0

    .line 415
    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/bb;

    .line 416
    return-void

    .line 408
    :cond_1
    return-void

    .line 413
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->C:Lcom/amap/api/maps2d/LocationSource;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/bb;

    if-nez v0, :cond_5

    .line 419
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/bb;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_6

    .line 422
    :goto_0
    if-nez v2, :cond_7

    .line 430
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/bb;

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    float-to-double v4, v1

    invoke-virtual {v0, v2, v4, v5}, Lcom/amap/api/mapcore2d/bb;->a(Lcom/amap/api/maps2d/model/LatLng;D)V

    .line 431
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->x:Lcom/amap/api/maps2d/AMap$OnMyLocationChangeListener;

    if-nez v0, :cond_8

    .line 440
    :cond_4
    :goto_2
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->v:Landroid/location/Location;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 444
    :goto_3
    return-void

    .line 418
    :cond_5
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->v:Landroid/location/Location;

    if-eqz v0, :cond_3

    goto :goto_1

    .line 420
    :cond_6
    new-instance v0, Lcom/amap/api/mapcore2d/bb;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/bb;-><init>(Lcom/amap/api/mapcore2d/w;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/bb;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 429
    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v3, "AMapDelegateImpGLSurfaceView"

    .line 428
    invoke-static {v0, v3, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 443
    :catch_1
    move-exception v0

    .line 442
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 423
    :cond_7
    :try_start_5
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    .line 424
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$d;->e()F

    move-result v0

    .line 423
    invoke-static {v2, v0}, Lcom/amap/api/mapcore2d/l;->a(Lcom/amap/api/maps2d/model/LatLng;F)Lcom/amap/api/mapcore2d/l;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/mapcore2d/l;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 432
    :cond_8
    :try_start_6
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->v:Landroid/location/Location;

    if-nez v0, :cond_a

    .line 437
    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->x:Lcom/amap/api/maps2d/AMap$OnMyLocationChangeListener;

    invoke-interface {v0, p1}, Lcom/amap/api/maps2d/AMap$OnMyLocationChangeListener;->onMyLocationChange(Landroid/location/Location;)V

    goto :goto_2

    .line 432
    :cond_a
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->v:Landroid/location/Location;

    .line 433
    invoke-virtual {v0}, Landroid/location/Location;->getBearing()F

    move-result v0

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->v:Landroid/location/Location;

    .line 434
    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->v:Landroid/location/Location;

    .line 435
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->v:Landroid/location/Location;

    .line 436
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_4

    goto :goto_4
.end method

.method public a(Lcom/amap/api/mapcore2d/aa;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v2, -0x2

    const/high16 v5, -0x1000000

    const-string/jumbo v1, "showInfoWindow"

    .line 990
    if-eqz p1, :cond_3

    .line 993
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/aa;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 997
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->t()V

    .line 998
    new-instance v3, Lcom/amap/api/maps2d/model/Marker;

    invoke-direct {v3, p1}, Lcom/amap/api/maps2d/model/Marker;-><init>(Lcom/amap/api/mapcore2d/aa;)V

    .line 999
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->P:Lcom/amap/api/maps2d/AMap$InfoWindowAdapter;

    if-nez v0, :cond_5

    .line 1003
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->S:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_6

    .line 1011
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 1014
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    if-nez v0, :cond_8

    .line 1019
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->m:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1020
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->S:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1021
    new-instance v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->m:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1022
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/aa;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1023
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1024
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/amap/api/mapcore2d/b;->m:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1025
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1026
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/aa;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1027
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1028
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1029
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1030
    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    .line 1032
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1033
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1034
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setDrawingCacheQuality(I)V

    .line 1035
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/aa;->e()Lcom/amap/api/mapcore2d/r;

    move-result-object v5

    .line 1038
    if-nez v0, :cond_9

    move v1, v2

    .line 1042
    :goto_4
    new-instance v0, Lcom/amap/api/mapcore2d/at$a;

    .line 1043
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/aa;->c()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v3

    iget-wide v6, v5, Lcom/amap/api/mapcore2d/r;->a:D

    double-to-int v4, v6

    neg-int v4, v4

    .line 1044
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/aa;->n()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    iget-wide v6, v5, Lcom/amap/api/mapcore2d/r;->b:D

    double-to-int v5, v6

    neg-int v5, v5

    add-int/lit8 v5, v5, 0x2

    const/16 v6, 0x51

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/mapcore2d/at$a;-><init>(IILcom/amap/api/maps2d/model/LatLng;III)V

    .line 1047
    check-cast p1, Lcom/amap/api/mapcore2d/ax;

    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->Q:Lcom/amap/api/mapcore2d/ax;

    .line 1048
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/at;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lcom/amap/api/mapcore2d/at;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1050
    return-void

    .line 991
    :cond_3
    return-void

    .line 993
    :cond_4
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/aa;->g()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 994
    return-void

    .line 1000
    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->P:Lcom/amap/api/maps2d/AMap$InfoWindowAdapter;

    invoke-interface {v0, v3}, Lcom/amap/api/maps2d/AMap$InfoWindowAdapter;->getInfoWindow(Lcom/amap/api/maps2d/model/Marker;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    goto/16 :goto_0

    .line 1004
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->m:Landroid/content/Context;

    const-string/jumbo v4, "infowindow_bg2d.9.png"

    invoke-static {v0, v4}, Lcom/amap/api/mapcore2d/bc;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->S:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 1009
    :catch_0
    move-exception v0

    const-string/jumbo v4, "AMapDelegateImpGLSurfaceView"

    .line 1008
    invoke-static {v0, v4, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1011
    :cond_7
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->P:Lcom/amap/api/maps2d/AMap$InfoWindowAdapter;

    if-eqz v0, :cond_1

    .line 1012
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->P:Lcom/amap/api/maps2d/AMap$InfoWindowAdapter;

    invoke-interface {v0, v3}, Lcom/amap/api/maps2d/AMap$InfoWindowAdapter;->getInfoContents(Lcom/amap/api/maps2d/model/Marker;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    goto/16 :goto_2

    .line 1015
    :cond_8
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1016
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->S:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 1039
    :cond_9
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1040
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_4
.end method

.method public a(Lcom/amap/api/mapcore2d/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 529
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->E:Lcom/amap/api/mapcore2d/a;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/a;->a(Lcom/amap/api/mapcore2d/l;)V

    .line 530
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->Q()V

    .line 531
    return-void
.end method

.method public a(Lcom/amap/api/mapcore2d/l;JLcom/amap/api/maps2d/AMap$CancelableCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const-wide v4, 0x412e848000000000L    # 1000000.0

    .line 553
    iget-object v0, p1, Lcom/amap/api/mapcore2d/l;->a:Lcom/amap/api/mapcore2d/l$a;

    sget-object v1, Lcom/amap/api/mapcore2d/l$a;->j:Lcom/amap/api/mapcore2d/l$a;

    if-eq v0, v1, :cond_2

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    if-eqz v0, :cond_3

    .line 562
    if-nez p4, :cond_4

    .line 564
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ap;->f()Z

    move-result v0

    if-nez v0, :cond_5

    .line 568
    :goto_1
    if-nez p4, :cond_6

    .line 570
    :goto_2
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->F:Z

    if-nez v0, :cond_7

    .line 573
    :goto_3
    iget-object v0, p1, Lcom/amap/api/mapcore2d/l;->a:Lcom/amap/api/mapcore2d/l$a;

    sget-object v1, Lcom/amap/api/mapcore2d/l$a;->h:Lcom/amap/api/mapcore2d/l$a;

    if-eq v0, v1, :cond_8

    .line 584
    iget-object v0, p1, Lcom/amap/api/mapcore2d/l;->a:Lcom/amap/api/mapcore2d/l$a;

    sget-object v1, Lcom/amap/api/mapcore2d/l$a;->b:Lcom/amap/api/mapcore2d/l$a;

    if-eq v0, v1, :cond_b

    .line 586
    iget-object v0, p1, Lcom/amap/api/mapcore2d/l;->a:Lcom/amap/api/mapcore2d/l$a;

    sget-object v1, Lcom/amap/api/mapcore2d/l$a;->e:Lcom/amap/api/mapcore2d/l$a;

    if-eq v0, v1, :cond_c

    .line 588
    iget-object v0, p1, Lcom/amap/api/mapcore2d/l;->a:Lcom/amap/api/mapcore2d/l$a;

    sget-object v1, Lcom/amap/api/mapcore2d/l$a;->f:Lcom/amap/api/mapcore2d/l$a;

    if-eq v0, v1, :cond_d

    .line 591
    iget-object v0, p1, Lcom/amap/api/mapcore2d/l;->a:Lcom/amap/api/mapcore2d/l$a;

    sget-object v1, Lcom/amap/api/mapcore2d/l$a;->g:Lcom/amap/api/mapcore2d/l$a;

    if-eq v0, v1, :cond_e

    .line 595
    iget-object v0, p1, Lcom/amap/api/mapcore2d/l;->a:Lcom/amap/api/mapcore2d/l$a;

    sget-object v1, Lcom/amap/api/mapcore2d/l$a;->i:Lcom/amap/api/mapcore2d/l$a;

    if-eq v0, v1, :cond_f

    .line 601
    iget-object v0, p1, Lcom/amap/api/mapcore2d/l;->a:Lcom/amap/api/mapcore2d/l$a;

    sget-object v1, Lcom/amap/api/mapcore2d/l$a;->c:Lcom/amap/api/mapcore2d/l$a;

    if-eq v0, v1, :cond_10

    .line 606
    iget-object v0, p1, Lcom/amap/api/mapcore2d/l;->a:Lcom/amap/api/mapcore2d/l$a;

    sget-object v1, Lcom/amap/api/mapcore2d/l$a;->j:Lcom/amap/api/mapcore2d/l$a;

    if-ne v0, v1, :cond_11

    .line 608
    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->M()V

    .line 609
    invoke-virtual {p0, p1, v2, p2, p3}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/mapcore2d/l;ZJ)V

    .line 615
    :goto_4
    return-void

    .line 554
    :cond_2
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/cj;->a(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 555
    return-void

    .line 559
    :cond_3
    return-void

    .line 563
    :cond_4
    iput-object p4, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    goto :goto_0

    .line 565
    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ap;->g()V

    goto :goto_1

    .line 569
    :cond_6
    iput-object p4, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    goto :goto_2

    .line 571
    :cond_7
    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/b;->G:Z

    goto :goto_3

    .line 574
    :cond_8
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->M()V

    .line 575
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    if-eqz v0, :cond_9

    .line 578
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->n:Z

    if-eqz v0, :cond_a

    .line 581
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    iget v1, p1, Lcom/amap/api/mapcore2d/l;->b:F

    float-to-int v1, v1

    iget v2, p1, Lcom/amap/api/mapcore2d/l;->c:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore2d/ap;->b(II)V

    .line 583
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    goto :goto_4

    .line 576
    :cond_9
    return-void

    .line 579
    :cond_a
    return-void

    .line 585
    :cond_b
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ap;->c()Z

    goto :goto_4

    .line 587
    :cond_c
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ap;->d()Z

    goto :goto_4

    .line 589
    :cond_d
    iget v0, p1, Lcom/amap/api/mapcore2d/l;->d:F

    .line 590
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/ap;->c(F)F

    goto :goto_4

    .line 592
    :cond_e
    iget v0, p1, Lcom/amap/api/mapcore2d/l;->e:F

    .line 593
    iget-object v1, p1, Lcom/amap/api/mapcore2d/l;->k:Landroid/graphics/Point;

    .line 594
    invoke-virtual {p0, v0, v1, v2}, Lcom/amap/api/mapcore2d/b;->a(FLandroid/graphics/Point;Z)V

    goto :goto_4

    .line 596
    :cond_f
    iget-object v0, p1, Lcom/amap/api/mapcore2d/l;->f:Lcom/amap/api/maps2d/model/CameraPosition;

    .line 597
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    iget v2, v0, Lcom/amap/api/maps2d/model/CameraPosition;->zoom:F

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore2d/ap;->c(F)F

    .line 598
    iget-object v1, v0, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 599
    iget-object v0, v0, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 600
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    new-instance v3, Lcom/amap/api/mapcore2d/u;

    invoke-direct {v3, v1, v0}, Lcom/amap/api/mapcore2d/u;-><init>(II)V

    long-to-int v0, p2

    invoke-virtual {v2, v3, v0}, Lcom/amap/api/mapcore2d/ap;->a(Lcom/amap/api/mapcore2d/u;I)V

    goto :goto_4

    .line 602
    :cond_10
    iget-object v0, p1, Lcom/amap/api/mapcore2d/l;->f:Lcom/amap/api/maps2d/model/CameraPosition;

    .line 603
    iget-object v1, v0, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 604
    iget-object v0, v0, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 605
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    new-instance v3, Lcom/amap/api/mapcore2d/u;

    invoke-direct {v3, v1, v0}, Lcom/amap/api/mapcore2d/u;-><init>(II)V

    long-to-int v0, p2

    invoke-virtual {v2, v3, v0}, Lcom/amap/api/mapcore2d/ap;->a(Lcom/amap/api/mapcore2d/u;I)V

    goto/16 :goto_4

    .line 606
    :cond_11
    iget-object v0, p1, Lcom/amap/api/mapcore2d/l;->a:Lcom/amap/api/mapcore2d/l$a;

    sget-object v1, Lcom/amap/api/mapcore2d/l$a;->k:Lcom/amap/api/mapcore2d/l$a;

    if-eq v0, v1, :cond_1

    .line 612
    iput-boolean v2, p1, Lcom/amap/api/mapcore2d/l;->l:Z

    .line 613
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->e:Lcom/amap/api/mapcore2d/ar;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/ar;->a(Lcom/amap/api/mapcore2d/l;)V

    goto/16 :goto_4
.end method

.method public a(Lcom/amap/api/mapcore2d/l;Lcom/amap/api/maps2d/AMap$CancelableCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0xfa

    .line 544
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/mapcore2d/l;JLcom/amap/api/maps2d/AMap$CancelableCallback;)V

    .line 546
    return-void
.end method

.method protected a(Lcom/amap/api/mapcore2d/l;ZJ)V
    .locals 15

    .prologue
    const-string/jumbo v8, "newLatLngBoundsWithSize"

    .line 2874
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    if-eqz v2, :cond_0

    .line 2878
    :try_start_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/amap/api/mapcore2d/l;->g:Lcom/amap/api/maps2d/model/LatLngBounds;

    .line 2879
    iget-object v3, v2, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v3, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    const-wide v6, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v4, v6

    iget-object v3, v2, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v6, v3, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    const-wide v10, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v6, v10

    sub-double/2addr v4, v6

    double-to-float v3, v4

    .line 2880
    iget-object v4, v2, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    const-wide v6, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v4, v6

    iget-object v6, v2, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v6, v6, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    const-wide v10, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v6, v10

    sub-double/2addr v4, v6

    double-to-float v4, v4

    .line 2881
    iget-object v5, v2, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v6, v5, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    const-wide v10, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v6, v10

    iget-object v5, v2, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v10, v5, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    const-wide v12, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v10, v12

    add-double/2addr v6, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v10

    double-to-int v5, v6

    .line 2882
    iget-object v6, v2, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v6, v6, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    const-wide v10, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v6, v10

    iget-object v2, v2, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v10, v2, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    const-wide v12, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v10, v12

    add-double/2addr v6, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v10

    double-to-int v2, v6

    .line 2883
    new-instance v6, Lcom/amap/api/mapcore2d/u;

    invoke-direct {v6, v5, v2}, Lcom/amap/api/mapcore2d/u;-><init>(II)V

    .line 2884
    if-nez p2, :cond_1

    .line 2887
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    invoke-virtual {v2, v6}, Lcom/amap/api/mapcore2d/ap;->a(Lcom/amap/api/mapcore2d/u;)V

    .line 2889
    :goto_0
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/amap/api/mapcore2d/l;->i:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/amap/api/mapcore2d/l;->j:I

    move-object/from16 v0, p1

    iget v7, v0, Lcom/amap/api/mapcore2d/l;->h:I

    invoke-virtual/range {v2 .. v7}, Lcom/amap/api/mapcore2d/ap;->a(FFIII)V

    .line 2893
    invoke-static {}, Lcom/amap/api/mapcore2d/k;->a()Lcom/amap/api/mapcore2d/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/k;->b()V

    .line 2897
    :goto_1
    return-void

    .line 2875
    :cond_0
    return-void

    .line 2885
    :cond_1
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    move-wide/from16 v0, p3

    long-to-int v5, v0

    invoke-virtual {v2, v6, v5}, Lcom/amap/api/mapcore2d/ap;->a(Lcom/amap/api/mapcore2d/u;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2896
    :catch_0
    move-exception v2

    const-string/jumbo v3, "AMapDelegateImpGLSurfaceView"

    .line 2895
    invoke-static {v2, v3, v8}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Lcom/amap/api/maps2d/AMap$InfoWindowAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 983
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->P:Lcom/amap/api/maps2d/AMap$InfoWindowAdapter;

    .line 984
    return-void
.end method

.method public a(Lcom/amap/api/maps2d/AMap$OnCacheRemoveListener;)V
    .locals 3

    .prologue
    .line 2917
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->aj:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 2929
    :goto_0
    return-void

    .line 2919
    :cond_0
    :try_start_0
    new-instance v0, Lcom/amap/api/mapcore2d/b$b;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->m:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcom/amap/api/mapcore2d/b$b;-><init>(Lcom/amap/api/mapcore2d/b;Landroid/content/Context;Lcom/amap/api/maps2d/AMap$OnCacheRemoveListener;)V

    .line 2921
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->aj:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2922
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->aj:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2927
    :catch_0
    move-exception v0

    const-string/jumbo v1, "AMapDelegateImpGLSurfaceView"

    const-string/jumbo v2, "removecache"

    .line 2924
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/db;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2926
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2634
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->H:Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;

    .line 2635
    return-void
.end method

.method public a(Lcom/amap/api/maps2d/AMap$OnInfoWindowClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 977
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->O:Lcom/amap/api/maps2d/AMap$OnInfoWindowClickListener;

    .line 978
    return-void
.end method

.method public a(Lcom/amap/api/maps2d/AMap$OnMapClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 940
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->ad:Lcom/amap/api/maps2d/AMap$OnMapClickListener;

    .line 941
    return-void
.end method

.method public a(Lcom/amap/api/maps2d/AMap$OnMapLoadedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 971
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->ac:Lcom/amap/api/maps2d/AMap$OnMapLoadedListener;

    .line 972
    return-void
.end method

.method public a(Lcom/amap/api/maps2d/AMap$OnMapLongClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 952
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->ab:Lcom/amap/api/maps2d/AMap$OnMapLongClickListener;

    .line 954
    return-void
.end method

.method public a(Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;)V
    .locals 1

    .prologue
    .line 1198
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->af:Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;

    .line 1199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->U:Z

    .line 1200
    return-void
.end method

.method public a(Lcom/amap/api/maps2d/AMap$OnMapTouchListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 946
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->aa:Lcom/amap/api/maps2d/AMap$OnMapTouchListener;

    .line 947
    return-void
.end method

.method public a(Lcom/amap/api/maps2d/AMap$OnMarkerClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 959
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->R:Lcom/amap/api/maps2d/AMap$OnMarkerClickListener;

    .line 960
    return-void
.end method

.method public a(Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 965
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->Z:Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;

    .line 966
    return-void
.end method

.method public a(Lcom/amap/api/maps2d/AMap$OnMyLocationChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1092
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->x:Lcom/amap/api/maps2d/AMap$OnMyLocationChangeListener;

    .line 1093
    return-void
.end method

.method public a(Lcom/amap/api/maps2d/LocationSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 913
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->C:Lcom/amap/api/maps2d/LocationSource;

    .line 914
    if-nez p1, :cond_0

    .line 917
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->u:Lcom/amap/api/mapcore2d/ao;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/ao;->a(Z)V

    .line 919
    :goto_0
    return-void

    .line 915
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->u:Lcom/amap/api/mapcore2d/ao;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/ao;->a(Z)V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/maps2d/model/MyLocationStyle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 892
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->o()Lcom/amap/api/mapcore2d/bb;

    move-result-object v0

    if-nez v0, :cond_0

    .line 895
    :goto_0
    return-void

    .line 893
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->o()Lcom/amap/api/mapcore2d/bb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/bb;->a(Lcom/amap/api/maps2d/model/MyLocationStyle;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 401
    return-void
.end method

.method public a(FF)Z
    .locals 2

    .prologue
    .line 2231
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/ap;->a(Z)V

    .line 2232
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->av:Z

    if-nez v0, :cond_0

    .line 2236
    :goto_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    .line 2237
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->av:Z

    return v0

    .line 2233
    :cond_0
    iget v0, p0, Lcom/amap/api/mapcore2d/b;->aw:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/amap/api/mapcore2d/b;->aw:F

    .line 2234
    iget v0, p0, Lcom/amap/api/mapcore2d/b;->ax:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/amap/api/mapcore2d/b;->ax:F

    goto :goto_0
.end method

.method public a(FLandroid/graphics/PointF;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v1, "onScale"

    .line 2281
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->f()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 2287
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iput-boolean v3, v0, Lcom/amap/api/mapcore2d/ay$a;->c:Z

    .line 2288
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->M()V

    .line 2289
    iget v0, p0, Lcom/amap/api/mapcore2d/b;->aw:F

    iget v1, p0, Lcom/amap/api/mapcore2d/b;->ax:F

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/amap/api/mapcore2d/b;->a(FLandroid/graphics/PointF;FF)V

    .line 2290
    iput-boolean v3, p0, Lcom/amap/api/mapcore2d/b;->av:Z

    const-wide/16 v0, 0x8

    .line 2291
    invoke-virtual {p0, v0, v1}, Lcom/amap/api/mapcore2d/b;->postInvalidateDelayed(J)V

    .line 2292
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    invoke-virtual {v0, v4}, Lcom/amap/api/mapcore2d/ay;->a(Z)V

    .line 2293
    return v4

    .line 2282
    :cond_0
    return v3

    .line 2286
    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMapDelegateImpGLSurfaceView"

    .line 2285
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/graphics/Matrix;)Z
    .locals 1

    .prologue
    .line 2258
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/graphics/PointF;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v1, "startScale"

    .line 2317
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->f()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 2324
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->q()Lcom/amap/api/mapcore2d/ak;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->f()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-eqz v0, :cond_1

    .line 2330
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-boolean v1, p0, Lcom/amap/api/mapcore2d/b;->o:Z

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/ay;->a(Z)V

    .line 2331
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    invoke-virtual {v0, v4}, Lcom/amap/api/mapcore2d/ay$a;->a(Z)V

    .line 2332
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iput-boolean v4, v0, Lcom/amap/api/mapcore2d/ay$a;->c:Z

    .line 2333
    iput-boolean v4, p0, Lcom/amap/api/mapcore2d/b;->av:Z

    .line 2334
    return v4

    .line 2318
    :cond_0
    return v3

    .line 2322
    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMapDelegateImpGLSurfaceView"

    .line 2321
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2325
    :cond_1
    return v3

    .line 2329
    :catch_1
    move-exception v0

    const-string/jumbo v2, "AMapDelegateImpGLSurfaceView"

    .line 2328
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 449
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->g:Lcom/amap/api/mapcore2d/t;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/t;->b(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 450
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected b(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 12

    .prologue
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 2566
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 2567
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v1

    .line 2568
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getHeight()I

    move-result v2

    .line 2569
    iget v3, p1, Landroid/graphics/PointF;->x:F

    shr-int/lit8 v4, v1, 0x1

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 2570
    iget v4, p1, Landroid/graphics/PointF;->y:F

    shr-int/lit8 v5, v2, 0x1

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 2571
    float-to-double v6, v4

    float-to-double v8, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    .line 2572
    float-to-double v8, v3

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    float-to-double v4, v4

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 2573
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->L()I

    move-result v3

    int-to-double v8, v3

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v8, v10

    sub-double/2addr v6, v8

    .line 2574
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v4

    shr-int/lit8 v1, v1, 0x1

    int-to-double v10, v1

    add-double/2addr v8, v10

    double-to-float v1, v8

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 2575
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    shr-int/lit8 v1, v2, 0x1

    int-to-double v2, v1

    add-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 2577
    return-object v0
.end method

.method public b(Lcom/amap/api/maps2d/model/MarkerOptions;)Lcom/amap/api/mapcore2d/ax;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 766
    new-instance v0, Lcom/amap/api/mapcore2d/ax;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/as;

    invoke-direct {v0, p1, v1}, Lcom/amap/api/mapcore2d/ax;-><init>(Lcom/amap/api/maps2d/model/MarkerOptions;Lcom/amap/api/mapcore2d/as;)V

    .line 768
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/as;->a(Lcom/amap/api/mapcore2d/aa;)V

    .line 769
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    .line 770
    return-object v0
.end method

.method public b()Lcom/amap/api/mapcore2d/ay;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    return-object v0
.end method

.method public b(DDLcom/amap/api/mapcore2d/ad;)V
    .locals 7

    .prologue
    .line 2794
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->f()F

    .line 2795
    invoke-static {p1, p2}, Lcom/amap/api/mapcore2d/q;->a(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 2796
    invoke-static {p3, p4}, Lcom/amap/api/mapcore2d/q;->a(D)J

    move-result-wide v2

    long-to-int v2, v2

    .line 2797
    new-instance v1, Lcom/amap/api/mapcore2d/u;

    invoke-direct {v1, v0, v2}, Lcom/amap/api/mapcore2d/u;-><init>(II)V

    .line 2798
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/au;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/au;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/au;->l:Lcom/amap/api/mapcore2d/u;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/au;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/au;->n:Landroid/graphics/Point;

    iget-object v4, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/au;

    iget-wide v4, v4, Lcom/amap/api/mapcore2d/au;->k:D

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/mapcore2d/au;->b(Lcom/amap/api/mapcore2d/u;Lcom/amap/api/mapcore2d/u;Landroid/graphics/Point;D)Landroid/graphics/PointF;

    move-result-object v0

    .line 2802
    if-nez p5, :cond_0

    .line 2806
    :goto_0
    return-void

    .line 2803
    :cond_0
    iget v1, v0, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iput v1, p5, Lcom/amap/api/mapcore2d/ad;->a:I

    .line 2804
    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    iput v0, p5, Lcom/amap/api/mapcore2d/ad;->b:I

    goto :goto_0
.end method

.method public b(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 884
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/bb;

    if-nez v0, :cond_0

    .line 887
    :goto_0
    return-void

    .line 885
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/bb;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/bb;->a(F)V

    goto :goto_0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->A:Lcom/amap/api/mapcore2d/ca;

    if-nez v0, :cond_1

    .line 1216
    :cond_0
    :goto_0
    return-void

    .line 1210
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->A:Lcom/amap/api/mapcore2d/ca;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/ca;->a(I)V

    .line 1211
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->A:Lcom/amap/api/mapcore2d/ca;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ca;->invalidate()V

    .line 1212
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->B:Lcom/amap/api/mapcore2d/bi;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bi;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1213
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->B:Lcom/amap/api/mapcore2d/bi;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bi;->invalidate()V

    goto :goto_0
.end method

.method public b(IILcom/amap/api/mapcore2d/r;)V
    .locals 2

    .prologue
    .line 2786
    if-nez p3, :cond_0

    .line 2790
    :goto_0
    return-void

    .line 2787
    :cond_0
    int-to-long v0, p1

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/q;->a(J)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/amap/api/mapcore2d/r;->a:D

    .line 2788
    int-to-long v0, p2

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/q;->a(J)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/amap/api/mapcore2d/r;->b:D

    goto :goto_0
.end method

.method public b(Lcom/amap/api/mapcore2d/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 537
    invoke-virtual {p0, p1, v0}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/mapcore2d/l;Lcom/amap/api/maps2d/AMap$CancelableCallback;)V

    .line 538
    return-void
.end method

.method public b(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 847
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/b;->i(Z)V

    .line 848
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    .line 849
    return-void
.end method

.method public b(FLandroid/graphics/PointF;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v1, "endScale"

    .line 2300
    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/b;->av:Z

    .line 2302
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->f()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 2308
    :goto_0
    invoke-static {}, Lcom/amap/api/mapcore2d/k;->a()Lcom/amap/api/mapcore2d/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/k;->b()V

    .line 2309
    const/4 v0, 0x1

    return v0

    .line 2303
    :cond_0
    return v2

    .line 2307
    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMapDelegateImpGLSurfaceView"

    .line 2306
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Landroid/graphics/Matrix;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v1, "onScale"

    .line 2265
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->f()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 2271
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->at:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 2273
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    .line 2274
    const/4 v0, 0x1

    return v0

    .line 2266
    :cond_0
    return v2

    .line 2270
    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMapDelegateImpGLSurfaceView"

    .line 2269
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Lcom/amap/api/mapcore2d/aa;)Z
    .locals 2

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->Q:Lcom/amap/api/mapcore2d/ax;

    if-nez v0, :cond_1

    .line 1057
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1054
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1055
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->Q:Lcom/amap/api/mapcore2d/ax;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ax;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/amap/api/mapcore2d/aa;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v2, "removeMarker"

    .line 460
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/as;->a(Ljava/lang/String;)Lcom/amap/api/mapcore2d/aa;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 464
    :goto_0
    if-nez v0, :cond_0

    .line 467
    const/4 v0, 0x0

    return v0

    .line 463
    :catch_0
    move-exception v0

    const-string/jumbo v3, "AMapDelegateImpGLSurfaceView"

    .line 462
    invoke-static {v0, v3, v2}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 465
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/as;->b(Lcom/amap/api/mapcore2d/aa;)Z

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 376
    return v0

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$d;->c()I

    move-result v0

    return v0
.end method

.method protected c(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 12

    .prologue
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 2581
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 2582
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v1

    .line 2583
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getHeight()I

    move-result v2

    .line 2584
    iget v3, p1, Landroid/graphics/PointF;->x:F

    shr-int/lit8 v4, v1, 0x1

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 2585
    iget v4, p1, Landroid/graphics/PointF;->y:F

    shr-int/lit8 v5, v2, 0x1

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 2586
    float-to-double v6, v4

    float-to-double v8, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    .line 2587
    float-to-double v8, v3

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    float-to-double v4, v4

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 2588
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->L()I

    move-result v3

    int-to-double v8, v3

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v8, v10

    add-double/2addr v6, v8

    .line 2589
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v4

    shr-int/lit8 v1, v1, 0x1

    int-to-double v10, v1

    add-double/2addr v8, v10

    double-to-float v1, v8

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 2590
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    shr-int/lit8 v1, v2, 0x1

    int-to-double v2, v1

    add-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 2591
    return-object v0
.end method

.method public c(F)V
    .locals 0

    .prologue
    .line 1972
    iput p1, p0, Lcom/amap/api/mapcore2d/b;->au:F

    .line 1973
    return-void
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->f:Lcom/amap/api/mapcore2d/cb;

    if-nez v0, :cond_0

    .line 1224
    :goto_0
    return-void

    .line 1221
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->f:Lcom/amap/api/mapcore2d/cb;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/cb;->a(I)V

    .line 1222
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->f:Lcom/amap/api/mapcore2d/cb;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/cb;->invalidate()V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2901
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    if-nez v0, :cond_1

    .line 2902
    :cond_0
    return-void

    .line 2901
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    if-eqz v0, :cond_0

    .line 2904
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->E()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2908
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/ay$a;->a(Ljava/lang/String;)V

    .line 2909
    return-void

    .line 2905
    :cond_2
    return-void
.end method

.method public c(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 858
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->C:Lcom/amap/api/maps2d/LocationSource;

    if-nez v0, :cond_1

    .line 875
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->u:Lcom/amap/api/mapcore2d/ao;

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/ao;->a(Z)V

    .line 877
    :cond_0
    :goto_0
    if-eqz p1, :cond_4

    .line 879
    :goto_1
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/b;->y:Z

    .line 880
    return-void

    .line 859
    :cond_1
    if-nez p1, :cond_2

    .line 866
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/bb;

    if-nez v0, :cond_3

    .line 870
    :goto_2
    iput-object v1, p0, Lcom/amap/api/mapcore2d/b;->v:Landroid/location/Location;

    .line 871
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->C:Lcom/amap/api/maps2d/LocationSource;

    invoke-interface {v0}, Lcom/amap/api/maps2d/LocationSource;->deactivate()V

    .line 872
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->u:Lcom/amap/api/mapcore2d/ao;

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/ao;->a(Z)V

    goto :goto_0

    .line 860
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->C:Lcom/amap/api/maps2d/LocationSource;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->w:Lcom/amap/api/mapcore2d/c;

    invoke-interface {v0, v1}, Lcom/amap/api/maps2d/LocationSource;->activate(Lcom/amap/api/maps2d/LocationSource$OnLocationChangedListener;)V

    .line 861
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->u:Lcom/amap/api/mapcore2d/ao;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/ao;->a(Z)V

    .line 862
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/bb;

    if-nez v0, :cond_0

    .line 863
    new-instance v0, Lcom/amap/api/mapcore2d/bb;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/bb;-><init>(Lcom/amap/api/mapcore2d/w;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/bb;

    goto :goto_0

    .line 867
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/bb;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bb;->a()V

    .line 868
    iput-object v1, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/bb;

    goto :goto_2

    .line 878
    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ak;->d(Z)V

    goto :goto_1
.end method

.method public computeScroll()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1759
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->aq:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1779
    invoke-super {p0}, Landroid/view/View;->computeScroll()V

    .line 1780
    return-void

    .line 1760
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->aq:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget v1, p0, Lcom/amap/api/mapcore2d/b;->ar:I

    sub-int/2addr v0, v1

    .line 1761
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->aq:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iget v2, p0, Lcom/amap/api/mapcore2d/b;->as:I

    sub-int/2addr v1, v2

    .line 1762
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->aq:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iput v2, p0, Lcom/amap/api/mapcore2d/b;->ar:I

    .line 1763
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->aq:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    iput v2, p0, Lcom/amap/api/mapcore2d/b;->as:I

    .line 1764
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/ay;->b:Lcom/amap/api/mapcore2d/ay$e;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/au;->n:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/au;->n:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v3

    invoke-virtual {v2, v0, v1}, Lcom/amap/api/mapcore2d/ay$e;->a(II)Lcom/amap/api/mapcore2d/u;

    move-result-object v0

    .line 1767
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->aq:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1775
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/ay$d;->b(Lcom/amap/api/mapcore2d/u;)V

    .line 1777
    :goto_0
    return-void

    .line 1768
    :cond_1
    invoke-static {}, Lcom/amap/api/mapcore2d/k;->a()Lcom/amap/api/mapcore2d/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/k;->b()V

    .line 1769
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->H:Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;

    if-nez v0, :cond_2

    .line 1773
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0, v4, v4}, Lcom/amap/api/mapcore2d/ay$d;->a(ZZ)V

    goto :goto_0

    .line 1770
    :cond_2
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->Z()Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object v0

    .line 1771
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/amap/api/mapcore2d/b;->a(ZLcom/amap/api/maps2d/model/CameraPosition;)V

    goto :goto_1
.end method

.method public d()I
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 384
    return v0

    .line 383
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$d;->d()I

    move-result v0

    return v0
.end method

.method public d(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1097
    if-nez p1, :cond_0

    .line 1100
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->f:Lcom/amap/api/mapcore2d/cb;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/cb;->setVisibility(I)V

    .line 1102
    :goto_0
    return-void

    .line 1098
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->f:Lcom/amap/api/mapcore2d/cb;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/cb;->setVisibility(I)V

    goto :goto_0
.end method

.method public d(F)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string/jumbo v1, "onScale"

    .line 2245
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->f()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 2252
    :goto_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/b;->c(F)V

    .line 2253
    return v3

    .line 2246
    :cond_0
    return v3

    .line 2250
    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMapDelegateImpGLSurfaceView"

    .line 2249
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public e()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 391
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/at;

    return-object v0
.end method

.method public e(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1106
    if-nez p1, :cond_0

    .line 1109
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->u:Lcom/amap/api/mapcore2d/ao;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/ao;->setVisibility(I)V

    .line 1111
    :goto_0
    return-void

    .line 1107
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->u:Lcom/amap/api/mapcore2d/ao;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/ao;->setVisibility(I)V

    goto :goto_0
.end method

.method public f()F
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v2, "getZoomLevel"

    .line 485
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    if-nez v0, :cond_1

    .line 486
    :cond_0
    return v1

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    if-eqz v0, :cond_0

    .line 489
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$d;->e()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 493
    :goto_0
    return v0

    .line 492
    :catch_0
    move-exception v0

    const-string/jumbo v3, "AMapDelegateImpGLSurfaceView"

    .line 491
    invoke-static {v0, v3, v2}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method public f(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1115
    if-nez p1, :cond_0

    .line 1118
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->D:Lcom/amap/api/mapcore2d/o;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/o;->setVisibility(I)V

    .line 1120
    :goto_0
    return-void

    .line 1116
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->D:Lcom/amap/api/mapcore2d/o;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/o;->setVisibility(I)V

    goto :goto_0
.end method

.method public g()Lcom/amap/api/maps2d/model/CameraPosition;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 498
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->ab()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    .line 499
    if-eqz v0, :cond_0

    .line 502
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->f()F

    move-result v1

    .line 503
    invoke-static {}, Lcom/amap/api/maps2d/model/CameraPosition;->builder()Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->target(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->zoom(F)Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->build()Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object v0

    return-object v0

    .line 500
    :cond_0
    return-object v1
.end method

.method public g(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1124
    if-nez p1, :cond_0

    .line 1128
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->B:Lcom/amap/api/mapcore2d/bi;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bi;->a(Ljava/lang/String;)V

    .line 1129
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->B:Lcom/amap/api/mapcore2d/bi;

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/bi;->a(I)V

    .line 1130
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->B:Lcom/amap/api/mapcore2d/bi;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bi;->setVisibility(I)V

    .line 1132
    :goto_0
    return-void

    .line 1125
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->B:Lcom/amap/api/mapcore2d/bi;

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/bi;->setVisibility(I)V

    .line 1126
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->N()V

    goto :goto_0
.end method

.method public h()F
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    if-nez v0, :cond_1

    .line 509
    :cond_0
    sget v0, Lcom/amap/api/mapcore2d/p;->c:I

    int-to-float v0, v0

    return v0

    .line 508
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$d;->a()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public h(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1460
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->E()Z

    move-result v0

    .line 1462
    if-eq v0, p1, :cond_0

    .line 1471
    if-eqz p1, :cond_1

    .line 1485
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    if-eqz v0, :cond_2

    .line 1488
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    .line 1489
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay$a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/ay$a;->b(Ljava/lang/String;)Lcom/amap/api/mapcore2d/am;

    move-result-object v0

    .line 1491
    if-nez v0, :cond_3

    .line 1500
    new-instance v0, Lcom/amap/api/mapcore2d/am;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/au;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/am;-><init>(Lcom/amap/api/mapcore2d/au;)V

    .line 1501
    new-instance v1, Lcom/amap/api/mapcore2d/bs;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->m:Landroid/content/Context;

    invoke-direct {v1, v2, v3, v0}, Lcom/amap/api/mapcore2d/bs;-><init>(Lcom/amap/api/mapcore2d/ay;Landroid/content/Context;Lcom/amap/api/mapcore2d/am;)V

    iput-object v1, v0, Lcom/amap/api/mapcore2d/am;->q:Lcom/amap/api/mapcore2d/bs;

    .line 1502
    new-instance v1, Lcom/amap/api/mapcore2d/b$4;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore2d/b$4;-><init>(Lcom/amap/api/mapcore2d/b;)V

    iput-object v1, v0, Lcom/amap/api/mapcore2d/am;->j:Lcom/amap/api/mapcore2d/by;

    .line 1511
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay$a;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/amap/api/mapcore2d/am;->b:Ljava/lang/String;

    .line 1512
    iput-boolean v5, v0, Lcom/amap/api/mapcore2d/am;->e:Z

    .line 1514
    invoke-virtual {v0, v5}, Lcom/amap/api/mapcore2d/am;->a(Z)V

    .line 1515
    iput-boolean v5, v0, Lcom/amap/api/mapcore2d/am;->f:Z

    .line 1517
    sget v1, Lcom/amap/api/mapcore2d/p;->c:I

    iput v1, v0, Lcom/amap/api/mapcore2d/am;->c:I

    .line 1518
    sget v1, Lcom/amap/api/mapcore2d/p;->d:I

    iput v1, v0, Lcom/amap/api/mapcore2d/am;->d:I

    .line 1519
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/amap/api/mapcore2d/ay$a;->a(Lcom/amap/api/mapcore2d/am;Landroid/content/Context;)Z

    .line 1520
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    .line 1521
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay$a;->h:Ljava/lang/String;

    .line 1520
    invoke-virtual {v0, v1, v5}, Lcom/amap/api/mapcore2d/ay$a;->a(Ljava/lang/String;Z)Z

    .line 1525
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0, v4, v4}, Lcom/amap/api/mapcore2d/ay$d;->a(ZZ)V

    .line 1526
    return-void

    .line 1463
    :cond_0
    return-void

    .line 1472
    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    .line 1473
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay$a;->h:Ljava/lang/String;

    .line 1472
    invoke-virtual {v0, v1, v4}, Lcom/amap/api/mapcore2d/ay$a;->a(Ljava/lang/String;Z)Z

    .line 1475
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    .line 1476
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay$a;->g:Ljava/lang/String;

    .line 1475
    invoke-virtual {v0, v1, v5}, Lcom/amap/api/mapcore2d/ay$a;->a(Ljava/lang/String;Z)Z

    .line 1480
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0, v4, v4}, Lcom/amap/api/mapcore2d/ay$d;->a(ZZ)V

    .line 1481
    return-void

    .line 1486
    :cond_2
    return-void

    .line 1492
    :cond_3
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    .line 1493
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay$a;->h:Ljava/lang/String;

    .line 1492
    invoke-virtual {v0, v1, v5}, Lcom/amap/api/mapcore2d/ay$a;->a(Ljava/lang/String;Z)Z

    .line 1497
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0, v4, v4}, Lcom/amap/api/mapcore2d/ay$d;->a(ZZ)V

    .line 1498
    return-void
.end method

.method public i()F
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    if-nez v0, :cond_1

    .line 519
    :cond_0
    sget v0, Lcom/amap/api/mapcore2d/p;->d:I

    int-to-float v0, v0

    return v0

    .line 518
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$d;->b()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public i(Z)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1543
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->F()Z

    move-result v0

    .line 1544
    if-eq p1, v0, :cond_0

    const-string/jumbo v0, ""

    .line 1551
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    if-eqz v0, :cond_1

    .line 1562
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay$a;->i:Ljava/lang/String;

    .line 1564
    if-eqz p1, :cond_2

    .line 1571
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/ay$a;->b(Ljava/lang/String;)Lcom/amap/api/mapcore2d/am;

    move-result-object v1

    .line 1572
    if-nez v1, :cond_3

    .line 1636
    new-instance v1, Lcom/amap/api/mapcore2d/am;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/au;

    invoke-direct {v1, v2}, Lcom/amap/api/mapcore2d/am;-><init>(Lcom/amap/api/mapcore2d/au;)V

    .line 1637
    new-instance v2, Lcom/amap/api/mapcore2d/bs;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v4, p0, Lcom/amap/api/mapcore2d/b;->m:Landroid/content/Context;

    invoke-direct {v2, v3, v4, v1}, Lcom/amap/api/mapcore2d/bs;-><init>(Lcom/amap/api/mapcore2d/ay;Landroid/content/Context;Lcom/amap/api/mapcore2d/am;)V

    iput-object v2, v1, Lcom/amap/api/mapcore2d/am;->q:Lcom/amap/api/mapcore2d/bs;

    .line 1638
    iput-boolean v6, v1, Lcom/amap/api/mapcore2d/am;->g:Z

    const-wide/32 v2, 0x1d4c0

    .line 1639
    iput-wide v2, v1, Lcom/amap/api/mapcore2d/am;->i:J

    .line 1641
    new-instance v2, Lcom/amap/api/mapcore2d/b$5;

    invoke-direct {v2, p0}, Lcom/amap/api/mapcore2d/b$5;-><init>(Lcom/amap/api/mapcore2d/b;)V

    iput-object v2, v1, Lcom/amap/api/mapcore2d/am;->j:Lcom/amap/api/mapcore2d/by;

    .line 1652
    iput-object v0, v1, Lcom/amap/api/mapcore2d/am;->b:Ljava/lang/String;

    .line 1653
    iput-boolean v5, v1, Lcom/amap/api/mapcore2d/am;->e:Z

    .line 1655
    invoke-virtual {v1, v6}, Lcom/amap/api/mapcore2d/am;->a(Z)V

    .line 1656
    iput-boolean v5, v1, Lcom/amap/api/mapcore2d/am;->f:Z

    const/16 v2, 0x12

    .line 1657
    iput v2, v1, Lcom/amap/api/mapcore2d/am;->c:I

    const/16 v2, 0x9

    .line 1658
    iput v2, v1, Lcom/amap/api/mapcore2d/am;->d:I

    .line 1659
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/amap/api/mapcore2d/ay$a;->a(Lcom/amap/api/mapcore2d/am;Landroid/content/Context;)Z

    .line 1660
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    invoke-virtual {v1, v0, v6}, Lcom/amap/api/mapcore2d/ay$a;->a(Ljava/lang/String;Z)Z

    .line 1661
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0, v5, v5}, Lcom/amap/api/mapcore2d/ay$d;->a(ZZ)V

    .line 1662
    return-void

    .line 1545
    :cond_0
    return-void

    .line 1552
    :cond_1
    return-void

    .line 1565
    :cond_2
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    invoke-virtual {v1, v0, v5}, Lcom/amap/api/mapcore2d/ay$a;->a(Ljava/lang/String;Z)Z

    .line 1566
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0, v5, v5}, Lcom/amap/api/mapcore2d/ay$d;->a(ZZ)V

    .line 1567
    return-void

    .line 1573
    :cond_3
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    invoke-virtual {v1, v0, v6}, Lcom/amap/api/mapcore2d/ay$a;->a(Ljava/lang/String;Z)Z

    .line 1574
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0, v5, v5}, Lcom/amap/api/mapcore2d/ay$d;->a(ZZ)V

    .line 1575
    return-void
.end method

.method public j()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 655
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->I:Lcom/amap/api/mapcore2d/j;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/j;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 666
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/ap;->a(Z)V

    .line 667
    return-void

    .line 656
    :cond_0
    return-void

    .line 659
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->I:Lcom/amap/api/mapcore2d/j;

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/j;->a(Z)V

    .line 660
    invoke-static {}, Lcom/amap/api/mapcore2d/k;->a()Lcom/amap/api/mapcore2d/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/k;->b()V

    .line 661
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    if-nez v0, :cond_2

    .line 664
    :goto_1
    iput-object v1, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    goto :goto_0

    .line 662
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    invoke-interface {v0}, Lcom/amap/api/maps2d/AMap$CancelableCallback;->onCancel()V

    goto :goto_1
.end method

.method public k()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string/jumbo v1, "clear"

    .line 797
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->t()V

    .line 800
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->g:Lcom/amap/api/mapcore2d/t;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/t;->a()V

    .line 804
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/as;->c()V

    .line 805
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/br;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/br;->b()V

    .line 806
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/bb;

    if-nez v0, :cond_1

    .line 809
    :goto_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    .line 818
    :goto_1
    return-void

    .line 801
    :cond_0
    return-void

    .line 807
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/bb;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bb;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 816
    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMapDelegateImpGLSurfaceView"

    .line 811
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "amapApi"

    .line 812
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AMapDelegateImpGLSurfaceView clear erro"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 813
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 812
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 816
    :catch_1
    move-exception v0

    const-string/jumbo v2, "AMapDelegateImpGLSurfaceView"

    .line 815
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public l()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 823
    iget v0, p0, Lcom/amap/api/mapcore2d/b;->t:I

    return v0
.end method

.method public m()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 842
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->F()Z

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 853
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->y:Z

    return v0
.end method

.method public o()Lcom/amap/api/mapcore2d/bb;
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/bb;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 1754
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1755
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const-string/jumbo v1, "onDoubleTap"

    .line 2348
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->f()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 2354
    :goto_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->s:Z

    if-nez v0, :cond_1

    .line 2357
    :goto_1
    iget v0, p0, Lcom/amap/api/mapcore2d/b;->aG:I

    if-gt v0, v3, :cond_2

    .line 2360
    iput-boolean v3, p0, Lcom/amap/api/mapcore2d/b;->aH:Z

    .line 2361
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->f:Lcom/amap/api/mapcore2d/cb;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/ay$d;->e()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/cb;->a(F)V

    .line 2362
    return v3

    .line 2349
    :cond_0
    return v3

    .line 2353
    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMapDelegateImpGLSurfaceView"

    .line 2352
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2355
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore2d/ap;->a(II)Z

    goto :goto_1

    .line 2358
    :cond_2
    return v3
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 2367
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2060
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/b;->W:Z

    .line 2061
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->aH:Z

    if-eqz v0, :cond_1

    .line 2067
    :cond_0
    :goto_0
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/b;->aH:Z

    .line 2068
    iput v1, p0, Lcom/amap/api/mapcore2d/b;->aG:I

    .line 2069
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->al:Landroid/graphics/Point;

    if-eqz v0, :cond_3

    .line 2072
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->al:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 2074
    :goto_1
    return v3

    .line 2061
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->I:Lcom/amap/api/mapcore2d/j;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/j;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2062
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->I:Lcom/amap/api/mapcore2d/j;

    invoke-virtual {v0, v3}, Lcom/amap/api/mapcore2d/j;->a(Z)V

    .line 2063
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    if-nez v0, :cond_2

    .line 2065
    :goto_2
    iput-object v2, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    goto :goto_0

    .line 2064
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    invoke-interface {v0}, Lcom/amap/api/maps2d/AMap$CancelableCallback;->onCancel()V

    goto :goto_2

    .line 2070
    :cond_3
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->al:Landroid/graphics/Point;

    goto :goto_1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .prologue
    .line 1933
    invoke-static {}, Lcom/amap/api/mapcore2d/b;->I()Landroid/graphics/Paint;

    move-result-object v5

    .line 1934
    invoke-static {}, Lcom/amap/api/mapcore2d/b;->H()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1935
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v1

    .line 1936
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getHeight()I

    move-result v0

    .line 1937
    if-gt v1, v0, :cond_0

    move v12, v0

    .line 1940
    :goto_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getLeft()I

    move-result v0

    int-to-float v1, v0

    .line 1941
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getTop()I

    move-result v0

    int-to-float v8, v0

    const/4 v0, 0x0

    move v13, v0

    .line 1942
    :goto_1
    if-lt v13, v12, :cond_1

    .line 1949
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->U:Z

    if-nez v0, :cond_2

    .line 1959
    :goto_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore2d/ay$d;->a(II)V

    .line 1960
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->at:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/amap/api/mapcore2d/b;->aw:F

    iget v3, p0, Lcom/amap/api/mapcore2d/b;->ax:F

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/amap/api/mapcore2d/ay$a;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;FF)V

    .line 1961
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->I:Lcom/amap/api/mapcore2d/j;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/j;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1964
    :goto_3
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->ae:Z

    if-eqz v0, :cond_4

    .line 1969
    :goto_4
    return-void

    :cond_0
    move v12, v1

    .line 1938
    goto :goto_0

    .line 1944
    :cond_1
    int-to-float v2, v13

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float v3, v1, v0

    int-to-float v4, v13

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1945
    int-to-float v7, v13

    int-to-float v9, v13

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float v10, v8, v0

    move-object v6, p1

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1942
    add-int/lit16 v0, v13, 0x100

    move v13, v0

    goto :goto_1

    .line 1950
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/b;->setDrawingCacheEnabled(Z)V

    .line 1951
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->buildDrawingCache()V

    .line 1952
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1953
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x10

    .line 1954
    iput v2, v1, Landroid/os/Message;->what:I

    .line 1955
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1956
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1957
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->U:Z

    goto :goto_2

    .line 1962
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 1965
    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1966
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->ae:Z

    goto :goto_4
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "onFling"

    .line 2088
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->an:Lcom/amap/api/mapcore2d/ba$a;

    iget-boolean v0, v0, Lcom/amap/api/mapcore2d/ba$a;->k:Z

    if-eqz v0, :cond_1

    .line 2090
    :cond_0
    return v9

    .line 2089
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->an:Lcom/amap/api/mapcore2d/ba$a;

    iget-wide v6, v0, Lcom/amap/api/mapcore2d/ba$a;->o:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1e

    cmp-long v0, v4, v6

    if-ltz v0, :cond_2

    move v0, v9

    :goto_0
    if-eqz v0, :cond_0

    .line 2092
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    .line 2093
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/b;->W:Z

    .line 2095
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->e()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    const/4 v0, 0x0

    .line 2101
    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    .line 2111
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->aq:Landroid/widget/Scroller;

    iget v1, p0, Lcom/amap/api/mapcore2d/b;->ar:I

    iget v2, p0, Lcom/amap/api/mapcore2d/b;->as:I

    neg-float v3, p3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x5

    neg-float v4, p4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x5

    iget v5, p0, Lcom/amap/api/mapcore2d/b;->ay:I

    neg-int v5, v5

    iget v6, p0, Lcom/amap/api/mapcore2d/b;->ay:I

    iget v7, p0, Lcom/amap/api/mapcore2d/b;->az:I

    neg-int v7, v7

    iget v8, p0, Lcom/amap/api/mapcore2d/b;->az:I

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 2114
    return v9

    :cond_2
    move v0, v1

    .line 2089
    goto :goto_0

    .line 2096
    :cond_3
    return v9

    .line 2100
    :catch_0
    move-exception v0

    const-string/jumbo v1, "AMapDelegateImpGLSurfaceView"

    .line 2099
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1797
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    if-eqz v2, :cond_1

    .line 1800
    iget-boolean v2, p0, Lcom/amap/api/mapcore2d/b;->n:Z

    if-eqz v2, :cond_2

    .line 1803
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    invoke-virtual {v2, p1, p2}, Lcom/amap/api/mapcore2d/ay$a;->a(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    move v0, v1

    .line 1804
    :goto_0
    return v0

    .line 1798
    :cond_1
    return v1

    .line 1801
    :cond_2
    return v0

    .line 1803
    :cond_3
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    .line 1804
    invoke-virtual {v2, p0, p1, p2}, Lcom/amap/api/mapcore2d/ap;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1809
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    if-eqz v2, :cond_1

    .line 1812
    iget-boolean v2, p0, Lcom/amap/api/mapcore2d/b;->n:Z

    if-eqz v2, :cond_2

    .line 1815
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    invoke-virtual {v2, p1, p2}, Lcom/amap/api/mapcore2d/ay$a;->b(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    move v0, v1

    .line 1816
    :goto_0
    return v0

    .line 1810
    :cond_1
    return v1

    .line 1813
    :cond_2
    return v0

    .line 1815
    :cond_3
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    .line 1816
    invoke-virtual {v2, p0, p1, p2}, Lcom/amap/api/mapcore2d/ap;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 8

    .prologue
    .line 2122
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->W:Z

    .line 2123
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ab:Lcom/amap/api/maps2d/AMap$OnMapLongClickListener;

    if-nez v0, :cond_1

    .line 2129
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/as;->a(Landroid/view/MotionEvent;)Lcom/amap/api/mapcore2d/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->q:Lcom/amap/api/mapcore2d/aa;

    .line 2130
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->q:Lcom/amap/api/mapcore2d/aa;

    if-eqz v0, :cond_2

    .line 2133
    new-instance v0, Lcom/amap/api/maps2d/model/Marker;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->q:Lcom/amap/api/mapcore2d/aa;

    invoke-direct {v0, v1}, Lcom/amap/api/maps2d/model/Marker;-><init>(Lcom/amap/api/mapcore2d/aa;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->p:Lcom/amap/api/maps2d/model/Marker;

    .line 2134
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->Z:Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;

    if-nez v0, :cond_3

    .line 2146
    :cond_0
    :goto_1
    return-void

    .line 2124
    :cond_1
    new-instance v0, Lcom/amap/api/mapcore2d/r;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/r;-><init>()V

    .line 2125
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/amap/api/mapcore2d/b;->a(IILcom/amap/api/mapcore2d/r;)V

    .line 2126
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->ab:Lcom/amap/api/maps2d/AMap$OnMapLongClickListener;

    new-instance v2, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v0, Lcom/amap/api/mapcore2d/r;->b:D

    iget-wide v6, v0, Lcom/amap/api/mapcore2d/r;->a:D

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    invoke-interface {v1, v2}, Lcom/amap/api/maps2d/AMap$OnMapLongClickListener;->onMapLongClick(Lcom/amap/api/maps2d/model/LatLng;)V

    .line 2127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->L:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2145
    :catch_0
    move-exception v0

    .line 2144
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 2131
    :cond_2
    return-void

    .line 2134
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->q:Lcom/amap/api/mapcore2d/aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->q:Lcom/amap/api/mapcore2d/aa;

    .line 2135
    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aa;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2136
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->q:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aa;->c()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    .line 2137
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    .line 2138
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->q:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v1, v0}, Lcom/amap/api/mapcore2d/aa;->a(Lcom/amap/api/maps2d/model/LatLng;)V

    .line 2139
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/as;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->q:Lcom/amap/api/mapcore2d/aa;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/as;->c(Lcom/amap/api/mapcore2d/aa;)V

    .line 2140
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->Z:Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->p:Lcom/amap/api/maps2d/model/Marker;

    invoke-interface {v0, v1}, Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;->onMarkerDragStart(Lcom/amap/api/maps2d/model/Marker;)V

    .line 2141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->V:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected final onMeasure(II)V
    .locals 0

    .prologue
    .line 1848
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 1849
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 1743
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1744
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 1749
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string/jumbo v3, "onScroll"

    .line 2163
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->an:Lcom/amap/api/mapcore2d/ba$a;

    iget-boolean v0, v0, Lcom/amap/api/mapcore2d/ba$a;->k:Z

    if-eqz v0, :cond_1

    .line 2165
    :cond_0
    return v1

    .line 2164
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->an:Lcom/amap/api/mapcore2d/ba$a;

    iget-wide v6, v0, Lcom/amap/api/mapcore2d/ba$a;->o:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1e

    cmp-long v0, v4, v6

    if-ltz v0, :cond_2

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    .line 2168
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->e()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_3

    .line 2175
    :goto_1
    iget v0, p0, Lcom/amap/api/mapcore2d/b;->aG:I

    if-gt v0, v1, :cond_4

    .line 2187
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/b;->W:Z

    .line 2188
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 2189
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 2190
    invoke-direct {p0, v0, v2}, Lcom/amap/api/mapcore2d/b;->a(II)V

    .line 2191
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    .line 2192
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->M()V

    .line 2193
    return v1

    :cond_2
    move v0, v2

    .line 2164
    goto :goto_0

    .line 2169
    :cond_3
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->W:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2170
    return v1

    .line 2174
    :catch_0
    move-exception v0

    const-string/jumbo v4, "AMapDelegateImpGLSurfaceView"

    .line 2173
    invoke-static {v0, v4, v3}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2176
    :cond_4
    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/b;->W:Z

    .line 2177
    return v1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 2201
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    const-string/jumbo v1, "onSingleTapConfirmed"

    .line 2377
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    if-eqz v0, :cond_1

    .line 2380
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/ay$a;->b(Landroid/view/MotionEvent;)Z

    .line 2381
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ao:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2384
    iput-boolean v3, p0, Lcom/amap/api/mapcore2d/b;->W:Z

    .line 2385
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->L:Z

    if-nez v0, :cond_3

    .line 2390
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    if-nez v0, :cond_4

    .line 2405
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/as;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2406
    if-nez v0, :cond_6

    .line 2440
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ad:Lcom/amap/api/maps2d/AMap$OnMapClickListener;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_d

    .line 2449
    :goto_1
    return v8

    .line 2378
    :cond_1
    return v3

    .line 2381
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/GestureDetector$OnGestureListener;

    .line 2382
    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 2386
    :cond_3
    iput-boolean v3, p0, Lcom/amap/api/mapcore2d/b;->L:Z

    .line 2387
    return v8

    .line 2391
    :cond_4
    :try_start_1
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    .line 2392
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2393
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 2394
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 2393
    invoke-virtual {v2, v0, v3, v4}, Lcom/amap/api/mapcore2d/as;->a(Landroid/graphics/Rect;II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->O:Lcom/amap/api/maps2d/AMap$OnInfoWindowClickListener;

    if-eqz v0, :cond_0

    .line 2396
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/as;->e()Lcom/amap/api/mapcore2d/aa;

    move-result-object v0

    .line 2397
    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aa;->s()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2400
    new-instance v2, Lcom/amap/api/maps2d/model/Marker;

    invoke-direct {v2, v0}, Lcom/amap/api/maps2d/model/Marker;-><init>(Lcom/amap/api/mapcore2d/aa;)V

    .line 2401
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->O:Lcom/amap/api/maps2d/AMap$OnInfoWindowClickListener;

    invoke-interface {v0, v2}, Lcom/amap/api/maps2d/AMap$OnInfoWindowClickListener;->onInfoWindowClick(Lcom/amap/api/maps2d/model/Marker;)V

    .line 2402
    return v8

    .line 2398
    :cond_5
    return v8

    .line 2407
    :cond_6
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/as;->e()Lcom/amap/api/mapcore2d/aa;

    move-result-object v2

    .line 2408
    if-nez v2, :cond_8

    .line 2409
    :cond_7
    return v8

    .line 2408
    :cond_8
    invoke-interface {v2}, Lcom/amap/api/mapcore2d/aa;->s()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2411
    new-instance v0, Lcom/amap/api/maps2d/model/Marker;

    invoke-direct {v0, v2}, Lcom/amap/api/maps2d/model/Marker;-><init>(Lcom/amap/api/mapcore2d/aa;)V

    .line 2413
    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->R:Lcom/amap/api/maps2d/AMap$OnMarkerClickListener;

    if-nez v3, :cond_a

    .line 2436
    :cond_9
    :goto_2
    invoke-virtual {p0, v2}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/mapcore2d/aa;)V

    .line 2437
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/as;->c(Lcom/amap/api/mapcore2d/aa;)V

    .line 2438
    return v8

    .line 2414
    :cond_a
    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->R:Lcom/amap/api/maps2d/AMap$OnMarkerClickListener;

    invoke-interface {v3, v0}, Lcom/amap/api/maps2d/AMap$OnMarkerClickListener;->onMarkerClick(Lcom/amap/api/maps2d/model/Marker;)Z

    move-result v0

    .line 2415
    if-eqz v0, :cond_c

    .line 2416
    :cond_b
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/as;->c(Lcom/amap/api/mapcore2d/aa;)V

    .line 2417
    return v8

    .line 2415
    :cond_c
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/as;->b()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-lez v0, :cond_b

    .line 2421
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/as;->e()Lcom/amap/api/mapcore2d/aa;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2422
    invoke-interface {v2}, Lcom/amap/api/mapcore2d/aa;->q()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2423
    invoke-interface {v2}, Lcom/amap/api/mapcore2d/aa;->c()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    .line 2424
    if-eqz v0, :cond_9

    .line 2425
    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    .line 2426
    invoke-static {v0}, Lcom/amap/api/mapcore2d/cj;->a(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/mapcore2d/u;

    move-result-object v0

    .line 2425
    invoke-virtual {v3, v0}, Lcom/amap/api/mapcore2d/ap;->a(Lcom/amap/api/mapcore2d/u;)V

    .line 2427
    invoke-static {}, Lcom/amap/api/mapcore2d/k;->a()Lcom/amap/api/mapcore2d/k;

    move-result-object v0

    .line 2428
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/k;->b()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 2434
    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v3, "AMapDelegateImpGLSurfaceView"

    .line 2433
    invoke-static {v0, v3, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 2448
    :catch_1
    move-exception v0

    const-string/jumbo v2, "AMapDelegateImpGLSurfaceView"

    .line 2446
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2447
    return v8

    .line 2441
    :cond_d
    :try_start_4
    new-instance v0, Lcom/amap/api/mapcore2d/r;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/r;-><init>()V

    .line 2442
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3, v0}, Lcom/amap/api/mapcore2d/b;->a(IILcom/amap/api/mapcore2d/r;)V

    .line 2443
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->ad:Lcom/amap/api/maps2d/AMap$OnMapClickListener;

    new-instance v3, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v0, Lcom/amap/api/mapcore2d/r;->b:D

    iget-wide v6, v0, Lcom/amap/api/mapcore2d/r;->a:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    invoke-interface {v2, v3}, Lcom/amap/api/maps2d/AMap$OnMapClickListener;->onMapClick(Lcom/amap/api/maps2d/model/LatLng;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 2207
    const/4 v0, 0x0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1853
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 1854
    new-instance v0, Landroid/graphics/Point;

    div-int/lit8 v1, p1, 0x2

    div-int/lit8 v2, p2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 1855
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/au;->a(Landroid/graphics/Point;)V

    .line 1856
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/mapcore2d/ay$d;->a(II)V

    .line 1857
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ap;->a()F

    move-result v0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ap;->b()F

    move-result v0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_0

    .line 1858
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/ap;->a()F

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    .line 1859
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/ap;->b()F

    move-result v2

    .line 1858
    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore2d/ap;->a(FF)V

    .line 1860
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    invoke-virtual {v0, v3}, Lcom/amap/api/mapcore2d/ap;->a(F)V

    .line 1861
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    invoke-virtual {v0, v3}, Lcom/amap/api/mapcore2d/ap;->b(F)V

    .line 1863
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->u()V

    .line 1864
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->aI:Lcom/amap/api/mapcore2d/b$a;

    if-nez v0, :cond_1

    .line 1867
    :goto_0
    return-void

    .line 1865
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->aI:Lcom/amap/api/mapcore2d/b$a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/amap/api/mapcore2d/b$a;->a(IIII)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1821
    sget-boolean v0, Lcom/amap/api/mapcore2d/p;->q:Z

    if-eqz v0, :cond_0

    .line 1824
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    if-eqz v0, :cond_1

    .line 1827
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->n:Z

    if-eqz v0, :cond_2

    .line 1831
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->aa:Lcom/amap/api/maps2d/AMap$OnMapTouchListener;

    if-nez v0, :cond_3

    .line 1839
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/ay$a;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1842
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/b;->b(Landroid/view/MotionEvent;)Z

    .line 1843
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 1822
    :cond_0
    return v2

    .line 1825
    :cond_1
    return v2

    .line 1828
    :cond_2
    return v1

    .line 1832
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ak:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1833
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ak:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1834
    iput v2, v0, Landroid/os/Message;->what:I

    .line 1835
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1836
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1840
    :cond_4
    return v2
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .prologue
    .line 1792
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 1793
    return-void
.end method

.method public p()Landroid/location/Location;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 904
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->C:Lcom/amap/api/maps2d/LocationSource;

    if-nez v0, :cond_0

    .line 907
    return-object v1

    .line 905
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->w:Lcom/amap/api/mapcore2d/c;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/c;->a:Landroid/location/Location;

    return-object v0
.end method

.method public q()Lcom/amap/api/mapcore2d/ak;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 923
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/ak;

    return-object v0
.end method

.method public r()Lcom/amap/api/mapcore2d/ag;
    .locals 1

    .prologue
    .line 927
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->T:Lcom/amap/api/mapcore2d/ag;

    return-object v0
.end method

.method public s()Lcom/amap/api/mapcore2d/bf;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 931
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    if-eqz v0, :cond_0

    .line 934
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->b:Lcom/amap/api/mapcore2d/ay$e;

    return-object v0

    .line 932
    :cond_0
    return-object v1
.end method

.method public setClickable(Z)V
    .locals 0

    .prologue
    .line 1786
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/b;->n:Z

    .line 1787
    invoke-super {p0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 1788
    return-void
.end method

.method public t()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1062
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1073
    :goto_0
    iput-object v2, p0, Lcom/amap/api/mapcore2d/b;->Q:Lcom/amap/api/mapcore2d/ax;

    .line 1075
    return-void

    .line 1063
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 1064
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 1065
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/at;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/at;->removeView(Landroid/view/View;)V

    .line 1066
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1067
    if-nez v0, :cond_1

    .line 1071
    :goto_1
    iput-object v2, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    goto :goto_0

    .line 1068
    :cond_1
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_1
.end method

.method public u()V
    .locals 2

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1087
    :cond_0
    :goto_0
    return-void

    .line 1079
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->Q:Lcom/amap/api/mapcore2d/ax;

    if-eqz v0, :cond_0

    .line 1080
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    .line 1081
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/at$a;

    .line 1082
    if-nez v0, :cond_2

    .line 1085
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/at;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/at;->a()V

    goto :goto_0

    .line 1083
    :cond_2
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->Q:Lcom/amap/api/mapcore2d/ax;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/ax;->c()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/mapcore2d/at$a;->b:Lcom/amap/api/maps2d/model/LatLng;

    goto :goto_1
.end method

.method public v()V
    .locals 3

    .prologue
    const-string/jumbo v1, "destroy"

    .line 1138
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ag:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 1142
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ai:Ljava/util/TimerTask;

    if-nez v0, :cond_1

    .line 1146
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ak:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 1149
    :goto_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/os/Handler;

    if-nez v0, :cond_3

    .line 1153
    :goto_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ah:Ljava/lang/Thread;

    if-nez v0, :cond_4

    .line 1158
    :goto_4
    invoke-static {}, Lcom/amap/api/mapcore2d/m;->a()Lcom/amap/api/mapcore2d/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/m;->b(Lcom/amap/api/mapcore2d/m$a;)V

    .line 1159
    invoke-static {}, Lcom/amap/api/mapcore2d/bj;->a()Lcom/amap/api/mapcore2d/bj;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/bj;->a(Lcom/amap/api/mapcore2d/bj$a;)V

    .line 1160
    invoke-static {}, Lcom/amap/api/mapcore2d/k;->a()Lcom/amap/api/mapcore2d/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/k;->b(Lcom/amap/api/mapcore2d/k$a;)V

    .line 1161
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->f:Lcom/amap/api/mapcore2d/cb;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/cb;->a()V

    .line 1162
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->B:Lcom/amap/api/mapcore2d/bi;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bi;->a()V

    .line 1163
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->A:Lcom/amap/api/mapcore2d/ca;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ca;->a()V

    .line 1164
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->u:Lcom/amap/api/mapcore2d/ao;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ao;->a()V

    .line 1165
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->D:Lcom/amap/api/mapcore2d/o;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/o;->a()V

    .line 1166
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->g:Lcom/amap/api/mapcore2d/t;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/t;->b()V

    .line 1167
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/as;->f()V

    .line 1168
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->S:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    .line 1171
    :goto_5
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/at;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/at;->removeAllViews()V

    .line 1172
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->t()V

    .line 1173
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/br;

    if-nez v0, :cond_6

    .line 1176
    :goto_6
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    if-nez v0, :cond_7

    :goto_7
    const/4 v0, 0x0

    .line 1182
    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->C:Lcom/amap/api/maps2d/LocationSource;

    const/4 v0, 0x0

    .line 1183
    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->ad:Lcom/amap/api/maps2d/AMap$OnMapClickListener;

    const/4 v0, 0x0

    .line 1185
    sput-object v0, Lcom/amap/api/mapcore2d/p;->h:Ljava/lang/String;

    const/4 v0, 0x0

    .line 1186
    sput-object v0, Lcom/amap/api/mapcore2d/p;->g:Ljava/lang/String;

    .line 1187
    invoke-static {}, Lcom/amap/api/mapcore2d/db;->b()V

    .line 1194
    :goto_8
    return-void

    .line 1139
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ag:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 1140
    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->ag:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1193
    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMapDelegateImpGLSurfaceView"

    .line 1192
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 1143
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ai:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    const/4 v0, 0x0

    .line 1144
    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->ai:Ljava/util/TimerTask;

    goto/16 :goto_1

    .line 1147
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ak:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1150
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 1154
    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ah:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    .line 1155
    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->ah:Ljava/lang/Thread;

    goto/16 :goto_4

    .line 1169
    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->S:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_5

    .line 1174
    :cond_6
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/br;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/br;->f()V

    goto :goto_6

    .line 1177
    :cond_7
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->d:Lcom/amap/api/mapcore2d/ay$b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$b;->b()V

    .line 1178
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->W()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7
.end method

.method public w()F
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 1228
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v0

    .line 1229
    new-instance v1, Lcom/amap/api/mapcore2d/r;

    invoke-direct {v1}, Lcom/amap/api/mapcore2d/r;-><init>()V

    .line 1230
    new-instance v2, Lcom/amap/api/mapcore2d/r;

    invoke-direct {v2}, Lcom/amap/api/mapcore2d/r;-><init>()V

    .line 1231
    invoke-virtual {p0, v3, v3, v1}, Lcom/amap/api/mapcore2d/b;->a(IILcom/amap/api/mapcore2d/r;)V

    .line 1232
    invoke-virtual {p0, v0, v3, v2}, Lcom/amap/api/mapcore2d/b;->a(IILcom/amap/api/mapcore2d/r;)V

    .line 1233
    new-instance v3, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v1, Lcom/amap/api/mapcore2d/r;->b:D

    iget-wide v6, v1, Lcom/amap/api/mapcore2d/r;->a:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    new-instance v1, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v2, Lcom/amap/api/mapcore2d/r;->b:D

    iget-wide v6, v2, Lcom/amap/api/mapcore2d/r;->a:D

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    invoke-static {v3, v1}, Lcom/amap/api/mapcore2d/cj;->a(Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;)D

    move-result-wide v2

    .line 1236
    int-to-double v0, v0

    div-double v0, v2, v0

    double-to-float v0, v0

    return v0
.end method

.method public x()Lcom/amap/api/maps2d/model/LatLngBounds;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1241
    return-object v0
.end method

.method public y()V
    .locals 1

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    if-nez v0, :cond_0

    .line 1249
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/br;

    if-nez v0, :cond_1

    .line 1252
    :goto_1
    return-void

    .line 1247
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->d:Lcom/amap/api/mapcore2d/ay$b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$b;->c()V

    goto :goto_0

    .line 1250
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/br;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/br;->e()V

    goto :goto_1
.end method

.method public z()V
    .locals 1

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    if-nez v0, :cond_0

    .line 1259
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/br;

    if-nez v0, :cond_1

    .line 1262
    :goto_1
    return-void

    .line 1257
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->d:Lcom/amap/api/mapcore2d/ay$b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$b;->d()V

    goto :goto_0

    .line 1260
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/br;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/br;->d()V

    goto :goto_1
.end method
