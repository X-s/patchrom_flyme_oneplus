.class Lcom/oneplus/camera/FlashControllerImpl$6;
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


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/FlashControllerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/FlashControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/FlashControllerImpl;

    .prologue
    .line 453
    iput-object p1, p0, Lcom/oneplus/camera/FlashControllerImpl$6;->this$0:Lcom/oneplus/camera/FlashControllerImpl;

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
    .line 458
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl$6;->this$0:Lcom/oneplus/camera/FlashControllerImpl;

    invoke-static {v0}, Lcom/oneplus/camera/FlashControllerImpl;->-wrap6(Lcom/oneplus/camera/FlashControllerImpl;)V

    .line 456
    return-void
.end method
