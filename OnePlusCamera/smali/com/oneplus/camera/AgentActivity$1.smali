.class Lcom/oneplus/camera/AgentActivity$1;
.super Ljava/lang/Object;
.source "AgentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/AgentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/AgentActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/AgentActivity;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/oneplus/camera/AgentActivity$1;->this$0:Lcom/oneplus/camera/AgentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/oneplus/camera/AgentActivity$1;->this$0:Lcom/oneplus/camera/AgentActivity;

    # getter for: Lcom/oneplus/camera/AgentActivity;->m_InitialRotation:Lcom/oneplus/base/Rotation;
    invoke-static {v0}, Lcom/oneplus/camera/AgentActivity;->access$000(Lcom/oneplus/camera/AgentActivity;)Lcom/oneplus/base/Rotation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/oneplus/camera/AgentActivity$4;->$SwitchMap$com$oneplus$base$Rotation:[I

    iget-object v1, p0, Lcom/oneplus/camera/AgentActivity$1;->this$0:Lcom/oneplus/camera/AgentActivity;

    # getter for: Lcom/oneplus/camera/AgentActivity;->m_InitialRotation:Lcom/oneplus/base/Rotation;
    invoke-static {v1}, Lcom/oneplus/camera/AgentActivity;->access$000(Lcom/oneplus/camera/AgentActivity;)Lcom/oneplus/base/Rotation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 76
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/oneplus/camera/AgentActivity$1;->this$0:Lcom/oneplus/camera/AgentActivity;

    invoke-virtual {v0}, Lcom/oneplus/camera/AgentActivity;->finish()V

    .line 77
    return-void

    .line 66
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/AgentActivity$1;->this$0:Lcom/oneplus/camera/AgentActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/AgentActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 69
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/AgentActivity$1;->this$0:Lcom/oneplus/camera/AgentActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/AgentActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 72
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/camera/AgentActivity$1;->this$0:Lcom/oneplus/camera/AgentActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/AgentActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
