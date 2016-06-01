.class final Lcom/oppo/statistics/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/oppo/statistics/a/d;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:J

.field private f:I


# direct methods
.method public constructor <init>(Lcom/oppo/statistics/a/d;Landroid/content/Context;Ljava/lang/String;JJI)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/statistics/a/e;->a:Lcom/oppo/statistics/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/oppo/statistics/a/e;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/oppo/statistics/a/e;->c:Ljava/lang/String;

    iput-wide p4, p0, Lcom/oppo/statistics/a/e;->d:J

    iput-wide p6, p0, Lcom/oppo/statistics/a/e;->e:J

    iput p8, p0, Lcom/oppo/statistics/a/e;->f:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget v0, p0, Lcom/oppo/statistics/a/e;->f:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/oppo/statistics/a/e;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/oppo/statistics/a/e;->c:Ljava/lang/String;

    iget-wide v2, p0, Lcom/oppo/statistics/a/e;->d:J

    iget-wide v4, p0, Lcom/oppo/statistics/a/e;->e:J

    invoke-static/range {v0 .. v5}, Lcom/oppo/statistics/a/d;->a(Landroid/content/Context;Ljava/lang/String;JJ)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/oppo/statistics/a/e;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/oppo/statistics/a/e;->c:Ljava/lang/String;

    iget-wide v2, p0, Lcom/oppo/statistics/a/e;->d:J

    iget-wide v4, p0, Lcom/oppo/statistics/a/e;->e:J

    invoke-static/range {v0 .. v5}, Lcom/oppo/statistics/a/d;->b(Landroid/content/Context;Ljava/lang/String;JJ)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
