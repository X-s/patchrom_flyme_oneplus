.class Lcom/oneplus/camera/ui/RecordingTimerUI$3;
.super Ljava/lang/Object;
.source "RecordingTimerUI.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/RecordingTimerUI;->onInitialize()V
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
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/RecordingTimerUI;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/RecordingTimerUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/RecordingTimerUI;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/oneplus/camera/ui/RecordingTimerUI$3;->this$0:Lcom/oneplus/camera/ui/RecordingTimerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 6
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Float;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Float;>;"
    iget-object v0, p0, Lcom/oneplus/camera/ui/RecordingTimerUI$3;->this$0:Lcom/oneplus/camera/ui/RecordingTimerUI;

    invoke-static {v0}, Lcom/oneplus/camera/ui/RecordingTimerUI;->-get1(Lcom/oneplus/camera/ui/RecordingTimerUI;)Lcom/oneplus/camera/ZoomController;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/ZoomController;->PROP_IS_ZOOM_LOCKED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/ZoomController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/RecordingTimerUI$3;->this$0:Lcom/oneplus/camera/ui/RecordingTimerUI;

    invoke-static {v0}, Lcom/oneplus/camera/ui/RecordingTimerUI;->-get0(Lcom/oneplus/camera/ui/RecordingTimerUI;)Lcom/oneplus/camera/VideoCaptureState;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->CAPTURING:Lcom/oneplus/camera/VideoCaptureState;

    if-ne v0, v1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/oneplus/camera/ui/RecordingTimerUI$3;->this$0:Lcom/oneplus/camera/ui/RecordingTimerUI;

    invoke-static {v0}, Lcom/oneplus/camera/ui/RecordingTimerUI;->-wrap0(Lcom/oneplus/camera/ui/RecordingTimerUI;)Lcom/oneplus/base/Rotation;

    move-result-object v0

    sget-object v1, Lcom/oneplus/base/Rotation;->INVERSE_LANDSCAPE:Lcom/oneplus/base/Rotation;

    if-ne v0, v1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/oneplus/camera/ui/RecordingTimerUI$3;->this$0:Lcom/oneplus/camera/ui/RecordingTimerUI;

    const/16 v1, 0x2710

    const/4 v2, 0x1

    const-wide/16 v4, 0x3e8

    invoke-static {v0, v1, v2, v4, v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    .line 114
    iget-object v0, p0, Lcom/oneplus/camera/ui/RecordingTimerUI$3;->this$0:Lcom/oneplus/camera/ui/RecordingTimerUI;

    invoke-static {v0}, Lcom/oneplus/camera/ui/RecordingTimerUI;->-wrap1(Lcom/oneplus/camera/ui/RecordingTimerUI;)V

    .line 108
    :cond_0
    return-void
.end method
