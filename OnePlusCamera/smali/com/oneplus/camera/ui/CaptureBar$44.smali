.class Lcom/oneplus/camera/ui/CaptureBar$44;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/CaptureBar;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/CaptureBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/CaptureBar;

    .prologue
    .line 2090
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureBar$44;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 4
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2095
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Boolean;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Boolean;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2096
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$44;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar$44;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    const-string/jumbo v2, "Capture bar"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap5(Lcom/oneplus/camera/ui/CaptureBar;Ljava/lang/String;Z)Lcom/oneplus/camera/ui/CaptureBar$HideCaptureBarActionIconHandle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/CaptureBar;->-set16(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 2099
    :goto_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$44;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap49(Lcom/oneplus/camera/ui/CaptureBar;)V

    .line 2100
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$44;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap46(Lcom/oneplus/camera/ui/CaptureBar;)V

    .line 2093
    return-void

    .line 2098
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$44;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar$44;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CaptureBar;->-get31(Lcom/oneplus/camera/ui/CaptureBar;)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/CaptureBar;->-set16(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_0
.end method
