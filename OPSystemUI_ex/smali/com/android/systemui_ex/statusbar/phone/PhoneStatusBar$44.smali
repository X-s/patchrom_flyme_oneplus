.class Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$44;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->fadeKeyguardAfterLaunchTransition(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

.field final synthetic val$beforeFading:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 4788
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$44;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    iput-object p2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$44;->val$beforeFading:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4791
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$44;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x1

    # setter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mLaunchTransitionFadingAway:Z
    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$8302(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Z)Z

    .line 4792
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$44;->val$beforeFading:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 4793
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$44;->val$beforeFading:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4795
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$44;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->setAlpha(F)V

    .line 4796
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$44;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$44$1;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$44$1;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$44;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 4809
    return-void
.end method
