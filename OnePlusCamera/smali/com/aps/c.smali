.class public Lcom/aps/c;
.super Ljava/lang/Object;
.source "AmapLoc.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:D

.field private c:D

.field private d:F

.field private e:F

.field private f:F

.field private g:J

.field private h:Lcom/amap/api/location/core/AMapLocException;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    .line 15
    iput-object v0, p0, Lcom/aps/c;->a:Ljava/lang/String;

    .line 16
    iput-wide v2, p0, Lcom/aps/c;->b:D

    .line 17
    iput-wide v2, p0, Lcom/aps/c;->c:D

    .line 18
    iput v1, p0, Lcom/aps/c;->d:F

    .line 19
    iput v1, p0, Lcom/aps/c;->e:F

    .line 20
    iput v1, p0, Lcom/aps/c;->f:F

    const-wide/16 v0, 0x0

    .line 21
    iput-wide v0, p0, Lcom/aps/c;->g:J

    .line 22
    new-instance v0, Lcom/amap/api/location/core/AMapLocException;

    invoke-direct {v0}, Lcom/amap/api/location/core/AMapLocException;-><init>()V

    iput-object v0, p0, Lcom/aps/c;->h:Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v0, "new"

    .line 47
    iput-object v0, p0, Lcom/aps/c;->i:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 51
    iput-object v0, p0, Lcom/aps/c;->j:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 52
    iput-object v0, p0, Lcom/aps/c;->k:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 53
    iput-object v0, p0, Lcom/aps/c;->l:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 54
    iput-object v0, p0, Lcom/aps/c;->m:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 55
    iput-object v0, p0, Lcom/aps/c;->n:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 56
    iput-object v0, p0, Lcom/aps/c;->o:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 57
    iput-object v0, p0, Lcom/aps/c;->p:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 58
    iput-object v0, p0, Lcom/aps/c;->q:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 59
    iput-object v0, p0, Lcom/aps/c;->r:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 60
    iput-object v0, p0, Lcom/aps/c;->s:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 61
    iput-object v0, p0, Lcom/aps/c;->t:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 62
    iput-object v0, p0, Lcom/aps/c;->u:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 63
    iput-object v0, p0, Lcom/aps/c;->v:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 64
    iput-object v0, p0, Lcom/aps/c;->w:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 65
    iput-object v0, p0, Lcom/aps/c;->x:Ljava/lang/String;

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/aps/c;->y:Lorg/json/JSONObject;

    .line 98
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    .line 15
    iput-object v0, p0, Lcom/aps/c;->a:Ljava/lang/String;

    .line 16
    iput-wide v2, p0, Lcom/aps/c;->b:D

    .line 17
    iput-wide v2, p0, Lcom/aps/c;->c:D

    .line 18
    iput v1, p0, Lcom/aps/c;->d:F

    .line 19
    iput v1, p0, Lcom/aps/c;->e:F

    .line 20
    iput v1, p0, Lcom/aps/c;->f:F

    const-wide/16 v0, 0x0

    .line 21
    iput-wide v0, p0, Lcom/aps/c;->g:J

    .line 22
    new-instance v0, Lcom/amap/api/location/core/AMapLocException;

    invoke-direct {v0}, Lcom/amap/api/location/core/AMapLocException;-><init>()V

    iput-object v0, p0, Lcom/aps/c;->h:Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v0, "new"

    .line 47
    iput-object v0, p0, Lcom/aps/c;->i:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 51
    iput-object v0, p0, Lcom/aps/c;->j:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 52
    iput-object v0, p0, Lcom/aps/c;->k:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 53
    iput-object v0, p0, Lcom/aps/c;->l:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 54
    iput-object v0, p0, Lcom/aps/c;->m:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 55
    iput-object v0, p0, Lcom/aps/c;->n:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 56
    iput-object v0, p0, Lcom/aps/c;->o:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 57
    iput-object v0, p0, Lcom/aps/c;->p:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 58
    iput-object v0, p0, Lcom/aps/c;->q:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 59
    iput-object v0, p0, Lcom/aps/c;->r:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 60
    iput-object v0, p0, Lcom/aps/c;->s:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 61
    iput-object v0, p0, Lcom/aps/c;->t:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 62
    iput-object v0, p0, Lcom/aps/c;->u:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 63
    iput-object v0, p0, Lcom/aps/c;->v:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 64
    iput-object v0, p0, Lcom/aps/c;->w:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 65
    iput-object v0, p0, Lcom/aps/c;->x:Ljava/lang/String;

    .line 94
    iput-object v4, p0, Lcom/aps/c;->y:Lorg/json/JSONObject;

    .line 102
    if-nez p1, :cond_0

    .line 131
    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-string/jumbo v0, "provider"

    .line 103
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/c;->a:Ljava/lang/String;

    const-string/jumbo v0, "lon"

    .line 104
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aps/c;->b:D

    const-string/jumbo v0, "lat"

    .line 105
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aps/c;->c:D

    const-string/jumbo v0, "accuracy"

    .line 106
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-float v0, v0

    iput v0, p0, Lcom/aps/c;->d:F

    const-string/jumbo v0, "speed"

    .line 107
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-float v0, v0

    iput v0, p0, Lcom/aps/c;->e:F

    const-string/jumbo v0, "bearing"

    .line 108
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-float v0, v0

    iput v0, p0, Lcom/aps/c;->f:F

    const-string/jumbo v0, "time"

    .line 109
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aps/c;->g:J

    const-string/jumbo v0, "type"

    .line 110
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/c;->i:Ljava/lang/String;

    const-string/jumbo v0, "retype"

    .line 111
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/c;->j:Ljava/lang/String;

    const-string/jumbo v0, "citycode"

    .line 112
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/c;->k:Ljava/lang/String;

    const-string/jumbo v0, "desc"

    .line 113
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/c;->l:Ljava/lang/String;

    const-string/jumbo v0, "adcode"

    .line 114
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/c;->m:Ljava/lang/String;

    const-string/jumbo v0, "country"

    .line 115
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/c;->n:Ljava/lang/String;

    const-string/jumbo v0, "province"

    .line 116
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/c;->o:Ljava/lang/String;

    const-string/jumbo v0, "city"

    .line 117
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/c;->p:Ljava/lang/String;

    const-string/jumbo v0, "road"

    .line 118
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/c;->q:Ljava/lang/String;

    const-string/jumbo v0, "street"

    .line 119
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/c;->r:Ljava/lang/String;

    const-string/jumbo v0, "poiname"

    .line 120
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/c;->s:Ljava/lang/String;

    const-string/jumbo v0, "floor"

    .line 121
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/c;->u:Ljava/lang/String;

    const-string/jumbo v0, "poiid"

    .line 122
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/c;->t:Ljava/lang/String;

    const-string/jumbo v0, "coord"

    .line 123
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/c;->v:Ljava/lang/String;

    const-string/jumbo v0, "mcell"

    .line 124
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/c;->w:Ljava/lang/String;

    const-string/jumbo v0, "district"

    .line 125
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/c;->x:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 128
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 129
    invoke-static {v0}, Lcom/aps/t;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public a()Lcom/amap/api/location/core/AMapLocException;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/aps/c;->h:Lcom/amap/api/location/core/AMapLocException;

    return-object v0
