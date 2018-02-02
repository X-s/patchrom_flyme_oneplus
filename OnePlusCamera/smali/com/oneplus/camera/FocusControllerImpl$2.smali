.class Lcom/oneplus/camera/FocusControllerImpl$2;
.super Ljava/lang/Object;
.source "FocusControllerImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/FocusControllerImpl;
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
        "Lcom/oneplus/camera/FocusMode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/FocusControllerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/FocusControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/FocusControllerImpl;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/oneplus/camera/FocusControllerImpl$2;->this$0:Lcom/oneplus/camera/FocusControllerImpl;

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
            "Lcom/oneplus/camera/FocusMode;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/camera/FocusMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/FocusMode;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/FocusMode;>;"
    iget-object v1, p0, Lcom/oneplus/camera/FocusControllerImpl$2;->this$0:Lcom/oneplus/camera/FocusControllerImpl;

    check-cast p1, Lcom/oneplus/camera/Camera;

    .end local p1    # "source":Lcom/oneplus/base/PropertySource;
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/FocusMode;

    invoke-static {v1, p1, v0}, Lcom/oneplus/camera/FocusControllerImpl;->-wrap2(Lcom/oneplus/camera/FocusControllerImpl;Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/FocusMode;)V

    .line 35
    return-void
.end method
