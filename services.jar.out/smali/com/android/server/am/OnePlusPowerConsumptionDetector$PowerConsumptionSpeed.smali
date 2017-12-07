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

    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->simplifyToString:Z

    .line 479
    iput-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->uid:Ljava/lang/Integer;

    .line 480
    iput-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->drainType:Ljava/lang/String;

    .line 481
    iput-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->pkgName:Ljava/lang/String;

    .line 482
    iput-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->pkgNames:[Ljava/lang/String;

    .line 483
    iput-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->diffMah:D

    .line 484
    iput-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->percent:D

    .line 485
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->diffTime:J

    .line 487
    iput-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->cpuPowerMah:D

    .line 488
    iput-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->wakeLockPowerMah:D

    .line 489
    iput-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->mobileRadioPowerMah:D

    .line 490
    iput-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->wifiPowerMah:D

    .line 491
    iput-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->gpsPowerMah:D

    .line 492
    iput-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->sensorPowerMah:D

    .line 493
    iput-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->cameraPowerMah:D

    .line 494
    iput-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->flashlightPowerMah:D

    .line 497
    iput-object p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->uid:Ljava/lang/Integer;

    .line 498
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->initDrainType()V

    .line 496
    return-void
.end method

.method private formatStringArray([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "strArray"    # [Ljava/lang/String;

    .prologue
    .line 563
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 565
    .local v1, "sb":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    array-length v2, p1

    if-lez v2, :cond_0

    .line 566
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 567
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 570
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private initDrainType()V
    .locals 2

    .prologue
    .line 502
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

    .line 503
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->uid:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-wrap2(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->drainType:Ljava/lang/String;

    .line 504
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->drainType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->pkgName:Ljava/lang/String;

    .line 501
    :goto_0
    return-void

    .line 506
    :cond_0
    const-string/jumbo v0, "app"

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->drainType:Ljava/lang/String;

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "app_"

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
    .line 524
    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->diffMah:D

    iget-wide v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->diffMah:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 525
    const/4 v0, -0x1

    return v0

    .line 526
    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->diffMah:D

    iget-wide v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->diffMah:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 527
    const/4 v0, 0x1

    return v0

    .line 529
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "another"    # Ljava/lang/Object;

    .prologue
    .line 523
    check-cast p1, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;

    .end local p1    # "another":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->compareTo(Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;)I

    move-result v0

    return v0
.end method

.method public getItemDetails()Ljava/lang/String;
    .locals 4

    .prologue
    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 549
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "(cpu:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->cpuPowerMah:D

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->formatDouble(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    const-string/jumbo v1, ",wake:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->wakeLockPowerMah:D

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->formatDouble(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    const-string/jumbo v1, ",radio:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->mobileRadioPowerMah:D

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->formatDouble(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    const-string/jumbo v1, ",wifi:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->wifiPowerMah:D

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->formatDouble(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    const-string/jumbo v1, ",gps:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->gpsPowerMah:D

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->formatDouble(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    const-string/jumbo v1, ",sensor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->sensorPowerMah:D

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->formatDouble(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    const-string/jumbo v1, ",camera:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->cameraPowerMah:D

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->formatDouble(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    const-string/jumbo v1, ",flash:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->flashlightPowerMah:D

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->formatDouble(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public initPkgNameByUid()V
    .locals 2

    .prologue
    .line 512
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

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 515
    :cond_1
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get1()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->uid:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->pkgNames:[Ljava/lang/String;

    .line 516
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->pkgNames:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->pkgNames:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 517
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->pkgNames:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->pkgName:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 577
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "PowerConsumptionSpeed{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    const-string/jumbo v1, "uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->uid:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 582
    const-string/jumbo v1, ",drainType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->drainType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    const-string/jumbo v1, ",pkgName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
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

    .line 588
    const-string/jumbo v1, ",pkgNames:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->pkgNames:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->formatStringArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    :cond_0
    const-string/jumbo v1, ",diffMah:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->diffMah:D

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    const-string/jumbo v1, ",percent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v2, "%.3f"

    new-array v3, v4, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->percent:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    const-string/jumbo v1, ",diffTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->diffTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 599
    const-string/jumbo v1, ",detail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->getItemDetails()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updatePowerItems(Lcom/android/internal/os/BatterySipper;)V
    .locals 2
    .param p1, "newSipper"    # Lcom/android/internal/os/BatterySipper;

    .prologue
    .line 533
    if-eqz p1, :cond_0

    .line 534
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->cpuPowerMah:D

    .line 535
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->wakeLockPowerMah:D

    .line 536
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->mobileRadioPowerMah:D

    .line 537
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->wifiPowerMah:D

    .line 538
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->gpsPowerMah:D

    .line 539
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->sensorPowerMah:D

    .line 540
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->cameraPowerMah:D

    .line 541
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->flashlightPowerMah:D

    .line 542
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->diffMah:D

    .line 532
    :cond_0
    return-void
.end method
