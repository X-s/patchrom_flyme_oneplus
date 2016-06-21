.class Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$5;
.super Ljava/lang/Object;
.source "UserSwitcherController.java"

# interfaces
.implements Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;)V
    .locals 0

    .prologue
    .line 514
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$5;->this$0:Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardChanged()V
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$5;->this$0:Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;

    # invokes: Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->notifyAdapters()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->access$400(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;)V

    .line 518
    return-void
.end method
