.class Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment$TimeSetDialogListener;
.super Ljava/lang/Object;
.source "TimepowerSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeSetDialogListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;)V
    .locals 0

    .prologue
    .line 564
    iput-object p1, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment$TimeSetDialogListener;->this$0:Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 565
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 578
    const-string v0, "TimepowerSettingsFragment"

    const-string v1, "=========TimeSetDialogListener CANCEL======="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 580
    iget-object v0, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment$TimeSetDialogListener;->this$0:Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mDlgVisible:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->access$002(Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;Z)Z

    .line 581
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 569
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 570
    iget-object v0, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment$TimeSetDialogListener;->this$0:Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;

    # invokes: Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->ReturnData()V
    invoke-static {v0}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->access$300(Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;)V

    .line 574
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment$TimeSetDialogListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 575
    return-void

    .line 571
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    goto :goto_0
.end method
