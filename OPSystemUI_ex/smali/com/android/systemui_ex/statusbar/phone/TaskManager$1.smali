.class Lcom/android/systemui_ex/statusbar/phone/TaskManager$1;
.super Ljava/lang/Object;
.source "TaskManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/phone/TaskManager;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/phone/TaskManager;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/phone/TaskManager;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$1;->this$0:Lcom/android/systemui_ex/statusbar/phone/TaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$1;->this$0:Lcom/android/systemui_ex/statusbar/phone/TaskManager;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/TaskManager;->mHandler:Lcom/android/systemui_ex/statusbar/phone/TaskManager$TaskManagerHandler;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->access$100(Lcom/android/systemui_ex/statusbar/phone/TaskManager;)Lcom/android/systemui_ex/statusbar/phone/TaskManager$TaskManagerHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/TaskManager$TaskManagerHandler;->sendEmptyMessage(I)Z

    .line 108
    return-void
.end method
