.class public Lcom/oppo/statistics/f/a/d;
.super Lcom/oppo/statistics/f/a/b;


# static fields
.field private static c:Ljava/lang/Object;

.field private static volatile d:Lcom/oppo/statistics/f/a/d;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/oppo/statistics/f/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oppo/statistics/f/a/d;->c:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "HttpThread"

    invoke-direct {p0, v0}, Lcom/oppo/statistics/f/a/b;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/oppo/statistics/f/c;

    invoke-direct {v0}, Lcom/oppo/statistics/f/c;-><init>()V

    iput-object v0, p0, Lcom/oppo/statistics/f/a/d;->b:Lcom/oppo/statistics/f/c;

    iput-object p1, p0, Lcom/oppo/statistics/f/a/d;->a:Landroid/content/Context;

    return-void
.end method

.method private static a(Landroid/content/Context;)Lcom/oppo/statistics/f/a/d;
    .locals 3

    sget-object v1, Lcom/oppo/statistics/f/a/d;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/oppo/statistics/f/a/d;->d:Lcom/oppo/statistics/f/a/d;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oppo/statistics/f/a/d;->d:Lcom/oppo/statistics/f/a/d;

    invoke-virtual {v0}, Lcom/oppo/statistics/f/a/d;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Lcom/oppo/statistics/f/a/d;

    invoke-direct {v2, v0}, Lcom/oppo/statistics/f/a/d;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/oppo/statistics/f/a/d;->d:Lcom/oppo/statistics/f/a/d;

    sget-object v0, Lcom/oppo/statistics/f/a/d;->d:Lcom/oppo/statistics/f/a/d;

    invoke-virtual {v0}, Lcom/oppo/statistics/f/a/d;->start()V

    :cond_1
    sget-object v0, Lcom/oppo/statistics/f/a/d;->d:Lcom/oppo/statistics/f/a/d;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Integer;J)V
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/oppo/statistics/f/a/d;->a(Landroid/content/Context;)Lcom/oppo/statistics/f/a/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/oppo/statistics/f/a/d;->a(Ljava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {p0}, Lcom/oppo/statistics/f/a/d;->a(Landroid/content/Context;)Lcom/oppo/statistics/f/a/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/oppo/statistics/f/a/d;->a(Ljava/lang/Object;J)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/lang/Integer;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/oppo/statistics/f/a/d;->b(Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/oppo/statistics/f/a/d;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method public b(Ljava/lang/Integer;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/oppo/statistics/f/a/d;->b:Lcom/oppo/statistics/f/c;

    iget-object v1, p0, Lcom/oppo/statistics/f/a/d;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oppo/statistics/f/c;->d(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NearMeStatistics"

    invoke-static {v1, v0}, Lcom/oppo/statistics/g/f;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/oppo/statistics/f/a/d;->b:Lcom/oppo/statistics/f/c;

    iget-object v1, p0, Lcom/oppo/statistics/f/a/d;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oppo/statistics/f/c;->c(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/oppo/statistics/f/a/d;->b:Lcom/oppo/statistics/f/c;

    iget-object v1, p0, Lcom/oppo/statistics/f/a/d;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oppo/statistics/f/c;->e(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/oppo/statistics/f/a/d;->b:Lcom/oppo/statistics/f/c;

    iget-object v1, p0, Lcom/oppo/statistics/f/a/d;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oppo/statistics/f/c;->b(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/oppo/statistics/f/a/d;->b:Lcom/oppo/statistics/f/c;

    iget-object v1, p0, Lcom/oppo/statistics/f/a/d;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oppo/statistics/f/c;->f(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/oppo/statistics/f/a/d;->b:Lcom/oppo/statistics/f/c;

    iget-object v1, p0, Lcom/oppo/statistics/f/a/d;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oppo/statistics/f/c;->a(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/oppo/statistics/f/a/d;->b:Lcom/oppo/statistics/f/c;

    iget-object v1, p0, Lcom/oppo/statistics/f/a/d;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oppo/statistics/f/c;->g(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method
