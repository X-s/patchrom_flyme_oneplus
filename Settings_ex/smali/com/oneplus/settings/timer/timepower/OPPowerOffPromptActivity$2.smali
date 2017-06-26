.class Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$2;
.super Ljava/lang/Object;
.source "OPPowerOffPromptActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$2;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$2;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    # invokes: Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->cancel()V
    invoke-static {v0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$100(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)V

    .line 83
    return-void
.end method
