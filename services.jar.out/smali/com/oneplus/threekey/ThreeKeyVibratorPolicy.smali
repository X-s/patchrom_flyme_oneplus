.class public Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;
.super Lcom/oem/os/IThreeKeyPolicy$Stub;
.source "ThreeKeyVibratorPolicy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ThreeKeyVibratorPolicy"


# instance fields
.field private DEBUG:Z

.field private mContext:Landroid/content/Context;

.field private mInit:Z

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Lcom/oem/os/IThreeKeyPolicy$Stub;-><init>()V

    .line 12
    iput-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->DEBUG:Z

    .line 15
    iput-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mInit:Z

    .line 18
    iput-object p1, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mContext:Landroid/content/Context;

    .line 19
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mVibrator:Landroid/os/Vibrator;

    .line 17
    return-void
.end method


# virtual methods
.method public setDown()V
    .locals 2

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mInit:Z

    if-eqz v0, :cond_0

    return-void

    .line 39
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ThreeKeyVibratorPolicy"

    const-string/jumbo v1, "set mode ring"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_1
    return-void
.end method

.method public setInitMode(Z)V
    .locals 0
    .param p1, "isInit"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mInit:Z

    .line 43
    return-void
.end method

.method public setMiddle()V
    .locals 4

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mInit:Z

    if-eqz v0, :cond_0

    return-void

    .line 32
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ThreeKeyVibratorPolicy"

    const-string/jumbo v1, "set mode dontdisturb"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 30
    return-void
.end method

.method public setUp()V
    .locals 4

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mInit:Z

    if-eqz v0, :cond_0

    return-void

    .line 25
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ThreeKeyVibratorPolicy"

    const-string/jumbo v1, "set mode slient"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 23
    return-void
.end method
