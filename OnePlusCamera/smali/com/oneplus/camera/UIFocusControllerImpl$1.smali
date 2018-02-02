.class Lcom/oneplus/camera/UIFocusControllerImpl$1;
.super Ljava/lang/Object;
.source "UIFocusControllerImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/UIFocusControllerImpl;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/UIFocusControllerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/UIFocusControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/UIFocusControllerImpl;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/oneplus/camera/UIFocusControllerImpl$1;->this$0:Lcom/oneplus/camera/UIFocusControllerImpl;

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
    .line 118
    iget-object v0, p0, Lcom/oneplus/camera/UIFocusControllerImpl$1;->this$0:Lcom/oneplus/camera/UIFocusControllerImpl;

    invoke-static {v0}, Lcom/oneplus/camera/UIFocusControllerImpl;->-wrap0(Lcom/oneplus/camera/UIFocusControllerImpl;)V

    .line 116
    return-void
.end method
