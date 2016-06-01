.class public Lcom/oppo/statistics/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/oppo/statistics/b/h;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lorg/json/JSONObject;

.field private c:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/statistics/b/a;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/statistics/b/a;->b:Lorg/json/JSONObject;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/statistics/b/a;->c:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/statistics/b/a;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/statistics/b/a;->b:Lorg/json/JSONObject;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/statistics/b/a;->c:J

    iput-object p1, p0, Lcom/oppo/statistics/b/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/oppo/statistics/b/a;->b:Lorg/json/JSONObject;

    iput-wide p3, p0, Lcom/oppo/statistics/b/a;->c:J

    return-void
.end method

.method public static a(Landroid/database/Cursor;)Lcom/oppo/statistics/b/a;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "app_log_type"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_log_body"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_log_event_time"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lcom/oppo/statistics/b/a;

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/oppo/statistics/b/a;-><init>(Ljava/lang/String;Lorg/json/JSONObject;J)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "NearMeStatistics"

    invoke-static {v2, v1}, Lcom/oppo/statistics/g/f;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/statistics/b/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/oppo/statistics/b/a;->c:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/statistics/b/a;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/statistics/b/a;->b:Lorg/json/JSONObject;

    return-void
.end method

.method public b()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/oppo/statistics/b/a;->b:Lorg/json/JSONObject;

    return-object v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/oppo/statistics/b/a;->c:J

    return-wide v0
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method
