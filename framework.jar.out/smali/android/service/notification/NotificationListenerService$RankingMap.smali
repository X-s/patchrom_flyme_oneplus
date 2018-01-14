.class public Landroid/service/notification/NotificationListenerService$RankingMap;
.super Ljava/lang/Object;
.source "NotificationListenerService.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/NotificationListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RankingMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/NotificationListenerService$RankingMap$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/service/notification/NotificationListenerService$RankingMap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mImportance:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mImportanceExplanation:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIntercepted:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLocks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mLockedApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOverrideGroupKeys:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

.field private mRanks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSuppressedVisualEffects:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibilityOverrides:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1517
    new-instance v0, Landroid/service/notification/NotificationListenerService$RankingMap$1;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$RankingMap$1;-><init>()V

    sput-object v0, Landroid/service/notification/NotificationListenerService$RankingMap;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1272
    return-void
.end method

.method private constructor <init>(Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 0
    .param p1, "rankingUpdate"    # Landroid/service/notification/NotificationRankingUpdate;

    .prologue
    .line 1286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1287
    iput-object p1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    .line 1286
    return-void
.end method

.method synthetic constructor <init>(Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0
    .param p1, "rankingUpdate"    # Landroid/service/notification/NotificationRankingUpdate;

    .prologue
    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService$RankingMap;-><init>(Landroid/service/notification/NotificationRankingUpdate;)V

    return-void
.end method

.method private buildImportanceExplanationLocked()V
    .locals 5

    .prologue
    .line 1468
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {v3}, Landroid/service/notification/NotificationRankingUpdate;->getImportanceExplanation()Landroid/os/Bundle;

    move-result-object v0

    .line 1469
    .local v0, "explanationBundle":Landroid/os/Bundle;
    new-instance v3, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mImportanceExplanation:Landroid/util/ArrayMap;

    .line 1470
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1471
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mImportanceExplanation:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1467
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private buildImportanceLocked()V
    .locals 6

    .prologue
    .line 1457
    iget-object v4, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {v4}, Landroid/service/notification/NotificationRankingUpdate;->getOrderedKeys()[Ljava/lang/String;

    move-result-object v3

    .line 1458
    .local v3, "orderedKeys":[Ljava/lang/String;
    iget-object v4, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {v4}, Landroid/service/notification/NotificationRankingUpdate;->getImportance()[I

    move-result-object v1

    .line 1459
    .local v1, "importance":[I
    new-instance v4, Landroid/util/ArrayMap;

    array-length v5, v3

    invoke-direct {v4, v5}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v4, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mImportance:Landroid/util/ArrayMap;

    .line 1460
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 1461
    aget-object v2, v3, v0

    .line 1462
    .local v2, "key":Ljava/lang/String;
    iget-object v4, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mImportance:Landroid/util/ArrayMap;

    aget v5, v1, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1460
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1456
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private buildInterceptedSetLocked()V
    .locals 3

    .prologue
    .line 1433
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {v1}, Landroid/service/notification/NotificationRankingUpdate;->getInterceptedKeys()[Ljava/lang/String;

    move-result-object v0

    .line 1434
    .local v0, "dndInterceptedKeys":[Ljava/lang/String;
    new-instance v1, Landroid/util/ArraySet;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mIntercepted:Landroid/util/ArraySet;

    .line 1435
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mIntercepted:Landroid/util/ArraySet;

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1432
    return-void
.end method

.method private buildIsLock()V
    .locals 6

    .prologue
    .line 1487
    iget-object v4, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {v4}, Landroid/service/notification/NotificationRankingUpdate;->getOrderedKeys()[Ljava/lang/String;

    move-result-object v3

    .line 1488
    .local v3, "orderedKeys":[Ljava/lang/String;
    iget-object v4, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {v4}, Landroid/service/notification/NotificationRankingUpdate;->getIsLock()[Z

    move-result-object v1

    .line 1489
    .local v1, "isLock":[Z
    new-instance v4, Landroid/util/ArrayMap;

    array-length v5, v3

    invoke-direct {v4, v5}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v4, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mIsLocks:Landroid/util/ArrayMap;

    .line 1490
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 1491
    aget-object v2, v3, v0

    .line 1492
    .local v2, "key":Ljava/lang/String;
    iget-object v4, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mIsLocks:Landroid/util/ArrayMap;

    aget-boolean v5, v1, v0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1490
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1486
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private buildLockedApps()V
    .locals 4

    .prologue
    .line 1498
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {v2}, Landroid/service/notification/NotificationRankingUpdate;->getLockedApps()[Ljava/lang/String;

    move-result-object v1

    .line 1499
    .local v1, "lockedApps":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mLockedApps:Ljava/util/List;

    .line 1500
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1501
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mLockedApps:Ljava/util/List;

    aget-object v3, v1, v0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1500
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1497
    :cond_0
    return-void
.end method

.method private buildOverrideGroupKeys()V
    .locals 5

    .prologue
    .line 1477
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {v3}, Landroid/service/notification/NotificationRankingUpdate;->getOverrideGroupKeys()Landroid/os/Bundle;

    move-result-object v2

    .line 1478
    .local v2, "overrideGroupKeys":Landroid/os/Bundle;
    new-instance v3, Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mOverrideGroupKeys:Landroid/util/ArrayMap;

    .line 1479
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1480
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mOverrideGroupKeys:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1476
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private buildRanksLocked()V
    .locals 5

    .prologue
    .line 1423
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {v3}, Landroid/service/notification/NotificationRankingUpdate;->getOrderedKeys()[Ljava/lang/String;

    move-result-object v2

    .line 1424
    .local v2, "orderedKeys":[Ljava/lang/String;
    new-instance v3, Landroid/util/ArrayMap;

    array-length v4, v2

    invoke-direct {v3, v4}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRanks:Landroid/util/ArrayMap;

    .line 1425
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 1426
    aget-object v1, v2, v0

    .line 1427
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRanks:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1425
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1422
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private buildSuppressedVisualEffectsLocked()V
    .locals 5

    .prologue
    .line 1449
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {v3}, Landroid/service/notification/NotificationRankingUpdate;->getSuppressedVisualEffects()Landroid/os/Bundle;

    move-result-object v2

    .line 1450
    .local v2, "suppressedBundle":Landroid/os/Bundle;
    new-instance v3, Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mSuppressedVisualEffects:Landroid/util/ArrayMap;

    .line 1451
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1452
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mSuppressedVisualEffects:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1448
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private buildVisibilityOverridesLocked()V
    .locals 5

    .prologue
    .line 1440
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {v3}, Landroid/service/notification/NotificationRankingUpdate;->getVisibilityOverrides()Landroid/os/Bundle;

    move-result-object v2

    .line 1441
    .local v2, "visibilityBundle":Landroid/os/Bundle;
    new-instance v3, Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mVisibilityOverrides:Landroid/util/ArrayMap;

    .line 1442
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1443
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mVisibilityOverrides:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1439
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private getImportance(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1361
    monitor-enter p0

    .line 1362
    :try_start_0
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mImportance:Landroid/util/ArrayMap;

    if-nez v1, :cond_0

    .line 1363
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService$RankingMap;->buildImportanceLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 1366
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mImportance:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1367
    .local v0, "importance":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 1368
    const/4 v1, 0x3

    return v1

    .line 1361
    .end local v0    # "importance":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1370
    .restart local v0    # "importance":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private getImportanceExplanation(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1374
    monitor-enter p0

    .line 1375
    :try_start_0
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mImportanceExplanation:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 1376
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService$RankingMap;->buildImportanceExplanationLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 1379
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mImportanceExplanation:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1374
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getIsLock(Ljava/lang/String;)Z
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1393
    monitor-enter p0

    .line 1394
    :try_start_0
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mIsLocks:Landroid/util/ArrayMap;

    if-nez v2, :cond_0

    .line 1395
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService$RankingMap;->buildIsLock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 1398
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mIsLocks:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1399
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mIsLocks:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 1393
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1402
    :cond_1
    monitor-enter p0

    .line 1403
    :try_start_1
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mLockedApps:Ljava/util/List;

    if-nez v2, :cond_2

    .line 1404
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService$RankingMap;->buildLockedApps()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    monitor-exit p0

    .line 1407
    const-string/jumbo v2, "[|]"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1408
    .local v0, "split":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x5

    if-lt v2, v3, :cond_4

    .line 1409
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v0, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1410
    .local v1, "str":Ljava/lang/String;
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mLockedApps:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1411
    return v5

    .line 1402
    .end local v0    # "split":[Ljava/lang/String;
    .end local v1    # "str":Ljava/lang/String;
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1413
    .restart local v0    # "split":[Ljava/lang/String;
    .restart local v1    # "str":Ljava/lang/String;
    :cond_3
    return v4

    .line 1416
    .end local v1    # "str":Ljava/lang/String;
    :cond_4
    return v4
.end method

.method private getOverrideGroupKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1383
    monitor-enter p0

    .line 1384
    :try_start_0
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mOverrideGroupKeys:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 1385
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService$RankingMap;->buildOverrideGroupKeys()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 1388
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mOverrideGroupKeys:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1383
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getRank(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1316
    monitor-enter p0

    .line 1317
    :try_start_0
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRanks:Landroid/util/ArrayMap;

    if-nez v1, :cond_0

    .line 1318
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService$RankingMap;->buildRanksLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 1321
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRanks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1322
    .local v0, "rank":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1

    .line 1316
    .end local v0    # "rank":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1322
    .restart local v0    # "rank":Ljava/lang/Integer;
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private getSuppressedVisualEffects(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1348
    monitor-enter p0

    .line 1349
    :try_start_0
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mSuppressedVisualEffects:Landroid/util/ArrayMap;

    if-nez v1, :cond_0

    .line 1350
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService$RankingMap;->buildSuppressedVisualEffectsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 1353
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mSuppressedVisualEffects:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1354
    .local v0, "suppressed":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 1355
    const/4 v1, 0x0

    return v1

    .line 1348
    .end local v0    # "suppressed":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1357
    .restart local v0    # "suppressed":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private getVisibilityOverride(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1335
    monitor-enter p0

    .line 1336
    :try_start_0
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mVisibilityOverrides:Landroid/util/ArrayMap;

    if-nez v1, :cond_0

    .line 1337
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService$RankingMap;->buildVisibilityOverridesLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 1340
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mVisibilityOverrides:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1341
    .local v0, "override":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 1342
    const/16 v1, -0x3e8

    return v1

    .line 1335
    .end local v0    # "override":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1344
    .restart local v0    # "override":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private isIntercepted(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1326
    monitor-enter p0

    .line 1327
    :try_start_0
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mIntercepted:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    .line 1328
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService$RankingMap;->buildInterceptedSetLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 1331
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mIntercepted:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1326
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1509
    const/4 v0, 0x0

    return v0
.end method

.method public getOrderedKeys()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1297
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {v0}, Landroid/service/notification/NotificationRankingUpdate;->getOrderedKeys()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z
    .locals 12
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "outRanking"    # Landroid/service/notification/NotificationListenerService$Ranking;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1308
    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRank(Ljava/lang/String;)I

    move-result v2

    .line 1309
    .local v2, "rank":I
    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->isIntercepted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v3, v10

    .line 1310
    :goto_0
    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getVisibilityOverride(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getSuppressedVisualEffects(Ljava/lang/String;)I

    move-result v5

    .line 1311
    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getImportance(Ljava/lang/String;)I

    move-result v6

    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getImportanceExplanation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getOverrideGroupKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getIsLock(Ljava/lang/String;)Z

    move-result v9

    move-object v0, p2

    move-object v1, p1

    .line 1309
    invoke-static/range {v0 .. v9}, Landroid/service/notification/NotificationListenerService$Ranking;->-wrap0(Landroid/service/notification/NotificationListenerService$Ranking;Ljava/lang/String;IZIIILjava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 1312
    if-ltz v2, :cond_1

    :goto_1
    return v11

    :cond_0
    move v3, v11

    .line 1309
    goto :goto_0

    :cond_1
    move v11, v10

    .line 1312
    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1514
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1513
    return-void
.end method
