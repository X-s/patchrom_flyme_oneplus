.class Lcom/oneplus/camera/ZoomControlImpl$1;
.super Ljava/lang/Object;
.source "ZoomControlImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ZoomControlImpl;
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
.field final synthetic this$0:Lcom/oneplus/camera/ZoomControlImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ZoomControlImpl;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/oneplus/camera/ZoomControlImpl$1;->this$0:Lcom/oneplus/camera/ZoomControlImpl;

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
            "Ljava/lang/Float;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Float;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Float;>;"
    iget-object v1, p0, Lcom/oneplus/camera/ZoomControlImpl$1;->this$0:Lcom/oneplus/camera/ZoomControlImpl;

    check-cast p1, Lcom/oneplus/camera/Camera;

    .end local p1    # "source":Lcom/oneplus/base/PropertySource;
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    # invokes: Lcom/oneplus/camera/ZoomControlImpl;->onDigitalZoomChanged(Lcom/oneplus/camera/Camera;Ljava/lang/Float;)V
    invoke-static {v1, p1, v0}, Lcom/oneplus/camera/ZoomControlImpl;->access$000(Lcom/oneplus/camera/ZoomControlImpl;Lcom/oneplus/camera/Camera;Ljava/lang/Float;)V

    .line 32
    return-void
.end method
