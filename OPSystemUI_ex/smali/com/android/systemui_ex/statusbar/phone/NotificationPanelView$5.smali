.class Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$5;
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
    .line 1092
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$5;->this$0:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$5;->this$0:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z
    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->access$802(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;Z)Z

    .line 1096
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$5;->this$0:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->access$500(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;)Lcom/android/keyguard/KeyguardStatusView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardStatusView;->setVisibility(I)V

    .line 1097
    return-void
.end method
