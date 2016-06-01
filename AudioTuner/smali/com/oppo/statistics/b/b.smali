.class public Lcom/oppo/statistics/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/oppo/statistics/b/h;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    iput-object v0, p0, Lcom/oppo/statistics/b/b;->a:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/oppo/statistics/b/b;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    iput-object v0, p0, Lcom/oppo/statistics/b/b;->a:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/oppo/statistics/b/b;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/oppo/statistics/b/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/oppo/statistics/b/b;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/database/Cursor;)Lcom/oppo/statistics/b/b;
    .locals 3

    const-string v0, "app_start_ssoid"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_start_time"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/oppo/statistics/b/b;

    invoke-direct {v2, v0, v1}, Lcom/oppo/statistics/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/statistics/b/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/statistics/b/b;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/statistics/b/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/statistics/b/b;->b:Ljava/lang/String;

    return-void
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
