.class Lcom/oneplus/camera/ui/OptionsPanelImpl$22;
.super Ljava/lang/Object;
.source "OptionsPanelImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/OptionsPanelImpl;->setupPropertyChangedCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/OptionsPanelImpl;

    .prologue
    .line 1312
    iput-object p1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$22;->this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;

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
    .line 1317
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getOldValue()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1318
    iget-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$22;->this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->-wrap4(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V

    .line 1315
    :cond_0
    return-void
.end method
