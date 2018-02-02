.class Lcom/oneplus/camera/FlashControllerImpl$7;
.super Ljava/lang/Object;
.source "FlashControllerImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/FlashControllerImpl;->onInitialize()V
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/FlashControllerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/FlashControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/FlashControllerImpl;

    .prologue
    .line 461
    iput-object p1, p0, Lcom/oneplus/camera/FlashControllerImpl$7;->this$0:Lcom/oneplus/camera/FlashControllerImpl;

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
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Integer;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Integer;>;"
    const/16 v1, 0xf

    .line 466
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getOldValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 468
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v0, v1, :cond_0

    .line 470
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl$7;->this$0:Lcom/oneplus/camera/FlashControllerImpl;

    invoke-static {v0}, Lcom/oneplus/camera/FlashControllerImpl;->-get0(Lcom/oneplus/camera/FlashControllerImpl;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onPropertyChanged() - Battery level is too low, disable flash"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl$7;->this$0:Lcom/oneplus/camera/FlashControllerImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/camera/FlashControllerImpl;->-set2(Lcom/oneplus/camera/FlashControllerImpl;Z)Z

    .line 472
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl$7;->this$0:Lcom/oneplus/camera/FlashControllerImpl;

    invoke-virtual {v0}, Lcom/oneplus/camera/FlashControllerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->CAPTURING:Lcom/oneplus/camera/PhotoCaptureState;

    if-eq v0, v1, :cond_1

    .line 473
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl$7;->this$0:Lcom/oneplus/camera/FlashControllerImpl;

    invoke-static {v0}, Lcom/oneplus/camera/FlashControllerImpl;->-wrap6(Lcom/oneplus/camera/FlashControllerImpl;)V

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl$7;->this$0:Lcom/oneplus/camera/FlashControllerImpl;

    invoke-static {v0}, Lcom/oneplus/camera/FlashControllerImpl;->-get0(Lcom/oneplus/camera/FlashControllerImpl;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onPropertyChanged() - Capturing photo, disable flash later"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 480
    :cond_2
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 482
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl$7;->this$0:Lcom/oneplus/camera/FlashControllerImpl;

    invoke-static {v0}, Lcom/oneplus/camera/FlashControllerImpl;->-get0(Lcom/oneplus/camera/FlashControllerImpl;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onPropertyChanged() - Battery level becomes higher, enable flash"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl$7;->this$0:Lcom/oneplus/camera/FlashControllerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/camera/FlashControllerImpl;->-set2(Lcom/oneplus/camera/FlashControllerImpl;Z)Z

    .line 484
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl$7;->this$0:Lcom/oneplus/camera/FlashControllerImpl;

    invoke-static {v0}, Lcom/oneplus/camera/FlashControllerImpl;->-wrap6(Lcom/oneplus/camera/FlashControllerImpl;)V

    goto :goto_0
.end method
