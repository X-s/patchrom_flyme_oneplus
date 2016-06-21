.class Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$4$3;
.super Ljava/lang/Object;
.source "StatusBarHeaderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$4;->onScanStateChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$4;

.field final synthetic val$state:Z


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$4;Z)V
    .locals 0

    .prologue
    .line 869
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$4$3;->this$1:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$4;

    iput-boolean p2, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$4$3;->val$state:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 872
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$4$3;->this$1:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$4;

    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$4$3;->val$state:Z

    # invokes: Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$4;->handleScanStateChanged(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$4;->access$800(Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView$4;Z)V

    .line 873
    return-void
.end method
