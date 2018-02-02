.class Lcom/oneplus/camera/manual/ManualModeUI$8;
.super Ljava/lang/Object;
.source "ManualModeUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/manual/ManualModeUI;->onEnter(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/manual/ManualModeUI;

.field final synthetic val$camera:Lcom/oneplus/camera/Camera;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/Camera;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/manual/ManualModeUI;
    .param p2, "val$camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 1071
    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI$8;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    iput-object p2, p0, Lcom/oneplus/camera/manual/ManualModeUI$8;->val$camera:Lcom/oneplus/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$8;->val$camera:Lcom/oneplus/camera/Camera;

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI$8;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v2}, Lcom/oneplus/camera/manual/ManualModeUI;->-get15(Lcom/oneplus/camera/manual/ManualModeUI;)Lcom/oneplus/base/PropertyChangedCallback;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1076
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$8;->val$camera:Lcom/oneplus/camera/Camera;

    sget-object v1, Lcom/oneplus/camera/Camera;->EVENT_PREVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI$8;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v2}, Lcom/oneplus/camera/manual/ManualModeUI;->-get14(Lcom/oneplus/camera/manual/ManualModeUI;)Lcom/oneplus/base/EventHandler;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1074
    return-void
.end method
