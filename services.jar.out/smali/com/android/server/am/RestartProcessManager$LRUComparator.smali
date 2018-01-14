.class public final Lcom/android/server/am/RestartProcessManager$LRUComparator;
.super Ljava/lang/Object;
.source "RestartProcessManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/RestartProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LRUComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/am/RestartProcessManager$PackageRankInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)I
    .locals 4
    .param p1, "lhs"    # Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    .param p2, "rhs"    # Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .prologue
    .line 145
    invoke-static {p1}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->-get1(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 146
    .local v0, "l1":Ljava/lang/Long;
    invoke-static {p2}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->-get1(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 147
    .local v1, "l2":Ljava/lang/Long;
    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 144
    check-cast p1, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/RestartProcessManager$LRUComparator;->compare(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)I

    move-result v0

    return v0
.end method
