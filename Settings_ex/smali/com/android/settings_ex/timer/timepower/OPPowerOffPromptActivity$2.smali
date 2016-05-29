.class Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity$2;
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
    .line 95
    iput-object p1, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity$2;->this$0:Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity$2;->this$0:Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;

    # invokes: Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->cancel()V
    invoke-static {v0}, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->access$100(Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;)V

    .line 101
    return-void
.end method
