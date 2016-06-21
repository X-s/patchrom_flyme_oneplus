.class public Lcom/android/systemui_ex/recents/views/TaskStackViewFilterAlgorithm;
.super Ljava/lang/Object;
.source "TaskStackViewFilterAlgorithm.java"


# instance fields
.field mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

.field mStackView:Lcom/android/systemui_ex/recents/views/TaskStackView;

.field mViewPool:Lcom/android/systemui_ex/recents/views/ViewPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui_ex/recents/views/ViewPool",
            "<",
            "Lcom/android/systemui_ex/recents/views/TaskView;",
            "Lcom/android/systemui_ex/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui_ex/recents/RecentsConfiguration;Lcom/android/systemui_ex/recents/views/TaskStackView;Lcom/android/systemui_ex/recents/views/ViewPool;)V
    .locals 0
    .param p1, "config"    # Lcom/android/systemui_ex/recents/RecentsConfiguration;
    .param p2, "stackView"    # Lcom/android/systemui_ex/recents/views/TaskStackView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui_ex/recents/RecentsConfiguration;",
            "Lcom/android/systemui_ex/recents/views/TaskStackView;",
            "Lcom/android/systemui_ex/recents/views/ViewPool",
            "<",
            "Lcom/android/systemui_ex/recents/views/TaskView;",
            "Lcom/android/systemui_ex/recents/model/Task;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p3, "viewPool":Lcom/android/systemui_ex/recents/views/ViewPool;, "Lcom/android/systemui_ex/recents/views/ViewPool<Lcom/android/systemui_ex/recents/views/TaskView;Lcom/android/systemui_ex/recents/model/Task;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewFilterAlgorithm;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    .line 36
    iput-object p2, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewFilterAlgorithm;->mStackView:Lcom/android/systemui_ex/recents/views/TaskStackView;

    .line 37
    iput-object p3, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewFilterAlgorithm;->mViewPool:Lcom/android/systemui_ex/recents/views/ViewPool;

    .line 38
    return-void
.end method
