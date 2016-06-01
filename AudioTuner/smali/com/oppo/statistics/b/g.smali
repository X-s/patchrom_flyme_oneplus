.class public Lcom/oppo/statistics/b/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/oppo/statistics/b/h;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    iput-object v0, p0, Lcom/oppo/statistics/b/g;->a:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/oppo/statistics/b/g;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/statistics/b/g;->c:I

    iput-object p1, p0, Lcom/oppo/statistics/b/g;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/oppo/statistics/b/g;->b:Ljava/lang/String;

    iput p3, p0, Lcom/oppo/statistics/b/g;->c:I

    return-void
.end method

.method public static a(Landroid/database/Cursor;)Lcom/oppo/statistics/b/g;
    .locals 4

    const-string v0, "special_app_start_appId"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v1, "special_app_start_ssoid"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "special_app_start_time"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/oppo/statistics/b/g;

    invoke-direct {v3, v1, v2, v0}, Lcom/oppo/statistics/b/g;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v3
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/statistics/b/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/oppo/statistics/b/g;->c:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/statistics/b/g;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/statistics/b/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/statistics/b/g;->b:Ljava/lang/String;

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/oppo/statistics/b/g;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method
