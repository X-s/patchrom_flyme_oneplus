.class Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;
.super Ljava/lang/Object;
.source "KeyguardServiceDelegate.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;


# direct methods
.method constructor <init>(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 156
    const-string v0, "KeyguardServiceDelegate"

    const-string v1, "*** Keyguard connected (yay!)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    new-instance v1, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    iget-object v2, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    # getter for: Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->access$000(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Landroid/content/Context;

    move-result-object v2

    invoke-static {p2}, Lcom/android/internal/policy/IKeyguardService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardService;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    # getter for: Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardFingerprintChanageCallback:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->access$100(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;-><init>(Landroid/content/Context;Lcom/android/internal/policy/IKeyguardService;Ljava/lang/Runnable;)V

    iput-object v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 159
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    # getter for: Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;
    invoke-static {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->access$200(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->systemIsReady:Z

    if-eqz v0, :cond_4

    .line 161
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onSystemReady()V

    .line 163
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    # getter for: Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;
    invoke-static {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->access$200(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object v0

    iget v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->interactiveState:I

    if-ne v0, v5, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onStartedWakingUp()V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    # getter for: Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;
    invoke-static {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->access$200(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object v0

    iget v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->screenState:I

    if-eq v0, v6, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    # getter for: Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;
    invoke-static {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->access$200(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object v0

    iget v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->screenState:I

    if-ne v0, v5, :cond_2

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    new-instance v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;

    iget-object v2, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v3, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    # getter for: Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mDrawnListenerWhenConnect:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;
    invoke-static {v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->access$300(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;-><init>(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;)V

    invoke-virtual {v0, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    # getter for: Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;
    invoke-static {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->access$200(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object v0

    iget v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->screenState:I

    if-ne v0, v6, :cond_3

    .line 172
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onScreenTurnedOn()V

    .line 174
    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mDrawnListenerWhenConnect:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;
    invoke-static {v0, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->access$302(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    .line 176
    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    # getter for: Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;
    invoke-static {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->access$200(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->bootCompleted:Z

    if-eqz v0, :cond_5

    .line 177
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onBootCompleted()V

    .line 179
    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    # getter for: Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;
    invoke-static {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->access$200(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->occluded:Z

    if-eqz v0, :cond_6

    .line 180
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    # getter for: Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;
    invoke-static {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->access$200(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->occluded:Z

    invoke-virtual {v0, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->setOccluded(Z)V

    .line 182
    :cond_6
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 186
    const-string v0, "KeyguardServiceDelegate"

    const-string v1, "*** Keyguard disconnected (boo!)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 188
    return-void
.end method
