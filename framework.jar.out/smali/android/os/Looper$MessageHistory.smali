.class Landroid/os/Looper$MessageHistory;
.super Ljava/lang/Object;
.source "Looper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Looper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageHistory"
.end annotation


# instance fields
.field msg_callback:Ljava/lang/String;

.field msg_target:Ljava/lang/String;

.field msg_what:I

.field startTime:J

.field takenTime:J


# direct methods
.method public constructor <init>(Landroid/os/Message;J)V
    .locals 2
    .param p1, "_msg"    # Landroid/os/Message;
    .param p2, "start"    # J

    .prologue
    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/Looper$MessageHistory;->takenTime:J

    .line 398
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/Looper$MessageHistory;->startTime:J

    .line 401
    iget v0, p1, Landroid/os/Message;->what:I

    iput v0, p0, Landroid/os/Looper$MessageHistory;->msg_what:I

    .line 402
    iget-object v0, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v0, :cond_0

    const-string/jumbo v0, "null"

    :goto_0
    iput-object v0, p0, Landroid/os/Looper$MessageHistory;->msg_target:Ljava/lang/String;

    .line 403
    iget-object v0, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    const-string/jumbo v0, "null"

    :goto_1
    iput-object v0, p0, Landroid/os/Looper$MessageHistory;->msg_callback:Ljava/lang/String;

    .line 404
    iput-wide p2, p0, Landroid/os/Looper$MessageHistory;->startTime:J

    .line 405
    return-void

    .line 402
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 403
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public setValue(Landroid/os/Message;J)V
    .locals 2
    .param p1, "_msg"    # Landroid/os/Message;
    .param p2, "start"    # J

    .prologue
    .line 408
    iget v0, p1, Landroid/os/Message;->what:I

    iput v0, p0, Landroid/os/Looper$MessageHistory;->msg_what:I

    .line 409
    iget-object v0, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v0, :cond_0

    const-string/jumbo v0, "null"

    :goto_0
    iput-object v0, p0, Landroid/os/Looper$MessageHistory;->msg_target:Ljava/lang/String;

    .line 410
    iget-object v0, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    const-string/jumbo v0, "null"

    :goto_1
    iput-object v0, p0, Landroid/os/Looper$MessageHistory;->msg_callback:Ljava/lang/String;

    .line 411
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/Looper$MessageHistory;->takenTime:J

    .line 412
    iput-wide p2, p0, Landroid/os/Looper$MessageHistory;->startTime:J

    .line 413
    return-void

    .line 409
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 410
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
