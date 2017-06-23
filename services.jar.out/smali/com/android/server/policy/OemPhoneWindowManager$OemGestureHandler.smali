.class public Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;
.super Landroid/os/Handler;
.source "OemPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OemPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OemGestureHandler"
.end annotation


# static fields
.field static final MSG_OEM_DISABLE_SCREEN_CAPTURE:I = 0x2

.field static final MSG_OEM_ENABLE_SCREEN_CAPTURE:I = 0x1

.field static final MSG_OEM_PAUSE_DELIVER_POINTER:I = 0x3

.field static final MSG_OEM_RESUME_DELIVER_POINTER:I = 0x4

.field static final MSG_OEM_TAKE_OPBUGREPORT:I = 0x6

.field static final MSG_OEM_TAKE_SCREEN_SHOT:I = 0x5


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/OemPhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/OemPhoneWindowManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1633
    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    .line 1634
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1635
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 1639
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1681
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1641
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # getter for: Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointersGestures:Lcom/android/server/policy/OemThreePointersGesturesListener;
    invoke-static {v0}, Lcom/android/server/policy/OemPhoneWindowManager;->access$2500(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemThreePointersGesturesListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1642
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # getter for: Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointersGestures:Lcom/android/server/policy/OemThreePointersGesturesListener;
    invoke-static {v0}, Lcom/android/server/policy/OemPhoneWindowManager;->access$2500(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemThreePointersGesturesListener;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/policy/OemThreePointersGesturesListener;->setScreenShotEnable(Z)V

    .line 1644
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # setter for: Lcom/android/server/policy/OemPhoneWindowManager;->mEnableThreePointersScreenShot:Z
    invoke-static {v0, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->access$2602(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    goto :goto_0

    .line 1648
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # getter for: Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointersGestures:Lcom/android/server/policy/OemThreePointersGesturesListener;
    invoke-static {v0}, Lcom/android/server/policy/OemPhoneWindowManager;->access$2500(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemThreePointersGesturesListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1649
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # getter for: Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointersGestures:Lcom/android/server/policy/OemThreePointersGesturesListener;
    invoke-static {v0}, Lcom/android/server/policy/OemPhoneWindowManager;->access$2500(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemThreePointersGesturesListener;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemThreePointersGesturesListener;->setScreenShotEnable(Z)V

    .line 1651
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # setter for: Lcom/android/server/policy/OemPhoneWindowManager;->mEnableThreePointersScreenShot:Z
    invoke-static {v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->access$2602(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    goto :goto_0

    .line 1661
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mShotScreenHelper:Lcom/android/server/policy/OemShotScreenHelper;

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/OemPhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/OemShotScreenHelper;->shotScreen(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;I)V

    .line 1664
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # invokes: Lcom/android/server/policy/OemPhoneWindowManager;->isScreenshotGuiderDisabled()Z
    invoke-static {v0}, Lcom/android/server/policy/OemPhoneWindowManager;->access$2700(Lcom/android/server/policy/OemPhoneWindowManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1665
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # invokes: Lcom/android/server/policy/OemPhoneWindowManager;->setScreenshotGuiderDisabled()V
    invoke-static {v0}, Lcom/android/server/policy/OemPhoneWindowManager;->access$2800(Lcom/android/server/policy/OemPhoneWindowManager;)V

    .line 1666
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # getter for: Lcom/android/server/policy/OemPhoneWindowManager;->mPhoneStatusReceiver:Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;
    invoke-static {v0}, Lcom/android/server/policy/OemPhoneWindowManager;->access$2900(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1667
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # getter for: Lcom/android/server/policy/OemPhoneWindowManager;->mPhoneStatusReceiver:Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;
    invoke-static {v1}, Lcom/android/server/policy/OemPhoneWindowManager;->access$2900(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1668
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/policy/OemPhoneWindowManager;->mPhoneStatusReceiver:Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;
    invoke-static {v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->access$2902(Lcom/android/server/policy/OemPhoneWindowManager;Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;)Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;

    goto :goto_0

    .line 1675
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # getter for: Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;
    invoke-static {v0}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1500(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # getter for: Lcom/android/server/policy/OemPhoneWindowManager;->mStartBugReportTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/policy/OemPhoneWindowManager;->access$3000(Lcom/android/server/policy/OemPhoneWindowManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1639
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
