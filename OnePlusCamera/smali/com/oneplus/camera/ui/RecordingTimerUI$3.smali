.class Lcom/oneplus/camera/ui/RecordingTimerUI$3;
.super Ljava/lang/Object;
.source "RecordingTimerUI.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentSearchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/RecordingTimerUI;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/component/ComponentSearchCallback",
        "<",
        "Lcom/oneplus/camera/ui/SecondLayerBar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/RecordingTimerUI;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/RecordingTimerUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/RecordingTimerUI;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/oneplus/camera/ui/RecordingTimerUI$3;->this$0:Lcom/oneplus/camera/ui/RecordingTimerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComponentFound(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p1, "component"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 123
    check-cast p1, Lcom/oneplus/camera/ui/SecondLayerBar;

    .end local p1    # "component":Lcom/oneplus/base/component/Component;
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/ui/RecordingTimerUI$3;->onComponentFound(Lcom/oneplus/camera/ui/SecondLayerBar;)V

    return-void
.end method

.method public onComponentFound(Lcom/oneplus/camera/ui/SecondLayerBar;)V
    .locals 2
    .param p1, "component"    # Lcom/oneplus/camera/ui/SecondLayerBar;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/oneplus/camera/ui/RecordingTimerUI$3;->this$0:Lcom/oneplus/camera/ui/RecordingTimerUI;

    invoke-static {v0, p1}, Lcom/oneplus/camera/ui/RecordingTimerUI;->-set0(Lcom/oneplus/camera/ui/RecordingTimerUI;Lcom/oneplus/camera/ui/SecondLayerBar;)Lcom/oneplus/camera/ui/SecondLayerBar;

    .line 126
    sget-object v0, Lcom/oneplus/camera/ui/SecondLayerBar;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    new-instance v1, Lcom/oneplus/camera/ui/RecordingTimerUI$3$1;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/ui/RecordingTimerUI$3$1;-><init>(Lcom/oneplus/camera/ui/RecordingTimerUI$3;)V

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/ui/SecondLayerBar;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 123
    return-void
.end method
