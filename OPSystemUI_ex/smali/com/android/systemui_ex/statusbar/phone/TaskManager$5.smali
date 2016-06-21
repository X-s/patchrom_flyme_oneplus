.class Lcom/android/systemui_ex/statusbar/phone/TaskManager$5;
.super Ljava/util/TimerTask;
.source "TaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/phone/TaskManager;->showTips(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/phone/TaskManager;

.field final synthetic val$floatView:Landroid/view/View;

.field final synthetic val$windowManager:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/phone/TaskManager;Landroid/view/WindowManager;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 602
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$5;->this$0:Lcom/android/systemui_ex/statusbar/phone/TaskManager;

    iput-object p2, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$5;->val$windowManager:Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$5;->val$floatView:Landroid/view/View;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$5;->val$windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$5;->val$floatView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 606
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$5;->this$0:Lcom/android/systemui_ex/statusbar/phone/TaskManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui_ex/statusbar/phone/TaskManager;->mTipsShowing:Z
    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->access$202(Lcom/android/systemui_ex/statusbar/phone/TaskManager;Z)Z

    .line 607
    return-void
.end method
