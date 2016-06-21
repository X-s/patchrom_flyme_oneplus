.class Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$33;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;
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
    .line 3314
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$33;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 3316
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$33;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDialIgnoreViewGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$5900(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Landroid/view/GestureDetector;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3317
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$33;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBouncerShowing:Z
    invoke-static {v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$6000(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$33;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mKeyguardViewMediator:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;
    invoke-static {v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$6100(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3323
    :cond_0
    :goto_0
    return v0

    .line 3321
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$33;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, p2}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
