.class Lcom/android/server/am/ActivityManagerService$26;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->getBgPowerHungryList()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/app/ActivityManager$HighPowerApp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    .prologue
    .line 21036
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$26;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/app/ActivityManager$HighPowerApp;Landroid/app/ActivityManager$HighPowerApp;)I
    .locals 4
    .param p1, "lhs"    # Landroid/app/ActivityManager$HighPowerApp;
    .param p2, "rhs"    # Landroid/app/ActivityManager$HighPowerApp;

    .prologue
    .line 21039
    iget-wide v0, p1, Landroid/app/ActivityManager$HighPowerApp;->timeStamp:J

    iget-wide v2, p2, Landroid/app/ActivityManager$HighPowerApp;->timeStamp:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 21040
    const/4 v0, 0x1

    .line 21044
    :goto_0
    return v0

    .line 21041
    :cond_0
    iget-wide v0, p1, Landroid/app/ActivityManager$HighPowerApp;->timeStamp:J

    iget-wide v2, p2, Landroid/app/ActivityManager$HighPowerApp;->timeStamp:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 21042
    const/4 v0, -0x1

    goto :goto_0

    .line 21044
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 21036
    check-cast p1, Landroid/app/ActivityManager$HighPowerApp;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/app/ActivityManager$HighPowerApp;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService$26;->compare(Landroid/app/ActivityManager$HighPowerApp;Landroid/app/ActivityManager$HighPowerApp;)I

    move-result v0

    return v0
.end method
