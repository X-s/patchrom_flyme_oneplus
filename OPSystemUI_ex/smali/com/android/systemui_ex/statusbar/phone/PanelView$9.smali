.class Lcom/android/systemui_ex/statusbar/phone/PanelView$9;
.super Ljava/lang/Object;
.source "PanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/phone/PanelView;->startUnlockHintAnimation()V
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
    .line 1120
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView$9;->this$0:Lcom/android/systemui_ex/statusbar/phone/PanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView$9;->this$0:Lcom/android/systemui_ex/statusbar/phone/PanelView;

    # invokes: Lcom/android/systemui_ex/statusbar/phone/PanelView;->notifyExpandingFinished()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->access$600(Lcom/android/systemui_ex/statusbar/phone/PanelView;)V

    .line 1124
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView$9;->this$0:Lcom/android/systemui_ex/statusbar/phone/PanelView;

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->onHintFinished()V

    .line 1125
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView$9;->this$0:Lcom/android/systemui_ex/statusbar/phone/PanelView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    .line 1126
    return-void
.end method
