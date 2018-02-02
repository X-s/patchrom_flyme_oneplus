.class Lcom/oneplus/camera/ui/SecondLayerBarImpl$7;
.super Ljava/lang/Object;
.source "SecondLayerBarImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/SecondLayerBarImpl;->onInitialize()V
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
.field final synthetic this$0:Lcom/oneplus/camera/ui/SecondLayerBarImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/SecondLayerBarImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/SecondLayerBarImpl;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/oneplus/camera/ui/SecondLayerBarImpl$7;->this$0:Lcom/oneplus/camera/ui/SecondLayerBarImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 1
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
    .line 174
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/capturemode/CaptureMode;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/capturemode/CaptureMode;>;"
    iget-object v0, p0, Lcom/oneplus/camera/ui/SecondLayerBarImpl$7;->this$0:Lcom/oneplus/camera/ui/SecondLayerBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->-get0(Lcom/oneplus/camera/ui/SecondLayerBarImpl;)Lcom/oneplus/camera/ui/SecondLayerBarImpl$LayerBarHandle;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 172
    return-void
.end method
