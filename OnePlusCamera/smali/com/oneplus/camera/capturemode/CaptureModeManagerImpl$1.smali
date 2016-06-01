.class Lcom/oneplus/camera/capturemode/CaptureModeManagerImpl$1;
.super Ljava/lang/Object;
.source "CaptureModeManagerImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/capturemode/CaptureModeManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/PropertyChangedCallback",
        "<",
        "Lcom/oneplus/camera/Mode$State;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/capturemode/CaptureModeManagerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/capturemode/CaptureModeManagerImpl;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/oneplus/camera/capturemode/CaptureModeManagerImpl$1;->this$0:Lcom/oneplus/camera/capturemode/CaptureModeManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 2
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/Mode$State;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/camera/Mode$State;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/Mode$State;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/Mode$State;>;"
    sget-object v1, Lcom/oneplus/camera/capturemode/CaptureModeManagerImpl$2;->$SwitchMap$com$oneplus$camera$Mode$State:[I

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Mode$State;

    invoke-virtual {v0}, Lcom/oneplus/camera/Mode$State;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 57
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getOldValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/Mode$State;->DISABLED:Lcom/oneplus/camera/Mode$State;

    if-ne v0, v1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/CaptureModeManagerImpl$1;->this$0:Lcom/oneplus/camera/capturemode/CaptureModeManagerImpl;

    check-cast p1, Lcom/oneplus/camera/capturemode/CaptureMode;

    .end local p1    # "source":Lcom/oneplus/base/PropertySource;
    # invokes: Lcom/oneplus/camera/capturemode/CaptureModeManagerImpl;->onCaptureModeEnabled(Lcom/oneplus/camera/capturemode/CaptureMode;)V
    invoke-static {v0, p1}, Lcom/oneplus/camera/capturemode/CaptureModeManagerImpl;->access$200(Lcom/oneplus/camera/capturemode/CaptureModeManagerImpl;Lcom/oneplus/camera/capturemode/CaptureMode;)V

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 51
    .restart local p1    # "source":Lcom/oneplus/base/PropertySource;
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/CaptureModeManagerImpl$1;->this$0:Lcom/oneplus/camera/capturemode/CaptureModeManagerImpl;

    check-cast p1, Lcom/oneplus/camera/capturemode/CaptureMode;

    .end local p1    # "source":Lcom/oneplus/base/PropertySource;
    # invokes: Lcom/oneplus/camera/capturemode/CaptureModeManagerImpl;->onCaptureModeDisabled(Lcom/oneplus/camera/capturemode/CaptureMode;)V
    invoke-static {v0, p1}, Lcom/oneplus/camera/capturemode/CaptureModeManagerImpl;->access$000(Lcom/oneplus/camera/capturemode/CaptureModeManagerImpl;Lcom/oneplus/camera/capturemode/CaptureMode;)V

    goto :goto_0

    .line 54
    .restart local p1    # "source":Lcom/oneplus/base/PropertySource;
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/CaptureModeManagerImpl$1;->this$0:Lcom/oneplus/camera/capturemode/CaptureModeManagerImpl;

    check-cast p1, Lcom/oneplus/camera/capturemode/CaptureMode;

    .end local p1    # "source":Lcom/oneplus/base/PropertySource;
    # invokes: Lcom/oneplus/camera/capturemode/CaptureModeManagerImpl;->onCaptureModeReleased(Lcom/oneplus/camera/capturemode/CaptureMode;)V
    invoke-static {v0, p1}, Lcom/oneplus/camera/capturemode/CaptureModeManagerImpl;->access$100(Lcom/oneplus/camera/capturemode/CaptureModeManagerImpl;Lcom/oneplus/camera/capturemode/CaptureMode;)V

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
