.class Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$12;
.super Ljava/lang/Object;
.source "FocusExposureIndicatorImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->onInitialize()V
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
.field final synthetic this$0:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;

    .prologue
    .line 1334
    iput-object p1, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$12;->this$0:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;

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
    .line 1339
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/util/List<Lcom/oneplus/camera/Camera$Face;>;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/util/List<Lcom/oneplus/camera/Camera$Face;>;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$12;->this$0:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->-get1(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;)Lcom/oneplus/camera/Camera$MeteringRect;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1340
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$12;->this$0:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->-wrap6(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;)V

    .line 1337
    :cond_0
    return-void
.end method
