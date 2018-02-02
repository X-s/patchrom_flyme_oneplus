.class Lcom/oneplus/camera/AgentActivity$4;
.super Lcom/oneplus/base/OrientationManager$Callback;
.source "AgentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/AgentActivity;->onStart()V
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
    .param p1, "this$0"    # Lcom/oneplus/camera/AgentActivity;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/oneplus/camera/AgentActivity$4;->this$0:Lcom/oneplus/camera/AgentActivity;

    invoke-direct {p0}, Lcom/oneplus/base/OrientationManager$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
    .locals 0
    .param p1, "prevRotation"    # Lcom/oneplus/base/Rotation;
    .param p2, "newRotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    .line 313
    return-void
.end method

.method public onSystemOrientationSettingsChanged(Z)V
    .locals 2
    .param p1, "isSystemOrientationEnabled"    # Z

    .prologue
    .line 320
    if-eqz p1, :cond_0

    .line 321
    iget-object v0, p0, Lcom/oneplus/camera/AgentActivity$4;->this$0:Lcom/oneplus/camera/AgentActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/AgentActivity;->setRequestedOrientation(I)V

    .line 318
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/AgentActivity$4;->this$0:Lcom/oneplus/camera/AgentActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/AgentActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method
