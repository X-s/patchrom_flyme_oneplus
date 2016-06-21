.class Lcom/android/systemui_ex/statusbar/phone/TaskManager$TaskManagerHandler;
.super Landroid/os/Handler;
.source "TaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/phone/TaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/phone/TaskManager;


# direct methods
.method private constructor <init>(Lcom/android/systemui_ex/statusbar/phone/TaskManager;)V
    .locals 0

    .prologue
    .line 611
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$TaskManagerHandler;->this$0:Lcom/android/systemui_ex/statusbar/phone/TaskManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui_ex/statusbar/phone/TaskManager;Lcom/android/systemui_ex/statusbar/phone/TaskManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui_ex/statusbar/phone/TaskManager;
    .param p2, "x1"    # Lcom/android/systemui_ex/statusbar/phone/TaskManager$1;

    .prologue
    .line 611
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/TaskManager$TaskManagerHandler;-><init>(Lcom/android/systemui_ex/statusbar/phone/TaskManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 613
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 630
    :goto_0
    return-void

    .line 615
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "packagename"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 616
    .local v1, "startTaskName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$TaskManagerHandler;->this$0:Lcom/android/systemui_ex/statusbar/phone/TaskManager;

    # invokes: Lcom/android/systemui_ex/statusbar/phone/TaskManager;->startTaskByName(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->access$300(Lcom/android/systemui_ex/statusbar/phone/TaskManager;Ljava/lang/String;)V

    goto :goto_0

    .line 619
    .end local v1    # "startTaskName":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "packagename"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 620
    .local v0, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$TaskManagerHandler;->this$0:Lcom/android/systemui_ex/statusbar/phone/TaskManager;

    # invokes: Lcom/android/systemui_ex/statusbar/phone/TaskManager;->killChildByName(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->access$400(Lcom/android/systemui_ex/statusbar/phone/TaskManager;Ljava/lang/String;)V

    .line 621
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$TaskManagerHandler;->this$0:Lcom/android/systemui_ex/statusbar/phone/TaskManager;

    # invokes: Lcom/android/systemui_ex/statusbar/phone/TaskManager;->refreshMemoryUsagePanel()V
    invoke-static {v2}, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->access$500(Lcom/android/systemui_ex/statusbar/phone/TaskManager;)V

    goto :goto_0

    .line 624
    .end local v0    # "packageName":Ljava/lang/String;
    :pswitch_2
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$TaskManagerHandler;->this$0:Lcom/android/systemui_ex/statusbar/phone/TaskManager;

    # invokes: Lcom/android/systemui_ex/statusbar/phone/TaskManager;->killAllChild()V
    invoke-static {v2}, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->access$600(Lcom/android/systemui_ex/statusbar/phone/TaskManager;)V

    .line 625
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$TaskManagerHandler;->this$0:Lcom/android/systemui_ex/statusbar/phone/TaskManager;

    # invokes: Lcom/android/systemui_ex/statusbar/phone/TaskManager;->refreshMemoryUsagePanel()V
    invoke-static {v2}, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->access$500(Lcom/android/systemui_ex/statusbar/phone/TaskManager;)V

    goto :goto_0

    .line 613
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
