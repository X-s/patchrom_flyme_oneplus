.class Lcom/oneplus/tuner/OPCommonStyleFragment$1;
.super Landroid/os/Handler;
.source "OPCommonStyleFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/tuner/OPCommonStyleFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/OPCommonStyleFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/OPCommonStyleFragment;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/oneplus/tuner/OPCommonStyleFragment$1;->this$0:Lcom/oneplus/tuner/OPCommonStyleFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 106
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 119
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 120
    return-void

    .line 109
    :pswitch_0
    new-instance v0, Lcom/oneplus/tuner/OPCommonStyleFragment$1$1;

    invoke-direct {v0, p0}, Lcom/oneplus/tuner/OPCommonStyleFragment$1$1;-><init>(Lcom/oneplus/tuner/OPCommonStyleFragment$1;)V

    const-wide/16 v2, 0x64

    invoke-static {v0, v2, v3}, Lcom/oneplus/tuner/manager/OppoTunerManager;->postSyncMainRunnableDelay(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method
