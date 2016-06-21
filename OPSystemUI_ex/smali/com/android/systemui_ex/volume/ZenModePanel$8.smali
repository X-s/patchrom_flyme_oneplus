.class Lcom/android/systemui_ex/volume/ZenModePanel$8;
.super Ljava/lang/Object;
.source "ZenModePanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/volume/ZenModePanel;->select(Landroid/service/notification/Condition;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/volume/ZenModePanel;

.field final synthetic val$condition:Landroid/service/notification/Condition;

.field final synthetic val$isForever:Z


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/volume/ZenModePanel;ZLandroid/service/notification/Condition;)V
    .locals 0

    .prologue
    .line 747
    iput-object p1, p0, Lcom/android/systemui_ex/volume/ZenModePanel$8;->this$0:Lcom/android/systemui_ex/volume/ZenModePanel;

    iput-boolean p2, p0, Lcom/android/systemui_ex/volume/ZenModePanel$8;->val$isForever:Z

    iput-object p3, p0, Lcom/android/systemui_ex/volume/ZenModePanel$8;->val$condition:Landroid/service/notification/Condition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 750
    iget-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel$8;->this$0:Lcom/android/systemui_ex/volume/ZenModePanel;

    # getter for: Lcom/android/systemui_ex/volume/ZenModePanel;->mController:Lcom/android/systemui_ex/statusbar/policy/ZenModeController;
    invoke-static {v0}, Lcom/android/systemui_ex/volume/ZenModePanel;->access$500(Lcom/android/systemui_ex/volume/ZenModePanel;)Lcom/android/systemui_ex/statusbar/policy/ZenModeController;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel$8;->val$isForever:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/systemui_ex/statusbar/policy/ZenModeController;->setExitCondition(Landroid/service/notification/Condition;)V

    .line 751
    return-void

    .line 750
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel$8;->val$condition:Landroid/service/notification/Condition;

    goto :goto_0
.end method
