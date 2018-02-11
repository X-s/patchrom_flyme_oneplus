.class final Lcom/android/settings_ex/dashboard/DashboardSummary$2;
.super Ljava/lang/Object;
.source "DashboardSummary.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/dashboard/DashboardSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings_exlib/drawer/DashboardCategory;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings_exlib/drawer/DashboardCategory;Lcom/android/settings_exlib/drawer/DashboardCategory;)I
    .locals 2
    .param p1, "lhs"    # Lcom/android/settings_exlib/drawer/DashboardCategory;
    .param p2, "rhs"    # Lcom/android/settings_exlib/drawer/DashboardCategory;

    .prologue
    .line 430
    iget v0, p2, Lcom/android/settings_exlib/drawer/DashboardCategory;->priority:I

    iget v1, p1, Lcom/android/settings_exlib/drawer/DashboardCategory;->priority:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 429
    check-cast p1, Lcom/android/settings_exlib/drawer/DashboardCategory;

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Lcom/android/settings_exlib/drawer/DashboardCategory;

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/dashboard/DashboardSummary$2;->compare(Lcom/android/settings_exlib/drawer/DashboardCategory;Lcom/android/settings_exlib/drawer/DashboardCategory;)I

    move-result v0

    return v0
.end method
