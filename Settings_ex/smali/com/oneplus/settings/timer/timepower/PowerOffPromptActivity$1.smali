.class Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity$1;
.super Landroid/os/Handler;
.source "PowerOffPromptActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 54
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 61
    :goto_0
    return-void

    .line 56
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;

    # invokes: Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->beginShutdown()V
    invoke-static {v0}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->access$000(Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;)V

    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
