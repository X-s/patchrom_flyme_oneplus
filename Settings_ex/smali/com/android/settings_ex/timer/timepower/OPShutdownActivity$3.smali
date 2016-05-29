.class Lcom/android/settings_ex/timer/timepower/OPShutdownActivity$3;
.super Ljava/lang/Object;
.source "OPShutdownActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/timer/timepower/OPShutdownActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/timer/timepower/OPShutdownActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/timer/timepower/OPShutdownActivity;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/settings_ex/timer/timepower/OPShutdownActivity$3;->this$0:Lcom/android/settings_ex/timer/timepower/OPShutdownActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings_ex/timer/timepower/OPShutdownActivity$3;->this$0:Lcom/android/settings_ex/timer/timepower/OPShutdownActivity;

    # invokes: Lcom/android/settings_ex/timer/timepower/OPShutdownActivity;->cancelCountDownTimer()V
    invoke-static {v0}, Lcom/android/settings_ex/timer/timepower/OPShutdownActivity;->access$400(Lcom/android/settings_ex/timer/timepower/OPShutdownActivity;)V

    .line 106
    iget-object v0, p0, Lcom/android/settings_ex/timer/timepower/OPShutdownActivity$3;->this$0:Lcom/android/settings_ex/timer/timepower/OPShutdownActivity;

    # invokes: Lcom/android/settings_ex/timer/timepower/OPShutdownActivity;->fireShutDown()V
    invoke-static {v0}, Lcom/android/settings_ex/timer/timepower/OPShutdownActivity;->access$300(Lcom/android/settings_ex/timer/timepower/OPShutdownActivity;)V

    .line 107
    return-void
.end method
