.class Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;
.super Ljava/lang/Object;
.source "OnePlusPowerConsumptionDetector.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusPowerConsumptionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PowerConsumptionSpeed"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;",
        ">;"
    }
.end annotation


# instance fields
.field public cameraPowerMah:D

.field public cpuPowerMah:D

.field public diffMah:D

.field public diffTime:J

.field public drainType:Ljava/lang/String;

.field public flashlightPowerMah:D

.field public gpsPowerMah:D

.field public mobileRadioPowerMah:D

.field public percent:D

.field public pkgName:Ljava/lang/String;

.field public pkgNames:[Ljava/lang/String;

.field public sensorPowerMah:D

.field public simplifyToString:Z

.field public uid:Ljava/lang/Integer;

.field public wakeLockPowerMah:D

.field public wifiPowerMah:D


# direct methods
.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "_uid"    # Ljava/lang/Integer;

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->simplifyToString:Z

    .line 431
    iput-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->uid:Ljava/lang/Integer;

    .line 432
    iput-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->drainType:Ljava/lang/String;

    .line 433
    iput-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->pkgName:Ljava/lang/String;

    .line 434
    iput-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->pkgNames:[Ljava/lang/String;

    .line 435
    iput-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->diffMah:D

    .line 436
    iput-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->percent:D

    .line 437
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->diffTime:J

    .line 439
    iput-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->cpuPowerMah:D

    .line 440
    iput-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->wakeLockPowerMah:D

    .line 441
    iput-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->mobileRadioPowerMah:D

    .line 442
    iput-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->wifiPowerMah:D

    .line 443
    iput-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->gpsPowerMah:D

    .line 444
    iput-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->sensorPowerMah:D

    .line 445
    iput-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->cameraPowerMah:D

    .line 446
    iput-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->flashlightPowerMah:D

    .line 449
    iput-object p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->uid:Ljava/lang/Integer;

    .line 450
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->initDrainType()V

    .line 451
    return-void
.end method

.method private formatStringArray([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "strArray"    # [Ljava/lang/String;

    .prologue
    .line 514
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 516
    .local v1, "sb":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    array-length v2, p1

    if-lez v2, :cond_0

    .line 517
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 518
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 521
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private initDrainType()V
    .locals 2

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->uid:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, -0x56

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->uid:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, -0x64

    if-le v0, v1, :cond_0

    .line 455
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->uid:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionDetector;->getDrainTypeByFakeUid(I)Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$100(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->drainType:Ljava/lang/String;

    .line 456
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->drainType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->pkgName:Ljava/lang/String;

    .line 461
    :goto_0
    return-void

    .line 458
    :cond_0
    const-string v0, "app"

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->drainType:Ljava/lang/String;

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->uid:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->pkgName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;)I
    .locals 4
    .param p1, "another"    # Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;

    .prologue
    .line 476
    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->diffMah:D

    iget-wide v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->diffMah:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 477
    const/4 v0, -0x1

    .line 481
    :goto_0
    return v0

    .line 478
    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->diffMah:D

    iget-wide v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->diffMah:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 479
    const/4 v0, 0x1

    goto :goto_0

    .line 481
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 429
    check-cast p1, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->compareTo(Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;)I

    move-result v0

    return v0
.end method

.method public getItemDetails()Ljava/lang/String;
    .locals 4

    .prologue
    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 500
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "(cpu:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->cpuPowerMah:D

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->formatDouble(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    const-string v1, ",wake:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->wakeLockPowerMah:D

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->formatDouble(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    const-string v1, ",radio:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->mobileRadioPowerMah:D

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->formatDouble(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    const-string v1, ",wifi:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->wifiPowerMah:D

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->formatDouble(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    const-string v1, ",gps:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->gpsPowerMah:D

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->formatDouble(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    const-string v1, ",sensor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->sensorPowerMah:D

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->formatDouble(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    const-string v1, ",camera:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->cameraPowerMah:D

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->formatDouble(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    const-string v1, ",flash:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->flashlightPowerMah:D

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->formatDouble(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public initPkgNameByUid()V
    .locals 2

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->uid:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, -0x56

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->uid:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, -0x64

    if-le v0, v1, :cond_1

    .line 472
    :cond_0
    :goto_0
    return-void

    .line 467
    :cond_1
    # getter for: Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$200()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->uid:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->pkgNames:[Ljava/lang/String;

    .line 468
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->pkgNames:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->pkgNames:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 469
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->pkgNames:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->pkgName:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 528
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "PowerConsumptionSpeed{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    const-string v1, "uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->uid:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 533
    const-string v1, ",drainType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->drainType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    const-string v1, ",pkgName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->uid:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->pkgNames:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->pkgNames:[Ljava/lang/String;

    array-length v1, v1

    if-le v1, v4, :cond_0

    .line 539
    const-string v1, ",pkgNames:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->pkgNames:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->formatStringArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    :cond_0
    const-string v1, ",diffMah:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->diffMah:D

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    const-string v1, ",percent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "%.3f"

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v6, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->percent:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    const-string v1, ",diffTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->diffTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 550
    const-string v1, ",detail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->getItemDetails()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updatePowerItems(Lcom/android/internal/os/BatterySipper;)V
    .locals 2
    .param p1, "newSipper"    # Lcom/android/internal/os/BatterySipper;

    .prologue
    .line 485
    if-eqz p1, :cond_0

    .line 486
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->cpuPowerMah:D

    .line 487
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->wakeLockPowerMah:D

    .line 488
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->mobileRadioPowerMah:D

    .line 489
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->wifiPowerMah:D

    .line 490
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->gpsPowerMah:D

    .line 491
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->sensorPowerMah:D

    .line 492
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->cameraPowerMah:D

    .line 493
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->flashlightPowerMah:D

    .line 495
    :cond_0
    return-void
.end method
