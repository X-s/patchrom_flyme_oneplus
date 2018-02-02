.class Lcom/amap/api/mapcore2d/ay;
.super Ljava/lang/Object;
.source "Mediator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/ay$a;,
        Lcom/amap/api/mapcore2d/ay$b;,
        Lcom/amap/api/mapcore2d/ay$c;,
        Lcom/amap/api/mapcore2d/ay$d;,
        Lcom/amap/api/mapcore2d/ay$e;
    }
.end annotation


# static fields
.field static a:D


# instance fields
.field public b:Lcom/amap/api/mapcore2d/ay$e;

.field public c:Lcom/amap/api/mapcore2d/ay$d;

.field public d:Lcom/amap/api/mapcore2d/ay$b;

.field public e:Lcom/amap/api/mapcore2d/ay$a;

.field public f:Lcom/amap/api/mapcore2d/ay$c;

.field public g:Lcom/amap/api/mapcore2d/t;

.field public h:Lcom/amap/api/mapcore2d/b;

.field public i:Lcom/amap/api/mapcore2d/au;

.field private j:Lcom/amap/api/mapcore2d/am;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide v0, 0x3fe4ccccc0000000L    # 0.6499999761581421

    .line 31
    sput-wide v0, Lcom/amap/api/mapcore2d/ay;->a:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/b;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v2, p0, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    .line 53
    iput-object p2, p0, Lcom/amap/api/mapcore2d/ay;->h:Lcom/amap/api/mapcore2d/b;

    .line 54
    new-instance v0, Lcom/amap/api/mapcore2d/ay$d;

    invoke-direct {v0, p0, p2, v2}, Lcom/amap/api/mapcore2d/ay$d;-><init>(Lcom/amap/api/mapcore2d/ay;Lcom/amap/api/mapcore2d/b;Lcom/amap/api/mapcore2d/ay$1;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    .line 55
    new-instance v0, Lcom/amap/api/mapcore2d/au;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/au;-><init>(Lcom/amap/api/mapcore2d/ay$d;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    .line 56
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    iput p3, v0, Lcom/amap/api/mapcore2d/au;->a:I

    .line 57
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    iput p3, v0, Lcom/amap/api/mapcore2d/au;->b:I

    .line 59
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/au;->a()V

    .line 60
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/ay;->a(Landroid/content/Context;)V

    .line 62
    new-instance v0, Lcom/amap/api/mapcore2d/ay$c;

    invoke-direct {v0, p0, p0, p1, v2}, Lcom/amap/api/mapcore2d/ay$c;-><init>(Lcom/amap/api/mapcore2d/ay;Lcom/amap/api/mapcore2d/ay;Landroid/content/Context;Lcom/amap/api/mapcore2d/ay$1;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ay;->f:Lcom/amap/api/mapcore2d/ay$c;

    .line 63
    new-instance v0, Lcom/amap/api/mapcore2d/ay$a;

    invoke-direct {v0, p0, p1, v2}, Lcom/amap/api/mapcore2d/ay$a;-><init>(Lcom/amap/api/mapcore2d/ay;Landroid/content/Context;Lcom/amap/api/mapcore2d/ay$1;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    .line 64
    new-instance v0, Lcom/amap/api/mapcore2d/ay$e;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/ay$e;-><init>(Lcom/amap/api/mapcore2d/ay;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ay;->b:Lcom/amap/api/mapcore2d/ay$e;

    .line 65
    new-instance v0, Lcom/amap/api/mapcore2d/ay$b;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/ay$b;-><init>(Lcom/amap/api/mapcore2d/ay;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ay;->d:Lcom/amap/api/mapcore2d/ay$b;

    .line 66
    new-instance v0, Lcom/amap/api/mapcore2d/t;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/t;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ay;->g:Lcom/amap/api/mapcore2d/t;

    .line 67
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0, v3, v3}, Lcom/amap/api/mapcore2d/ay$d;->a(ZZ)V

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/ay;)Lcom/amap/api/mapcore2d/am;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay;->j:Lcom/amap/api/mapcore2d/am;

    return-object v0
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/ay;Lcom/amap/api/mapcore2d/am;)Lcom/amap/api/mapcore2d/am;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ay;->j:Lcom/amap/api/mapcore2d/am;

    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 129
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$a;->a()V

    .line 131
    iput-object v1, p0, Lcom/amap/api/mapcore2d/ay;->b:Lcom/amap/api/mapcore2d/ay$e;

    .line 132
    iput-object v1, p0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    .line 133
    iput-object v1, p0, Lcom/amap/api/mapcore2d/ay;->d:Lcom/amap/api/mapcore2d/ay$b;

    .line 134
    iput-object v1, p0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    .line 135
    iput-object v1, p0, Lcom/amap/api/mapcore2d/ay;->f:Lcom/amap/api/mapcore2d/ay$c;

    .line 137
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const-wide/32 v8, 0x25800

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string/jumbo v4, "initialize"

    .line 78
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    const/4 v3, 0x0

    .line 82
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v6, "densityDpi"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    move-object v3, v0

    .line 90
    :goto_0
    if-nez v3, :cond_0

    .line 117
    iget v0, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v0, v3

    int-to-long v4, v0

    .line 118
    cmp-long v0, v4, v8

    if-gtz v0, :cond_8

    move v0, v1

    :goto_1
    if-nez v0, :cond_9

    .line 119
    sput v10, Lcom/amap/api/mapcore2d/p;->m:I

    .line 126
    :goto_2
    return-void

    .line 87
    :catch_0
    move-exception v0

    const-string/jumbo v6, "Mediator"

    .line 84
    invoke-static {v0, v6, v4}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :catch_1
    move-exception v0

    const-string/jumbo v6, "Mediator"

    .line 86
    invoke-static {v0, v6, v4}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xa0

    .line 93
    iget v6, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v6, v7

    int-to-long v6, v6

    .line 95
    :try_start_1
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v0

    :goto_3
    const/16 v3, 0x78

    .line 101
    if-le v0, v3, :cond_1

    const/16 v3, 0xa0

    .line 103
    if-le v0, v3, :cond_2

    const/16 v3, 0xf0

    .line 105
    if-le v0, v3, :cond_3

    .line 108
    cmp-long v0, v6, v8

    if-gtz v0, :cond_4

    move v0, v1

    :goto_4
    if-nez v0, :cond_5

    .line 109
    sput v10, Lcom/amap/api/mapcore2d/p;->m:I

    goto :goto_2

    .line 100
    :catch_2
    move-exception v3

    const-string/jumbo v5, "Mediator"

    .line 97
    invoke-static {v3, v5, v4}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 100
    :catch_3
    move-exception v3

    const-string/jumbo v5, "Mediator"

    .line 99
    invoke-static {v3, v5, v4}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 102
    :cond_1
    sput v1, Lcom/amap/api/mapcore2d/p;->m:I

    goto :goto_2

    .line 104
    :cond_2
    sput v11, Lcom/amap/api/mapcore2d/p;->m:I

    goto :goto_2

    .line 106
    :cond_3
    sput v10, Lcom/amap/api/mapcore2d/p;->m:I

    goto :goto_2

    :cond_4
    move v0, v2

    .line 108
    goto :goto_4

    .line 110
    :cond_5
    cmp-long v0, v6, v8

    if-ltz v0, :cond_6

    move v2, v1

    :cond_6
    if-nez v2, :cond_7

    .line 111
    sput v1, Lcom/amap/api/mapcore2d/p;->m:I

    goto :goto_2

    .line 113
    :cond_7
    sput v11, Lcom/amap/api/mapcore2d/p;->m:I

    goto :goto_2

    :cond_8
    move v0, v2

    .line 118
    goto :goto_1

    .line 120
    :cond_9
    cmp-long v0, v4, v8

    if-ltz v0, :cond_a

    move v0, v1

    :goto_5
    if-nez v0, :cond_b

    .line 121
    sput v1, Lcom/amap/api/mapcore2d/p;->m:I

    goto :goto_2

    :cond_a
    move v0, v2

    .line 120
    goto :goto_5

    .line 123
    :cond_b
    sput v11, Lcom/amap/api/mapcore2d/p;->m:I

    goto :goto_2
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/ay$a;->b(Z)V

    .line 141
    return-void
.end method
