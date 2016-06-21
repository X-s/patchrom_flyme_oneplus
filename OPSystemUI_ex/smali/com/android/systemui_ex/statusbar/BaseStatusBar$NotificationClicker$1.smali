.class Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker$1;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker;

.field final synthetic val$afterKeyguardGone:Z

.field final synthetic val$keyguardShowing:Z


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker;ZZ)V
    .locals 0

    .prologue
    .line 1845
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker;

    iput-boolean p2, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker$1;->val$keyguardShowing:Z

    iput-boolean p3, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker$1;->val$afterKeyguardGone:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1847
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker;

    # getter for: Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker;->mIsHeadsUp:Z
    invoke-static {v1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker;->access$1600(Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1852
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v1, v1, Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    iget-object v1, v1, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;->releaseAndClose()V

    .line 1854
    :cond_0
    new-instance v1, Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker$1$1;-><init>(Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker$1;)V

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker$1$1;->start()V

    .line 1895
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v1, v1, Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    invoke-virtual {v1, v0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->visibilityChanged(Z)V

    .line 1897
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker;

    # getter for: Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker;->mIntent:Landroid/app/PendingIntent;
    invoke-static {v1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker;->access$1700(Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker;)Landroid/app/PendingIntent;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker;

    # getter for: Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker;->mIntent:Landroid/app/PendingIntent;
    invoke-static {v1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker;->access$1700(Lcom/android/systemui_ex/statusbar/BaseStatusBar$NotificationClicker;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
