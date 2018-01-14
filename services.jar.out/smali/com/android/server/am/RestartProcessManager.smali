.class public Lcom/android/server/am/RestartProcessManager;
.super Ljava/lang/Object;
.source "RestartProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/RestartProcessManager$DurationComparator;,
        Lcom/android/server/am/RestartProcessManager$LRUComparator;,
        Lcom/android/server/am/RestartProcessManager$PackageRankInfo;,
        Lcom/android/server/am/RestartProcessManager$RankComparator;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "RestartProcessManager"

.field public static sMaxNumber:I


# instance fields
.field private mPackageDuration:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mPackagesInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/RestartProcessManager$PackageRankInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mProcessLaunchTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/16 v0, 0xa

    sput v0, Lcom/android/server/am/RestartProcessManager;->sMaxNumber:I

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RestartProcessManager;->mProcessLaunchTime:Ljava/util/HashMap;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RestartProcessManager;->mPackageDuration:Ljava/util/HashMap;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RestartProcessManager;->mPackagesInfo:Ljava/util/ArrayList;

    .line 11
    return-void
.end method


# virtual methods
.method public canRestart(Ljava/lang/String;)Z
    .locals 18
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 37
    monitor-enter p0

    .line 38
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/RestartProcessManager;->mPackagesInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 40
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/RestartProcessManager;->mPackageDuration:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "pkgName$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 41
    .local v3, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/RestartProcessManager;->mPackageDuration:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 42
    .local v4, "duration":J
    const-wide/16 v6, 0x0

    .line 43
    .local v6, "launchTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/RestartProcessManager;->mProcessLaunchTime:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/RestartProcessManager;->mProcessLaunchTime:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 45
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/RestartProcessManager;->mPackagesInfo:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;-><init>(Ljava/lang/String;JJ)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 37
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "duration":J
    .end local v6    # "launchTime":J
    .end local v9    # "pkgName$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 48
    .restart local v9    # "pkgName$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/RestartProcessManager;->mPackagesInfo:Ljava/util/ArrayList;

    new-instance v14, Lcom/android/server/am/RestartProcessManager$DurationComparator;

    invoke-direct {v14}, Lcom/android/server/am/RestartProcessManager$DurationComparator;-><init>()V

    invoke-static {v2, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 55
    const/4 v12, 0x1

    .line 56
    .local v12, "rank":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/RestartProcessManager;->mPackagesInfo:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "pr$iterator":Ljava/util/Iterator;
    move v13, v12

    .end local v12    # "rank":I
    .local v13, "rank":I
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .line 57
    .local v10, "pr":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    invoke-static {v10}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->-get0(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v2, v14, v16

    if-eqz v2, :cond_8

    .line 58
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "rank":I
    .restart local v12    # "rank":I
    invoke-virtual {v10, v13}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->increaseRank(I)V

    :goto_2
    move v13, v12

    .end local v12    # "rank":I
    .restart local v13    # "rank":I
    goto :goto_1

    .line 61
    .end local v10    # "pr":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/RestartProcessManager;->mPackagesInfo:Ljava/util/ArrayList;

    new-instance v14, Lcom/android/server/am/RestartProcessManager$LRUComparator;

    invoke-direct {v14}, Lcom/android/server/am/RestartProcessManager$LRUComparator;-><init>()V

    invoke-static {v2, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 68
    const/4 v12, 0x1

    .line 69
    .end local v13    # "rank":I
    .restart local v12    # "rank":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/RestartProcessManager;->mPackagesInfo:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v13, v12

    .end local v12    # "rank":I
    .restart local v13    # "rank":I
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .line 70
    .restart local v10    # "pr":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    invoke-static {v10}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->-get1(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v2, v14, v16

    if-eqz v2, :cond_7

    .line 71
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "rank":I
    .restart local v12    # "rank":I
    invoke-virtual {v10, v13}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->increaseRank(I)V

    :goto_4
    move v13, v12

    .end local v12    # "rank":I
    .restart local v13    # "rank":I
    goto :goto_3

    .line 74
    .end local v10    # "pr":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/RestartProcessManager;->mPackagesInfo:Ljava/util/ArrayList;

    new-instance v14, Lcom/android/server/am/RestartProcessManager$RankComparator;

    invoke-direct {v14}, Lcom/android/server/am/RestartProcessManager$RankComparator;-><init>()V

    invoke-static {v2, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 82
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_5
    sget v2, Lcom/android/server/am/RestartProcessManager;->sMaxNumber:I

    if-ge v8, v2, :cond_6

    .line 83
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/RestartProcessManager;->mPackagesInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .line 84
    .restart local v10    # "pr":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    if-eqz v10, :cond_4

    invoke-static {v10}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->-get2(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 85
    const-string/jumbo v2, "RestartProcessManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Process package can restart : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    const/4 v2, 0x1

    monitor-exit p0

    return v2

    .line 87
    :cond_4
    if-nez v10, :cond_5

    .line 88
    :try_start_2
    const-string/jumbo v2, "RestartProcessManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Process package can restart : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    const/4 v2, 0x1

    monitor-exit p0

    return v2

    .line 82
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 92
    .end local v10    # "pr":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    :cond_6
    :try_start_3
    const-string/jumbo v2, "RestartProcessManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Process package can\'t restart : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 93
    const/4 v2, 0x0

    monitor-exit p0

    return v2

    .end local v8    # "i":I
    .restart local v10    # "pr":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    :cond_7
    move v12, v13

    .end local v13    # "rank":I
    .restart local v12    # "rank":I
    goto/16 :goto_4

    .end local v12    # "rank":I
    .restart local v13    # "rank":I
    :cond_8
    move v12, v13

    .end local v13    # "rank":I
    .restart local v12    # "rank":I
    goto/16 :goto_2
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/util/ArrayList;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p2, "whitelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    monitor-enter p0

    .line 99
    :try_start_0
    const-string/jumbo v4, "Current Restart Whitelist : "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "str$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 102
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 98
    .end local v2    # "str":Ljava/lang/String;
    .end local v3    # "str$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 105
    .restart local v3    # "str$iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    const-string/jumbo v4, "Current Restart Rank : "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    const-string/jumbo v4, "Package Name        Last LaunchTime     Foreground Time"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    iget-object v4, p0, Lcom/android/server/am/RestartProcessManager;->mPackagesInfo:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "pr$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .line 109
    .local v0, "pr":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->-get2(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "           "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->-get1(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "     "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->-get0(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v0    # "pr":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    :cond_1
    monitor-exit p0

    .line 97
    return-void
.end method

.method public updateDuration(Ljava/lang/String;J)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 21
    iget-object v1, p0, Lcom/android/server/am/RestartProcessManager;->mPackageDuration:Ljava/util/HashMap;

    monitor-enter v1

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager;->mPackageDuration:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public updateLaunchTime(Ljava/lang/String;J)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 31
    iget-object v1, p0, Lcom/android/server/am/RestartProcessManager;->mProcessLaunchTime:Ljava/util/HashMap;

    monitor-enter v1

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager;->mProcessLaunchTime:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
