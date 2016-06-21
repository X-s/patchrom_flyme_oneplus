.class Lcom/android/keyguard/PasswordTextViewForPin$1;
.super Ljava/lang/Object;
.source "PasswordTextViewForPin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/PasswordTextViewForPin;->append(C)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/PasswordTextViewForPin;


# direct methods
.method constructor <init>(Lcom/android/keyguard/PasswordTextViewForPin;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextViewForPin$1;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$1;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$1;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    # getter for: Lcom/android/keyguard/PasswordTextViewForPin;->mCallBack:Lcom/android/keyguard/KeyguardInputCountCallBack;
    invoke-static {v1}, Lcom/android/keyguard/PasswordTextViewForPin;->access$200(Lcom/android/keyguard/PasswordTextViewForPin;)Lcom/android/keyguard/KeyguardInputCountCallBack;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardInputCountCallBack;->checkPassword()Z

    move-result v1

    # setter for: Lcom/android/keyguard/PasswordTextViewForPin;->mPasswordCheckState:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/PasswordTextViewForPin;->access$102(Lcom/android/keyguard/PasswordTextViewForPin;Z)Z

    .line 315
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$1;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    # getter for: Lcom/android/keyguard/PasswordTextViewForPin;->mPasswordCheckState:Z
    invoke-static {v0}, Lcom/android/keyguard/PasswordTextViewForPin;->access$100(Lcom/android/keyguard/PasswordTextViewForPin;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$1;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    # getter for: Lcom/android/keyguard/PasswordTextViewForPin;->charState:Lcom/android/keyguard/PasswordTextViewForPin$CharState;
    invoke-static {v0}, Lcom/android/keyguard/PasswordTextViewForPin;->access$300(Lcom/android/keyguard/PasswordTextViewForPin;)Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    move-result-object v0

    # invokes: Lcom/android/keyguard/PasswordTextViewForPin$CharState;->startPasswordErrorAnimation()V
    invoke-static {v0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->access$400(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V

    .line 318
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$1;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    # getter for: Lcom/android/keyguard/PasswordTextViewForPin;->charState2:Lcom/android/keyguard/PasswordTextViewForPin$CharState;
    invoke-static {v0}, Lcom/android/keyguard/PasswordTextViewForPin;->access$500(Lcom/android/keyguard/PasswordTextViewForPin;)Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    move-result-object v0

    # invokes: Lcom/android/keyguard/PasswordTextViewForPin$CharState;->startPasswordErrorAnimation2()V
    invoke-static {v0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->access$600(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V

    .line 319
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$1;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    # getter for: Lcom/android/keyguard/PasswordTextViewForPin;->charState3:Lcom/android/keyguard/PasswordTextViewForPin$CharState;
    invoke-static {v0}, Lcom/android/keyguard/PasswordTextViewForPin;->access$700(Lcom/android/keyguard/PasswordTextViewForPin;)Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    move-result-object v0

    # invokes: Lcom/android/keyguard/PasswordTextViewForPin$CharState;->startPasswordErrorAnimation3()V
    invoke-static {v0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->access$800(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V

    .line 320
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$1;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    # getter for: Lcom/android/keyguard/PasswordTextViewForPin;->charState4:Lcom/android/keyguard/PasswordTextViewForPin$CharState;
    invoke-static {v0}, Lcom/android/keyguard/PasswordTextViewForPin;->access$900(Lcom/android/keyguard/PasswordTextViewForPin;)Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    move-result-object v0

    # invokes: Lcom/android/keyguard/PasswordTextViewForPin$CharState;->startPasswordErrorAnimation4()V
    invoke-static {v0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->access$1000(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V

    .line 325
    :goto_0
    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$1;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextViewForPin;->reset(Z)V

    goto :goto_0
.end method
