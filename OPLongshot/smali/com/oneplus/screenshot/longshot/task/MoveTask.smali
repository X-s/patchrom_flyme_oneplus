.class public Lcom/oneplus/screenshot/longshot/task/MoveTask;
.super Landroid/os/AsyncTask;
.source "MoveTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.MoveTask"


# instance fields
.field private mInstrumentation:Landroid/app/Instrumentation;

.field private mListener:Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;

.field private mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V
    .locals 1
    .param p1, "listener"    # Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;
    .param p2, "point"    # Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mListener:Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;

    .line 22
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .line 23
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mInstrumentation:Landroid/app/Instrumentation;

    .line 29
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mListener:Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;

    .line 30
    iput-object p2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .line 31
    return-void
.end method

.method private sendPointerSync(Lcom/oneplus/screenshot/longshot/util/MovePoint;I)V
    .locals 9
    .param p1, "point"    # Lcom/oneplus/screenshot/longshot/util/MovePoint;
    .param p2, "action"    # I

    .prologue
    .line 107
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->getDownTime()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget v4, p1, Lcom/oneplus/screenshot/longshot/util/MovePoint;->x:I

    int-to-float v5, v4

    iget v4, p1, Lcom/oneplus/screenshot/longshot/util/MovePoint;->y:I

    int-to-float v6, v4

    const/4 v7, 0x0

    move v4, p2

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 111
    .local v8, "event":Landroid/view/MotionEvent;
    invoke-virtual {v8}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const v1, 0x10001002

    or-int/2addr v0, v1

    invoke-virtual {v8, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 112
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0, v8}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 113
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 14
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 60
    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->setThreadPriority()V

    .line 62
    :try_start_0
    sget-object v2, Lcom/oneplus/screenshot/longshot/util/Configs;->MOVE_DELAY:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v2}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    sget-boolean v2, Lcom/oneplus/screenshot/longshot/util/Configs;->FORCE_OVER_SCROLL:Z

    if-eqz v2, :cond_0

    .line 88
    :goto_1
    return-object v8

    .line 68
    :cond_0
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v2}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->reset()V

    .line 69
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->setDownTime(J)V

    .line 70
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-direct {p0, v2, v6}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->sendPointerSync(Lcom/oneplus/screenshot/longshot/util/MovePoint;I)V

    .line 72
    :goto_2
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v2}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->canMove()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mListener:Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;

    invoke-interface {v2}, Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;->isOverScroll()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 80
    :cond_1
    aget-object v2, p1, v6

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 81
    .local v1, "keep":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    if-ge v0, v1, :cond_2

    .line 82
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mListener:Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;

    invoke-interface {v2}, Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;->isOverScroll()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 87
    :cond_2
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->sendPointerSync(Lcom/oneplus/screenshot/longshot/util/MovePoint;I)V

    goto :goto_1

    .line 76
    .end local v0    # "i":I
    .end local v1    # "keep":I
    :cond_3
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-direct {p0, v2, v7}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->sendPointerSync(Lcom/oneplus/screenshot/longshot/util/MovePoint;I)V

    .line 77
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v2}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->move()V

    goto :goto_2

    .line 85
    .restart local v0    # "i":I
    .restart local v1    # "keep":I
    :cond_4
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-direct {p0, v2, v7}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->sendPointerSync(Lcom/oneplus/screenshot/longshot/util/MovePoint;I)V

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 63
    .end local v0    # "i":I
    .end local v1    # "keep":I
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 14
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mListener:Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mListener:Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;->onMoveFinished()V

    .line 96
    :cond_0
    return-void
.end method
