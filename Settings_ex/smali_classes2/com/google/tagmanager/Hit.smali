.class Lcom/google/tagmanager/Hit;
.super Ljava/lang/Object;
.source "Hit.java"


# instance fields
.field private final mHitFirstDispatchTime:J

.field private final mHitId:J

.field private final mHitTime:J

.field private mHitUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(JJ)V
    .locals 3

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide p1, p0, Lcom/google/tagmanager/Hit;->mHitId:J

    .line 37
    iput-wide p3, p0, Lcom/google/tagmanager/Hit;->mHitTime:J

    const-wide/16 v0, 0x0

    .line 38
    iput-wide v0, p0, Lcom/google/tagmanager/Hit;->mHitFirstDispatchTime:J

    .line 39
    return-void
.end method

.method constructor <init>(JJJ)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-wide p1, p0, Lcom/google/tagmanager/Hit;->mHitId:J

    .line 31
    iput-wide p3, p0, Lcom/google/tagmanager/Hit;->mHitTime:J

    .line 32
    iput-wide p5, p0, Lcom/google/tagmanager/Hit;->mHitFirstDispatchTime:J

    .line 33
    return-void
.end method


# virtual methods
.method getHitFirstDispatchTime()J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/google/tagmanager/Hit;->mHitFirstDispatchTime:J

    return-wide v0
.end method

.method getHitId()J
    .locals 2

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/google/tagmanager/Hit;->mHitId:J

    return-wide v0
.end method

.method getHitTime()J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/google/tagmanager/Hit;->mHitTime:J

    return-wide v0
.end method

.method getHitUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/tagmanager/Hit;->mHitUrl:Ljava/lang/String;

    return-object v0
.end method

.method setHitUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 52
    if-nez p1, :cond_1

    .line 53
    :cond_0
    return-void

    .line 52
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iput-object p1, p0, Lcom/google/tagmanager/Hit;->mHitUrl:Ljava/lang/String;

    .line 56
    return-void
.end method
