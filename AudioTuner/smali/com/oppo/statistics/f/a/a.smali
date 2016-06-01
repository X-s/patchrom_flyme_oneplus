.class public Lcom/oppo/statistics/f/a/a;
.super Lcom/oppo/statistics/f/a/b;


# static fields
.field private static b:Ljava/lang/Object;

.field private static volatile c:Lcom/oppo/statistics/f/a/a;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oppo/statistics/f/a/a;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "RecordThread"

    invoke-direct {p0, v0}, Lcom/oppo/statistics/f/a/b;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oppo/statistics/f/a/a;->a:Landroid/content/Context;

    return-void
.end method

.method private static a(Landroid/content/Context;)Lcom/oppo/statistics/f/a/a;
    .locals 3

    sget-object v1, Lcom/oppo/statistics/f/a/a;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/oppo/statistics/f/a/a;->c:Lcom/oppo/statistics/f/a/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oppo/statistics/f/a/a;->c:Lcom/oppo/statistics/f/a/a;

    invoke-virtual {v0}, Lcom/oppo/statistics/f/a/a;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Lcom/oppo/statistics/f/a/a;

    invoke-direct {v2, v0}, Lcom/oppo/statistics/f/a/a;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/oppo/statistics/f/a/a;->c:Lcom/oppo/statistics/f/a/a;

    sget-object v0, Lcom/oppo/statistics/f/a/a;->c:Lcom/oppo/statistics/f/a/a;

    invoke-virtual {v0}, Lcom/oppo/statistics/f/a/a;->start()V

    :cond_1
    sget-object v0, Lcom/oppo/statistics/f/a/a;->c:Lcom/oppo/statistics/f/a/a;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;Lcom/oppo/statistics/b/h;)V
    .locals 6

    const-wide/16 v4, 0x0

    invoke-static {p0}, Lcom/oppo/statistics/f/a;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p0}, Lcom/oppo/statistics/f/a/a;->a(Landroid/content/Context;)Lcom/oppo/statistics/f/a/a;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p1, v2, v3}, Lcom/oppo/statistics/f/a/a;->a(Ljava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {p0}, Lcom/oppo/statistics/f/a/a;->a(Landroid/content/Context;)Lcom/oppo/statistics/f/a/a;

    move-result-object v0

    invoke-virtual {v0, p1, v4, v5}, Lcom/oppo/statistics/f/a/a;->a(Ljava/lang/Object;J)V

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Lcom/oppo/statistics/b/h;)V
    .locals 3

    invoke-interface {p2}, Lcom/oppo/statistics/b/h;->d()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    check-cast p2, Lcom/oppo/statistics/b/b;

    invoke-virtual {p2}, Lcom/oppo/statistics/b/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/oppo/statistics/b/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/oppo/statistics/e/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    check-cast p2, Lcom/oppo/statistics/b/i;

    invoke-virtual {p2}, Lcom/oppo/statistics/b/i;->a()I

    move-result v0

    invoke-virtual {p2}, Lcom/oppo/statistics/b/i;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/oppo/statistics/b/i;->c()I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lcom/oppo/statistics/e/b;->a(Landroid/content/Context;ILjava/lang/String;I)V

    goto :goto_0

    :pswitch_3
    check-cast p2, Lcom/oppo/statistics/b/f;

    invoke-static {p1, p2}, Lcom/oppo/statistics/e/b;->a(Landroid/content/Context;Lcom/oppo/statistics/b/f;)V

    goto :goto_0

    :pswitch_4
    check-cast p2, Lcom/oppo/statistics/b/a;

    invoke-static {p1, p2}, Lcom/oppo/statistics/e/b;->a(Landroid/content/Context;Lcom/oppo/statistics/b/a;)V

    goto :goto_0

    :pswitch_5
    check-cast p2, Lcom/oppo/statistics/b/g;

    invoke-static {p1, p2}, Lcom/oppo/statistics/e/b;->a(Landroid/content/Context;Lcom/oppo/statistics/b/g;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method protected a(Lcom/oppo/statistics/b/h;)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/oppo/statistics/f/a/a;->a:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/oppo/statistics/f/a/a;->b(Landroid/content/Context;Lcom/oppo/statistics/b/h;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x5

    invoke-interface {p1}, Lcom/oppo/statistics/b/h;->d()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/oppo/statistics/f/a/a;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/oppo/statistics/f/b;->a(Landroid/content/Context;Lcom/oppo/statistics/b/h;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "NearMeStatistics"

    invoke-static {v1, v0}, Lcom/oppo/statistics/g/f;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/oppo/statistics/b/h;

    invoke-virtual {p0, p1}, Lcom/oppo/statistics/f/a/a;->a(Lcom/oppo/statistics/b/h;)V

    return-void
.end method
