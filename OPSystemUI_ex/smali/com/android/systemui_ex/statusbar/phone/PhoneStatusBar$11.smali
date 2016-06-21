.class Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$11;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Lcom/android/systemui_ex/statusbar/phone/NavigationBarView$OnVerticalChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->makeStatusBarView()Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;
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
    .line 875
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$11;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerticalChanged(Z)V
    .locals 2
    .param p1, "isVertical"    # Z

    .prologue
    .line 878
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$11;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSearchPanelView:Lcom/android/systemui_ex/SearchPanelView;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$2800(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui_ex/SearchPanelView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$11;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mSearchPanelView:Lcom/android/systemui_ex/SearchPanelView;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$2900(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui_ex/SearchPanelView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/SearchPanelView;->setHorizontal(Z)V

    .line 881
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$11;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    iget-object v1, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->setQsScrimEnabled(Z)V

    .line 882
    return-void

    .line 881
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
