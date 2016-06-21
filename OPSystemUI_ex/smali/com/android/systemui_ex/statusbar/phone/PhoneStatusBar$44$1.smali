.class Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$44$1;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$44;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$44;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$44;)V
    .locals 0

    .prologue
    .line 4801
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$44$1;->this$1:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$44;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4804
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$44$1;->this$1:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$44;

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$44;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->setAlpha(F)V

    .line 4805
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$44$1;->this$1:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$44;

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$44;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->runLaunchTransitionEndRunnable()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$8400(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    .line 4806
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$44$1;->this$1:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$44;

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$44;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mLaunchTransitionFadingAway:Z
    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$8302(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Z)Z

    .line 4807
    return-void
.end method
