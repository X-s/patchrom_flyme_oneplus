.class Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity$1;
.super Ljava/lang/Object;
.source "OPPowerOffPromptActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity$1;->this$0:Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 71
    iget-object v1, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity$1;->this$0:Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;

    iget-object v2, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity$1;->this$0:Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;

    # invokes: Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->showDialog(Landroid/content/Context;)V
    invoke-static {v1, v2}, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->access$000(Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;Landroid/content/Context;)V

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings_ex.POWER_CONFIRM_OP_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity$1;->this$0:Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 91
    return-void
.end method
