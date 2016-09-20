.class Lcom/oneplus/camera/ui/CaptureBar$21;
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


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/CaptureBar;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/CaptureBar;)V
    .locals 0

    .prologue
    .line 649
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureBar$21;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 1
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .param p2, "key"    # Lcom/oneplus/base/PropertyKey;
    .param p3, "e"    # Lcom/oneplus/base/PropertyChangeEventArgs;

    .prologue
    .line 653
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$21;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    # invokes: Lcom/oneplus/camera/ui/CaptureBar;->updateFlashButton()V
    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->access$1600(Lcom/oneplus/camera/ui/CaptureBar;)V

    .line 654
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$21;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    # invokes: Lcom/oneplus/camera/ui/CaptureBar;->showFlashDisabledMessage()V
    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->access$1400(Lcom/oneplus/camera/ui/CaptureBar;)V

    .line 655
    return-void
.end method
