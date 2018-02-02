.class Lcom/amap/api/mapcore2d/ap$b;
.super Ljava/lang/Object;
.source "MapController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/ap;

.field private b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/amap/api/mapcore2d/cc;


# direct methods
.method private constructor <init>(Lcom/amap/api/mapcore2d/ap;)V
    .locals 1

    .prologue
    .line 511
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ap$b;->a:Lcom/amap/api/mapcore2d/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 512
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ap$b;->b:Ljava/util/LinkedList;

    const/4 v0, 0x0

    .line 514
    iput-object v0, p0, Lcom/amap/api/mapcore2d/ap$b;->c:Lcom/amap/api/mapcore2d/cc;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore2d/ap;Lcom/amap/api/mapcore2d/ap$1;)V
    .locals 0

    .prologue
    .line 511
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/ap$b;-><init>(Lcom/amap/api/mapcore2d/ap;)V

    return-void
.end method

.method private a(FIIZ)V
    .locals 4

    .prologue
    .line 538
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ap$b;->c:Lcom/amap/api/mapcore2d/cc;

    if-eqz v0, :cond_0

    .line 543
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ap$b;->c:Lcom/amap/api/mapcore2d/cc;

    iput-boolean p4, v0, Lcom/amap/api/mapcore2d/cc;->d:Z

    .line 544
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ap$b;->c:Lcom/amap/api/mapcore2d/cc;

    iput p1, v0, Lcom/amap/api/mapcore2d/cc;->c:F

    .line 545
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ap$b;->c:Lcom/amap/api/mapcore2d/cc;

    int-to-float v1, p2

    int-to-float v2, p3

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v1, v2}, Lcom/amap/api/mapcore2d/cc;->a(FZFF)V

    .line 548
    return-void

    .line 539
    :cond_0
    new-instance v0, Lcom/amap/api/mapcore2d/cc;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/ap$b;->a:Lcom/amap/api/mapcore2d/ap;

    .line 540
    invoke-static {v1}, Lcom/amap/api/mapcore2d/ap;->a(Lcom/amap/api/mapcore2d/ap;)Lcom/amap/api/mapcore2d/ay;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/ay$d;->g()Lcom/amap/api/mapcore2d/b;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore2d/cc;-><init>(Lcom/amap/api/mapcore2d/b;Landroid/view/animation/Animation$AnimationListener;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ap$b;->c:Lcom/amap/api/mapcore2d/cc;

    goto :goto_0
.end method

.method private b(FIIZ)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 551
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ap$b;->c:Lcom/amap/api/mapcore2d/cc;

    if-eqz v0, :cond_0

    .line 556
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ap$b;->c:Lcom/amap/api/mapcore2d/cc;

    iput p1, v0, Lcom/amap/api/mapcore2d/cc;->c:F

    .line 557
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ap$b;->c:Lcom/amap/api/mapcore2d/cc;

    iput-boolean p4, v0, Lcom/amap/api/mapcore2d/cc;->d:Z

    .line 559
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ap$b;->c:Lcom/amap/api/mapcore2d/cc;

    iget-boolean v0, v0, Lcom/amap/api/mapcore2d/cc;->d:Z

    if-eq v0, v4, :cond_1

    .line 568
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ap$b;->c:Lcom/amap/api/mapcore2d/cc;

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {v0, p1, v4, v1, v2}, Lcom/amap/api/mapcore2d/cc;->a(FZFF)V

    .line 571
    return-void

    .line 552
    :cond_0
    new-instance v0, Lcom/amap/api/mapcore2d/cc;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/ap$b;->a:Lcom/amap/api/mapcore2d/ap;

    .line 553
    invoke-static {v1}, Lcom/amap/api/mapcore2d/ap;->a(Lcom/amap/api/mapcore2d/ap;)Lcom/amap/api/mapcore2d/ay;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/ay$d;->g()Lcom/amap/api/mapcore2d/b;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore2d/cc;-><init>(Lcom/amap/api/mapcore2d/b;Landroid/view/animation/Animation$AnimationListener;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ap$b;->c:Lcom/amap/api/mapcore2d/cc;

    goto :goto_0

    .line 560
    :cond_1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    .line 561
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ap$b;->a:Lcom/amap/api/mapcore2d/ap;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/ap;->a(Lcom/amap/api/mapcore2d/ap;)Lcom/amap/api/mapcore2d/ay;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/ay$d;->g()Lcom/amap/api/mapcore2d/b;

    move-result-object v1

    .line 562
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/b;->s()Lcom/amap/api/mapcore2d/bf;

    move-result-object v1

    invoke-interface {v1, p2, p3}, Lcom/amap/api/mapcore2d/bf;->a(II)Lcom/amap/api/mapcore2d/u;

    move-result-object v1

    .line 563
    iget-object v2, p0, Lcom/amap/api/mapcore2d/ap$b;->a:Lcom/amap/api/mapcore2d/ap;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/ap;->a(Lcom/amap/api/mapcore2d/ap;)Lcom/amap/api/mapcore2d/ay;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/ap$b;->a:Lcom/amap/api/mapcore2d/ap;

    invoke-static {v3}, Lcom/amap/api/mapcore2d/ap;->a(Lcom/amap/api/mapcore2d/ap;)Lcom/amap/api/mapcore2d/ay;

    move-result-object v3

    iget-object v3, v3, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    .line 564
    invoke-virtual {v3, v1}, Lcom/amap/api/mapcore2d/au;->a(Lcom/amap/api/mapcore2d/u;)Lcom/amap/api/mapcore2d/u;

    move-result-object v1

    iput-object v1, v2, Lcom/amap/api/mapcore2d/au;->l:Lcom/amap/api/mapcore2d/u;

    .line 565
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ap$b;->a:Lcom/amap/api/mapcore2d/ap;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/ap;->a(Lcom/amap/api/mapcore2d/ap;)Lcom/amap/api/mapcore2d/ay;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/au;->a(Landroid/graphics/Point;)V

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ap$b;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 524
    return-void
.end method

.method public a(IIFZZ)V
    .locals 0

    .prologue
    .line 528
    if-eqz p4, :cond_0

    .line 533
    invoke-direct {p0, p3, p1, p2, p5}, Lcom/amap/api/mapcore2d/ap$b;->b(FIIZ)V

    .line 535
    :goto_0
    return-void

    .line 530
    :cond_0
    invoke-direct {p0, p3, p1, p2, p5}, Lcom/amap/api/mapcore2d/ap$b;->a(FIIZ)V

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 583
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ap$b;->a:Lcom/amap/api/mapcore2d/ap;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ap;->a(Lcom/amap/api/mapcore2d/ap;)Lcom/amap/api/mapcore2d/ay;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    .line 584
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$d;->g()Lcom/amap/api/mapcore2d/b;

    move-result-object v1

    .line 586
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ap$b;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ap$b;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    .line 591
    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/b;->startAnimation(Landroid/view/animation/Animation;)V

    .line 593
    :goto_0
    return-void

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ap$b;->a:Lcom/amap/api/mapcore2d/ap;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ap;->a(Lcom/amap/api/mapcore2d/ap;)Lcom/amap/api/mapcore2d/ay;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$a;->b()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 579
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 575
    return-void
.end method
