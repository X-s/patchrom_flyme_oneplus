.class Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$10;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 1167
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$10;->this$0:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1170
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$10;->this$0:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->access$1400(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;)Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    .line 1171
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$10;->this$0:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->access$1400(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;)Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->setAlpha(F)V

    .line 1172
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$10;->this$0:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    # setter for: Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardStatusBarAnimateAlpha:F
    invoke-static {v0, v2}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->access$1502(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;F)F

    .line 1173
    return-void
.end method
