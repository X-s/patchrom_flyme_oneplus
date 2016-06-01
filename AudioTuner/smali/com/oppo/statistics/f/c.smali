.class public Lcom/oppo/statistics/f/c;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Lcom/oppo/statistics/g/h;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/oppo/statistics/e/b;->f(Landroid/content/Context;)Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-static {p1, v0}, Lcom/oppo/statistics/d/b;->a(Landroid/content/Context;Ljava/util/LinkedList;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1, v0}, Lcom/oppo/statistics/c/b;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, v1}, Lcom/oppo/statistics/e/b;->e(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Lcom/oppo/statistics/g/h;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/oppo/statistics/e/b;->i(Landroid/content/Context;)Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-static {p1, v0}, Lcom/oppo/statistics/d/b;->b(Landroid/content/Context;Ljava/util/LinkedList;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1, v0}, Lcom/oppo/statistics/c/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, v1}, Lcom/oppo/statistics/e/b;->c(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public c(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Lcom/oppo/statistics/g/h;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/oppo/statistics/e/b;->j(Landroid/content/Context;)Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-static {p1, v0}, Lcom/oppo/statistics/d/b;->c(Landroid/content/Context;Ljava/util/LinkedList;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1, v0}, Lcom/oppo/statistics/c/b;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, v1}, Lcom/oppo/statistics/e/b;->d(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public d(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lcom/oppo/statistics/g/h;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/oppo/statistics/e/b;->h(Landroid/content/Context;)Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p1, v0}, Lcom/oppo/statistics/c/b;->a(Landroid/content/Context;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, v1}, Lcom/oppo/statistics/e/b;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public e(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lcom/oppo/statistics/g/h;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/oppo/statistics/e/b;->g(Landroid/content/Context;)Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p1, v0}, Lcom/oppo/statistics/c/b;->b(Landroid/content/Context;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, v1}, Lcom/oppo/statistics/e/b;->b(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public f(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lcom/oppo/statistics/g/h;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/oppo/statistics/b/e;->a(Landroid/content/Context;)Lcom/oppo/statistics/b/e;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oppo/statistics/c/b;->a(Landroid/content/Context;Lcom/oppo/statistics/b/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oppo/statistics/g/j;->d()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/oppo/statistics/e/d;->a(Landroid/content/Context;J)V

    goto :goto_0
.end method

.method public g(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lcom/oppo/statistics/g/h;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/oppo/statistics/e/b;->l(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/statistics/b/g;

    invoke-static {p1, v0}, Lcom/oppo/statistics/c/b;->a(Landroid/content/Context;Lcom/oppo/statistics/b/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/oppo/statistics/e/b;->m(Landroid/content/Context;)V

    goto :goto_0
.end method
