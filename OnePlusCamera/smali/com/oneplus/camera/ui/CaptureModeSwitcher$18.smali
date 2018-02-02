.class Lcom/oneplus/camera/ui/CaptureModeSwitcher$18;
.super Ljava/lang/Object;
.source "CaptureModeSwitcher.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/CaptureModeSwitcher;->onInitialize()V
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
        "Lcom/oneplus/camera/capturemode/CaptureMode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    .prologue
    .line 1279
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$18;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 3
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/capturemode/CaptureMode;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/camera/capturemode/CaptureMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1285
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/capturemode/CaptureMode;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/capturemode/CaptureMode;>;"
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$18;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get1(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PROP_CAPTURE_MODE changed oldValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getOldValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " new: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " m_ContainerAnimationState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$18;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v2}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get9(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$18;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get9(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;->END:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$18;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get9(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;->IDLE:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    if-ne v0, v1, :cond_1

    .line 1287
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$18;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$18;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get4(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-set17(Lcom/oneplus/camera/ui/CaptureModeSwitcher;I)I

    .line 1289
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$18;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/capturemode/CaptureMode;

    invoke-static {v1, v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap18(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/camera/capturemode/CaptureMode;)V

    .line 1282
    return-void
.end method
