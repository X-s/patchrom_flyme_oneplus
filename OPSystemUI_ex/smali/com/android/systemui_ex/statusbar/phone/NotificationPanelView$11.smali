.class Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$11;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 1188
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$11;->this$0:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$11;->this$0:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$11;->this$0:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;
    invoke-static {v1}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->access$1400(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;)Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->getAlpha()F

    move-result v1

    # setter for: Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardStatusBarAnimateAlpha:F
    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->access$1502(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;F)F

    .line 1192
    return-void
.end method
