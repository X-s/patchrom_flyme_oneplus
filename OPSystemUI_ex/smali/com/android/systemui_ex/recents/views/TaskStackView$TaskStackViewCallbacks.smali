.class interface abstract Lcom/android/systemui_ex/recents/views/TaskStackView$TaskStackViewCallbacks;
.super Ljava/lang/Object;
.source "TaskStackView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/recents/views/TaskStackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "TaskStackViewCallbacks"
.end annotation


# virtual methods
.method public abstract onAllTaskViewsDismissed()V
.end method

.method public abstract onDismissRecentsToHome()V
.end method

.method public abstract onSetClearRecentsVisibility(I)V
.end method

.method public abstract onTaskViewClicked(Lcom/android/systemui_ex/recents/views/TaskStackView;Lcom/android/systemui_ex/recents/views/TaskView;Lcom/android/systemui_ex/recents/model/TaskStack;Lcom/android/systemui_ex/recents/model/Task;Z)V
.end method

.method public abstract onTaskViewDismissed(Lcom/android/systemui_ex/recents/model/Task;)V
.end method
