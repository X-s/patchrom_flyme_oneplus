.class Lcom/android/systemui_ex/recents/views/TaskView$7;
.super Ljava/lang/Object;
.source "TaskView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/recents/views/TaskView;->startDeleteTaskAnimation(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/recents/views/TaskView;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/recents/views/TaskView;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 476
    iput-object p1, p0, Lcom/android/systemui_ex/recents/views/TaskView$7;->this$0:Lcom/android/systemui_ex/recents/views/TaskView;

    iput-object p2, p0, Lcom/android/systemui_ex/recents/views/TaskView$7;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView$7;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 487
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView$7;->this$0:Lcom/android/systemui_ex/recents/views/TaskView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 488
    return-void
.end method
