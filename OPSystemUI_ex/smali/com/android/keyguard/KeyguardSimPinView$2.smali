.class Lcom/android/keyguard/KeyguardSimPinView$2;
.super Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;
.source "KeyguardSimPinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSimPinView;->resetState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPinView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPinView;Ljava/lang/String;I)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # I

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;-><init>(Lcom/android/keyguard/KeyguardSimPinView;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method onSimCheckResponse(II)V
    .locals 4
    .param p1, "result"    # I
    .param p2, "attemptsRemaining"    # I

    .prologue
    const/4 v3, 0x1

    .line 136
    const-string v0, "KeyguardSimPinView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSimCheckResponse  dummy One result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " attemptsRemaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    if-ltz p2, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    # invokes: Lcom/android/keyguard/KeyguardSimPinView;->getPinPasswordErrorMessage(IZ)Ljava/lang/String;
    invoke-static {v1, p2, v3}, Lcom/android/keyguard/KeyguardSimPinView;->access$100(Lcom/android/keyguard/KeyguardSimPinView;IZ)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 142
    :cond_0
    return-void
.end method
