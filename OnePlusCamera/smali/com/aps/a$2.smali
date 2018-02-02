.class Lcom/aps/a$2;
.super Ljava/util/TimerTask;
.source "APS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aps/a;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/aps/a;


# direct methods
.method constructor <init>(Lcom/aps/a;I)V
    .locals 0

    .prologue
    .line 3435
    iput-object p1, p0, Lcom/aps/a$2;->b:Lcom/aps/a;

    iput p2, p0, Lcom/aps/a$2;->a:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3439
    :try_start_0
    iget-object v0, p0, Lcom/aps/a$2;->b:Lcom/aps/a;

    invoke-static {v0}, Lcom/aps/a;->i(Lcom/aps/a;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3448
    iget-object v0, p0, Lcom/aps/a$2;->b:Lcom/aps/a;

    invoke-static {v0}, Lcom/aps/a;->j(Lcom/aps/a;)V

    .line 3456
    :cond_0
    :goto_0
    return-void

    .line 3443
    :cond_1
    iget-object v0, p0, Lcom/aps/a$2;->b:Lcom/aps/a;

    iget v1, p0, Lcom/aps/a$2;->a:I

    invoke-static {v0, v1}, Lcom/aps/a;->c(Lcom/aps/a;I)V

    .line 3444
    iget-object v0, p0, Lcom/aps/a$2;->b:Lcom/aps/a;

    invoke-virtual {v0}, Lcom/aps/a;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3445
    iget-object v0, p0, Lcom/aps/a$2;->b:Lcom/aps/a;

    invoke-static {v0}, Lcom/aps/a;->j(Lcom/aps/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3455
    :catch_0
    move-exception v0

    .line 3451
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
