.class Lcom/amap/api/mapcore2d/bs;
.super Lcom/amap/api/mapcore2d/e;
.source "TileServer.java"

# interfaces
.implements Lcom/amap/api/mapcore2d/bz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/mapcore2d/e",
        "<",
        "Lcom/amap/api/mapcore2d/bp;",
        "Lcom/amap/api/mapcore2d/bp;",
        ">;",
        "Lcom/amap/api/mapcore2d/bz;"
    }
.end annotation


# instance fields
.field private d:Landroid/content/Context;

.field private e:Lcom/amap/api/mapcore2d/am;

.field private f:Lcom/amap/api/mapcore2d/ay;

.field private g:Lcom/amap/api/mapcore2d/al;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/ay;Landroid/content/Context;Lcom/amap/api/mapcore2d/am;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore2d/e;-><init>(Lcom/amap/api/mapcore2d/ay;Landroid/content/Context;)V

    .line 305
    new-instance v0, Lcom/amap/api/mapcore2d/al;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/al;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bs;->g:Lcom/amap/api/mapcore2d/al;

    .line 37
    iput-object p3, p0, Lcom/amap/api/mapcore2d/bs;->e:Lcom/amap/api/mapcore2d/am;

    .line 38
    iput-object p2, p0, Lcom/amap/api/mapcore2d/bs;->d:Landroid/content/Context;

    .line 39
    new-instance v0, Lcom/amap/api/mapcore2d/bo;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/bo;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bs;->a:Lcom/amap/api/mapcore2d/bl;

    .line 40
    iget-object v0, p1, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/ay$d;->a(Lcom/amap/api/mapcore2d/bz;)V

    .line 41
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bs;->f:Lcom/amap/api/mapcore2d/ay;

    .line 42
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bs;->a()V

    .line 43
    return-void
.end method

