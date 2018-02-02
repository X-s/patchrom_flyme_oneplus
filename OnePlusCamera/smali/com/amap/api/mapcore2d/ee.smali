.class public abstract Lcom/amap/api/mapcore2d/ee;
.super Ljava/lang/Object;
.source "Request.java"


# instance fields
.field c:I

.field d:I

.field e:Ljava/net/Proxy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, 0x4e20

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v0, p0, Lcom/amap/api/mapcore2d/ee;->c:I

    .line 16
    iput v0, p0, Lcom/amap/api/mapcore2d/ee;->d:I

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/amap/api/mapcore2d/ee;->e:Ljava/net/Proxy;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .prologue
    .line 98
    iput p1, p0, Lcom/amap/api/mapcore2d/ee;->c:I

    .line 99
    return-void
.end method

.method public final a(Ljava/net/Proxy;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ee;->e:Ljava/net/Proxy;

    .line 122
    return-void
.end method

.method public a_()[B
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 111
    return-object v0
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 107
    iput p1, p0, Lcom/amap/api/mapcore2d/ee;->d:I

    .line 108
    return-void
.end method

.method public abstract e()Ljava/util/Map;
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
.end method

.method public abstract f()Ljava/util/Map;
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
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method j()Ljava/lang/String;
    .locals 4

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ee;->a_()[B

    move-result-object v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ee;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 31
    :cond_1
    array-length v0, v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ee;->f()Ljava/util/Map;

    move-result-object v0

    .line 35
    if-eqz v0, :cond_2

    .line 39
    invoke-static {v0}, Lcom/amap/api/mapcore2d/eb;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 40
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 41
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ee;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 36
    :cond_2
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ee;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method k()[B
    .locals 3

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ee;->a_()[B

    move-result-object v0

    .line 56
    if-nez v0, :cond_1

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ee;->f()Ljava/util/Map;

    move-result-object v1

    .line 58
    invoke-static {v1}, Lcom/amap/api/mapcore2d/eb;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 66
    :goto_0
    return-object v0

    .line 56
    :cond_1
    array-length v1, v0

    if-eqz v1, :cond_0

    goto :goto_0

    .line 61
    :cond_2
    invoke-static {v1}, Lcom/amap/api/mapcore2d/cv;->a(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method
