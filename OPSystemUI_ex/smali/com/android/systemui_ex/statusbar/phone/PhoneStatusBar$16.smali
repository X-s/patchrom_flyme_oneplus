.class Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$16;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->makeStatusBarView()Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    .prologue
    .line 1205
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 1208
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->showTaskList:Z
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$3600(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->showTaskList:Z
    invoke-static {v1, v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$3602(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Z)Z

    .line 1209
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->showTaskList:Z
    invoke-static {v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$3600(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->setTaskManagerVisibility(Z)V

    .line 1210
    return-void

    .line 1208
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
