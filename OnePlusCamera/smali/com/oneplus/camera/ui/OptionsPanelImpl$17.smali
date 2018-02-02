.class Lcom/oneplus/camera/ui/OptionsPanelImpl$17;
.super Ljava/lang/Object;
.source "OptionsPanelImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/OptionsPanelImpl;->setupPropertyChangedCallback()V
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
.field final synthetic this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/OptionsPanelImpl;

    .prologue
    .line 1219
    iput-object p1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$17;->this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;

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
            "Lcom/oneplus/camera/capturemode/CaptureMode;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/camera/capturemode/CaptureMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1222
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/capturemode/CaptureMode;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/capturemode/CaptureMode;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getOldValue()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1225
    iget-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$17;->this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->-wrap4(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V

    .line 1227
    iget-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$17;->this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->-wrap14(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V

    .line 1229
    iget-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$17;->this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->-wrap17(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V

    .line 1232
    iget-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$17;->this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->-wrap16(Lcom/oneplus/camera/ui/OptionsPanelImpl;Landroid/view/ViewGroup;)V

    .line 1221
    :cond_0
    return-void
.end method
