.class Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge$1;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;


# direct methods
.method constructor <init>(Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;)V
    .locals 0

    .prologue
    .line 1097
    iput-object p1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge$1;->this$1:Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1101
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge$1;->this$1:Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;

    iget-object v1, v1, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    # getter for: Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/policy/WindowOrientationListener;->access$000(Lcom/android/server/policy/WindowOrientationListener;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1102
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge$1;->this$1:Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluationScheduled:Z
    invoke-static {v1, v3}, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->access$402(Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;Z)Z

    .line 1103
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge$1;->this$1:Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;

    invoke-virtual {v1}, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->evaluateRotationChangeLocked()I

    move-result v0

    .line 1104
    .local v0, "newRotation":I
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1105
    if-ltz v0, :cond_0

    .line 1106
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge$1;->this$1:Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;

    iget-object v1, v1, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    invoke-virtual {v1, v0}, Lcom/android/server/policy/WindowOrientationListener;->onProposedRotationChanged(I)V

    .line 1108
    :cond_0
    return-void

    .line 1104
    .end local v0    # "newRotation":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
