.class Lcom/oneplus/camera/BacklightBrightnessControllerImpl$1;
.super Ljava/lang/Object;
.source "BacklightBrightnessControllerImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/BacklightBrightnessControllerImpl;->onInitialize()V
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
        "Lcom/oneplus/base/BaseActivity$State;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/BacklightBrightnessControllerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/BacklightBrightnessControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/BacklightBrightnessControllerImpl;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/oneplus/camera/BacklightBrightnessControllerImpl$1;->this$0:Lcom/oneplus/camera/BacklightBrightnessControllerImpl;

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
            "Lcom/oneplus/base/BaseActivity$State;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/base/BaseActivity$State;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/base/BaseActivity$State;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/base/BaseActivity$State;>;"
    iget-object v1, p0, Lcom/oneplus/camera/BacklightBrightnessControllerImpl$1;->this$0:Lcom/oneplus/camera/BacklightBrightnessControllerImpl;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/BaseActivity$State;

    invoke-static {v1, v0}, Lcom/oneplus/camera/BacklightBrightnessControllerImpl;->-wrap0(Lcom/oneplus/camera/BacklightBrightnessControllerImpl;Lcom/oneplus/base/BaseActivity$State;)V

    .line 40
    return-void
.end method
