.class final Lcom/oneplus/base/OrientationManager$CallbackHandler;
.super Landroid/os/Handler;
.source "OrientationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/base/OrientationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackHandler"
.end annotation


# instance fields
.field public final callback:Lcom/oneplus/base/OrientationManager$Callback;


# direct methods
.method public constructor <init>(Lcom/oneplus/base/OrientationManager$Callback;Landroid/os/Handler;)V
    .locals 1
    .param p1, "callback"    # Lcom/oneplus/base/OrientationManager$Callback;
    .param p2, "srcHandler"    # Landroid/os/Handler;

    .prologue
    .line 111
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 112
    iput-object p1, p0, Lcom/oneplus/base/OrientationManager$CallbackHandler;->callback:Lcom/oneplus/base/OrientationManager$Callback;

    .line 109
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 118
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 116
    :goto_0
    return-void

    .line 121
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/base/OrientationManager$CallbackHandler;->callback:Lcom/oneplus/base/OrientationManager$Callback;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/oneplus/base/OrientationManager$Callback;->onOrientationChanged(I)V

    goto :goto_0

    .line 126
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 127
    .local v0, "params":[Ljava/lang/Object;
    iget-object v3, p0, Lcom/oneplus/base/OrientationManager$CallbackHandler;->callback:Lcom/oneplus/base/OrientationManager$Callback;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Lcom/oneplus/base/Rotation;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, Lcom/oneplus/base/Rotation;

    invoke-virtual {v3, v1, v2}, Lcom/oneplus/base/OrientationManager$Callback;->onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    goto :goto_0

    .line 132
    .end local v0    # "params":[Ljava/lang/Object;
    :pswitch_2
    iget-object v2, p0, Lcom/oneplus/base/OrientationManager$CallbackHandler;->callback:Lcom/oneplus/base/OrientationManager$Callback;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/oneplus/base/OrientationManager$Callback;->onSystemOrientationSettingsChanged(Z)V

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
