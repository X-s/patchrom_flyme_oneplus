.class Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState$14;
.super Ljava/lang/Object;
.source "PasswordTextViewForPin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;)V
    .locals 0

    .prologue
    .line 584
    iput-object p1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState$14;->this$1:Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 587
    iget-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState$14;->this$1:Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;

    # invokes: Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->performSwap()V
    invoke-static {v0}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->access$500(Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;)V

    .line 588
    iget-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState$14;->this$1:Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->isDotSwapPending:Z

    .line 589
    return-void
.end method
