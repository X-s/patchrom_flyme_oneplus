.class Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$7;
.super Ljava/lang/Object;
.source "StatusBarKeyguardViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$7;->this$0:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$7;->this$0:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->access$900(Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getNavigationBarView()Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->setVisibility(I)V

    .line 413
    return-void
.end method
