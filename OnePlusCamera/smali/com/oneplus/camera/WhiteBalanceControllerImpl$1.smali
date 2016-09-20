.class Lcom/oneplus/camera/WhiteBalanceControllerImpl$1;
.super Ljava/lang/Object;
.source "WhiteBalanceControllerImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/WhiteBalanceControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/WhiteBalanceControllerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/WhiteBalanceControllerImpl;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/oneplus/camera/WhiteBalanceControllerImpl$1;->this$0:Lcom/oneplus/camera/WhiteBalanceControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 2
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .param p2, "key"    # Lcom/oneplus/base/PropertyKey;
    .param p3, "e"    # Lcom/oneplus/base/PropertyChangeEventArgs;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oneplus/camera/WhiteBalanceControllerImpl$1;->this$0:Lcom/oneplus/camera/WhiteBalanceControllerImpl;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/oneplus/camera/WhiteBalanceControllerImpl;->onCameraPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)V

    .line 26
    return-void
.end method
