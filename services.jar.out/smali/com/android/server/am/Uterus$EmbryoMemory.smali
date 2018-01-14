.class final Lcom/android/server/am/Uterus$EmbryoMemory;
.super Ljava/lang/Object;
.source "Uterus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Uterus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EmbryoMemory"
.end annotation


# instance fields
.field count:I

.field pss:J

.field uss:J


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    iput-wide v0, p0, Lcom/android/server/am/Uterus$EmbryoMemory;->pss:J

    .line 380
    iput-wide v0, p0, Lcom/android/server/am/Uterus$EmbryoMemory;->uss:J

    .line 381
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/Uterus$EmbryoMemory;->count:I

    .line 378
    return-void
.end method


# virtual methods
.method update(Landroid/os/Debug$MemoryInfo;)V
    .locals 4
    .param p1, "mi"    # Landroid/os/Debug$MemoryInfo;

    .prologue
    .line 384
    iget-wide v0, p0, Lcom/android/server/am/Uterus$EmbryoMemory;->pss:J

    invoke-virtual {p1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/Uterus$EmbryoMemory;->pss:J

    .line 385
    iget-wide v0, p0, Lcom/android/server/am/Uterus$EmbryoMemory;->uss:J

    invoke-virtual {p1}, Landroid/os/Debug$MemoryInfo;->getTotalUss()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/Uterus$EmbryoMemory;->uss:J

    .line 386
    iget v0, p0, Lcom/android/server/am/Uterus$EmbryoMemory;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/Uterus$EmbryoMemory;->count:I

    .line 383
    return-void
.end method
