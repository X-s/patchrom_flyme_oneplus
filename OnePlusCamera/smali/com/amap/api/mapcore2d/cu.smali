.class public Lcom/amap/api/mapcore2d/cu;
.super Ljava/lang/Object;
.source "SDKInfo.java"


# annotations
.annotation runtime Lcom/amap/api/mapcore2d/di;
    a = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/cu$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/amap/api/mapcore2d/dj;
        a = "a1"
        b = 0x6
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/amap/api/mapcore2d/dj;
        a = "a2"
        b = 0x6
    .end annotation
.end field

.field private c:I
    .annotation runtime Lcom/amap/api/mapcore2d/dj;
        a = "a6"
        b = 0x2
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lcom/amap/api/mapcore2d/dj;
        a = "a3"
        b = 0x6
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lcom/amap/api/mapcore2d/dj;
        a = "a4"
        b = 0x6
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lcom/amap/api/mapcore2d/dj;
        a = "a5"
        b = 0x6
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:[Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 23
    iput v0, p0, Lcom/amap/api/mapcore2d/cu;->c:I

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/amap/api/mapcore2d/cu;->l:[Ljava/lang/String;

    .line 47
    return-void
.end method

.method private constructor <init>(Lcom/amap/api/mapcore2d/cu$a;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v1, p0, Lcom/amap/api/mapcore2d/cu;->c:I

    const/4 v2, 0x0

    .line 43
    iput-object v2, p0, Lcom/amap/api/mapcore2d/cu;->l:[Ljava/lang/String;

    .line 50
    invoke-static {p1}, Lcom/amap/api/mapcore2d/cu$a;->a(Lcom/amap/api/mapcore2d/cu$a;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/mapcore2d/cu;->g:Ljava/lang/String;

    .line 51
    invoke-static {p1}, Lcom/amap/api/mapcore2d/cu$a;->b(Lcom/amap/api/mapcore2d/cu$a;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/mapcore2d/cu;->h:Ljava/lang/String;

    .line 52
    invoke-static {p1}, Lcom/amap/api/mapcore2d/cu$a;->c(Lcom/amap/api/mapcore2d/cu$a;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/mapcore2d/cu;->j:Ljava/lang/String;

    .line 53
    invoke-static {p1}, Lcom/amap/api/mapcore2d/cu$a;->d(Lcom/amap/api/mapcore2d/cu$a;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/mapcore2d/cu;->i:Ljava/lang/String;

    .line 54
    invoke-static {p1}, Lcom/amap/api/mapcore2d/cu$a;->e(Lcom/amap/api/mapcore2d/cu$a;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    iput v0, p0, Lcom/amap/api/mapcore2d/cu;->c:I

    .line 55
    invoke-static {p1}, Lcom/amap/api/mapcore2d/cu$a;->f(Lcom/amap/api/mapcore2d/cu$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/cu;->k:Ljava/lang/String;

    .line 56
    invoke-static {p1}, Lcom/amap/api/mapcore2d/cu$a;->g(Lcom/amap/api/mapcore2d/cu$a;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/cu;->l:[Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cu;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/cu;->b:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cu;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/cu;->a:Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cu;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/cu;->d:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cu;->l:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore2d/cu;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/cu;->e:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cu;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/cu;->f:Ljava/lang/String;

    .line 65
    return-void

    :cond_0
    move v0, v1

    .line 54
    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore2d/cu$a;Lcom/amap/api/mapcore2d/cu$1;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/cu;-><init>(Lcom/amap/api/mapcore2d/cu$a;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 216
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "a1"

    .line 217
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    invoke-static {v0}, Lcom/amap/api/mapcore2d/dh;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a([Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 201
    if-eqz p1, :cond_0

    .line 204
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    .line 208
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 202
    :cond_0
    return-object v5

    .line 205
    :cond_1
    aget-object v3, p1, v0

    .line 206
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 210
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 212
    return-object v5
.end method

.method private b(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    :try_start_0
    const-string/jumbo v0, ";"

    .line 191
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 192
    return-object v0

    :catch_0
    move-exception v0

    .line 194
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    .line 196
    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "a6=1"

    .line 224
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cu;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cu;->j:Ljava/lang/String;

    return-object v0

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cu;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cu;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cv;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/cu;->j:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 134
    if-nez p1, :cond_0

    :goto_0
    iput v0, p0, Lcom/amap/api/mapcore2d/cu;->c:I

    .line 135
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 134
    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cu;->g:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cu;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cu;->h:Ljava/lang/String;

    return-object v0

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cu;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cu;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cv;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/cu;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cu;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cu;->i:Ljava/lang/String;

    return-object v0

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cu;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cu;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cv;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/cu;->i:Ljava/lang/String;

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cu;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cu;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 174
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cu;->k:Ljava/lang/String;

    return-object v0

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cu;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cu;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cv;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/cu;->k:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "standard"

    .line 172
    iput-object v0, p0, Lcom/amap/api/mapcore2d/cu;->k:Ljava/lang/String;

    goto :goto_1
.end method

.method public f()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cu;->l:[Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cu;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cu;->l:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cu;->l:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cu;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cv;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore2d/cu;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/cu;->l:[Ljava/lang/String;

    goto :goto_0
.end method
