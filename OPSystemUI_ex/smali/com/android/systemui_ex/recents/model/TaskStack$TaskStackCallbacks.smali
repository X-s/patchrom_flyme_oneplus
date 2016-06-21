.class public interface abstract Lcom/android/systemui_ex/recents/model/TaskStack$TaskStackCallbacks;
.super Ljava/lang/Object;
.source "TaskStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/recents/model/TaskStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TaskStackCallbacks"
.end annotation


# virtual methods
.method public abstract onStackTaskAdded(Lcom/android/systemui_ex/recents/model/TaskStack;Lcom/android/systemui_ex/recents/model/Task;)V
.end method

.method public abstract onStackTaskRemoved(Lcom/android/systemui_ex/recents/model/TaskStack;Lcom/android/systemui_ex/recents/model/Task;Lcom/android/systemui_ex/recents/model/Task;)V
.end method

.method public abstract onStackTaskRemovedAnimated(Lcom/android/systemui_ex/recents/model/TaskStack;Lcom/android/systemui_ex/recents/model/Task;Lcom/android/systemui_ex/recents/model/Task;)V
.end method

.method public abstract onStackUnfiltered(Lcom/android/systemui_ex/recents/model/TaskStack;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui_ex/recents/model/TaskStack;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui_ex/recents/model/Task;",
            ">;)V"
        }
    .end annotation
.end method