.method private a(Ljava/util/ArrayList;Lcom/amap/api/mapcore2d/am;FZ)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/mapcore2d/bp;",
            ">;",
            "Lcom/amap/api/mapcore2d/am;",
            "FZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/mapcore2d/bp;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 195
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 198
    if-nez p1, :cond_1

    .line 199
    :cond_0
    return-object v4

    .line 198
    :cond_1
    if-eqz p2, :cond_0

    .line 201
    invoke-virtual {p2}, Lcom/amap/api/mapcore2d/am;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 204
    iget-object v1, p2, Lcom/amap/api/mapcore2d/am;->p:Lcom/amap/api/mapcore2d/bk;

    if-eqz v1, :cond_4

    .line 208
    iget-object v1, p2, Lcom/amap/api/mapcore2d/am;->p:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/bk;->clear()V

    .line 211
    iget v1, p2, Lcom/amap/api/mapcore2d/am;->c:I

    int-to-float v1, v1

    cmpl-float v1, p3, v1

    if-lez v1, :cond_5

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_2

    iget v1, p2, Lcom/amap/api/mapcore2d/am;->d:I

    int-to-float v1, v1

    cmpg-float v1, p3, v1

    if-gez v1, :cond_6

    .line 213
    :cond_2
    return-object v4

    .line 202
    :cond_3
    return-object v4

    .line 205
    :cond_4
    return-object v4

    :cond_5
    move v1, v0

    .line 211
    goto :goto_0

    .line 215
    :cond_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 216
    if-lez v3, :cond_7

    move v1, v0

    .line 223
    :goto_1
    if-lt v1, v3, :cond_8

    .line 251
    return-object v2

    .line 217
    :cond_7
    return-object v4

    .line 224
    :cond_8
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/bp;

    .line 225
    if-eqz v0, :cond_9

    .line 228
    iget-object v4, p2, Lcom/amap/api/mapcore2d/am;->n:Lcom/amap/api/mapcore2d/az;

    .line 229
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bp;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/mapcore2d/az;->a(Ljava/lang/String;)I

    move-result v4

    .line 231
    new-instance v5, Lcom/amap/api/mapcore2d/bp;

    iget v6, v0, Lcom/amap/api/mapcore2d/bp;->b:I

    iget v7, v0, Lcom/amap/api/mapcore2d/bp;->c:I

    iget v8, v0, Lcom/amap/api/mapcore2d/bp;->d:I

    iget v9, p2, Lcom/amap/api/mapcore2d/am;->l:I

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/amap/api/mapcore2d/bp;-><init>(IIII)V

    .line 234
    iput v4, v5, Lcom/amap/api/mapcore2d/bp;->h:I

    .line 235
    iget-object v0, v0, Lcom/amap/api/mapcore2d/bp;->g:Landroid/graphics/PointF;

    iput-object v0, v5, Lcom/amap/api/mapcore2d/bp;->g:Landroid/graphics/PointF;

    .line 237
    iget-object v0, p2, Lcom/amap/api/mapcore2d/am;->p:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {v0, v5}, Lcom/amap/api/mapcore2d/bk;->add(Ljava/lang/Object;)Z

    .line 240
    invoke-direct {p0, v5}, Lcom/amap/api/mapcore2d/bs;->a(Lcom/amap/api/mapcore2d/bp;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 223
    :cond_9
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 240
    :cond_a
    if-nez p4, :cond_9

    .line 243
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bs;->g:Lcom/amap/api/mapcore2d/al;

    invoke-virtual {v0, v5}, Lcom/amap/api/mapcore2d/al;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 244
    iget-boolean v0, p2, Lcom/amap/api/mapcore2d/am;->f:Z

    if-eqz v0, :cond_b

    .line 247
    :goto_3
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_b
    const/4 v0, -0x1

    .line 245
    iput v0, v5, Lcom/amap/api/mapcore2d/bp;->a:I

    goto :goto_3
.end method

.method private a(Ljava/util/ArrayList;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/mapcore2d/bp;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bs;->a:Lcom/amap/api/mapcore2d/bl;

    if-nez v0, :cond_1

    .line 145
    :cond_0
    return-void

    .line 144
    :cond_1
    if-eqz p1, :cond_0

    .line 147
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bs;->a:Lcom/amap/api/mapcore2d/bl;

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/mapcore2d/bl;->a(Ljava/util/List;Z)V

    goto :goto_0
.end method

.method private a(Lcom/amap/api/mapcore2d/bp;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 302
    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget v1, p1, Lcom/amap/api/mapcore2d/bp;->h:I

    if-ltz v1, :cond_0

    goto :goto_0
.end method

.method private c(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/mapcore2d/bp;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 130
    if-nez p1, :cond_1

    .line 131
    :cond_0
    return-void

    .line 130
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bs;->g:Lcom/amap/api/mapcore2d/al;

    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 134
    if-eqz v2, :cond_2

    move v1, v0

    .line 137
    :goto_0
    if-lt v1, v2, :cond_3

    .line 140
    return-void

    .line 135
    :cond_2
    return-void

    .line 138
    :cond_3
    iget-object v3, p0, Lcom/amap/api/mapcore2d/bs;->g:Lcom/amap/api/mapcore2d/al;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/bp;

    invoke-virtual {v3, v0}, Lcom/amap/api/mapcore2d/al;->a(Lcom/amap/api/mapcore2d/bp;)V

    .line 137
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private j()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 167
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bs;->b:Lcom/amap/api/mapcore2d/ay;

    if-nez v0, :cond_1

    .line 168
    :cond_0
    return v1

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bs;->b:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bs;->b:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    if-eqz v0, :cond_2

    .line 173
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bs;->b:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bk;->size()I

    move-result v0

    .line 174
    if-lez v0, :cond_3

    .line 187
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bs;->e:Lcom/amap/api/mapcore2d/am;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/am;->a()Z

    move-result v0

    return v0

    .line 171
    :cond_2
    return v1

    .line 175
    :cond_3
    return v1
.end method


# virtual methods
.method protected a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/mapcore2d/bp;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/mapcore2d/bp;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/AMapException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 52
    if-nez p1, :cond_1

    .line 54
    :cond_0
    return-object v1

    .line 52
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bs;->b:Lcom/amap/api/mapcore2d/ay;

    if-nez v0, :cond_3

    .line 60
    :cond_2
    return-object v1

    .line 58
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bs;->b:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bs;->b:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    if-eqz v0, :cond_2

    .line 72
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/bs;->a(Ljava/util/List;)V

    .line 74
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_6

    .line 86
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bs;->e:Lcom/amap/api/mapcore2d/am;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/am;->j:Lcom/amap/api/mapcore2d/by;

    if-eqz v0, :cond_7

    .line 88
    :cond_4
    new-instance v2, Lcom/amap/api/mapcore2d/bt;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bs;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/bs;->e:Lcom/amap/api/mapcore2d/am;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/am;->k:Lcom/amap/api/maps2d/model/TileProvider;

    invoke-direct {v2, v0, p1, v3}, Lcom/amap/api/mapcore2d/bt;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/amap/api/maps2d/model/TileProvider;)V

    .line 92
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bs;->e:Lcom/amap/api/mapcore2d/am;

    invoke-virtual {v2, v0}, Lcom/amap/api/mapcore2d/bt;->a(Lcom/amap/api/mapcore2d/am;)V

    .line 94
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/bt;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 95
    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore2d/bt;->a(Lcom/amap/api/mapcore2d/am;)V

    .line 101
    :goto_0
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/bs;->c(Ljava/util/ArrayList;)V

    .line 102
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bs;->b:Lcom/amap/api/mapcore2d/ay;

    if-nez v1, :cond_8

    .line 103
    :cond_5
    return-object v0

    .line 75
    :cond_6
    return-object v1

    .line 86
    :cond_7
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bs;->e:Lcom/amap/api/mapcore2d/am;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/am;->k:Lcom/amap/api/maps2d/model/TileProvider;

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_0

    .line 102
    :cond_8
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bs;->b:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    if-eqz v1, :cond_5

    .line 105
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bs;->b:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/ay$a;->b()V

    .line 106
    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore2d/bp;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 111
    if-eqz p1, :cond_0

    .line 115
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 116
    if-eqz v2, :cond_1

    .line 119
    :goto_0
    if-lt v1, v2, :cond_2

    .line 127
    return-void

    .line 112
    :cond_0
    return-void

    .line 117
    :cond_1
    return-void

    .line 120
    :cond_2
    iget-object v3, p0, Lcom/amap/api/mapcore2d/bs;->g:Lcom/amap/api/mapcore2d/al;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/bp;

    invoke-virtual {v3, v0}, Lcom/amap/api/mapcore2d/al;->b(Lcom/amap/api/mapcore2d/bp;)Z

    move-result v0

    .line 121
    if-eqz v0, :cond_3

    move v0, v1

    move v1, v2

    .line 119
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 122
    :cond_3
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 123
    add-int/lit8 v0, v1, -0x1

    .line 124
    add-int/lit8 v1, v2, -0x1

    goto :goto_1
.end method

.method public a(ZZ)V
    .locals 5

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/bs;->j()Z

    move-result v0

    .line 257
    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bs;->b:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bs;->b:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/au;->l:Lcom/amap/api/mapcore2d/u;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bs;->b:Lcom/amap/api/mapcore2d/ay;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    .line 263
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/au;->b()I

    move-result v2

    iget-object v3, p0, Lcom/amap/api/mapcore2d/bs;->b:Lcom/amap/api/mapcore2d/ay;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    .line 264
    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/ay$d;->c()I

    move-result v3

    iget-object v4, p0, Lcom/amap/api/mapcore2d/bs;->b:Lcom/amap/api/mapcore2d/ay;

    iget-object v4, v4, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    .line 265
    invoke-virtual {v4}, Lcom/amap/api/mapcore2d/ay$d;->d()I

    move-result v4

    .line 261
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amap/api/mapcore2d/au;->a(Lcom/amap/api/mapcore2d/u;III)Ljava/util/ArrayList;

    move-result-object v0

    .line 269
    if-eqz v0, :cond_1

    .line 272
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 273
    if-lez v1, :cond_2

    .line 277
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bs;->e:Lcom/amap/api/mapcore2d/am;

    .line 283
    iget-object v2, p0, Lcom/amap/api/mapcore2d/bs;->b:Lcom/amap/api/mapcore2d/ay;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    .line 284
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/ay$d;->e()F

    move-result v2

    .line 283
    invoke-direct {p0, v0, v1, v2, p2}, Lcom/amap/api/mapcore2d/bs;->a(Ljava/util/ArrayList;Lcom/amap/api/mapcore2d/am;FZ)Ljava/util/ArrayList;

    move-result-object v1

    .line 286
    if-nez v1, :cond_3

    .line 296
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 298
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bs;->b:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$d;->g()Lcom/amap/api/mapcore2d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    .line 299
    return-void

    .line 258
    :cond_0
    return-void

    .line 270
    :cond_1
    return-void

    .line 274
    :cond_2
    return-void

    .line 287
    :cond_3
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/amap/api/mapcore2d/bs;->a(Ljava/util/ArrayList;Z)V

    .line 291
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method protected b(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/mapcore2d/bp;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/mapcore2d/bp;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 322
    if-eqz p1, :cond_0

    .line 327
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 328
    if-eqz v5, :cond_1

    move v4, v6

    move-object v2, v7

    .line 337
    :goto_0
    if-lt v3, v5, :cond_2

    .line 401
    return-object v2

    .line 324
    :cond_0
    return-object v7

    .line 329
    :cond_1
    return-object v7

    .line 338
    :cond_2
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/bp;

    .line 339
    if-eqz v0, :cond_4

    .line 342
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bs;->b:Lcom/amap/api/mapcore2d/ay;

    if-nez v1, :cond_5

    .line 344
    :cond_3
    return-object v7

    :cond_4
    move v0, v3

    move v1, v4

    move v3, v5

    .line 337
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v4, v1

    move v5, v3

    move v3, v0

    goto :goto_0

    .line 342
    :cond_5
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bs;->b:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bs;->b:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    if-eqz v1, :cond_3

    .line 346
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bs;->b:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/bk;->size()I

    .line 355
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bs;->e:Lcom/amap/api/mapcore2d/am;

    iget-boolean v1, v1, Lcom/amap/api/mapcore2d/am;->f:Z

    if-eqz v1, :cond_6

    .line 363
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bs;->e:Lcom/amap/api/mapcore2d/am;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/am;->o:Lcom/amap/api/mapcore2d/s;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/s;->a(Lcom/amap/api/mapcore2d/bp;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 367
    :goto_2
    if-gez v4, :cond_7

    .line 393
    if-eqz v2, :cond_b

    move-object v1, v2

    .line 396
    :goto_3
    new-instance v2, Lcom/amap/api/mapcore2d/bp;

    invoke-direct {v2, v0}, Lcom/amap/api/mapcore2d/bp;-><init>(Lcom/amap/api/mapcore2d/bp;)V

    .line 397
    iput v6, v2, Lcom/amap/api/mapcore2d/bp;->a:I

    .line 398
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v3

    move-object v2, v1

    move v1, v4

    move v3, v5

    goto :goto_1

    :cond_6
    move v0, v3

    move v1, v4

    move v3, v5

    .line 357
    goto :goto_1

    .line 366
    :catch_0
    move-exception v1

    .line 365
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 369
    :cond_7
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 370
    add-int/lit8 v5, v5, -0x1

    .line 371
    add-int/lit8 v3, v3, -0x1

    .line 375
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bs;->e:Lcom/amap/api/mapcore2d/am;

    iget-object v8, v1, Lcom/amap/api/mapcore2d/am;->p:Lcom/amap/api/mapcore2d/bk;

    .line 376
    if-eqz v8, :cond_9

    .line 380
    monitor-enter v8

    .line 381
    :try_start_1
    invoke-virtual {v8}, Lcom/amap/api/mapcore2d/bk;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_a

    .line 391
    :goto_4
    monitor-exit v8

    move v0, v3

    move v1, v4

    move v3, v5

    goto :goto_1

    :cond_9
    move v0, v3

    move v1, v4

    move v3, v5

    .line 377
    goto :goto_1

    .line 381
    :cond_a
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore2d/bp;

    .line 382
    if-eqz v1, :cond_8

    .line 385
    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/bp;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 386
    iput v4, v1, Lcom/amap/api/mapcore2d/bp;->h:I

    .line 387
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bs;->b:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$a;->b()V

    goto :goto_4

    .line 391
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 394
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_3
.end method

.method public b()V
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/amap/api/mapcore2d/e;->b()V

    .line 28
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bs;->g:Lcom/amap/api/mapcore2d/al;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/al;->clear()V

    .line 29
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bs;->f:Lcom/amap/api/mapcore2d/ay;

    if-nez v0, :cond_1

    .line 33
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bs;->f:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bs;->f:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/ay$d;->b(Lcom/amap/api/mapcore2d/bz;)V

    goto :goto_0
.end method

.method protected f()I
    .locals 1

    .prologue
    const/4 v0, 0x4

    .line 313
    return v0
.end method

.method protected g()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 309
    return v0
.end method

.method public i()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 158
    invoke-virtual {p0, v0, v0}, Lcom/amap/api/mapcore2d/bs;->a(ZZ)V

    .line 159
    return-void
.end method
