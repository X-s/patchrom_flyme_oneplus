.class final Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;
.super Ljava/lang/Object;
.source "ZenModePanel.java"

# interfaces
.implements Landroid/animation/LayoutTransition$TransitionListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/volume/ZenModePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TransitionHelper"
.end annotation


# instance fields
.field private mPendingUpdateConditions:Z

.field private mPendingUpdateWidgets:Z

.field private mTransitioning:Z

.field private final mTransitioningViews:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui_ex/volume/ZenModePanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui_ex/volume/ZenModePanel;)V
    .locals 1

    .prologue
    .line 929
    iput-object p1, p0, Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;->this$0:Lcom/android/systemui_ex/volume/ZenModePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 930
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;->mTransitioningViews:Landroid/util/ArraySet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui_ex/volume/ZenModePanel;Lcom/android/systemui_ex/volume/ZenModePanel$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui_ex/volume/ZenModePanel;
    .param p2, "x1"    # Lcom/android/systemui_ex/volume/ZenModePanel$1;

    .prologue
    .line 929
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;-><init>(Lcom/android/systemui_ex/volume/ZenModePanel;)V

    return-void
.end method

.method private updateTransitioning()V
    .locals 4

    .prologue
    .line 990
    invoke-virtual {p0}, Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;->isTransitioning()Z

    move-result v0

    .line 991
    .local v0, "transitioning":Z
    iget-boolean v1, p0, Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;->mTransitioning:Z

    if-ne v1, v0, :cond_1

    .line 1001
    :cond_0
    :goto_0
    return-void

    .line 992
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;->mTransitioning:Z

    .line 993
    # getter for: Lcom/android/systemui_ex/volume/ZenModePanel;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui_ex/volume/ZenModePanel;->access$800()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;->this$0:Lcom/android/systemui_ex/volume/ZenModePanel;

    # getter for: Lcom/android/systemui_ex/volume/ZenModePanel;->mTag:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/systemui_ex/volume/ZenModePanel;->access$900(Lcom/android/systemui_ex/volume/ZenModePanel;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TransitionHelper mTransitioning="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;->mTransitioning:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;->mTransitioning:Z

    if-nez v1, :cond_0

    .line 995
    iget-boolean v1, p0, Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;->mPendingUpdateConditions:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;->mPendingUpdateWidgets:Z

    if-eqz v1, :cond_4

    .line 996
    :cond_3
    iget-object v1, p0, Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;->this$0:Lcom/android/systemui_ex/volume/ZenModePanel;

    # getter for: Lcom/android/systemui_ex/volume/ZenModePanel;->mHandler:Lcom/android/systemui_ex/volume/ZenModePanel$H;
    invoke-static {v1}, Lcom/android/systemui_ex/volume/ZenModePanel;->access$1500(Lcom/android/systemui_ex/volume/ZenModePanel;)Lcom/android/systemui_ex/volume/ZenModePanel$H;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/systemui_ex/volume/ZenModePanel$H;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 998
    :cond_4
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;->mPendingUpdateWidgets:Z

    iput-boolean v1, p0, Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;->mPendingUpdateConditions:Z

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 937
    iget-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;->mTransitioningViews:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 938
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;->mPendingUpdateWidgets:Z

    iput-boolean v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;->mPendingUpdateConditions:Z

    .line 939
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 942
    const-string v0, "  TransitionHelper state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 943
    const-string v0, "    mPendingUpdateConditions="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;->mPendingUpdateConditions:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 944
    const-string v0, "    mPendingUpdateWidgets="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;->mPendingUpdateWidgets:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 945
    const-string v0, "    mTransitioning="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;->mTransitioning:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 946
    const-string v0, "    mTransitioningViews="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;->mTransitioningViews:Landroid/util/ArraySet;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 947
    return-void
.end method

.method public endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 1
    .param p1, "transition"    # Landroid/animation/LayoutTransition;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "transitionType"    # I

    .prologue
    .line 971
    iget-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;->mTransitioningViews:Landroid/util/ArraySet;

    invoke-virtual {v0, p3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 972
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;->updateTransitioning()V

    .line 973
    return-void
.end method

.method public isTransitioning()Z
    .locals 1

    .prologue
    .line 958
    iget-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;->mTransitioningViews:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pendingUpdateConditions()V
    .locals 1

    .prologue
    .line 950
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;->mPendingUpdateConditions:Z

    .line 951
    return-void
.end method

.method public pendingUpdateWidgets()V
    .locals 1

    .prologue
    .line 954
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;->mPendingUpdateWidgets:Z

    .line 955
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 977
    # getter for: Lcom/android/systemui_ex/volume/ZenModePanel;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui_ex/volume/ZenModePanel;->access$800()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;->this$0:Lcom/android/systemui_ex/volume/ZenModePanel;

    # getter for: Lcom/android/systemui_ex/volume/ZenModePanel;->mTag:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui_ex/volume/ZenModePanel;->access$900(Lcom/android/systemui_ex/volume/ZenModePanel;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransitionHelper run mPendingUpdateWidgets="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;->mPendingUpdateWidgets:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPendingUpdateConditions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;->mPendingUpdateConditions:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;->mPendingUpdateWidgets:Z

    if-eqz v0, :cond_1

    .line 981
    iget-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;->this$0:Lcom/android/systemui_ex/volume/ZenModePanel;

    # invokes: Lcom/android/systemui_ex/volume/ZenModePanel;->updateWidgets()V
    invoke-static {v0}, Lcom/android/systemui_ex/volume/ZenModePanel;->access$2400(Lcom/android/systemui_ex/volume/ZenModePanel;)V

    .line 983
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;->mPendingUpdateConditions:Z

    if-eqz v0, :cond_2

    .line 984
    iget-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;->this$0:Lcom/android/systemui_ex/volume/ZenModePanel;

    # invokes: Lcom/android/systemui_ex/volume/ZenModePanel;->handleUpdateConditions()V
    invoke-static {v0}, Lcom/android/systemui_ex/volume/ZenModePanel;->access$2500(Lcom/android/systemui_ex/volume/ZenModePanel;)V

    .line 986
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;->mPendingUpdateConditions:Z

    iput-boolean v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;->mPendingUpdateWidgets:Z

    .line 987
    return-void
.end method

.method public startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 1
    .param p1, "transition"    # Landroid/animation/LayoutTransition;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "transitionType"    # I

    .prologue
    .line 964
    iget-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;->mTransitioningViews:Landroid/util/ArraySet;

    invoke-virtual {v0, p3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 965
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;->updateTransitioning()V

    .line 966
    return-void
.end method