.end method

.method public a(D)V
    .locals 1

    .prologue
    .line 146
    iput-wide p1, p0, Lcom/aps/c;->b:D

    .line 147
    return-void
.end method

.method public a(F)V
    .locals 0

    .prologue
    .line 163
    iput p1, p0, Lcom/aps/c;->d:F

    .line 164
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 187
    iput-wide p1, p0, Lcom/aps/c;->g:J

    .line 188
    return-void
.end method

.method public a(Lcom/amap/api/location/core/AMapLocException;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/aps/c;->h:Lcom/amap/api/location/core/AMapLocException;

    .line 29
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/aps/c;->t:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/aps/c;->y:Lorg/json/JSONObject;

    .line 284
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/aps/c;->t:Ljava/lang/String;

    return-object v0
.end method

.method public b(D)V
    .locals 1

    .prologue
    .line 155
    iput-wide p1, p0, Lcom/aps/c;->c:D

    .line 156
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/aps/c;->u:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/aps/c;->u:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/aps/c;->x:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aps/c;->x:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/aps/c;->v:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public e()D
    .locals 2

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/aps/c;->b:D

    return-wide v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/aps/c;->w:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public f()D
    .locals 2

    .prologue
    .line 151
    iget-wide v0, p0, Lcom/aps/c;->c:D

    return-wide v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/aps/c;->a:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public g()F
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/aps/c;->d:F

    return v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/aps/c;->i:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public h()J
    .locals 2

    .prologue
    .line 183
    iget-wide v0, p0, Lcom/aps/c;->g:J

    return-wide v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/aps/c;->j:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/aps/c;->i:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/aps/c;->k:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/aps/c;->j:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/aps/c;->l:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/aps/c;->k:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/aps/c;->m:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/aps/c;->l:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/aps/c;->n:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/aps/c;->m:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/aps/c;->o:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/aps/c;->n:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/aps/c;->p:Ljava/lang/String;

    .line 252
    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/aps/c;->o:Ljava/lang/String;

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/aps/c;->q:Ljava/lang/String;

    .line 260
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/aps/c;->p:Ljava/lang/String;

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/aps/c;->r:Ljava/lang/String;

    .line 268
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/aps/c;->q:Ljava/lang/String;

    return-object v0
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/aps/c;->s:Ljava/lang/String;

    .line 276
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/aps/c;->r:Ljava/lang/String;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/aps/c;->s:Ljava/lang/String;

    return-object v0
.end method

.method public t()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/aps/c;->y:Lorg/json/JSONObject;

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 295
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "provider"

    .line 296
    iget-object v3, p0, Lcom/aps/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "lon"

    .line 297
    iget-wide v4, p0, Lcom/aps/c;->b:D

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v2, "lat"

    .line 298
    iget-wide v4, p0, Lcom/aps/c;->c:D

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v2, "accuracy"

    .line 299
    iget v3, p0, Lcom/aps/c;->d:F

    float-to-double v4, v3

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v2, "speed"

    .line 300
    iget v3, p0, Lcom/aps/c;->e:F

    float-to-double v4, v3

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v2, "bearing"

    .line 301
    iget v3, p0, Lcom/aps/c;->f:F

    float-to-double v4, v3

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v2, "time"

    .line 302
    iget-wide v4, p0, Lcom/aps/c;->g:J

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v2, "type"

    .line 303
    iget-object v3, p0, Lcom/aps/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "retype"

    .line 304
    iget-object v3, p0, Lcom/aps/c;->j:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "citycode"

    .line 305
    iget-object v3, p0, Lcom/aps/c;->k:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "desc"

    .line 306
    iget-object v3, p0, Lcom/aps/c;->l:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "adcode"

    .line 307
    iget-object v3, p0, Lcom/aps/c;->m:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "country"

    .line 308
    iget-object v3, p0, Lcom/aps/c;->n:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "province"

    .line 309
    iget-object v3, p0, Lcom/aps/c;->o:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "city"

    .line 310
    iget-object v3, p0, Lcom/aps/c;->p:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "road"

    .line 311
    iget-object v3, p0, Lcom/aps/c;->q:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "street"

    .line 312
    iget-object v3, p0, Lcom/aps/c;->r:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "poiname"

    .line 313
    iget-object v3, p0, Lcom/aps/c;->s:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "poiid"

    .line 314
    iget-object v3, p0, Lcom/aps/c;->t:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "floor"

    .line 315
    iget-object v3, p0, Lcom/aps/c;->u:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "coord"

    .line 316
    iget-object v3, p0, Lcom/aps/c;->v:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "mcell"

    .line 317
    iget-object v3, p0, Lcom/aps/c;->w:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "district"

    .line 318
    iget-object v3, p0, Lcom/aps/c;->x:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .line 322
    :catch_0
    move-exception v0

    .line 321
    invoke-static {v0}, Lcom/aps/t;->a(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 323
    goto :goto_1
.end method
