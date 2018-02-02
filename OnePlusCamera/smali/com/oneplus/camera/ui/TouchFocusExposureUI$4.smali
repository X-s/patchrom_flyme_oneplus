.class Lcom/oneplus/camera/ui/TouchFocusExposureUI$4;
.super Ljava/lang/Object;
.source "TouchFocusExposureUI.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/TouchFocusExposureUI;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/EventHandler",
        "<",
        "Lcom/oneplus/camera/ui/MotionEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/TouchFocusExposureUI;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/TouchFocusExposureUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/TouchFocusExposureUI;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI$4;->this$0:Lcom/oneplus/camera/ui/TouchFocusExposureUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p2, "key"    # Lcom/oneplus/base/EventKey;
    .param p3, "e"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 291
    check-cast p3, Lcom/oneplus/camera/ui/MotionEventArgs;

    .end local p3    # "e":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/camera/ui/TouchFocusExposureUI$4;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/ui/MotionEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/ui/MotionEventArgs;)V
    .locals 1
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p3, "e"    # Lcom/oneplus/camera/ui/MotionEventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/ui/MotionEventArgs;",
            ">;",
            "Lcom/oneplus/camera/ui/MotionEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 293
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/camera/ui/MotionEventArgs;>;"
    iget-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI$4;->this$0:Lcom/oneplus/camera/ui/TouchFocusExposureUI;

    invoke-static {v0, p3}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->-wrap1(Lcom/oneplus/camera/ui/TouchFocusExposureUI;Lcom/oneplus/camera/ui/MotionEventArgs;)V

    .line 291
    return-void
.end method
