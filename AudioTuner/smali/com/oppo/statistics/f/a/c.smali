.class Lcom/oppo/statistics/f/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/oppo/statistics/f/a/b;


# direct methods
.method constructor <init>(Lcom/oppo/statistics/f/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/statistics/f/a/c;->a:Lcom/oppo/statistics/f/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/oppo/statistics/f/a/c;->a:Lcom/oppo/statistics/f/a/b;

    invoke-static {v0}, Lcom/oppo/statistics/f/a/b;->b(Lcom/oppo/statistics/f/a/b;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/oppo/statistics/f/a/c;->a:Lcom/oppo/statistics/f/a/b;

    invoke-virtual {v1, v0}, Lcom/oppo/statistics/f/a/b;->a(Ljava/lang/Object;)V

    :cond_1
    :pswitch_0
    iget-object v0, p0, Lcom/oppo/statistics/f/a/c;->a:Lcom/oppo/statistics/f/a/b;

    invoke-static {v0}, Lcom/oppo/statistics/f/a/b;->a(Lcom/oppo/statistics/f/a/b;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
