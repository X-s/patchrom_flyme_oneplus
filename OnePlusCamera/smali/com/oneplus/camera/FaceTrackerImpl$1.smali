.class Lcom/oneplus/camera/FaceTrackerImpl$1;
.super Ljava/lang/Object;
.source "FaceTrackerImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/FaceTrackerImpl;
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
        "Ljava/util/List",
        "<",
        "Lcom/oneplus/camera/Camera$Face;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/FaceTrackerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/FaceTrackerImpl;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/oneplus/camera/FaceTrackerImpl$1;->this$0:Lcom/oneplus/camera/FaceTrackerImpl;

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
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/Camera$Face;",
            ">;>;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/Camera$Face;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/util/List<Lcom/oneplus/camera/Camera$Face;>;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/util/List<Lcom/oneplus/camera/Camera$Face;>;>;"
    iget-object v1, p0, Lcom/oneplus/camera/FaceTrackerImpl$1;->this$0:Lcom/oneplus/camera/FaceTrackerImpl;

    check-cast p1, Lcom/oneplus/camera/Camera;

    .end local p1    # "source":Lcom/oneplus/base/PropertySource;
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    # invokes: Lcom/oneplus/camera/FaceTrackerImpl;->onFacesPropChanged(Lcom/oneplus/camera/Camera;Ljava/util/List;)V
    invoke-static {v1, p1, v0}, Lcom/oneplus/camera/FaceTrackerImpl;->access$100(Lcom/oneplus/camera/FaceTrackerImpl;Lcom/oneplus/camera/Camera;Ljava/util/List;)V

    .line 63
    return-void
.end method
