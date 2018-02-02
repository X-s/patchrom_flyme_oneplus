.class Lcom/amap/api/mapcore2d/bp;
.super Ljava/lang/Object;
.source "TileCoordinate.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Z

.field public g:Landroid/graphics/PointF;

.field public h:I

.field public i:Z

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIII)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput v0, p0, Lcom/amap/api/mapcore2d/bp;->a:I

    const/4 v1, -0x1

    .line 129
    iput v1, p0, Lcom/amap/api/mapcore2d/bp;->h:I

    .line 130
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/bp;->i:Z

    .line 41
    iput p1, p0, Lcom/amap/api/mapcore2d/bp;->b:I

    .line 42
    iput p2, p0, Lcom/amap/api/mapcore2d/bp;->c:I

    .line 43
    iput p3, p0, Lcom/amap/api/mapcore2d/bp;->d:I

    .line 44
    iput p4, p0, Lcom/amap/api/mapcore2d/bp;->e:I

    .line 45
    iget v1, p0, Lcom/amap/api/mapcore2d/bp;->b:I

    iget v2, p0, Lcom/amap/api/mapcore2d/bp;->c:I

    iget v3, p0, Lcom/amap/api/mapcore2d/bp;->d:I

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/ci;->a(III)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/bp;->f:Z

    .line 46
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bp;->b()V

    .line 47
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 45
    goto :goto_0
.end method

.method public constructor <init>(Lcom/amap/api/mapcore2d/bp;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput v0, p0, Lcom/amap/api/mapcore2d/bp;->a:I

    const/4 v1, -0x1

    .line 129
    iput v1, p0, Lcom/amap/api/mapcore2d/bp;->h:I

    .line 130
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/bp;->i:Z

    .line 50
    iget v1, p1, Lcom/amap/api/mapcore2d/bp;->b:I

    iput v1, p0, Lcom/amap/api/mapcore2d/bp;->b:I

    .line 51
    iget v1, p1, Lcom/amap/api/mapcore2d/bp;->c:I

    iput v1, p0, Lcom/amap/api/mapcore2d/bp;->c:I

    .line 52
    iget v1, p1, Lcom/amap/api/mapcore2d/bp;->d:I

    iput v1, p0, Lcom/amap/api/mapcore2d/bp;->d:I

    .line 53
    iget v1, p1, Lcom/amap/api/mapcore2d/bp;->e:I

    iput v1, p0, Lcom/amap/api/mapcore2d/bp;->e:I

    .line 54
    iget-object v1, p1, Lcom/amap/api/mapcore2d/bp;->g:Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/amap/api/mapcore2d/bp;->g:Landroid/graphics/PointF;

    .line 55
    iget v1, p1, Lcom/amap/api/mapcore2d/bp;->a:I

    iput v1, p0, Lcom/amap/api/mapcore2d/bp;->a:I

    .line 56
    iget v1, p0, Lcom/amap/api/mapcore2d/bp;->b:I

    iget v2, p0, Lcom/amap/api/mapcore2d/bp;->c:I

    iget v3, p0, Lcom/amap/api/mapcore2d/bp;->d:I

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/ci;->a(III)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/bp;->f:Z

    .line 57
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bp;->b()V

    .line 58
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 56
    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/amap/api/mapcore2d/bp;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/amap/api/mapcore2d/bp;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/bp;-><init>(Lcom/amap/api/mapcore2d/bp;)V

    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    iget v1, p0, Lcom/amap/api/mapcore2d/bp;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "-"

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget v1, p0, Lcom/amap/api/mapcore2d/bp;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "-"

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget v1, p0, Lcom/amap/api/mapcore2d/bp;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    iget-boolean v1, p0, Lcom/amap/api/mapcore2d/bp;->f:Z

    if-nez v1, :cond_1

    .line 115
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bp;->j:Ljava/lang/String;

    .line 116
    return-void

    .line 111
    :cond_1
    sget v1, Lcom/amap/api/mapcore2d/p;->i:I

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "-"

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bp;->j:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 7
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bp;->a()Lcom/amap/api/mapcore2d/bp;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 67
    if-eq p0, p1, :cond_2

    .line 70
    instance-of v2, p1, Lcom/amap/api/mapcore2d/bp;

    if-eqz v2, :cond_3

    .line 74
    check-cast p1, Lcom/amap/api/mapcore2d/bp;

    .line 75
    iget v2, p0, Lcom/amap/api/mapcore2d/bp;->b:I

    iget v3, p1, Lcom/amap/api/mapcore2d/bp;->b:I

    if-eq v2, v3, :cond_4

    :cond_0
    :goto_0
    move v0, v1

    :cond_1
    return v0

    .line 68
    :cond_2
    return v0

    .line 71
    :cond_3
    return v1

    .line 75
    :cond_4
    iget v2, p0, Lcom/amap/api/mapcore2d/bp;->c:I

    iget v3, p1, Lcom/amap/api/mapcore2d/bp;->c:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/amap/api/mapcore2d/bp;->d:I

    iget v3, p1, Lcom/amap/api/mapcore2d/bp;->d:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/amap/api/mapcore2d/bp;->e:I

    iget v3, p1, Lcom/amap/api/mapcore2d/bp;->e:I

    if-eq v2, v3, :cond_1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 82
    iget v0, p0, Lcom/amap/api/mapcore2d/bp;->b:I

    mul-int/lit8 v0, v0, 0x7

    iget v1, p0, Lcom/amap/api/mapcore2d/bp;->c:I

    mul-int/lit8 v1, v1, 0xb

    add-int/2addr v0, v1

    iget v1, p0, Lcom/amap/api/mapcore2d/bp;->d:I

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    iget v1, p0, Lcom/amap/api/mapcore2d/bp;->e:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    iget v1, p0, Lcom/amap/api/mapcore2d/bp;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "-"

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget v1, p0, Lcom/amap/api/mapcore2d/bp;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "-"

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget v1, p0, Lcom/amap/api/mapcore2d/bp;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "-"

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget v1, p0, Lcom/amap/api/mapcore2d/bp;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
