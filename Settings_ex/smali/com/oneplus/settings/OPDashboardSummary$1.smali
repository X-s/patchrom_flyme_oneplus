.class Lcom/oneplus/settings/OPDashboardSummary$1;
.super Landroid/os/Handler;
.source "OPDashboardSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPDashboardSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPDashboardSummary;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPDashboardSummary;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/oneplus/settings/OPDashboardSummary$1;->this$0:Lcom/oneplus/settings/OPDashboardSummary;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 130
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 135
    :goto_0
    return-void

    .line 132
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/settings/OPDashboardSummary$1;->this$0:Lcom/oneplus/settings/OPDashboardSummary;

    # invokes: Lcom/oneplus/settings/OPDashboardSummary;->delayRefreshUI()V
    invoke-static {v0}, Lcom/oneplus/settings/OPDashboardSummary;->access$000(Lcom/oneplus/settings/OPDashboardSummary;)V

    goto :goto_0

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
