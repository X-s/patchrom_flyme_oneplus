.class Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;
.super Landroid/os/Handler;
.source "OxygenChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TextChangedHandler"
.end annotation


# static fields
.field private static final DELAY_IN_MILLISECOND:I = 0x64

.field private static final ON_TEXT_CHANGED:I = 0x1


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;->notifyAfterTextChanged()V

    return-void
.end method

.method constructor <init>(Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;

    .prologue
    .line 887
    iput-object p1, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;->this$1:Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private notifyAfterTextChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 896
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;->removeMessages(I)V

    .line 897
    const-wide/16 v0, 0x64

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 895
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 902
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;->this$1:Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 903
    return-void

    .line 905
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 906
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;->this$1:Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->-wrap0(Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;)V

    .line 901
    :cond_1
    return-void
.end method
