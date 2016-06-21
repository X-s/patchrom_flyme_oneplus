.class final Lcom/android/systemui_ex/volume/ZenModePanel$H;
.super Landroid/os/Handler;
.source "ZenModePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/volume/ZenModePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/volume/ZenModePanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui_ex/volume/ZenModePanel;)V
    .locals 1

    .prologue
    .line 802
    iput-object p1, p0, Lcom/android/systemui_ex/volume/ZenModePanel$H;->this$0:Lcom/android/systemui_ex/volume/ZenModePanel;

    .line 803
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 804
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui_ex/volume/ZenModePanel;Lcom/android/systemui_ex/volume/ZenModePanel$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui_ex/volume/ZenModePanel;
    .param p2, "x1"    # Lcom/android/systemui_ex/volume/ZenModePanel$1;

    .prologue
    .line 797
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/volume/ZenModePanel$H;-><init>(Lcom/android/systemui_ex/volume/ZenModePanel;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 808
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 809
    iget-object v1, p0, Lcom/android/systemui_ex/volume/ZenModePanel$H;->this$0:Lcom/android/systemui_ex/volume/ZenModePanel;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Landroid/service/notification/Condition;

    check-cast v0, [Landroid/service/notification/Condition;

    # invokes: Lcom/android/systemui_ex/volume/ZenModePanel;->handleUpdateConditions([Landroid/service/notification/Condition;)V
    invoke-static {v1, v0}, Lcom/android/systemui_ex/volume/ZenModePanel;->access$1600(Lcom/android/systemui_ex/volume/ZenModePanel;[Landroid/service/notification/Condition;)V

    .line 815
    :cond_0
    :goto_0
    return-void

    .line 810
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 811
    iget-object v1, p0, Lcom/android/systemui_ex/volume/ZenModePanel$H;->this$0:Lcom/android/systemui_ex/volume/ZenModePanel;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/service/notification/Condition;

    # invokes: Lcom/android/systemui_ex/volume/ZenModePanel;->handleExitConditionChanged(Landroid/service/notification/Condition;)V
    invoke-static {v1, v0}, Lcom/android/systemui_ex/volume/ZenModePanel;->access$1700(Lcom/android/systemui_ex/volume/ZenModePanel;Landroid/service/notification/Condition;)V

    goto :goto_0

    .line 812
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 813
    iget-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel$H;->this$0:Lcom/android/systemui_ex/volume/ZenModePanel;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/systemui_ex/volume/ZenModePanel;->handleUpdateZen(I)V
    invoke-static {v0, v1}, Lcom/android/systemui_ex/volume/ZenModePanel;->access$1800(Lcom/android/systemui_ex/volume/ZenModePanel;I)V

    goto :goto_0
.end method
