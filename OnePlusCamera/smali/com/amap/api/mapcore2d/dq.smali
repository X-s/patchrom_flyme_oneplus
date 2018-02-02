.class public abstract Lcom/amap/api/mapcore2d/dq;
.super Ljava/lang/Object;
.source "LogInfo.java"


# instance fields
.field protected a:I
    .annotation runtime Lcom/amap/api/mapcore2d/dj;
        a = "b2"
        b = 0x2
    .end annotation
.end field

.field protected b:Ljava/lang/String;
    .annotation runtime Lcom/amap/api/mapcore2d/dj;
        a = "b1"
        b = 0x6
    .end annotation
.end field

.field protected c:I
    .annotation runtime Lcom/amap/api/mapcore2d/dj;
        a = "b3"
        b = 0x2
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lcom/amap/api/mapcore2d/dj;
        a = "a1"
        b = 0x6
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lcom/amap/api/mapcore2d/dq;->a:I

    const/4 v0, 0x1

    .line 20
    iput v0, p0, Lcom/amap/api/mapcore2d/dq;->c:I

    return-void
.end method

.method public static c(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    const-string/jumbo v0, "b2"

    .line 75
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 79
    :catch_0
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "b1"

    .line 66
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-static {v0}, Lcom/amap/api/mapcore2d/dh;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/amap/api/mapcore2d/dq;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Lcom/amap/api/mapcore2d/dq;->a:I

    .line 29
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/amap/api/mapcore2d/dq;->b:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dq;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/amap/api/mapcore2d/dq;->c:I

    .line 52
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 44
    invoke-static {p1}, Lcom/amap/api/mapcore2d/cv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/dq;->d:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/amap/api/mapcore2d/dq;->c:I

    return v0
.end method
