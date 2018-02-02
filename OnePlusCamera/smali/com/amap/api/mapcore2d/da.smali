.class public Lcom/amap/api/mapcore2d/da;
.super Lcom/amap/api/mapcore2d/ee;
.source "LogUpdateRequest.java"


# instance fields
.field private a:[B

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/ee;-><init>()V

    const-string/jumbo v0, "1"

    .line 15
    iput-object v0, p0, Lcom/amap/api/mapcore2d/da;->b:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/amap/api/mapcore2d/da;->a:[B

    .line 20
    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/ee;-><init>()V

    const-string/jumbo v0, "1"

    .line 15
    iput-object v0, p0, Lcom/amap/api/mapcore2d/da;->b:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/amap/api/mapcore2d/da;->a:[B

    .line 24
    iput-object p2, p0, Lcom/amap/api/mapcore2d/da;->b:Ljava/lang/String;

    .line 26
    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x32

    const/4 v3, 0x0

    .line 29
    sget-object v0, Lcom/amap/api/mapcore2d/cx;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cv;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 30
    array-length v1, v0

    add-int/lit8 v1, v1, 0x32

    new-array v1, v1, [B

    .line 31
    iget-object v2, p0, Lcom/amap/api/mapcore2d/da;->a:[B

    invoke-static {v2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    array-length v2, v0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    invoke-static {v1}, Lcom/amap/api/mapcore2d/cr;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 34
    return-object v0
.end method


# virtual methods
.method public a_()[B
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/amap/api/mapcore2d/da;->a:[B

    return-object v0
.end method

.method public e()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "Content-Type"

    const-string/jumbo v2, "application/zip"

    .line 41
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "Content-Length"

    .line 42
    iget-object v2, p0, Lcom/amap/api/mapcore2d/da;->a:[B

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-object v0
.end method

.method public f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 50
    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 4

    .prologue
    .line 56
    sget-object v0, Lcom/amap/api/mapcore2d/cx;->b:Ljava/lang/String;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/amap/api/mapcore2d/da;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "open"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    .line 58
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/da;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 56
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
