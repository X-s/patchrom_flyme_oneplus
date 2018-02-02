.class public Lcom/amap/api/mapcore2d/ay$b;
.super Ljava/lang/Object;
.source "Mediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field b:I

.field final synthetic c:Lcom/amap/api/mapcore2d/ay;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/ay;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 200
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/ay$b;->a:Z

    .line 234
    iput v0, p0, Lcom/amap/api/mapcore2d/ay$b;->b:I

    .line 201
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ay$b;->e()V

    .line 202
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 238
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/ay$a;->a(Lcom/amap/api/mapcore2d/ay$a;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 241
    :goto_0
    iget v1, p0, Lcom/amap/api/mapcore2d/ay$b;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/amap/api/mapcore2d/ay$b;->b:I

    .line 242
    iget v1, p0, Lcom/amap/api/mapcore2d/ay$b;->b:I

    const/16 v2, 0x14

    if-ge v1, v2, :cond_2

    .line 244
    :cond_0
    return-void

    .line 239
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/ay$a;->b()V

    goto :goto_0

    .line 242
    :cond_2
    iget v1, p0, Lcom/amap/api/mapcore2d/ay$b;->b:I

    rem-int/lit8 v1, v1, 0x14

    if-nez v1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    if-nez v1, :cond_4

    .line 249
    :cond_3
    return-void

    .line 247
    :cond_4
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    .line 248
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/bk;->size()I

    move-result v1

    if-eqz v1, :cond_3

    .line 251
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/bk;->size()I

    move-result v2

    move v1, v0

    .line 252
    :goto_1
    if-lt v1, v2, :cond_5

    .line 265
    return-void

    .line 253
    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bk;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/am;

    .line 254
    iget-object v0, v0, Lcom/amap/api/mapcore2d/am;->q:Lcom/amap/api/mapcore2d/bs;

    .line 255
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bs;->i()V

    .line 252
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 271
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    iput-boolean v0, v1, Lcom/amap/api/mapcore2d/ay$d;->a:Z

    .line 273
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    if-nez v1, :cond_1

    .line 275
    :cond_0
    return-void

    .line 273
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    .line 274
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/bk;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/bk;->size()I

    move-result v2

    move v1, v0

    .line 278
    :goto_0
    if-lt v1, v2, :cond_2

    .line 297
    return-void

    .line 279
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bk;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/am;

    .line 280
    iget-object v0, v0, Lcom/amap/api/mapcore2d/am;->q:Lcom/amap/api/mapcore2d/bs;

    .line 281
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bs;->b()V

    .line 278
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 303
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    if-nez v1, :cond_1

    .line 305
    :cond_0
    return-void

    .line 303
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    .line 304
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/bk;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/bk;->size()I

    move-result v2

    move v1, v0

    .line 308
    :goto_0
    if-lt v1, v2, :cond_2

    .line 322
    return-void

    .line 309
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bk;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/am;

    .line 310
    iget-object v0, v0, Lcom/amap/api/mapcore2d/am;->q:Lcom/amap/api/mapcore2d/bs;

    .line 311
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bs;->d()V

    .line 308
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public d()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 328
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    if-nez v1, :cond_1

    .line 330
    :cond_0
    return-void

    .line 328
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    .line 329
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/bk;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/bk;->size()I

    move-result v2

    move v1, v0

    .line 333
    :goto_0
    if-lt v1, v2, :cond_2

    .line 347
    return-void

    .line 334
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bk;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/am;

    .line 335
    iget-object v0, v0, Lcom/amap/api/mapcore2d/am;->q:Lcom/amap/api/mapcore2d/bs;

    .line 336
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bs;->c()V

    .line 333
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public e()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 353
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    if-nez v1, :cond_1

    .line 355
    :cond_0
    return-void

    .line 353
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    .line 354
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/bk;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/bk;->size()I

    move-result v2

    move v1, v0

    .line 358
    :goto_0
    if-lt v1, v2, :cond_2

    .line 372
    return-void

    .line 359
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bk;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/am;

    .line 360
    iget-object v0, v0, Lcom/amap/api/mapcore2d/am;->q:Lcom/amap/api/mapcore2d/bs;

    .line 361
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bs;->h()V

    .line 358
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
