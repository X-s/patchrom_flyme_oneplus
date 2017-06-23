.class Lcom/android/server/am/OnePlusProcessManager$SuspendMsgObj;
.super Ljava/lang/Object;
.source "OnePlusProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SuspendMsgObj"
.end annotation


# instance fields
.field app:Lcom/android/server/am/ProcessRecord;

.field rxBytes:J

.field txBytes:J


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessRecord;JJ)V
    .locals 0
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "txBytes"    # J
    .param p4, "rxBytes"    # J

    .prologue
    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 700
    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager$SuspendMsgObj;->app:Lcom/android/server/am/ProcessRecord;

    .line 701
    iput-wide p2, p0, Lcom/android/server/am/OnePlusProcessManager$SuspendMsgObj;->txBytes:J

    .line 702
    iput-wide p4, p0, Lcom/android/server/am/OnePlusProcessManager$SuspendMsgObj;->rxBytes:J

    .line 703
    return-void
.end method
