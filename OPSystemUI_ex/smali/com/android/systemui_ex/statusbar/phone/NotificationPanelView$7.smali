.class Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;)V
    .locals 0

    .prologue
    .line 1108
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$7;->this$0:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$7;->this$0:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mHeaderAnimatingIn:Z
    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->access$902(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;Z)Z

    .line 1112
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$7;->this$0:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsContainerAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->access$1002(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 1113
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$7;->this$0:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui_ex/qs/QSContainer;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->access$300(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;)Lcom/android/systemui_ex/qs/QSContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$7;->this$0:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsContainerAnimatorUpdater:Landroid/view/View$OnLayoutChangeListener;
    invoke-static {v1}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->access$1100(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;)Landroid/view/View$OnLayoutChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/qs/QSContainer;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1114
    return-void
.end method
