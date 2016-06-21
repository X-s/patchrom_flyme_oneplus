.class Lcom/android/keyguard/PasswordTextViewForPin$CharState$14;
.super Ljava/lang/Object;
.source "PasswordTextViewForPin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/PasswordTextViewForPin$CharState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/PasswordTextViewForPin$CharState;


# direct methods
.method constructor <init>(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V
    .locals 0

    .prologue
    .line 565
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState$14;->this$1:Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState$14;->this$1:Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    # invokes: Lcom/android/keyguard/PasswordTextViewForPin$CharState;->performSwap()V
    invoke-static {v0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->access$1500(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V

    .line 569
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState$14;->this$1:Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->isDotSwapPending:Z

    .line 570
    return-void
.end method
