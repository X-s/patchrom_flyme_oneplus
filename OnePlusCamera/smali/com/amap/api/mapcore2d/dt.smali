.class public Lcom/amap/api/mapcore2d/dt;
.super Ljava/lang/Object;
.source "UpdateLogInfo.java"


# annotations
.annotation runtime Lcom/amap/api/mapcore2d/di;
    a = "e"
.end annotation


# instance fields
.field private a:I
    .annotation runtime Lcom/amap/api/mapcore2d/dj;
        a = "c1"
        b = 0x2
    .end annotation
.end field

.field private b:I
    .annotation runtime Lcom/amap/api/mapcore2d/dj;
        a = "c2"
        b = 0x2
    .end annotation
.end field

.field private c:I
    .annotation runtime Lcom/amap/api/mapcore2d/dj;
        a = "c3"
        b = 0x2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    if-nez p1, :cond_0

    :goto_0
    iput v0, p0, Lcom/amap/api/mapcore2d/dt;->a:I

    .line 19
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 18
    goto :goto_0
.end method

.method public a()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 22
    iget v1, p0, Lcom/amap/api/mapcore2d/dt;->a:I

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public b(Z)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    if-nez p1, :cond_0

    :goto_0
    iput v0, p0, Lcom/amap/api/mapcore2d/dt;->b:I

    .line 27
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 26
    goto :goto_0
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 30
    iget v1, p0, Lcom/amap/api/mapcore2d/dt;->b:I

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public c(Z)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    if-nez p1, :cond_0

    :goto_0
    iput v0, p0, Lcom/amap/api/mapcore2d/dt;->c:I

    .line 35
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 34
    goto :goto_0
.end method

.method public c()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 39
    iget v1, p0, Lcom/amap/api/mapcore2d/dt;->c:I

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method
