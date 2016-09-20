.class Lcom/oneplus/camera/ui/CaptureBar$20;
.super Ljava/lang/Object;
.source "CaptureBar.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/CaptureBar;->onInitialize()V
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
        "Lcom/oneplus/camera/AutoExposureState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/CaptureBar;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/CaptureBar;)V
    .locals 0

    .prologue
    .line 624
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureBar$20;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

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
            "Lcom/oneplus/camera/AutoExposureState;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/camera/AutoExposureState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 629
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/AutoExposureState;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/AutoExposureState;>;"
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$20;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    # getter for: Lcom/oneplus/camera/ui/CaptureBar;->m_FlashController:Lcom/oneplus/camera/FlashController;
    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->access$2900(Lcom/oneplus/camera/ui/CaptureBar;)Lcom/oneplus/camera/FlashController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$20;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    # getter for: Lcom/oneplus/camera/ui/CaptureBar;->m_FlashController:Lcom/oneplus/camera/FlashController;
    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->access$2900(Lcom/oneplus/camera/ui/CaptureBar;)Lcom/oneplus/camera/FlashController;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/FlashController;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/FlashController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/FlashMode;->AUTO:Lcom/oneplus/camera/FlashMode;

    if-ne v0, v1, :cond_0

    .line 633
    sget-object v1, Lcom/oneplus/camera/ui/CaptureBar$28;->$SwitchMap$com$oneplus$camera$AutoExposureState:[I

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/AutoExposureState;

    invoke-virtual {v0}, Lcom/oneplus/camera/AutoExposureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 643
    :cond_0
    :goto_0
    return-void

    .line 638
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$20;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    # invokes: Lcom/oneplus/camera/ui/CaptureBar;->updateFlashButton()V
    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->access$1600(Lcom/oneplus/camera/ui/CaptureBar;)V

    goto :goto_0

    .line 633
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
