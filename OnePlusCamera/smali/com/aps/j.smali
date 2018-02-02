.class public Lcom/aps/j;
.super Ljava/lang/Object;
.source "Fence.java"


# instance fields
.field public a:D

.field public b:D

.field public c:F

.field d:I

.field private e:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-wide v0, p0, Lcom/aps/j;->a:D

    .line 7
    iput-wide v0, p0, Lcom/aps/j;->b:D

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/aps/j;->c:F

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/aps/j;->d:I

    const-wide/16 v0, -0x1

    .line 10
    iput-wide v0, p0, Lcom/aps/j;->e:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 13
    iget-wide v0, p0, Lcom/aps/j;->e:J

    return-wide v0
.end method

.method public a(J)V
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    .line 17
    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    .line 18
    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/aps/j;->e:J

    .line 22
    :goto_1
    return-void

    .line 17
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 20
    :cond_1
    iput-wide p1, p0, Lcom/aps/j;->e:J

    goto :goto_1
.end method

.method public b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    iget-wide v2, p0, Lcom/aps/j;->a:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/aps/j;->b:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/aps/j;->c:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
