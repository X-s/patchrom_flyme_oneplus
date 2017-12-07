.class Landroid/os/RecoverySystem$2$1;
.super Ljava/lang/Object;
.source "RecoverySystem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/RecoverySystem$2;->onProgress(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/os/RecoverySystem$2;

.field final synthetic val$listener:Landroid/os/RecoverySystem$ProgressListener;

.field final synthetic val$now:J

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Landroid/os/RecoverySystem$2;IJLandroid/os/RecoverySystem$ProgressListener;)V
    .locals 1
    .param p1, "this$1"    # Landroid/os/RecoverySystem$2;
    .param p2, "val$progress"    # I
    .param p3, "val$now"    # J
    .param p5, "val$listener"    # Landroid/os/RecoverySystem$ProgressListener;

    .prologue
    .line 392
    iput-object p1, p0, Landroid/os/RecoverySystem$2$1;->this$1:Landroid/os/RecoverySystem$2;

    iput p2, p0, Landroid/os/RecoverySystem$2$1;->val$progress:I

    iput-wide p3, p0, Landroid/os/RecoverySystem$2$1;->val$now:J

    iput-object p5, p0, Landroid/os/RecoverySystem$2$1;->val$listener:Landroid/os/RecoverySystem$ProgressListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0x64

    .line 397
    iget v0, p0, Landroid/os/RecoverySystem$2$1;->val$progress:I

    iget-object v1, p0, Landroid/os/RecoverySystem$2$1;->this$1:Landroid/os/RecoverySystem$2;

    iget v1, v1, Landroid/os/RecoverySystem$2;->lastProgress:I

    if-le v0, v1, :cond_2

    .line 398
    iget-wide v0, p0, Landroid/os/RecoverySystem$2$1;->val$now:J

    iget-object v2, p0, Landroid/os/RecoverySystem$2$1;->this$1:Landroid/os/RecoverySystem$2;

    iget-wide v2, v2, Landroid/os/RecoverySystem$2;->lastPublishTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 399
    :goto_0
    iget v0, p0, Landroid/os/RecoverySystem$2$1;->val$progress:I

    if-ne v0, v4, :cond_0

    .line 400
    const-string/jumbo v0, "RecoverySystem"

    const-string/jumbo v1, "100% complete process the ota package , notify the result"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_0
    iget-object v0, p0, Landroid/os/RecoverySystem$2$1;->this$1:Landroid/os/RecoverySystem$2;

    iget v1, p0, Landroid/os/RecoverySystem$2$1;->val$progress:I

    iput v1, v0, Landroid/os/RecoverySystem$2;->lastProgress:I

    .line 404
    iget-object v0, p0, Landroid/os/RecoverySystem$2$1;->this$1:Landroid/os/RecoverySystem$2;

    iget-wide v2, p0, Landroid/os/RecoverySystem$2$1;->val$now:J

    iput-wide v2, v0, Landroid/os/RecoverySystem$2;->lastPublishTime:J

    .line 405
    iget-object v0, p0, Landroid/os/RecoverySystem$2$1;->val$listener:Landroid/os/RecoverySystem$ProgressListener;

    iget v1, p0, Landroid/os/RecoverySystem$2$1;->val$progress:I

    invoke-interface {v0, v1}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V

    .line 394
    :cond_1
    return-void

    .line 398
    :cond_2
    iget v0, p0, Landroid/os/RecoverySystem$2$1;->val$progress:I

    if-ne v0, v4, :cond_1

    goto :goto_0
.end method
