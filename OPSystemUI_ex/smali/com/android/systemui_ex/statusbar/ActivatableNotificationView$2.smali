.class Lcom/android/systemui_ex/statusbar/ActivatableNotificationView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ActivatableNotificationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->startActivateAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView$2;->this$0:Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView$2;->this$0:Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;

    # getter for: Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mActivated:Z
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->access$000(Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView$2;->this$0:Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;

    instance-of v0, v0, Lcom/android/systemui_ex/statusbar/NotificationOverflowContainer;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView$2;->this$0:Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->performClick()Z

    .line 299
    :cond_0
    return-void
.end method
