.class public Lcom/oppo/statistics/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/oppo/statistics/b/h;


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/statistics/b/d;->a:J

    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/statistics/b/d;->b:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/statistics/b/d;->c:I

    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/statistics/b/d;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/database/Cursor;)Lcom/oppo/statistics/b/d;
    .locals 6

    new-instance v0, Lcom/oppo/statistics/b/d;

    invoke-direct {v0}, Lcom/oppo/statistics/b/d;-><init>()V

    const-string v1, "exception_body"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "exception_count"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v3, "exception_event_time"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string v3, "exception_app_version"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v5}, Lcom/oppo/statistics/b/d;->a(J)V

    invoke-virtual {v0, v2}, Lcom/oppo/statistics/b/d;->a(I)V

    invoke-virtual {v0, v1}, Lcom/oppo/statistics/b/d;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/oppo/statistics/b/d;->b(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/oppo/statistics/b/d;->a:J

    return-wide v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/oppo/statistics/b/d;->c:I

    return-void
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/oppo/statistics/b/d;->a:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/statistics/b/d;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/statistics/b/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/statistics/b/d;->d:Ljava/lang/String;

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/oppo/statistics/b/d;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/statistics/b/d;->d:Ljava/lang/String;

    return-object v0
.end method
