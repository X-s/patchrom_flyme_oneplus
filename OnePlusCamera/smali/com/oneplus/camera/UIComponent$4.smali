.class Lcom/oneplus/camera/UIComponent$4;
.super Ljava/lang/Object;
.source "UIComponent.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/UIComponent;->onInitialize()V
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
.field final synthetic this$0:Lcom/oneplus/camera/UIComponent;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/UIComponent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/UIComponent;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/oneplus/camera/UIComponent$4;->this$0:Lcom/oneplus/camera/UIComponent;

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
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Boolean;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/oneplus/camera/UIComponent$4;->this$0:Lcom/oneplus/camera/UIComponent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/camera/UIComponent;->-set0(Lcom/oneplus/camera/UIComponent;Lcom/oneplus/base/PropertyChangedCallback;)Lcom/oneplus/base/PropertyChangedCallback;

    .line 251
    invoke-interface {p1, p2, p0}, Lcom/oneplus/base/PropertySource;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 252
    iget-object v0, p0, Lcom/oneplus/camera/UIComponent$4;->this$0:Lcom/oneplus/camera/UIComponent;

    invoke-virtual {v0}, Lcom/oneplus/camera/UIComponent;->onCameraThreadStarted()V

    .line 248
    return-void
.end method
