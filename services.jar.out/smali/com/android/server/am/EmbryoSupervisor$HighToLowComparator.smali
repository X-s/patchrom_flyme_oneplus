.class public final Lcom/android/server/am/EmbryoSupervisor$HighToLowComparator;
.super Ljava/lang/Object;
.source "EmbryoSupervisor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/EmbryoSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HighToLowComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/am/EmbryoSupervisor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/am/EmbryoSupervisor;Lcom/android/server/am/EmbryoSupervisor;)I
    .locals 4
    .param p1, "lhs"    # Lcom/android/server/am/EmbryoSupervisor;
    .param p2, "rhs"    # Lcom/android/server/am/EmbryoSupervisor;

    .prologue
    .line 193
    invoke-static {p1}, Lcom/android/server/am/EmbryoSupervisor;->-get0(Lcom/android/server/am/EmbryoSupervisor;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 194
    .local v0, "l1":Ljava/lang/Long;
    invoke-static {p2}, Lcom/android/server/am/EmbryoSupervisor;->-get0(Lcom/android/server/am/EmbryoSupervisor;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 195
    .local v1, "l2":Ljava/lang/Long;
    if-ne v0, v1, :cond_0

    .line 196
    invoke-static {p1}, Lcom/android/server/am/EmbryoSupervisor;->-get1(Lcom/android/server/am/EmbryoSupervisor;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 197
    invoke-static {p2}, Lcom/android/server/am/EmbryoSupervisor;->-get1(Lcom/android/server/am/EmbryoSupervisor;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 199
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 192
    check-cast p1, Lcom/android/server/am/EmbryoSupervisor;

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Lcom/android/server/am/EmbryoSupervisor;

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/EmbryoSupervisor$HighToLowComparator;->compare(Lcom/android/server/am/EmbryoSupervisor;Lcom/android/server/am/EmbryoSupervisor;)I

    move-result v0

    return v0
.end method
