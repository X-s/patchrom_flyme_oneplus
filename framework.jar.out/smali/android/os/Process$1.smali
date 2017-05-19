.class final Landroid/os/Process$1;
.super Ljava/lang/Object;
.source "Process.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/Process;->killProcessGroup(II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$pid:I

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .prologue
    .line 1219
    iput p1, p0, Landroid/os/Process$1;->val$uid:I

    iput p2, p0, Landroid/os/Process$1;->val$pid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1222
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1223
    .local v2, "now":J
    iget v4, p0, Landroid/os/Process$1;->val$uid:I

    iget v5, p0, Landroid/os/Process$1;->val$pid:I

    # invokes: Landroid/os/Process;->killProcessGroupLegacy(II)I
    invoke-static {v4, v5}, Landroid/os/Process;->access$100(II)I

    .line 1224
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1230
    .local v0, "end":J
    return-void
.end method
