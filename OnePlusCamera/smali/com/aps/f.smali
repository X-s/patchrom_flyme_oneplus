.class public Lcom/aps/f;
.super Ljava/lang/Object;
.source "Const.java"


# static fields
.field static a:Ljava/lang/String;

.field static b:Ljava/lang/String;

.field static c:Ljava/lang/String;

.field static d:Ljava/lang/String;

.field static e:Ljava/lang/String;

.field static f:Ljava/lang/String;

.field static g:Z

.field static h:Z

.field static i:J

.field static j:J

.field static k:Z

.field static final l:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final m:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 118
    sput-object v0, Lcom/aps/f;->a:Ljava/lang/String;

    .line 122
    sput-object v0, Lcom/aps/f;->b:Ljava/lang/String;

    .line 126
    sput-object v0, Lcom/aps/f;->c:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 130
    sput-object v0, Lcom/aps/f;->d:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 137
    sput-object v0, Lcom/aps/f;->e:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 144
    sput-object v0, Lcom/aps/f;->f:Ljava/lang/String;

    .line 167
    sput-boolean v4, Lcom/aps/f;->g:Z

    .line 199
    sput-boolean v3, Lcom/aps/f;->h:Z

    const-wide/16 v0, 0x2710

    .line 256
    sput-wide v0, Lcom/aps/f;->i:J

    const-wide/16 v0, 0x7530

    .line 264
    sput-wide v0, Lcom/aps/f;->j:J

    .line 272
    sput-boolean v3, Lcom/aps/f;->k:Z

    .line 392
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/aps/f;->l:Landroid/util/SparseArray;

    .line 394
    sget-object v0, Lcom/aps/f;->l:Landroid/util/SparseArray;

    const-string/jumbo v1, "UNKNOWN"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 395
    sget-object v0, Lcom/aps/f;->l:Landroid/util/SparseArray;

    const-string/jumbo v1, "GPRS"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 396
    sget-object v0, Lcom/aps/f;->l:Landroid/util/SparseArray;

    const-string/jumbo v1, "EDGE"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 397
    sget-object v0, Lcom/aps/f;->l:Landroid/util/SparseArray;

    const-string/jumbo v1, "UMTS"

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 398
    sget-object v0, Lcom/aps/f;->l:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string/jumbo v2, "CDMA"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 399
    sget-object v0, Lcom/aps/f;->l:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const-string/jumbo v2, "EVDO_0"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 400
    sget-object v0, Lcom/aps/f;->l:Landroid/util/SparseArray;

    const/4 v1, 0x6

    const-string/jumbo v2, "EVDO_A"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 401
    sget-object v0, Lcom/aps/f;->l:Landroid/util/SparseArray;

    const/4 v1, 0x7

    const-string/jumbo v2, "1xRTT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 402
    sget-object v0, Lcom/aps/f;->l:Landroid/util/SparseArray;

    const/16 v1, 0x8

    const-string/jumbo v2, "HSDPA"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 403
    sget-object v0, Lcom/aps/f;->l:Landroid/util/SparseArray;

    const/16 v1, 0x9

    const-string/jumbo v2, "HSUPA"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 404
    sget-object v0, Lcom/aps/f;->l:Landroid/util/SparseArray;

    const/16 v1, 0xa

    const-string/jumbo v2, "HSPA"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 405
    sget-object v0, Lcom/aps/f;->l:Landroid/util/SparseArray;

    const/16 v1, 0xb

    const-string/jumbo v2, "IDEN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 406
    sget-object v0, Lcom/aps/f;->l:Landroid/util/SparseArray;

    const/16 v1, 0xc

    const-string/jumbo v2, "EVDO_B"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 407
    sget-object v0, Lcom/aps/f;->l:Landroid/util/SparseArray;

    const/16 v1, 0xd

    const-string/jumbo v2, "LTE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 408
    sget-object v0, Lcom/aps/f;->l:Landroid/util/SparseArray;

    const/16 v1, 0xe

    const-string/jumbo v2, "EHRPD"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 409
    sget-object v0, Lcom/aps/f;->l:Landroid/util/SparseArray;

    const/16 v1, 0xf

    const-string/jumbo v2, "HSPAP"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v0, 0x9

    .line 414
    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v1, v0, v4

    const-string/jumbo v1, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v1, v0, v3

    const-string/jumbo v1, "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

    aput-object v1, v0, v5

    const-string/jumbo v1, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string/jumbo v2, "android.permission.ACCESS_WIFI_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "android.permission.CHANGE_WIFI_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "android.permission.INTERNET"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/aps/f;->m:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 132
    sput-object p0, Lcom/aps/f;->d:Ljava/lang/String;

    .line 133
    return-void
.end method

.method static a(Z)V
    .locals 0

    .prologue
    .line 170
    sput-boolean p0, Lcom/aps/f;->g:Z

    .line 171
    return-void
.end method

.method static b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 139
    sput-object p0, Lcom/aps/f;->e:Ljava/lang/String;

    .line 140
    return-void
.end method

.method static c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 146
    sput-object p0, Lcom/aps/f;->f:Ljava/lang/String;

    .line 147
    return-void
.end method
