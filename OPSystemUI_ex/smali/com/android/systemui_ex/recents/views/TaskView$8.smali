.class Lcom/android/systemui_ex/recents/views/TaskView$8;
.super Ljava/lang/Object;
.source "TaskView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/recents/views/TaskView;->dismissTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/recents/views/TaskView;

.field final synthetic val$tv:Lcom/android/systemui_ex/recents/views/TaskView;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/recents/views/TaskView;Lcom/android/systemui_ex/recents/views/TaskView;)V
    .locals 0

    .prologue
    .line 512
    iput-object p1, p0, Lcom/android/systemui_ex/recents/views/TaskView$8;->this$0:Lcom/android/systemui_ex/recents/views/TaskView;

    iput-object p2, p0, Lcom/android/systemui_ex/recents/views/TaskView$8;->val$tv:Lcom/android/systemui_ex/recents/views/TaskView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView$8;->this$0:Lcom/android/systemui_ex/recents/views/TaskView;

    iget-object v0, v0, Lcom/android/systemui_ex/recents/views/TaskView;->mCb:Lcom/android/systemui_ex/recents/views/TaskView$TaskViewCallbacks;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView$8;->this$0:Lcom/android/systemui_ex/recents/views/TaskView;

    iget-object v0, v0, Lcom/android/systemui_ex/recents/views/TaskView;->mCb:Lcom/android/systemui_ex/recents/views/TaskView$TaskViewCallbacks;

    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskView$8;->val$tv:Lcom/android/systemui_ex/recents/views/TaskView;

    invoke-interface {v0, v1}, Lcom/android/systemui_ex/recents/views/TaskView$TaskViewCallbacks;->onTaskViewDismissed(Lcom/android/systemui_ex/recents/views/TaskView;)V

    .line 518
    :cond_0
    return-void
.end method
