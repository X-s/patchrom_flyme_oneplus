.class Lcom/android/systemui_ex/keyguard/KeyguardService$1;
.super Lcom/android/internal/policy/IKeyguardService$Stub;
.source "KeyguardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/keyguard/KeyguardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsOccluded:Z

.field final synthetic this$0:Lcom/android/systemui_ex/keyguard/KeyguardService;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/keyguard/KeyguardService;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/systemui_ex/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardService;

    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardStateCallback;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui_ex/keyguard/KeyguardService;->checkPermission()V

    .line 70
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardService;

    # getter for: Lcom/android/systemui_ex/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/systemui_ex/keyguard/KeyguardService;->access$000(Lcom/android/systemui_ex/keyguard/KeyguardService;)Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V

    .line 71
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui_ex/keyguard/KeyguardService;->checkPermission()V

    .line 131
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardService;

    # getter for: Lcom/android/systemui_ex/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/systemui_ex/keyguard/KeyguardService;->access$000(Lcom/android/systemui_ex/keyguard/KeyguardService;)Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->dismiss()V

    .line 132
    return-void
.end method

.method public dispatch(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui_ex/keyguard/KeyguardService;->checkPermission()V

    .line 192
    return-void
.end method

.method public doKeyguardTimeout(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui_ex/keyguard/KeyguardService;->checkPermission()V

    .line 177
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardService;

    # getter for: Lcom/android/systemui_ex/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/systemui_ex/keyguard/KeyguardService;->access$000(Lcom/android/systemui_ex/keyguard/KeyguardService;)Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->doKeyguardTimeout(Landroid/os/Bundle;)V

    .line 178
    return-void
.end method

.method public isDismissable()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardService;

    # getter for: Lcom/android/systemui_ex/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/systemui_ex/keyguard/KeyguardService;->access$000(Lcom/android/systemui_ex/keyguard/KeyguardService;)Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->isDismissable()Z

    move-result v0

    return v0
.end method

.method public isInputRestricted()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardService;

    # getter for: Lcom/android/systemui_ex/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/systemui_ex/keyguard/KeyguardService;->access$000(Lcom/android/systemui_ex/keyguard/KeyguardService;)Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->isInputRestricted()Z

    move-result v0

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardService;

    # getter for: Lcom/android/systemui_ex/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/systemui_ex/keyguard/KeyguardService;->access$000(Lcom/android/systemui_ex/keyguard/KeyguardService;)Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardService;

    # getter for: Lcom/android/systemui_ex/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/systemui_ex/keyguard/KeyguardService;->access$000(Lcom/android/systemui_ex/keyguard/KeyguardService;)Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v0

    return v0
.end method

.method public isShowingAndNotOccluded()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardService;

    # getter for: Lcom/android/systemui_ex/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/systemui_ex/keyguard/KeyguardService;->access$000(Lcom/android/systemui_ex/keyguard/KeyguardService;)Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    move-result v0

    return v0
.end method

.method public keyguardDone(ZZ)V
    .locals 1
    .param p1, "authenticated"    # Z
    .param p2, "wakeup"    # Z

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui_ex/keyguard/KeyguardService;->checkPermission()V

    .line 98
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardService;

    # getter for: Lcom/android/systemui_ex/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/systemui_ex/keyguard/KeyguardService;->access$000(Lcom/android/systemui_ex/keyguard/KeyguardService;)Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    .line 99
    return-void
.end method

.method public onActivityDrawn()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui_ex/keyguard/KeyguardService;->checkPermission()V

    .line 209
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardService;

    # getter for: Lcom/android/systemui_ex/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/systemui_ex/keyguard/KeyguardService;->access$000(Lcom/android/systemui_ex/keyguard/KeyguardService;)Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->onActivityDrawn()V

    .line 210
    return-void
.end method

.method public onBootCompleted()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui_ex/keyguard/KeyguardService;->checkPermission()V

    .line 197
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardService;

    # getter for: Lcom/android/systemui_ex/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/systemui_ex/keyguard/KeyguardService;->access$000(Lcom/android/systemui_ex/keyguard/KeyguardService;)Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->onBootCompleted()V

    .line 198
    return-void
.end method

.method public onDreamingStarted()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui_ex/keyguard/KeyguardService;->checkPermission()V

    .line 137
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardService;

    # getter for: Lcom/android/systemui_ex/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/systemui_ex/keyguard/KeyguardService;->access$000(Lcom/android/systemui_ex/keyguard/KeyguardService;)Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->onDreamingStarted()V

    .line 138
    return-void
.end method

.method public onDreamingStopped()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui_ex/keyguard/KeyguardService;->checkPermission()V

    .line 143
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardService;

    # getter for: Lcom/android/systemui_ex/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/systemui_ex/keyguard/KeyguardService;->access$000(Lcom/android/systemui_ex/keyguard/KeyguardService;)Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->onDreamingStopped()V

    .line 144
    return-void
.end method

.method public onScreenTurnedOff(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui_ex/keyguard/KeyguardService;->checkPermission()V

    .line 149
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardService;

    # getter for: Lcom/android/systemui_ex/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/systemui_ex/keyguard/KeyguardService;->access$000(Lcom/android/systemui_ex/keyguard/KeyguardService;)Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->onScreenTurnedOff(I)V

    .line 150
    return-void
.end method

.method public onScreenTurnedOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardShowCallback;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui_ex/keyguard/KeyguardService;->checkPermission()V

    .line 155
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardService;

    # getter for: Lcom/android/systemui_ex/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/systemui_ex/keyguard/KeyguardService;->access$000(Lcom/android/systemui_ex/keyguard/KeyguardService;)Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->onScreenTurnedOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V

    .line 156
    return-void
.end method

.method public onSystemReady()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui_ex/keyguard/KeyguardService;->checkPermission()V

    .line 171
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardService;

    # getter for: Lcom/android/systemui_ex/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/systemui_ex/keyguard/KeyguardService;->access$000(Lcom/android/systemui_ex/keyguard/KeyguardService;)Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->onSystemReady()V

    .line 172
    return-void
.end method

.method public setCurrentUser(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui_ex/keyguard/KeyguardService;->checkPermission()V

    .line 183
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardService;

    # getter for: Lcom/android/systemui_ex/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/systemui_ex/keyguard/KeyguardService;->access$000(Lcom/android/systemui_ex/keyguard/KeyguardService;)Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->setCurrentUser(I)V

    .line 184
    return-void
.end method

.method public setKeyguardEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui_ex/keyguard/KeyguardService;->checkPermission()V

    .line 161
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardService;

    # getter for: Lcom/android/systemui_ex/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/systemui_ex/keyguard/KeyguardService;->access$000(Lcom/android/systemui_ex/keyguard/KeyguardService;)Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->setKeyguardEnabled(Z)V

    .line 162
    return-void
.end method

.method public setOccluded(Z)I
    .locals 2
    .param p1, "isOccluded"    # Z

    .prologue
    .line 102
    iget-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardService;

    invoke-virtual {v1}, Lcom/android/systemui_ex/keyguard/KeyguardService;->checkPermission()V

    .line 103
    monitor-enter p0

    .line 105
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardService;

    # getter for: Lcom/android/systemui_ex/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;
    invoke-static {v1}, Lcom/android/systemui_ex/keyguard/KeyguardService;->access$000(Lcom/android/systemui_ex/keyguard/KeyguardService;)Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardService$1;->mIsOccluded:Z

    if-nez v1, :cond_1

    .line 107
    const/4 v0, 0x2

    .line 116
    .local v0, "result":I
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardService$1;->mIsOccluded:Z

    if-eq v1, p1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardService;

    # getter for: Lcom/android/systemui_ex/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;
    invoke-static {v1}, Lcom/android/systemui_ex/keyguard/KeyguardService;->access$000(Lcom/android/systemui_ex/keyguard/KeyguardService;)Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->setOccluded(Z)V

    .line 122
    iput-boolean p1, p0, Lcom/android/systemui_ex/keyguard/KeyguardService$1;->mIsOccluded:Z

    .line 124
    :cond_0
    monitor-exit p0

    return v0

    .line 109
    .end local v0    # "result":I
    :cond_1
    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardService;

    # getter for: Lcom/android/systemui_ex/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;
    invoke-static {v1}, Lcom/android/systemui_ex/keyguard/KeyguardService;->access$000(Lcom/android/systemui_ex/keyguard/KeyguardService;)Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardService$1;->mIsOccluded:Z

    if-eqz v1, :cond_2

    .line 111
    const/4 v0, 0x1

    .restart local v0    # "result":I
    goto :goto_0

    .line 114
    .end local v0    # "result":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "result":I
    goto :goto_0

    .line 125
    .end local v0    # "result":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public showAssistant()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui_ex/keyguard/KeyguardService;->checkPermission()V

    .line 188
    return-void
.end method

.method public startKeyguardExitAnimation(JJ)V
    .locals 1
    .param p1, "startTime"    # J
    .param p3, "fadeoutDuration"    # J

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui_ex/keyguard/KeyguardService;->checkPermission()V

    .line 203
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardService;

    # getter for: Lcom/android/systemui_ex/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/systemui_ex/keyguard/KeyguardService;->access$000(Lcom/android/systemui_ex/keyguard/KeyguardService;)Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->startKeyguardExitAnimation(JJ)V

    .line 204
    return-void
.end method

.method public verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardExitCallback;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui_ex/keyguard/KeyguardService;->checkPermission()V

    .line 92
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardService;

    # getter for: Lcom/android/systemui_ex/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/systemui_ex/keyguard/KeyguardService;->access$000(Lcom/android/systemui_ex/keyguard/KeyguardService;)Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V

    .line 93
    return-void
.end method
