.class Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$OnShownRunnable;
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
    name = "OnShownRunnable"
.end annotation


# instance fields
.field callback:Lcom/android/internal/policy/IKeyguardShowCallback;

.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$OnShownRunnable;->this$0:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$OnShownRunnable;->this$0:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$OnShownRunnable;->callback:Lcom/android/internal/policy/IKeyguardShowCallback;

    # invokes: Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->callbackAfterDraw(Lcom/android/internal/policy/IKeyguardShowCallback;)V
    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->access$300(Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/internal/policy/IKeyguardShowCallback;)V

    .line 231
    return-void
.end method

.method public setCallback(Lcom/android/internal/policy/IKeyguardShowCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/internal/policy/IKeyguardShowCallback;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$OnShownRunnable;->callback:Lcom/android/internal/policy/IKeyguardShowCallback;

    .line 235
    return-void
.end method
