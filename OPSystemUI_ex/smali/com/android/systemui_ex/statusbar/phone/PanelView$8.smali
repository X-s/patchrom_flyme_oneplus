.class Lcom/android/systemui_ex/statusbar/phone/PanelView$8;
.super Ljava/lang/Object;
.source "PanelView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/phone/PanelView;->instantExpand()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/phone/PanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/phone/PanelView;)V
    .locals 0

    .prologue
    .line 1075
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView$8;->this$0:Lcom/android/systemui_ex/statusbar/phone/PanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView$8;->this$0:Lcom/android/systemui_ex/statusbar/phone/PanelView;

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getStatusBarWindow()Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView$8;->this$0:Lcom/android/systemui_ex/statusbar/phone/PanelView;

    iget-object v1, v1, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getStatusBarHeight()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1080
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView$8;->this$0:Lcom/android/systemui_ex/statusbar/phone/PanelView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1081
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView$8;->this$0:Lcom/android/systemui_ex/statusbar/phone/PanelView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->setExpandedFraction(F)V

    .line 1082
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView$8;->this$0:Lcom/android/systemui_ex/statusbar/phone/PanelView;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui_ex/statusbar/phone/PanelView;->mInstantExpanding:Z
    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->access$702(Lcom/android/systemui_ex/statusbar/phone/PanelView;Z)Z

    .line 1084
    :cond_0
    return-void
.end method
